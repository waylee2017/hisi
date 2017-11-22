/******************************************************************************
*
* Copyright (C) 2016 Hisilicon Technologies Co., Ltd.  All rights reserved. 
*
* This program is confidential and proprietary to Hisilicon  Technologies Co., Ltd. (Hisilicon), 
* and may not be copied, reproduced, modified, disclosed to others, published or used, in
* whole or in part, without the express prior written permission of Hisilicon.
* 
******************************************************************************
File Name           : main.c
Version             : Initial Draft
Author              : 
Created             : 2016/01/12
Description         : 
Function List       : 
History             :
Date                       Author                   Modification
2016/01/12                                          modify by y00181162      
******************************************************************************/

/*********************************add include here******************************/
#include <uboot.h>
#include "hi_type.h"
#include "hi_unf_disp.h"
#include "hi_boot_pdm.h"
#include "hi_boot_logo.h"
#include "hi_boot_adp.h"
#include "schedule.h"
#include "hi_boot_common.h"
#include "hi_unf_otp.h"
#include "hi_unf_hdmi.h"
#include "hi_go_common.h"


#ifdef HI_ADVCA_FUNCTION_RELEASE
#include "ca_pub.h"
#endif

/***************************** Macro Definition ******************************/

#define IO_ADDRESS(addr) (addr)

/*************************** Structure Definition ****************************/


/********************** Global Variable declaration **************************/

static HI_GRC_PARAM_S              g_stGrcParam;
static HI_PDM_BASE_INFO_S		   g_stDispBaseParam;
static HI_PDM_LOGO_INFO_S 		   g_stLogoParam;
static HI_BOOL                     g_bDisplayInit     = HI_FALSE;
static HI_HANDLE                   gs_hLayerSurface   = HI_INVALID_HANDLE;

/******************************* API declaration *****************************/

#ifdef HI_ADVCA_TYPE_NAGRA
extern HI_VOID HI_NASC_SBP_Process(HI_VOID);
#endif

extern HI_S32 HI_GO_Blit            (HI_HANDLE u32SrcSurface, const HI_GO_RECT_S* pSrcRect,HI_HANDLE u32DstSurface, const HI_GO_RECT_S* pDstRect, const HIGO_BLTOPT_S* pBlitOpt);
extern HI_S32 HI_GO_FillRect        (HI_HANDLE hSurface, const HI_GO_RECT_S* pstRect, HI_U32 u32Color,HIGO_COMPOPT_E eComPopt);
extern HI_S32 HI_GO_RefreshLayer    (HI_HANDLE hSurface);
extern HI_S32 HI_GO_FreeDecSurface  (HI_HANDLE hSurface);


/***************************************************************************************
* func          : PRODUCT_DisplayInit
* description   : init display and init / open graphic layer
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
HI_S32 PRODUCT_DisplayInit(HI_HANDLE *phLayerSurface)
{
    /*
	HI_UNF_RECT_S stCVBSOutRect={0, 0, 700, 576};
	*/
	
    HI_S32 s32Ret = HI_SUCCESS;
	if(HI_NULL == phLayerSurface)
    {
        return HI_FAILURE;
    }

    if(g_bDisplayInit)
    {
        *phLayerSurface = gs_hLayerSurface;
        return HI_SUCCESS;
    }

    if(g_stLogoParam.checkflag)
    {
        g_stGrcParam.enPixelFormat    = g_stDispBaseParam.layerformat;
	    g_stGrcParam.u32DisplayHeight = g_stLogoParam.u32OutHeight;
	    g_stGrcParam.u32DisplayWidth  = g_stLogoParam.u32OutWidth;
	    g_stGrcParam.u32ScreenHeight  = g_stLogoParam.u32OutHeight;
	    g_stGrcParam.u32ScreenWidth   = g_stLogoParam.u32OutWidth;
	    g_stGrcParam.u32ScreenXpos    = g_stLogoParam.u32XPos;
	    g_stGrcParam.u32ScreenYpos    = g_stLogoParam.u32YPos;
    }
    else
    {  
        s32Ret = PDM_GetDefBaseParam(&g_stDispBaseParam);
        if(HI_SUCCESS != s32Ret)
        {
            HI_ERR_MCE("PDM_GetDefBaseParam err! s32Ret = %x\n", s32Ret);
            return s32Ret;
        }   
        g_stGrcParam.enPixelFormat    = g_stDispBaseParam.layerformat;
        g_stGrcParam.u32DisplayHeight = g_stDispBaseParam.inrectheight;
    	g_stGrcParam.u32DisplayWidth  = g_stDispBaseParam.inrectwidth;
	    g_stGrcParam.u32ScreenHeight  = g_stDispBaseParam.outrectheight;
	    g_stGrcParam.u32ScreenWidth   = g_stDispBaseParam.outrectwidth;
	    g_stGrcParam.u32ScreenXpos    = g_stDispBaseParam.u32Left;
	    g_stGrcParam.u32ScreenYpos    = g_stDispBaseParam.u32Top;
    }

    s32Ret = HI_ADP_DispInit(g_stDispBaseParam);
    if(HI_SUCCESS != s32Ret)
    {
        HI_ERR_MCE("HI_ADP_DispInit err! s32Ret = %x\n", s32Ret);
        return s32Ret;
    }
	/*
    Ret = HI_UNF_DISP_SetOutputWin(HI_UNF_DISP_SD0, &stCVBSOutRect);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_MCE("call HI_UNF_DISP_SetOutputWin failed, Ret:%#x\n", Ret);
    } 
    */
	
	s32Ret = HI_ADP_GrcCreate(g_stGrcParam,&gs_hLayerSurface);
    if(HI_SUCCESS != s32Ret)
    {
        HI_ERR_MCE("HI_ADP_GrcCreate err! Ret = %x\n", s32Ret);
        return s32Ret;
    }
	*phLayerSurface = gs_hLayerSurface;
	g_bDisplayInit   = HI_TRUE;
	
    return HI_SUCCESS;
	
}

