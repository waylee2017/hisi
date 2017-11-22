/******************************************************************************
*
* Copyright (C) 2014 Hisilicon Technologies Co., Ltd.  All rights reserved.
*
* This program is confidential and proprietary to Hisilicon  Technologies Co., Ltd. (Hisilicon),
*  and may not be copied, reproduced, modified, disclosed to others, published or used, in
* whole or in part, without the express prior written permission of Hisilicon.
*
******************************************************************************
File Name     : vo_wrap.c
Version       : Initial Draft
Author        : Hisilicon multimedia software group
Created       : 2010/02/12
Last Modified :
Description   :
Function List :
History       :
******************************************************************************/

//#include "hi_vo_wrap.h"
#include "optm_alg_api.h"
#include "optm_m_disp.h"
#include "optm_hifb.h"
#include "exports.h"
#include "optm_hal.h"

//#include "hi_fastplay.h"
/*-------------------------------------------------------------------
*  DAC Config
-------------------------------------------------------------------- */


#if  defined (BOARD_TYPE_hi3716mstb) || defined (BOARD_TYPE_hi3716mdmo) || defined (BOARD_TYPE_hi3716mref)
/* DAC */
#define DACMODE0 HI_UNF_DISP_DAC_MODE_HD_Y
#define DACMODE1 HI_UNF_DISP_DAC_MODE_HD_PR
#define DACMODE2 HI_UNF_DISP_DAC_MODE_HD_PB
#define DACMODE3 HI_UNF_DISP_DAC_MODE_SVIDEO_C
#define DACMODE4 HI_UNF_DISP_DAC_MODE_SVIDEO_Y
#define DACMODE5 HI_UNF_DISP_DAC_MODE_CVBS
/* SIO */
#elif defined (BOARD_TYPE_hi3716hdmo) || defined (BOARD_TYPE_hi3716hdmoverb) || defined (BOARD_TYPE_hi3716cdmoverb) || defined (BOARD_TYPE_hi3716ctst) \
       || defined (BOARD_TYPE_hi3716cref) || defined (BOARD_TYPE_hi3716crefs2) || defined (BOARD_TYPE_hi3716href)
/* DAC */
#define DACMODE0 HI_UNF_DISP_DAC_MODE_HD_PR
#define DACMODE1 HI_UNF_DISP_DAC_MODE_HD_Y
#define DACMODE2 HI_UNF_DISP_DAC_MODE_HD_PB
#define DACMODE3 HI_UNF_DISP_DAC_MODE_SVIDEO_C
#define DACMODE4 HI_UNF_DISP_DAC_MODE_SVIDEO_Y
#define DACMODE5 HI_UNF_DISP_DAC_MODE_CVBS
/* SIO */
#elif defined (BOARD_TYPE_hi3716cdmo)
/* DAC */
#define DACMODE0 HI_UNF_DISP_DAC_MODE_HD_PR
#define DACMODE1 HI_UNF_DISP_DAC_MODE_HD_Y
#define DACMODE2 HI_UNF_DISP_DAC_MODE_HD_PB
#define DACMODE3 HI_UNF_DISP_DAC_MODE_SVIDEO_C
#define DACMODE4 HI_UNF_DISP_DAC_MODE_SVIDEO_Y
#define DACMODE5 HI_UNF_DISP_DAC_MODE_CVBS
/* SIO */
#elif defined (BOARD_TYPE_hi3720tst1)
/* DAC */
#define DACMODE0 HI_UNF_DISP_DAC_MODE_HD_PR
#define DACMODE1 HI_UNF_DISP_DAC_MODE_HD_Y
#define DACMODE2 HI_UNF_DISP_DAC_MODE_HD_PB
#define DACMODE3 HI_UNF_DISP_DAC_MODE_SVIDEO_C
#define DACMODE4 HI_UNF_DISP_DAC_MODE_SVIDEO_Y
#define DACMODE5 HI_UNF_DISP_DAC_MODE_CVBS
/* SIO */
#elif defined (BOARD_TYPE_fpga)
/* DAC */
#define DACMODE0 HI_UNF_DISP_DAC_MODE_HD_PR
#define DACMODE1 HI_UNF_DISP_DAC_MODE_HD_Y
#define DACMODE2 HI_UNF_DISP_DAC_MODE_HD_PB
#define DACMODE3 HI_UNF_DISP_DAC_MODE_SVIDEO_C
#define DACMODE4 HI_UNF_DISP_DAC_MODE_SVIDEO_Y
#define DACMODE5 HI_UNF_DISP_DAC_MODE_CVBS
/* SIO */
#else
/* DAC */
#define DACMODE0 HI_UNF_DISP_DAC_MODE_HD_PR
#define DACMODE1 HI_UNF_DISP_DAC_MODE_HD_Y
#define DACMODE2 HI_UNF_DISP_DAC_MODE_HD_PB
#define DACMODE3 HI_UNF_DISP_DAC_MODE_SVIDEO_C
#define DACMODE4 HI_UNF_DISP_DAC_MODE_SVIDEO_Y
#define DACMODE5 HI_UNF_DISP_DAC_MODE_CVBS
#endif

static HI_S32 g_HdFmt;
HI_S32 bt470 = 0;