/***************************************************************************************
* func          : Logo_Main
* description   : logoÆô¶¯º¯Êý
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
HI_S32 Logo_Main(HI_PDM_MEMINFO_S *pstMemInfo)
{
    HI_S32           s32Ret          = HI_SUCCESS;
    HI_U32           u32LogoDataAddr = 0;
    HI_HANDLE        hDecSurface     = HI_INVALID_HANDLE;
	HI_HANDLE        hLayerSurface   = HI_INVALID_HANDLE;
    HIGO_BLTOPT_S    stBltOpt        = {0};
	HI_PDM_LOGO_INFO_S stLogoInfo    = {0};
#ifdef HI_MCE_SUPPORT
	HI_PDM_MCE_PARAM_S			stMceParam;
	HI_U32 u32PlayDataAddr = 0;
#endif
	
#if defined(CHIP_TYPE_hi3716mv310) || defined(CHIP_TYPE_hi3716mv320) || defined(CHIP_TYPE_hi3716mv330)
    HI_UNF_HDMI_Init();
#endif

    if(HI_NULL != pstMemInfo)
    {
    	s32Ret = HI_PDM_SetSource(HI_PDM_SRCTYPE_DDR, pstMemInfo);
    	if(HI_SUCCESS != s32Ret)
        {
            HI_INFO_MCE("HI_PDM_SetSource err! s32Ret = %x\n", s32Ret);
            return s32Ret;
        }
    }
	/**
	 **get base message
	 **/
    s32Ret = HI_PDM_GetDispParam(&g_stDispBaseParam);
    if(HI_SUCCESS != s32Ret)
    {
        HI_INFO_MCE("HI_PDM_GetDispParam err! s32Ret = %x\n", s32Ret);
        return s32Ret;
    } 
	/**
	 **get logo message
	 **/
	s32Ret = HI_PDM_GetLogoParam(&stLogoInfo);
    if(HI_SUCCESS != s32Ret)
    {
        HI_INFO_MCE("HI_PDM_GetLogoParam err! s32Ret = %x\n", s32Ret);
        goto checkmce;
    } 
    if(1 == stLogoInfo.logoflag)
    {       
     	 memcpy(&g_stLogoParam,&stLogoInfo,sizeof(HI_PDM_LOGO_INFO_S));
         
         /**
                ** we only init display when logo is open
              **/
     	s32Ret = PRODUCT_DisplayInit(&hLayerSurface);
     	if(HI_SUCCESS != s32Ret)
         {
             HI_INFO_MCE("PRODUCT_DisplayInit err! s32Ret = %x\n", s32Ret);
             goto checkmce;
         }
         s32Ret = HI_PDM_GetLogoData(stLogoInfo.contentLen, &u32LogoDataAddr);     
         if(HI_SUCCESS != s32Ret)
         {
             HI_INFO_MCE("HI_PDM_GetLogoData err! s32Ret = %x\n", s32Ret);
             goto checkmce;
         }
         
         /**
               **decode picture
               **/
         s32Ret = HI_LOGO_DecImg(stLogoInfo,u32LogoDataAddr,&hDecSurface);
         if(HI_SUCCESS != s32Ret)
         {
            HI_INFO_MCE("HI_LOGO_DecImg err! s32Ret = %x\n", s32Ret);
            goto checkmce;
         }
         /**
                **fill hd layer surface
                **/
         s32Ret = HI_GO_FillRect(hLayerSurface, NULL, 0xffaabbcc, HIGO_COMPOPT_NONE);
         if(HI_SUCCESS != s32Ret)
         {
            HI_INFO_MCE("HI_GO_FillRect err! s32Ret = %x\n", s32Ret);
            HI_GO_FreeDecSurface(hDecSurface);
            goto checkmce;
         }
         /**
                **blit data to hd layer surface
                **/
         memset(&stBltOpt, 0, sizeof(stBltOpt));
         stBltOpt.EnableScale = HI_TRUE;
         s32Ret = HI_GO_Blit(hDecSurface, NULL, hLayerSurface, NULL, &stBltOpt);
         if(HI_SUCCESS != s32Ret)
         {
            HI_INFO_MCE("HI_GO_Blit err! s32Ret = %x\n", s32Ret);
            HI_GO_FreeDecSurface(hDecSurface);
            goto checkmce;
         }
         /**
                **show hd layer
                **/
         s32Ret = HI_GO_RefreshLayer(hLayerSurface);
         if(HI_SUCCESS != s32Ret)
         {
            HI_INFO_MCE("HI_GO_RefreshLayer err! s32Ret = %x\n", s32Ret);
            HI_GO_FreeDecSurface(hDecSurface);
            goto checkmce;
         }
         /**
                **destory decode surface
                **/
         s32Ret = HI_GO_FreeDecSurface(hDecSurface);
         if(HI_SUCCESS != s32Ret)
         {
            HI_INFO_MCE("HI_GO_FreeDecSurface err! s32Ret = %x\n", s32Ret);
            goto checkmce;
         }

    }
	else
	{	HI_INFO_MCE("logo is not open\n");
	}