#ifdef __FASTBOOT_USE_LVDS__
extern HI_UNF_DISP_LCD_PARA_S g_sLcdPara;   // for lvds interface function
#endif
HI_UNF_DISP_INTERFACE_S g_stDac =
{.bScartEnable  = HI_FALSE,
 .bBt1120Enable = HI_FALSE,
 .bBt656Enable  = HI_FALSE,
 .enDacMode ={
    HI_UNF_DISP_DAC_MODE_SILENCE,   /* buckle board 2 -- middle */
    HI_UNF_DISP_DAC_MODE_SILENCE,   /* buckle board 1 -- top */
    HI_UNF_DISP_DAC_MODE_SILENCE,   /* buckle board 3 -- bottom */
    HI_UNF_DISP_DAC_MODE_SILENCE,   /* bottom board */
    //HI_UNF_DISP_DAC_MODE_SILENCE,   /* bottom board */
    //HI_UNF_DISP_DAC_MODE_SILENCE
    }   /* bottom board */
};


#ifndef HI_VDP_ONLY_SD_SUPPORT
#define DISP_CHECK_CHANNEL(enDisp)
//#define DISP_REVISE_CHANNEL(enDisp)
#else
/* ckeck the validity of DISP ID , only SD channel is valid and SD content is implemented by HD when the chip type is 3110EV500.*/
#define DISP_CHECK_CHANNEL(enDisp) \
    do {                               \
        if ((HI_UNF_DISP_SD0 != enDisp)) \
        {                           \
            HI_ERR_DISP("DISP: ch is not support.\n"); \
            return HI_ERR_DISP_NOT_SUPPORT;          \
        }                           \
        else if (HI_UNF_DISP_SD0 == enDisp)\
        {\
            enDisp = HI_UNF_DISP_HD0;\
        }\
    } while (0)

//#define DISP_REVISE_CHANNEL(enDisp) \
//    do {                               \
//        enDisp = HI_UNF_DISP_SD0; \
//    } while (0)
#endif

#ifdef HI_DISP_LCD_SUPPORT
OPTM_DISP_LCD_FMT_E DISP_ChangeLcdFmt(HI_UNF_ENC_FMT_E enfmt);
HI_S32 Disp_SetLcdFmt(HAL_DISP_OUTPUTCHANNEL_E enDisp, OPTM_M_DISP_S *pDispAttr);
#endif

HI_U32 OPTM_ALG_API_GetGzmeHfirCoef(int hfir_ratio, OPTM_GZME_COEF_S *pstGfxCoefAddr)
{
	HI_U32 coef = 0;
#if 0//lc
	if(ratio >= 4096)      coef = pstGfxCoefAddr->u32Coef8t8pCubicAddr;
	else if(ratio >= 2048) coef = pstGfxCoefAddr->u32Coef8t8pLanczos2Addr;
	else                   coef = pstGfxCoefAddr->u32Coef8t8p3MAddr;
#endif
	return coef;
}


/* Vou set coef or lut read update */
HI_BOOL  HAL_SetParaUpd(HAL_DISP_LAYER_E enLayer,  HAL_DISP_COEFMODE_E enMode)
{
#if 0//lc
    U_VOPARAUP VOPARAUP;

    VOPARAUP.u32 = RegRead(&(s_pVoReg->VOPARAUP.u32));

    switch(enLayer)
    {
        case HAL_DISP_LAYER_VIDEO1:
        {
            /* VHD layer coef addr */
            if(enMode == HAL_DISP_COEFMODE_HOR || enMode == HAL_DISP_COEFMODE_ALL)
            {
                VOPARAUP.bits.vhd_hcoef_upd = 0x1;
            }

            if(enMode == HAL_DISP_COEFMODE_VER || enMode == HAL_DISP_COEFMODE_ALL)
            {
                VOPARAUP.bits.vhd_vcoef_upd = 0x1;
            }

            if (enMode == HAL_DISP_COEFMODE_GAM || enMode == HAL_DISP_COEFMODE_ALL)
            {
                VOPARAUP.bits.dhd_acc_upd = 0x1;
            }

            break;
        }
        case HAL_DISP_LAYER_VIDEO2:
        {
            /* VHD layer coef addr */
            if(enMode == HAL_DISP_COEFMODE_HOR || enMode == HAL_DISP_COEFMODE_ALL)
            {
                VOPARAUP.bits.vad_hcoef_upd = 0x1;
            }

            if(enMode == HAL_DISP_COEFMODE_VER || enMode == HAL_DISP_COEFMODE_ALL)
            {
                VOPARAUP.bits.vad_vcoef_upd = 0x1;
            }

            if (enMode == HAL_DISP_COEFMODE_GAM || enMode == HAL_DISP_COEFMODE_ALL)
            {
                VOPARAUP.bits.dad_acc_upd = 0x1;
            }

            break;
        }
        case HAL_DISP_LAYER_VIDEO3:
        {
            /* VHD layer coef addr */
            if(enMode == HAL_DISP_COEFMODE_HOR || enMode == HAL_DISP_COEFMODE_ALL)
            {
                VOPARAUP.bits.vsd_hcoef_upd = 0x1;
            }

            if(enMode == HAL_DISP_COEFMODE_VER || enMode == HAL_DISP_COEFMODE_ALL)
            {
                VOPARAUP.bits.vsd_vcoef_upd = 0x1;
            }

            break;
        }
        case HAL_DISP_LAYER_WBC0:
        {
            /* VHD layer coef addr */
            if(enMode == HAL_DISP_COEFMODE_HOR || enMode == HAL_DISP_COEFMODE_ALL)
            {
                VOPARAUP.bits.vsd_hcoef_upd = 0x1;
            }

            if(enMode == HAL_DISP_COEFMODE_VER || enMode == HAL_DISP_COEFMODE_ALL)
            {
                VOPARAUP.bits.vsd_vcoef_upd = 0x1;
            }

            break;
        }
        case HAL_DISP_LAYER_GFX0:
        {
            /* VHD layer coef addr */
            if(enMode == HAL_DISP_COEFMODE_HOR || enMode == HAL_DISP_COEFMODE_ALL)
            {
                VOPARAUP.bits.g0_hcoef_upd = 0x1;
            }

            if (enMode == HAL_DISP_COEFMODE_LUT || enMode == HAL_DISP_COEFMODE_ALL)
            {
                VOPARAUP.bits.g0_lut_upd = 0x1;
            }

            break;
        }
        case HAL_DISP_LAYER_GFX1:
        {
            /* VHD layer coef addr */
            if(enMode == HAL_DISP_COEFMODE_HOR || enMode == HAL_DISP_COEFMODE_ALL)
            {
                VOPARAUP.bits.g1_hcoef_upd = 0x1;
            }

            if (enMode == HAL_DISP_COEFMODE_LUT || enMode == HAL_DISP_COEFMODE_ALL)
            {
                VOPARAUP.bits.g1_lut_upd = 0x1;
            }

            break;
        }

        default:
        {
            HI_INFO_DISP("Error, Wrong coef update layer select\n");
            return HI_FALSE;
        }
    }

    RegWrite(&(s_pVoReg->VOPARAUP.u32), VOPARAUP.u32);
#endif
    return HI_TRUE;
}


static OPTM_GZME_COEF_S g_stZmeModule;

OPTM_CS_E glb_csc = 0;

void parse_csc_sapce(void)
{
	const char *csc_ptr = NULL, *csc_ptr1 = NULL;
    const char *bootargs_str = getenv("bootargs");

	if(bootargs_str == NULL) {
	    glb_csc = OPTM_CS_eXvYCC_709;
		return ;
	}

	csc_ptr = strstr(bootargs_str, "tc_csc=");
	if(csc_ptr == NULL) {
	    glb_csc = OPTM_CS_eXvYCC_709;
		return ;
	}

	csc_ptr += strlen("tc_csc=");
	csc_ptr1 = csc_ptr;

	if((*csc_ptr != '0') && (*csc_ptr != '1')) {
        //printf(" wrong tc_csc input:%c.\n", *csc_ptr);
	    glb_csc =  OPTM_CS_eXvYCC_709;
		return ;
	}

	if(*csc_ptr == '0')
		glb_csc =  OPTM_CS_eXvYCC_709;
	else if(*csc_ptr == '1')
		glb_csc =  OPTM_CS_eRGB;

	return ;
}

OPTM_CS_E get_csc_space(void)
{
	return 	 glb_csc;
}

HI_VOID DISP_Init(HI_VOID)
{
    parse_csc_sapce();
    OPTM_M_InitDisp();
    Vou_SetCbmAttr(HAL_DISP_CHANNEL_DSD);
    OPTM_AA_InitGzmeCoef(&g_stZmeModule,HI_FALSE);
    return;
}

HI_VOID Disp_GetDftDacMode(HI_UNF_DISP_DAC_MODE_E *pDacMode)
{
    pDacMode[0] = DACMODE0;
    pDacMode[1] = DACMODE1;
    pDacMode[2] = DACMODE2;
    pDacMode[3] = DACMODE3;
    pDacMode[4] = DACMODE4;
    pDacMode[5] = DACMODE5;

    return;
}

HI_VOID Disp_GetDftAttr(HAL_DISP_OUTPUTCHANNEL_E enDisp, OPTM_M_DISP_S *pDispAttr)
{
    OPTM_M_GetDispDefaultAttr(enDisp, pDispAttr);

    return;
}

HI_VOID DISP_Open(HAL_DISP_OUTPUTCHANNEL_E enDisp, OPTM_M_DISP_S *pDispAttr)
{
    OPTM_M_HDATE_S     HdDate;
    OPTM_M_DATE_S      SdDate;

    OPTM_M_SetDispAttr(enDisp, pDispAttr);

    if (HAL_DISP_CHANNEL_DHD == enDisp)
    {
       if(pDispAttr->DispInfo.enFmt != HI_UNF_ENC_FMT_VESA_CUSTOMER_DEFINE) //  lvds interface function
       {
         OPTM_M_GetHDateDefaultAttr(0, &HdDate);

         HdDate.bEnable = HI_FALSE;

         HdDate.enFmt = pDispAttr->DispInfo.enFmt;

         OPTM_M_SetHDateAttr(0, &HdDate);
		     g_HdFmt = pDispAttr->DispInfo.enFmt;
       }
    }
    else
    {
        OPTM_M_GetDateDefaultAttr(0, &SdDate);

        SdDate.bEnable = HI_FALSE;

        SdDate.enFmt = pDispAttr->DispInfo.enFmt;

        OPTM_M_SetDateAttr(0, &SdDate);
    }

    return;
}

HI_VOID Disp_GetAttr(HAL_DISP_OUTPUTCHANNEL_E enDisp, OPTM_M_DISP_S *pDispAttr)
{
    OPTM_M_GetDispAttr(enDisp, pDispAttr);

    return;
}