checkmce:
	/**====================================================================
			logo is ok now. follows is mce run
	 ====================================================================**/
#ifdef HI_MCE_SUPPORT   
    s32Ret = HI_PDM_GetMceParam(&stMceParam);
    if (HI_SUCCESS == s32Ret && 1 == stMceParam.fastplayflag)
    {
		if(stMceParam.playType == MCE_PLAY_TYPE_TSFILE)
		{
            s32Ret = HI_PDM_GetMceData(stMceParam.contentLen, &u32PlayDataAddr);
		}
		
        if(stMceParam.playType == MCE_PLAY_TYPE_DVB)
        {
            s32Ret = HI_PDM_GetMceData(8*1024, &u32PlayDataAddr);
        }

		if(stMceParam.playType == MCE_PLAY_TYPE_GPHFILE)
        {
            s32Ret = HI_PDM_GetMceData(stMceParam.contentLen, &u32PlayDataAddr);
        }
    }
#endif

    HI_PRINT("boot logo show!!!\n");

    return s32Ret;
	
}

HI_VOID SetLogLevel(HI_VOID)
{

#ifndef HI_ADVCA_FUNCTION_RELEASE

    HI_CHAR         *pLogLevel = HI_NULL;
    HI_U32          LogLevel = 1;
    HI_CHAR         aszEnvName[64];
    HI_S32          i;
    const HI_CHAR   *pszName;

    HI_LOG_Init();

    pLogLevel = getenv("loglevel");
    if (HI_NULL == pLogLevel)
    {
        HI_LOG_SetLevel(HI_ID_BUTT, 0);
    }
    else
    {
        LogLevel = simple_strtoul_2(pLogLevel, NULL, 10);
        if (LogLevel > HI_TRACE_LEVEL_DBG)
        {
            HI_LOG_SetLevel(HI_ID_BUTT, 0);
        }
        else
        {
            HI_LOG_SetLevel(HI_ID_BUTT, LogLevel);
        }
    }

    for (i=0; i<HI_ID_BUTT; i++)
    {
        pszName = HI_LOG_GetModuleName(i);
        if ((HI_NULL != pszName) && (strlen(pszName) > 0))
        {
            HI_OSAL_Snprintf(aszEnvName, sizeof(aszEnvName), "loglevel-%s", pszName, sizeof(aszEnvName));
            pLogLevel = getenv(aszEnvName);
            if (HI_NULL != pLogLevel)
            {
                LogLevel = simple_strtoul_2(pLogLevel, NULL, 10);
                if (LogLevel > HI_TRACE_LEVEL_DBG)
                {
                    LogLevel = 0;
                }
                HI_LOG_SetLevel(i, LogLevel);
            }
        }
    }

#endif
    return;
}