HI_VOID Disp_SetAttr(HAL_DISP_OUTPUTCHANNEL_E enDisp, OPTM_M_DISP_S *pDispAttr)
{
    OPTM_M_HDATE_S     HdDate;
    OPTM_M_DATE_S      SdDate;

    OPTM_M_SetDispAttr(enDisp, pDispAttr);

    if (HAL_DISP_CHANNEL_DHD == enDisp)
    {
        if(pDispAttr->DispInfo.enFmt != HI_UNF_ENC_FMT_VESA_CUSTOMER_DEFINE) //  lvds interface
        {
           OPTM_M_GetHDateAttr(0, &HdDate);

           if (HdDate.enFmt != pDispAttr->DispInfo.enFmt)
           {
              HdDate.enFmt = pDispAttr->DispInfo.enFmt;

              OPTM_M_SetHDateAttr(0, &HdDate);
           }
        }
    }
    else
    {
        OPTM_M_GetDateDefaultAttr(0, &SdDate);

        if (SdDate.enFmt != pDispAttr->DispInfo.enFmt)
        {
            SdDate.enFmt = pDispAttr->DispInfo.enFmt;

            OPTM_M_SetDateAttr(0, &SdDate);
        }
    }

    return;
}

HI_S32 DISP_SetDacMode(HI_UNF_DISP_INTERFACE_S *pstDacMode)
{
    OPTM_M_DISP_S      HdDispAttr;
    HI_S32 nRet;

    nRet = OPTM_M_CheckDacMode(&(pstDacMode->enDacMode[0]));
    if (nRet != 0)
    {
        HI_ERR_DISP("DISP invalid dacmode!\n");
        return HI_FAILURE;
    }
#ifdef HI_DISP_SCART_SUPPORT
    OPTM_M_SetDateScartEn(0, pstDacMode->bScartEnable);
#endif
    OPTM_M_GetDispAttr(HAL_DISP_CHANNEL_DHD, &HdDispAttr);

    /* set DAC connection relationship */
    OPTM_M_ReviseHDDateConnection(&(pstDacMode->enDacMode[0]),HdDispAttr.DispInfo.enFmt,HdDispAttr.DispInfo.enType);

    OPTM_M_SetDefDacDelay();
    OPTM_M_ReviseHDDacDelay(&(pstDacMode->enDacMode[0]),HdDispAttr.DispInfo.enFmt,HdDispAttr.DispInfo.enType);

    OPTM_M_SetDacMode(&(pstDacMode->enDacMode[0]));

    g_stDac = *pstDacMode;
    return HI_SUCCESS;
}

HI_S32 Disp_SetTvFmt(HAL_DISP_OUTPUTCHANNEL_E enDisp, OPTM_M_DISP_S *pDispAttr)
{
	OPTM_M_DISP_S *pOptmDisp = pDispAttr;

    OPTM_M_SetDispEnable(enDisp, HI_FALSE);

    OPTM_M_SetDispEncFmt(enDisp, pOptmDisp->DispInfo.enFmt);

	if (enDisp == HAL_DISP_CHANNEL_DHD)
    {
        OPTM_M_DISP_HDMI_S stHdmiIntf;

        if(pOptmDisp->DispInfo.enFmt >= HI_UNF_ENC_FMT_576P_50)
        {
            stHdmiIntf.u32HsyncNegative = 1;
            stHdmiIntf.u32VsyncNegative = 1;
        }
        else
        {
            stHdmiIntf.u32HsyncNegative = 0;
            stHdmiIntf.u32VsyncNegative = 0;
        }
        stHdmiIntf.u32DvNegative = 0;

        if(pOptmDisp->DispInfo.enFmt >= HI_UNF_ENC_FMT_PAL)
        {
            stHdmiIntf.s32SyncType   = 1;
        	stHdmiIntf.s32CompNumber = 2;
        }
        else
        {
            stHdmiIntf.s32SyncType   = 1;
        	stHdmiIntf.s32CompNumber = 2; //
        }

    	stHdmiIntf.s32DataFmt = 0; //

        OPTM_M_SetDispHdmiIntf(pOptmDisp->enDisp, &stHdmiIntf);
        if(pOptmDisp->DispInfo.enFmt >= HI_UNF_ENC_FMT_PAL)
        {
            //set disable hdate
            OPTM_M_SetHDateEnable(0, HI_FALSE);
            //dhd connected to sdate
            OPTM_HAL_SetHSDateSelMux(enDisp, 1);

            OPTM_M_SetDateFmt(0, pOptmDisp->DispInfo.enFmt);
            OPTM_HAL_SetDateLumaDelay(HAL_DISP_CHANNEL_DSD, 0);

            {
                HAL_DISP_CLIP_S stClip;

                stClip.bClipEn        = HI_TRUE;
                stClip.u16ClipLow_y   = 0x10<<2;
                stClip.u16ClipLow_cb  = 0x10<<2;
                stClip.u16ClipLow_cr  = 0x10<<2;
                stClip.u16ClipHigh_y  = 0xeb<<2;
                stClip.u16ClipHigh_cb = 0xf0<<2;
                stClip.u16ClipHigh_cr = 0xf0<<2;

                HAL_DISP_SetIntfClip(enDisp, stClip);

                OPTM_HAL_SetDateChlp_en(HAL_DISP_CHANNEL_DSD, 0);
            }
                DISP_SetDacMode(&g_stDac);
        }
        else
        {
             OPTM_M_SetHDateEnable(0, HI_TRUE);

             OPTM_HAL_SetHSDateSelMux(enDisp, 0);

             OPTM_M_SetDateFmt(0, pOptmDisp->DispInfo.enFmt);

            //OPTM_M_SetHDateFmt(0, pOptmDisp->DispInfo.enFmt);


            {
                HAL_DISP_CLIP_S stClip;

                stClip.bClipEn        = HI_TRUE;
                stClip.u16ClipLow_y   = 4;
                stClip.u16ClipLow_cb  = 4;
                stClip.u16ClipLow_cr  = 4;
                stClip.u16ClipHigh_y  = 1020;
                stClip.u16ClipHigh_cb = 1020;
                stClip.u16ClipHigh_cr = 1020;

                HAL_DISP_SetIntfClip(enDisp, stClip);

                OPTM_HAL_SetDateChlp_en(HAL_DISP_CHANNEL_DSD, 1);
            }
        }
#ifdef HI_DISP_GAMMA_SUPPORT
        OPTM_M_SetDispGammaCoef(enDisp, pOptmDisp->DispInfo.enFmt);
		g_HdFmt = pOptmDisp->DispInfo.enFmt;
#endif
    }
    else
    {
        //OPTM_M_SetHDateFmt(0, pOptmDisp->DispInfo.enFmt);
        OPTM_M_SetDateEnable(0, HI_TRUE);

        OPTM_M_SetDateFmt(0, pOptmDisp->DispInfo.enFmt);

    }

    OPTM_M_SetDispEnable(enDisp, pOptmDisp->bEnable);

    if (enDisp == HAL_DISP_CHANNEL_DSD)
    {
	    /* Sync need be opened in the 1st DSD interrupt(), so it need a short delay here. */
        udelay(10 * 1000);
        OPTM_HAL_SetSync(enDisp, HI_TRUE);
    }

	return HI_SUCCESS;
}


HI_VOID DISP_SetEnable(HAL_DISP_OUTPUTCHANNEL_E enDisp, HI_BOOL bEnable)
{
    #if 0
    if (HAL_DISP_CHANNEL_DHD == enDisp)
    {
        OPTM_M_SetHDateEnable(0, bEnable);
    }
    else
    {
        OPTM_M_SetDateEnable(0, bEnable);
    }
	#endif

    OPTM_M_SetDispEnable(enDisp, bEnable);

    return;
}




/***************************************************/

HAL_DISP_OUTPUTCHANNEL_E Disp2Channel(HI_UNF_DISP_E enDisp)
{

    if (HI_UNF_DISP_HD0 == enDisp)
    {
        return HAL_DISP_CHANNEL_DHD;
    }
    else if (HI_UNF_DISP_SD0 == enDisp)
    {
        return HAL_DISP_CHANNEL_DSD;
    }
    else
    {
        return HAL_DISP_CHANNEL_BUTT;
    }
}


HI_U32 g_DispSetType = 0;


HI_S32 DISP_SetIntfType(HI_UNF_DISP_E enDisp, HI_UNF_DISP_INTF_TYPE_E enType)
{
    OPTM_M_DISP_S DispAttr;

    //Disp_GetAttr(enDisp,&DispAttr);
     HAL_DISP_OUTPUTCHANNEL_E enChan;

    if (HI_UNF_DISP_SD0 == enDisp)
        enChan = HAL_DISP_CHANNEL_DSD;
    else
        enChan = HAL_DISP_CHANNEL_DHD;

    OPTM_M_GetDispAttr(enChan, &DispAttr);
    if ((DispAttr.DispInfo.enType == enType) && g_DispSetType)
    {
        return HI_SUCCESS;
    }
    DispAttr.DispInfo.enType = enType;

    /* setting of CSCMODE*/
    if (DispAttr.DispInfo.enType == HI_UNF_DISP_INTF_TYPE_LCD)
    {
        DispAttr.enDstClrSpace = OPTM_CS_eRGB;
    }
    else
    {
        DispAttr.enDstClrSpace = (HI_UNF_DISP_SD0 == enDisp) ? OPTM_CS_eXvYCC_601 : OPTM_CS_eXvYCC_709;
    }

    OPTM_M_SetDispCscMode(DispAttr.enDisp, DispAttr.enSrcClrSpace, DispAttr.enDstClrSpace);

    if (HI_UNF_DISP_HD0 == enDisp)
    {
        /*HD */
        if (HI_UNF_DISP_INTF_TYPE_LCD == enType)
        {
#ifdef HI_DISP_LCD_SUPPORT
            /*LCD */
            OPTM_M_SetLcdDefaultPara(DispAttr.enDisp, OPTM_DISP_LCD_FMT_861D_640X480_60HZ);
            OPTM_HAL_SetHSDateSelMux(DispAttr.enDisp, 0);
            OPTM_M_SetDateFmt(DispAttr.enDisp, DispAttr.DispInfo.enFmt);
            OPTM_HAL_SetDateChlp_en(HAL_DISP_CHANNEL_DSD, 1);
            OPTM_HAL_SetDatepYbpr_lpf_en(HAL_DISP_CHANNEL_DSD, 0);
#else
            HI_ERR_DISP("not support LCD!!\n");
            return HI_FAILURE;
#endif
        }
        else
        {
            /*TV*/
            Disp_SetTvFmt( Disp2Channel(enDisp),&DispAttr);
        }
    }
    else
    {
        /*SD */
        Disp_SetTvFmt( Disp2Channel(enDisp),&DispAttr);
    }
    OPTM_M_SetDispIntfType(DispAttr.enDisp, DispAttr.DispInfo.enType);
    g_DispSetType = 1;
    return HI_SUCCESS;
}

HI_S32 HI_UNF_DISP_Init(HI_VOID)
{

    DISP_Init();
    //nRet = DISP_PreStatus();
    //if ( HI_SUCCESS != nRet)
    //{
        //HI_ERR_DISP("set PDM Disp Param err!\n");
   // }
     return HI_SUCCESS;
}


HI_S32 HI_UNF_DISP_DeInit(HI_VOID)
{
    return HI_SUCCESS;
}