int LockIdWord(HI_VOID)
{
    return HI_SUCCESS;
#if 0    
#ifdef HI_ADVCA_SUPPORT		/* do not lock, when this is secure boot-image */

#ifndef HI_ADVCA_FUNCTION_RELEASE
	printf("This is secure boot-image, do not lock ID_Word!\n");
#endif
	return HI_SUCCESS;

#else
	HI_S32 ret = 0;
	HI_BOOL bLockFlag = HI_FALSE;
	HI_U32 u32Value = 0;

	/* do not lock, when this is secure chipset */
	u32Value = HI_OTP_Read(OTP_ADVCA_ID_WORD_ADDR);
	if(u32Value != NORMAL_ID_WORD)
	{
#ifndef HI_ADVCA_FUNCTION_RELEASE
		printf("This is secure chipset(current id_word: 0x%08x), do not lock ID_WORD!\n", u32Value);
#endif
		return HI_SUCCESS;
	}

	ret = HI_UNF_OTP_GetIDWordLockFlag(&bLockFlag);
	if (HI_SUCCESS != ret)
	{
        HI_ERR_MCE("Get ID_WORD lock flag failed! Ret = %x\n", ret);
		return HI_FAILURE;
	}

	if (bLockFlag == HI_TRUE)
	{
#ifndef HI_ADVCA_FUNCTION_RELEASE
        printf("ID_WORD has already been locked\n");
#endif
		return HI_SUCCESS;
	}

	/* Check and lock ID_WORD */
	ret = HI_UNF_OTP_LockIDWord();
	if (HI_SUCCESS != ret)
	{
        HI_ERR_MCE("Lock ID_WORD failed! Ret = %x\n", ret);
		return HI_FAILURE;
	}

#ifndef HI_ADVCA_FUNCTION_RELEASE
	printf("Lock ID_Word success!\n");	  // Please attention, this log must be print
#endif

	return HI_SUCCESS;
#endif
#endif
}


#ifdef HI_ADVCA_TYPE_VERIMATRIX
extern HI_S32 HI_CA_AuthenticateEntry_VMX(HI_VOID);
#endif
int fastapp_entry(int argc, char *argv[])
{
	HI_S32          Ret;
#if defined(CHIP_TYPE_hi3716mv310) || defined(CHIP_TYPE_hi3716mv320) || defined(CHIP_TYPE_hi3716mv330)
    HI_U32  hdmi_stat = -1;
#endif

    SetLogLevel();

    Ret = HI_MMZ_Init();
    if(HI_SUCCESS != Ret)
    {
        HI_INFO_MCE("HI_MMZ_Init err! Ret = %x\n", Ret);
        return Ret;
    }

/* lock ID_WORD for non-secure chipset and non-secure boot-image */
#if 0
    LockIdWord();
#endif

#ifndef HI_MINIBOOT_SUPPORT
#if defined(CONFIG_BOOTROM_SUPPORT)
    selfboot_from_udisk(NULL);
#endif
#endif

#if defined(HI_ADVCA_TYPE_NAGRA)
    HI_NASC_SBP_Process();
    return 0;
#elif defined(HI_ADVCA_TYPE_VERIMATRIX)
    return HI_CA_AuthenticateEntry_VMX();
#elif defined(HI_ADVCA_TYPE_CONAX)
    return HI_CA_AuthenticateEntry();
#elif defined(HI_ADVCA_SUPPORT)
    return HI_CA_Common_Authenticate();
#else
    Logo_Main(HI_NULL);
    HI_PDM_SetTagData(); 
#endif

#ifndef HI_ADVCA_SUPPORT
#ifdef HI_LOADER_SUPPORT
#ifndef HI_LOADER_SECONDBOOT
    Loader_Main();
#else
	Loader_SecMain();
#endif
#else
    HI_INFO_PRINT(HI_ID_SYS, "not support hisi loader!\n");
#endif
#endif

#if defined(CHIP_TYPE_hi3716mv310) || defined(CHIP_TYPE_hi3716mv320) || defined(CHIP_TYPE_hi3716mv330)
    hdmi_stat = HI_DRV_HDMI_UpdateStatus();
    if (hdmi_stat == 1 || hdmi_stat == 0)
    {
        HI_INFO_MCE("\nfastapp_entry : HDMI has been %s.\n", (hdmi_stat == 1) ? "Connected" : "Disconnected");
    }
#endif
 
    return HI_SUCCESS;
}

HI_U32 g_u32HDMI_update_status_flag = 0;
static HI_U32 hdmi_old_stat = 1;
HI_U32 hdmi_new_stat;

void update_hdmi_status()
{
#ifndef CHIP_TYPE_hi3110ev500 
    if(g_u32HDMI_update_status_flag == 1){
        hdmi_new_stat = HI_DRV_HDMI_UpdateStatus();

        if(hdmi_old_stat != hdmi_new_stat) {
            hdmi_old_stat = hdmi_new_stat;

            if(hdmi_new_stat == 1)
	        printf("\nHDMI has been Connected.\n\n");
            else if(hdmi_new_stat == 0)
	        printf("\nHDMI has been Disconnected.\n\n");
        }
    }
#endif  
}