HI_S32 HI_UNF_DISP_SetFormat(HI_UNF_DISP_E enDisp, HI_UNF_ENC_FMT_E enEncodingFormat)
{
    HI_U32 nRet;
    OPTM_M_HDATE_S     HdDate;
    OPTM_M_DATE_S      SdDate;

    OPTM_M_DISP_S      DispAttr;
    HAL_DISP_OUTPUTCHANNEL_E enChan;

    HI_CHIP_TYPE_E enChipType = HI_CHIP_TYPE_BUTT;
    HI_CHIP_VERSION_E enChipVersion = HI_CHIP_VERSION_BUTT;
    HI_DRV_SYS_GetChipVersion(&enChipType, &enChipVersion);
    if ((HI_CHIP_TYPE_BUTT == enChipType) || (HI_CHIP_VERSION_BUTT == enChipVersion))
    {
        HI_ERR_DISP("CHIP: invalid chipType or chipVersion.\n");
        return HI_ERR_DISP_INVALID_PARA;
    }

    if ((HI_CHIP_TYPE_HI3110E == enChipType ) && (HI_CHIP_VERSION_V500 == enChipVersion))
    {
        if ((HI_UNF_ENC_FMT_PAL > enEncodingFormat) || (HI_UNF_ENC_FMT_SECAM_COS < enEncodingFormat))
        {
            HI_ERR_DISP("DISP: invalid enEncFmt.\n");
            return HI_ERR_DISP_INVALID_PARA;
        }
    }

    DISP_CHECK_CHANNEL(enDisp);

    if (HI_UNF_DISP_SD0 == enDisp)
        enChan = HAL_DISP_CHANNEL_DSD;
    else
        enChan = HAL_DISP_CHANNEL_DHD;

    OPTM_M_GetDispAttr(enChan, &DispAttr);

#ifdef HI_DISP_LCD_SUPPORT
    OPTM_DISP_LCD_FMT_E enD_LCD_FMT;

    if (HI_UNF_DISP_HD0 != enDisp)
    {
        HI_ERR_DISP("this chanel is not  support LCD mode.\n");
        return HI_FALSE;
    }
    /*add  lcd Se tLcd Default format!*/
    if ((enEncodingFormat >= HI_UNF_ENC_FMT_861D_640X480_60) && (enEncodingFormat <= HI_UNF_ENC_FMT_VESA_2048X1152_60))
    {
        /*set LCD format*/
        nRet = DISP_SetIntfType(enDisp, HI_UNF_DISP_INTF_TYPE_LCD);
        if (nRet != HI_SUCCESS)
        {
            HI_ERR_DISP("call DISP_SetIntfType failed.\n");
            return nRet;
        }

        DispAttr.DispInfo.enLcdFmt = DISP_ChangeLcdFmt(enEncodingFormat);
        nRet = Disp_SetLcdFmt(HAL_DISP_CHANNEL_DHD,&DispAttr);
        if (nRet != HI_SUCCESS)
        {
            HI_ERR_DISP("call Disp_SetLcdFmt failed.\n");
        }
        return nRet;
    }
    else
#endif
    {
        if ((enEncodingFormat >= HI_UNF_ENC_FMT_861D_640X480_60) || ((HI_UNF_DISP_SD0 == enDisp)&&(enEncodingFormat < HI_UNF_ENC_FMT_PAL)))
        {
            HI_ERR_DISP("DISP: invalid enEncFmt.\n");
            return HI_FALSE;
        }
        DISP_SetIntfType(enDisp,HI_UNF_DISP_INTF_TYPE_TV);
    }


    if(enDisp == HI_UNF_DISP_HD0)
    {
        DispAttr.DispInfo.enFmt = enEncodingFormat;
        if(DispAttr.DispInfo.enFmt != HI_UNF_ENC_FMT_BUTT) //  lvds interface function
        {
            OPTM_M_GetHDateDefaultAttr(0, &HdDate);
            HdDate.bEnable = HI_FALSE;
            HdDate.enFmt = enEncodingFormat;
            OPTM_M_SetHDateAttr(0, &HdDate);
            OPTM_M_SetDacGc(DispAttr.DispInfo.enFmt);
       }
    }
    else if(enDisp == HI_UNF_DISP_SD0)
    {
        DispAttr.DispInfo.enFmt = enEncodingFormat;

        {
            OPTM_M_GetDateDefaultAttr(0, &SdDate);
            SdDate.bEnable = HI_FALSE;
            SdDate.enFmt = DispAttr.DispInfo.enFmt;
            OPTM_M_SetDateAttr(0, &SdDate);
        }
    }
    nRet = Disp_SetTvFmt( Disp2Channel(enDisp),&DispAttr);
    //printf("SetFormat %d-->%d-----ret(%d)",enDisp,enEncodingFormat,nRet);
    return nRet;
}

HI_S32 HI_UNF_DISP_SetDacMode(HI_UNF_DISP_INTERFACE_S *pstDacMode)
{
    return DISP_SetDacMode(pstDacMode);
}

#ifdef HI_DISP_LCD_SUPPORT
HI_S32 DISP_SetLcdPara(HI_UNF_DISP_E enDisp, HI_UNF_DISP_LCD_PARA_S *pstLcdPara)
{
    OPTM_M_DISP_S      DispAttr;
    OPTM_M_GetDispAttr(enDisp, &DispAttr);
/* modification */
   pstLcdPara->ClockReversal = HI_FALSE;                       /**< whether the clock will reverse */
   pstLcdPara->DataWidth     = HI_UNF_DISP_LCD_DATA_WIDTH24;   /**< data bit width */
   pstLcdPara->ItfFormat     = HI_UNF_DISP_LCD_FORMAT_RGB888;/**< data format */
   pstLcdPara->DitherEnable  = HI_FALSE;                       /**< whether to enable Dither*/

    OPTM_M_SetDispEnable(HAL_DISP_CHANNEL_DHD, HI_FALSE);
    OPTM_M_SetDispLcdPara(HAL_DISP_CHANNEL_DHD, pstLcdPara);
    OPTM_M_SetDispEnable(HAL_DISP_CHANNEL_DHD, DispAttr.bEnable);
    return HI_SUCCESS;
}


OPTM_DISP_LCD_FMT_E DISP_ChangeLcdFmt(HI_UNF_ENC_FMT_E enfmt)
{
    OPTM_M_D_LCD_FMT_E enMFmt;

    switch (enfmt)
    {
        case HI_UNF_ENC_FMT_861D_640X480_60:
        {
            enMFmt = OPTM_M_D_LCD_FMT_861D_640X480_60HZ;
            break;
        }
        case HI_UNF_ENC_FMT_VESA_800X600_60:
        {
            enMFmt = OPTM_M_D_LCD_FMT_VESA_800X600_60HZ;
            break;
        }
        case HI_UNF_ENC_FMT_VESA_1024X768_60:
        {
            enMFmt = OPTM_M_D_LCD_FMT_VESA_1024X768_60HZ;
            break;
        }
        case HI_UNF_ENC_FMT_VESA_1280X1024_60:
        {
            enMFmt = OPTM_M_D_LCD_FMT_VESA_1280X1024_60HZ;
            break;
        }
        case HI_UNF_ENC_FMT_VESA_1360X768_60:
        {
            enMFmt = OPTM_M_D_LCD_FMT_VESA_1360X768_60HZ;
            break;
        }
        case HI_UNF_ENC_FMT_VESA_1366X768_60:
        {
            enMFmt = OPTM_M_D_LCD_FMT_VESA_1366X768_60HZ;
            break;
        }
        case HI_UNF_ENC_FMT_VESA_1400X1050_60:
        {
            enMFmt = OPTM_M_D_LCD_FMT_VESA_1400X1050_60HZ;
            break;
        }
        case HI_UNF_ENC_FMT_VESA_1440X900_60:
        {
            enMFmt = OPTM_M_D_LCD_FMT_VESA_1440X900_60HZ;
            break;
        }
        case HI_UNF_ENC_FMT_VESA_1440X900_60_RB:
        {
            enMFmt = OPTM_M_D_LCD_FMT_VESA_1440X900_60HZ_RB;
            break;
        }
        case HI_UNF_ENC_FMT_VESA_1600X1200_60:
        {
            enMFmt = OPTM_M_D_LCD_FMT_VESA_1600X1200_60HZ;
            break;
        }
        case HI_UNF_ENC_FMT_VESA_1680X1050_60:
        {
            enMFmt = OPTM_M_D_LCD_FMT_VESA_1680X1050_60HZ;
            break;
        }
        case HI_UNF_ENC_FMT_VESA_1920X1200_60:
        {
            enMFmt = OPTM_M_D_LCD_FMT_VESA_1920X1200_60HZ;
            break;
        }
        case HI_UNF_ENC_FMT_VESA_2048X1152_60:
        {
            enMFmt = OPTM_M_D_LCD_FMT_VESA_2048X1152_60HZ;
            break;
        }
        case HI_UNF_ENC_FMT_VESA_1280X720_60:
        {
            enMFmt = OPTM_M_D_LCD_FMT_VESA_1280X720_60HZ;
            break;
        }
        case HI_UNF_ENC_FMT_VESA_1280X800_60:
        {
            enMFmt = OPTM_M_D_LCD_FMT_VESA_1280X800_60HZ;
            break;
        }
        case HI_UNF_ENC_FMT_VESA_1600X900_60_RB:
        {
            enMFmt = OPTM_M_D_LCD_FMT_VESA_1600X900_60HZ_RB;
            break;
        }
        case HI_UNF_ENC_FMT_VESA_1920X1080_60:
        {
            enMFmt = OPTM_M_D_LCD_FMT_VESA_1920X1080_60HZ;
            break;
        }
        // for lvds interface using customer define timing
        case HI_UNF_ENC_FMT_VESA_CUSTOMER_DEFINE:
        {
            enMFmt = OPTM_M_D_LCD_FMT_CUSTOMER_DEFINE;
            break;
        }
        default:
        {
            enMFmt = OPTM_M_D_LCD_FMT_BUTT;
        }
    }

    return enMFmt;
}

HI_S32 Disp_SetLcdFmt(HAL_DISP_OUTPUTCHANNEL_E enDisp, OPTM_M_DISP_S *pDispAttr)
{
    OPTM_M_D_LCD_FMT_E enMFmt = OPTM_M_D_LCD_FMT_BUTT;
    OPTM_M_SetDispEnable(enDisp, HI_FALSE);

    //enMFmt = DISP_ChangeLcdFmt(pDispAttr->DispInfo.enFmt);
    enMFmt = (OPTM_M_D_LCD_FMT_E)pDispAttr->DispInfo.enLcdFmt;
#ifdef __FASTBOOT_USE_LVDS__
    if(enMFmt == OPTM_M_D_LCD_FMT_CUSTOMER_DEFINE)
    {
       pDispAttr->DispInfo.LcdPara = g_sLcdPara;
       OPTM_M_SetDispLcdPara(enDisp, &(pDispAttr->DispInfo.LcdPara));

    }
    else
#endif
    {
       OPTM_M_SetLcdDefaultPara(enDisp, enMFmt);
    }
    OPTM_M_SetDispHdmiForLcd(enDisp, enMFmt);
    /*
    stHdmiIntf.u32HsyncNegative = 1;
    stHdmiIntf.u32VsyncNegative = 1;
    stHdmiIntf.u32DvNegative    = 0;

    stHdmiIntf.s32DataFmt    = 1;
    stHdmiIntf.s32CompNumber = 2;
    stHdmiIntf.s32SyncType   = 1;
    OPTM_M_SetDispHdmiIntf(pOptmDisp->enDispHalId, &stHdmiIntf);
    */
    OPTM_M_SetDispEnable(enDisp, pDispAttr->bEnable);
  return HI_SUCCESS;
}

HI_S32 HI_UNF_DISP_SetLcdPara(HI_UNF_DISP_E enDisp, const HI_UNF_DISP_LCD_PARA_S *pstLcdPara)

{
    HI_S32 nRet;
    DISP_CHECK_CHANNEL(enDisp);
    nRet = DISP_SetLcdPara(enDisp,pstLcdPara);
    return nRet;
}

#else
HI_S32 HI_UNF_DISP_SetLcdPara(HI_UNF_DISP_E enDisp, const HI_UNF_DISP_LCD_PARA_S *pstLcdPara)
{
    HI_ERR_DISP("not support LCD!!\n");
    return HI_FALSE;
}
#endif

HI_S32 HI_UNF_DISP_SetBgColor(HI_UNF_DISP_E enDisp, HI_UNF_DISP_BG_COLOR_S *pstBgColor)
{
    HI_S32 nRet;
    HAL_DISP_OUTPUTCHANNEL_E enDispChannel;
    DISP_CHECK_CHANNEL(enDisp);
    enDispChannel = Disp2Channel(enDisp);
    nRet = OPTM_M_SetDispBgc(enDispChannel,pstBgColor);
    return nRet;
}
HI_S32 HI_UNF_DISP_SetBrightness(HI_UNF_DISP_E enDisp, HI_U32 CscValue)
{
    HI_S32 nRet;
    HAL_DISP_OUTPUTCHANNEL_E enDispChannel;
    DISP_CHECK_CHANNEL(enDisp);
    enDispChannel = Disp2Channel(enDisp);
    nRet = OPTM_M_SetDispBright(enDispChannel,CscValue);
    return nRet;
}
HI_S32 HI_UNF_DISP_SetContrast(HI_UNF_DISP_E enDisp, HI_U32 CscValue)
{
    HI_S32 nRet;
    HAL_DISP_OUTPUTCHANNEL_E enDispChannel;
    DISP_CHECK_CHANNEL(enDisp);
    enDispChannel = Disp2Channel(enDisp);
    nRet = OPTM_M_SetDispContrast(enDispChannel,CscValue);
    return nRet;
}
HI_S32 HI_UNF_DISP_SetSaturation(HI_UNF_DISP_E enDisp, HI_U32 CscValue)
{
    HI_S32 nRet;
    HAL_DISP_OUTPUTCHANNEL_E enDispChannel;
    DISP_CHECK_CHANNEL(enDisp);
    enDispChannel = Disp2Channel(enDisp);
    nRet = OPTM_M_SetDispSaturation(enDispChannel,CscValue);
    return nRet;
}
HI_S32 HI_UNF_DISP_SetHuePlus(HI_UNF_DISP_E enDisp, HI_U32 CscValue)
{
    HI_S32 nRet;
    HAL_DISP_OUTPUTCHANNEL_E enDispChannel;
    DISP_CHECK_CHANNEL(enDisp);
    enDispChannel = Disp2Channel(enDisp);
    nRet = OPTM_M_SetDispHue(enDispChannel,CscValue);
    return nRet;
}


HI_S32 HI_UNF_DISP_Attach(HI_UNF_DISP_E enDstDisp, HI_UNF_DISP_E enSrcDisp)
{
#ifndef HI_VDP_ONLY_SD_SUPPORT
    OPTM_HAL_SetTrigger(HAL_DISP_CHANNEL_DSD,HI_TRUE);
#endif
    return HI_SUCCESS;
}
HI_S32 HI_UNF_DISP_Detach(HI_UNF_DISP_E enDstDisp, HI_UNF_DISP_E enSrcDisp)
{
#ifndef HI_VDP_ONLY_SD_SUPPORT
    OPTM_HAL_SetTrigger(HAL_DISP_CHANNEL_DSD,HI_FALSE);
#endif
    return HI_SUCCESS;
}

HI_S32 HI_UNF_DISP_Open (HI_UNF_DISP_E enDisp)
{
    HI_S32 nRet;
    HAL_DISP_OUTPUTCHANNEL_E enDispChan;
    DISP_CHECK_CHANNEL(enDisp);
    if ( HI_UNF_DISP_HD0 == enDisp)
        enDispChan = HAL_DISP_CHANNEL_DHD;
    else
         enDispChan = HAL_DISP_CHANNEL_DSD;

    nRet = OPTM_M_SetDispEnable(enDispChan, HI_TRUE);
    return nRet;
}
HI_S32 HI_UNF_DISP_Close(HI_UNF_DISP_E enDisp)
{
    return HI_SUCCESS;
}

HI_S32 HI_UNF_DISP_SetOutputWin(HI_UNF_DISP_E enDisp, HI_UNF_RECT_S *pstOutRect)
{
    HI_S32 nRet;
    HAL_DISP_OUTPUTCHANNEL_E enDispChannel;
    DISP_CHECK_CHANNEL(enDisp);
    enDispChannel = Disp2Channel(enDisp);
    nRet = OPTM_M_SetGfxScrnWin(enDispChannel, pstOutRect);
    return nRet;
}

/*------------------------END--------------------------*/
