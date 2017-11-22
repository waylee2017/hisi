























































/******************************************************************************

*
* Copyright (C) 2014 Hisilicon Technologies Co., Ltd.  All rights reserved.
*
* This program is confidential and proprietary to Hisilicon  Technologies Co., Ltd. (Hisilicon),
*  and may not be copied, reproduced, modified, disclosed to others, published or used, in
* whole or in part, without the express prior written permission of Hisilicon.
*

******************************************************************************
  File Name       	    :   optm_m_disp.c
  Version        		: 	Initial Draft
  Author         		: 	Hisilicon multimedia software group
  Created       		:
  Description  	        :
  History       		:
  1.Date        		:
    Author      		:
    Modification   	:	Created file

******************************************************************************/
#include "optm_m_disp.h"
#include "optm_hal.h"
#include "optm_alg_api.h"

#ifndef __BOOT__
#include "optm_debug.h"
#endif

#ifdef __cplusplus
 #if __cplusplus
extern "C" {
 #endif
#endif /* End of #ifdef __cplusplus */



static HAL_DISP_SYNCINFO_S s_stLcdSyncTiming[];

/**************************************************************
            DATE MODULE
*/
static OPTM_M_DATE_S s_stDate[1];

#ifdef CHIP_TYPE_hi3716mv330
static HI_U32 s_u32OptmTVClk_v330[][4] =
{
    /*
     * For MV330, VPLL output frequency is dicided by HDMI PHY.
     * Then, vou input clock will be:
           vou_input_clk = vpll_clk/(vou_clk_div+1)
           hd_input_clk = vou_input_clk/clk_hd_div
     * clk_hd_div is always 2(register value 0)
     */
    /* vpll_ctrl0,  vpll_ctrl1, vou_clk_div, clk_hd_div */
    {0x21000000,    0x1402063,  0x3,         0x0},   /* 74.25MHz(vpll output 594M, vou div 4(3+1), hd div 2(0x0)) */
    {0x21000000,    0x1402063,  0x1,         0x0},   /* 148.5MHz(vpll output 594M, vou div 2(1+1), hd div 2(0x0)) */
    {0x21E6AE6A,    0x402062,   0x3,         0x0},   /* 74.175175824MHz(74.25*0.999/0.999999)(vpll output 593.406593406M, vou div 4(3+1), hd div 2(0x0)) */
    {0x21E6AE6A,    0x402062,   0x1,         0x0},   /* 148.35164835MHz(148.5*0.999/0.999999)(vpll output 593.406593406M, vou div 2(1+1), hd div 2(0x0)) */
    {0x21000000,    0x1402048,  0x7,         0x0}    /* 27MHz(vpll output 432M, vou div 8(7+1), hd div 2(0x0)) */
};
#else
static HI_U32 s_u32OptmTVClk_v310[][2] =
{
    /* vpll_ctrl0, vpll_ctrl1 */
    {0x14000000, 0x02001063},   /* 74.25MHz */
    {0x12000000, 0x02001063},   /* 148.5MHz */
    {0x14E6AE6A, 0x1062},       /* 74.175175824MHz(74.25*0.999/0.999999) */
    {0x12E6AE6A, 0x1062}        /* 148.35164835MHz(148.5*0.999/0.999999) */
};
#endif

HI_S32 OPTM_M_GetDateDefaultAttr(HI_S32 ch, OPTM_M_DATE_S *pstDate)
{
    if(ch > 0)
    {
        return HI_FAILURE;
    }

    pstDate->bEnable = HI_TRUE;

    pstDate->enFmt = HI_UNF_ENC_FMT_PAL;
    pstDate->u32DateCoeff0 = 0;
    pstDate->u32CGain = DISP_SDATE_CGAIN;
    pstDate->bScartEn = HI_FALSE;
    pstDate->enMcvn = HI_UNF_DISP_MACROVISION_MODE_TYPE0;
    pstDate->au8DacSel[0] = 0;
    pstDate->au8DacSel[1] = 0;
    pstDate->au8DacSel[2] = 0;
    pstDate->au8DacSel[3] = 1;
    pstDate->au8DacSel[4] = 1;
    pstDate->au8DacSel[5] = 1;
    return HI_SUCCESS;
}

HI_S32 OPTM_M_GetDateAttr(HI_S32 ch, OPTM_M_DATE_S *pstDate)
{
    if ( (ch > 0) || (HI_NULL == pstDate) )
    {
        return HI_FAILURE;
    }

    memcpy(pstDate, &s_stDate[ch], sizeof(OPTM_M_DATE_S ));
    return HI_SUCCESS;
}


HI_S32 OPTM_M_SetDateAttr(HI_S32 ch, OPTM_M_DATE_S *pstDate)
{
    if(ch > 0)
    {
        return HI_FAILURE;
    }

    //OPTM_M_SetDateEnable(ch, HI_FALSE);
    OPTM_M_SetDateFmt(ch, pstDate->enFmt);
    OPTM_M_SetDateCGain(ch, pstDate->u32CGain);
#ifdef HI_DISP_MACROVISION_SUPPORT
    OPTM_M_SetDateMcvn(ch, pstDate->enMcvn);
#endif
    //OPTM_M_SetDateDacSel(ch, pstDate->au8DacSel);
    if (pstDate->u32DateCoeff0 != 0)
    {
        OPTM_M_SetDateCoeff0(ch, pstDate->u32DateCoeff0);
    }

#ifdef HI_DISP_SCART_SUPPORT
    OPTM_M_SetDateScartEn(ch, pstDate->bScartEn);
#endif

    OPTM_M_SetDateEnable(ch, pstDate->bEnable);


    return HI_SUCCESS;
}


HI_S32 OPTM_M_SetDateEnable(HI_S32 ch, HI_BOOL bEnable)
{
    if(ch > 0)
    {
        return HI_FAILURE;
    }

    s_stDate[ch].bEnable = bEnable;
    HAL_DATE_Enable(HAL_DISP_CHANNEL_DSD, bEnable);

    return HI_SUCCESS;
}

HI_U32 u32SDDATESrcHTimingCoef[][10]=
{
    /* NTSC  HTiming*/
    {0x12000 ,  0x1 ,  0xf ,   0x35a ,  0x40 ,  0x14,0x2ca},

   /* PAL  HTiming*/
     {0x00012C99 ,  0 ,  0 ,   0 ,  0 ,  0,0},
};

/* set SDATE format with corresponding properties */
HI_S32 OPTM_M_SetDateFmt(HI_S32 ch, HI_UNF_ENC_FMT_E enFmt)
{
	HI_U32 vn1, vn2;
    U_DATE_COEFF0 DATE_COEFF0;
    HI_U32 u32Phase;
    HI_U32 TtxMode;// = 1;
    HAL_OPTM_VERSION  vou_version;
    HI_U32 cff0tmp;

    vou_version = HAL_GetChipsetVouVersion();
    if(ch > 0)
    {
        return HI_FAILURE;
    }

    /* default PAL for DTO init phase */
    u32Phase = OPTM_M_DATE_DTO_INIT_PHASE_PAL;

    /* default TTX mode "" */
    TtxMode = 1;
    s_stDate[ch].enFmt = enFmt;

    /* 20120728, g45208, add for scart : reserve [rgb_en] and [sync_mode_scart] bit */
    cff0tmp = OPTM_HAL_DISP_GetDateCoeff(HAL_DISP_CHANNEL_DSD, 0);
    cff0tmp &= 0x01008000ul;

    switch (enFmt)
    {
        case HI_UNF_ENC_FMT_PAL:
        //case HI_UNF_ENC_FMT_PAL_TEST1440:
            DATE_COEFF0.u32 = 0x620410dc;
	    /* bugfix for mv300 */
#if 0
	    if (vou_version == HAL_OPTM_VERSION_V300)
	    {
		    DATE_COEFF0.u32 |= 0x8000000;
	    }
#endif
            break;

        case HI_UNF_ENC_FMT_PAL_N:
            DATE_COEFF0.u32 = 0x420810dc;
            break;

        case HI_UNF_ENC_FMT_PAL_Nc:
            DATE_COEFF0.u32 = 0x621010dc;
            break;

        case HI_UNF_ENC_FMT_SECAM_SIN:
            DATE_COEFF0.u32 = 0x622010fc;
            DATE_COEFF0.bits.fm_sel = 0;
            break;

        case HI_UNF_ENC_FMT_SECAM_COS:
            DATE_COEFF0.u32 = 0x622010fc;
            DATE_COEFF0.bits.fm_sel = 1;
            break;

        case HI_UNF_ENC_FMT_NTSC:
            DATE_COEFF0.u32 = 0x410dc;
            TtxMode = 2;
            u32Phase = OPTM_M_DATE_DTO_INIT_PHASE_NTSC;
            break;

        case HI_UNF_ENC_FMT_NTSC_J:
            DATE_COEFF0.u32 = 0x200810dc;
            TtxMode = 2;
            u32Phase = OPTM_M_DATE_DTO_INIT_PHASE_NTSC;
            break;

        case HI_UNF_ENC_FMT_NTSC_PAL_M:
            DATE_COEFF0.u32 = 0x401010dc;
            TtxMode = 2;
            break;

        default:
            DATE_COEFF0.u32 = 0x620410dc;
            break;
    }

    /* 20120728, g45208, add for scart : reserve [rgb_en] and [sync_mode_scart] bit */
    /* no use of RGB output*/
    //DATE_COEFF0.bits.rgb_en = 0;
    DATE_COEFF0.u32 |= cff0tmp;

    OPTM_HAL_DISP_SetDateCoeff(HAL_DISP_CHANNEL_DSD, 0, DATE_COEFF0.u32);
    OPTM_HAL_SetDatePhaseDelta(HAL_DISP_CHANNEL_DSD, u32Phase);
    VDP_Set_SDateSrcCoef(DISP_SDATE_SRC_COEF_INDEX_PAL_NTSC);

    if ((HI_UNF_ENC_FMT_NTSC == enFmt ) ||(HI_UNF_ENC_FMT_NTSC_J == enFmt ) )
    {
		/* NTSC  Htimng*/
        VDP_DATE_SetHTiming(1,(HI_U32 *)&u32SDDATESrcHTimingCoef[0]);
        OPTM_HAL_SetDateBT470(HAL_DISP_CHANNEL_DSD, 0);
    }
    else
    {
		/* PAL  Htimng*/
        VDP_DATE_SetHTiming(1,(HI_U32 *)&u32SDDATESrcHTimingCoef[1]);
        OPTM_HAL_SetDateBT470(HAL_DISP_CHANNEL_DSD, 1);
    }

#ifdef HI_DSIP_TTX_SUPPORT
    /* VBI data filtering enable */
    DRV_VOU_VbiFilterEnable(HI_TRUE);

    DRV_VOU_TtxSetMode(TtxMode);
#endif

    /* Get vou version */
    OPTM_HAL_GetVersion(&vn1, &vn2);

    /* v100 set luma_dl is 0x1001 */
    if ((OPTM_V101_VERSION1 == vn1) && (OPTM_V101_VERSION2 == vn2))
    {
        //OPTM_HAL_SetDateLumaDelay(HAL_DISP_CHANNEL_DSD, 9);
    }

    return HI_SUCCESS;
}

HI_S32 OPTM_M_SetDateCoeff0(HI_S32 ch, HI_U32 u32Coeff0)
{
    if(ch > 0)
    {
        return HI_FAILURE;
    }

    s_stDate[ch].u32DateCoeff0 = u32Coeff0;
    OPTM_HAL_DISP_SetDateCoeff(HAL_DISP_CHANNEL_DSD, 0, u32Coeff0);

    return HI_SUCCESS;
}

HI_S32 OPTM_M_SetDateCGain(HI_S32 ch, HI_U32 u32CGain)
{
   /* HMinghu 0415;
    * This function is called by OPTM_M_SetDateAttr.
    * Thus, this check is not necessary.
    */
    if(ch > 0)
    {
        return HI_FAILURE;
    }

    s_stDate[ch].u32CGain = u32CGain;

    /* set color synchronization gain */
    OPTM_HAL_DISP_SetDateCgain(HAL_DISP_CHANNEL_DSD, u32CGain);

    return HI_SUCCESS;
}

#ifdef HI_DISP_MACROVISION_SUPPORT
static HI_U32 g_MacrovisionCoef[6][4][5]=
{
#if 0
	{
		{0x0,       0x0,      0x0,     0x0,       0x0},
		{0x8aa89a36,0x14f5c15,0xaa03fe,0x10607efe,0x800aaf40},
		{0x8aa89a36,0x14f5c15,0xaa03fe,0x10607efe,0x800aaf40},
		{0x8aa89a36,0x14f5c15,0xaa03fe,0x10607efe,0x800aaf40}
	},    /*PAL  PAL_N  PAL_Nc */
#else
    // 2011.9.17 ange for zg by caobin, according to new macrovision standard
	{
		{0x0,       0x0,      0x0,     0x0,       0x0},
		{0x8aa89a36,0x14f5c15,0xaa03fe,0x10407efe,0x800aaf40},
		{0x8aa89a36,0x14f5c15,0xaa03fe,0x10607efe,0x800aaf40},
		{0x8aa89a36,0x14f5c15,0xaa03fe,0x10507efe,0x800aaf40}
	},    /*PAL  PAL_N  PAL_Nc */

#endif

#if 0
	{
		{0x0,       0x0,      0x0,  0x0,       0x0},
		{0x46545d36,0x246db39,0x7f8,0x15600f0f,0x801ffc50},
		{0x46545d3e,0x246db39,0x7f8,0x15600f0f,0x801ffc50},
		{0x5615573e,0x246dbad,0x7f8,0x15500f0f,0x801ffc50}
	},    /*NTSC NTSC_J */
#else
    // 2011.9.17 ange for zg by caobin, according to new macrovision standard
	{
		{0x0,       0x0,      0x0,  0x0,       0x0},
		{0x46545d36,0x246db39,0x7f8,0x15400f0f,0x801ffc50},
		{0x46545d3e,0x246db39,0x7f8,0x15600f0f,0x801ffc50},
		{0x5615573e,0x246dbad,0x7f8,0x15500f0f,0x801ffc50}
	},    /*NTSC NTSC_J */

#endif

	{
		{0x0,		0x0,	  0x0,	0x0,	   0x0},
		{0x56155736,0x246dbad,0x7f8,0x15600f0f,0x801ffc50},
		{0x46545d36,0x246db39,0x7f8,0x15600f0f,0x801ffc50},
		{0x56155736,0x246dbad,0x7f8,0x15600f0f,0x801ffc50}
	},	  /* NTSC_PAL_M*/

#if 0
	{
		{0x0,	    0x0,      0x0,     0x0,	  0x0       },
		{0x8aa89a36,0x14f5c15,0xaa03fe,0x10507efe,0x800aaf40},
		{0x8aa89a36,0x14f5c15,0xaa03fe,0x10507efe,0x800aaf40},
		{0x8aa89a36,0x14f5c15,0xaa03fe,0x10507efe,0x800aaf40}
	},	  /*SECAM */
#else
    // 2011.9.17 ange for zg by caobin, according to new macrovision standard
	{
		{0x0,	    0x0,      0x0,     0x0,	  0x0       },
		{0x8aa89a36,0x14f5c15,0xaa03fe,0x10407efe,0x800aaf40},
		{0x8aa89a36,0x14f5c15,0xaa03fe,0x10607efe,0x800aaf40},
		{0x8aa89a36,0x14f5c15,0xaa03fe,0x10407efe,0x800aaf40}
	},	  /*SECAM SIN/COS */
#endif

	{
		{0x0,	    0x0,      0x0,  0x0,       0x0     },
		{0x56155736,0x246dbad,0x7f8,0x15601e1e,0x1ffc50},
		{0x56155736,0x246dbad,0x7f8,0x15601e1e,0x1ffc50},
		{0x56155736,0x246dbad,0x7f8,0x15601e1e,0x1ffc50}
	},	/*PAL_60*/

	{
		{0x0,	    0x0,      0x0,  0x0,       0x0     },
		{0x56155736,0x246dbad,0x7f8,0x15500f0f,0x1ffc50},
		{0x56155736,0x246dbad,0x7f8,0x15500f0f,0x1ffc50},
		{0x56155736,0x246dbad,0x7f8,0x15500f0f,0x1ffc50}
	},	/*NTSC_443*/


};
HI_S32 OPTM_M_SetDateMcvn(HI_S32 ch, HI_UNF_DISP_MACROVISION_MODE_E enMcvn)
{
    HI_U32 *pu32McvnDate;

	switch (s_stDate[ch].enFmt)
	{
	     case HI_UNF_ENC_FMT_SECAM_COS:
 	     case HI_UNF_ENC_FMT_SECAM_SIN:
		 	if(enMcvn >= 4)
                           return HI_SUCCESS;
			pu32McvnDate = g_MacrovisionCoef[3][enMcvn];
			break;

		 case HI_UNF_ENC_FMT_NTSC_PAL_M:

		 	if(enMcvn >= 4)
                           return HI_SUCCESS;
			pu32McvnDate = g_MacrovisionCoef[2][enMcvn];
			break;

         case HI_UNF_ENC_FMT_NTSC:
         case HI_UNF_ENC_FMT_NTSC_J:

		 	if(enMcvn >= 4)
                           return HI_SUCCESS;
			pu32McvnDate = g_MacrovisionCoef[1][enMcvn];
			break;

         case HI_UNF_ENC_FMT_PAL:
         case HI_UNF_ENC_FMT_PAL_N:
         case HI_UNF_ENC_FMT_PAL_Nc:

		 	if(enMcvn >= 4)
                           return HI_SUCCESS;
			pu32McvnDate = g_MacrovisionCoef[0][enMcvn];
			break;

		 default:
			pu32McvnDate = g_MacrovisionCoef[0][0];
			break;
	}

    OPTM_HAL_DATE_SetMcvn(ch, pu32McvnDate);
    s_stDate[ch].enMcvn = enMcvn;

    return HI_SUCCESS;
}
#endif

HI_S32 OPTM_M_SetDateDacSel(HI_S32 ch, HI_U8 *pu8DacSel)
{
    U_DATE_COEFF21 OutCtrl;
    HI_S32 i;

    if(ch > 0)
    {
        return HI_FAILURE;
    }

    for(i=0; i<OPTM_M_DATE_DAC_MAX_NUMBER; i++)
    {
        s_stDate[ch].au8DacSel[i] = pu8DacSel[i];
    }

    OutCtrl.bits.dac0_in_sel = s_stDate[ch].au8DacSel[0] & 0xf;
    OutCtrl.bits.dac1_in_sel = s_stDate[ch].au8DacSel[1] & 0xf;
    OutCtrl.bits.dac2_in_sel = s_stDate[ch].au8DacSel[2] & 0xf;
    OutCtrl.bits.dac3_in_sel = s_stDate[ch].au8DacSel[3] & 0xf;
    OutCtrl.bits.dac4_in_sel = s_stDate[ch].au8DacSel[4] & 0xf;
    OutCtrl.bits.dac5_in_sel = s_stDate[ch].au8DacSel[5] & 0xf;

    OPTM_HAL_DATE_OutCtrl(HAL_DISP_CHANNEL_DSD, OutCtrl.u32);

    return HI_SUCCESS;
}

#ifdef HI_DISP_SCART_SUPPORT
HI_S32 OPTM_M_SetDateScartEn(HI_S32 ch, HI_BOOL bEnable)
{
    if(ch > 0)
    {
        return HI_FAILURE;
    }

    s_stDate[ch].bScartEn = bEnable;

    /* set coefficients of DATE SCART */
    OPTM_HAL_SetDateScart(HAL_DISP_CHANNEL_DSD, bEnable);

    return HI_SUCCESS;
}
#endif

/**************************************************************
                        HDATE MODULE
 **************************************************************/

static OPTM_M_HDATE_S s_stHDate[1];

HI_S32 OPTM_M_GetHDateDefaultAttr(HI_S32 ch, OPTM_M_HDATE_S *pstHDate)
{
    if(ch > 0)
    {
        return HI_FAILURE;
    }
	pstHDate->bEnable = HI_TRUE;

    /* Date Attribute */
	pstHDate->enFmt = HI_UNF_ENC_FMT_720P_50;

	pstHDate->u32Pola = 7;    /* bit5~0: 0, anode; 1, negative */

	pstHDate->bSdSel = HI_FALSE;
	pstHDate->bLpfEn = HI_TRUE;

    /* temporary modification, to make the output of FPGA platform
     * be received by Konka TV, however,
     * the chroma is not correct
     */
    //pstHDate->u32SrcCtrl = 0;

    pstHDate->u32SrcCtrl = 2; /* 2, 2x */

	pstHDate->u32CscCtrl     = 0; /* 0, YCbCr->YPbPr;  */
	pstHDate->u32VidOutCtrl  = 1; /* 0, RGB; 1, YPbPr; 2, VGA */
	pstHDate->u32SyncAddCtrl = 2; /* bit0, R/Pr; bit1, G/Y; bit2, B/Pb */
	pstHDate->enMcvn = HI_UNF_DISP_MACROVISION_MODE_TYPE0;

    /* bit1~0: dacX interface select; */
	pstHDate->au8DacSel[0] = 0;
	pstHDate->au8DacSel[1] = 0;
	pstHDate->au8DacSel[2] = 3;
	pstHDate->au8DacSel[3] = 2;
	pstHDate->au8DacSel[4] = 1;

    return HI_SUCCESS;
}

HI_S32 OPTM_M_GetHDateAttr(HI_S32 ch, OPTM_M_HDATE_S *pstHDate)
{
    if ( (ch > 0) || (HI_NULL == pstHDate) )
    {
        return HI_FAILURE;
    }

    memcpy(pstHDate, &s_stHDate[ch], sizeof(OPTM_M_HDATE_S ));
    return HI_SUCCESS;
}

HI_S32 OPTM_M_SetHDateAttr(HI_S32 ch, OPTM_M_HDATE_S *pstDate)
{
    if(ch > 0)
    {
        return HI_FAILURE;
    }

    //OPTM_M_SetHDateEnable(ch, HI_FALSE);

    OPTM_M_SetHDateFmt(ch, pstDate->enFmt);

    OPTM_M_SetHDateSd(ch, pstDate->bSdSel);
    OPTM_M_SetHDateLpf(ch, pstDate->bLpfEn);

    OPTM_M_SetHDateSrc(ch, pstDate->u32SrcCtrl);

    OPTM_M_SetHDatePola(ch, pstDate->u32Pola);
    OPTM_M_SetHDateCsc(ch, pstDate->u32CscCtrl);
    OPTM_M_SetHDateVidOut(ch, pstDate->u32VidOutCtrl);
    OPTM_M_SetHDateSyncAdd(ch, pstDate->u32SyncAddCtrl);
#ifdef HI_DISP_MACROVISION_SUPPORT
    OPTM_M_SetHDateMcvn(ch, pstDate->enMcvn);
#endif
    //OPTM_M_SetHDateDacSel(ch, pstDate->au8DacSel);

    OPTM_M_SetHDateEnable(ch, pstDate->bEnable);

    return HI_SUCCESS;
}

HI_S32 OPTM_M_SetHDateEnable(HI_S32 ch, HI_BOOL bEnable)
{
    if(ch > 0)
    {
        return HI_FAILURE;
    }

    s_stHDate[ch].bEnable = bEnable;
    HAL_DATE_Enable(HAL_DISP_CHANNEL_DHD, bEnable);

    return HI_SUCCESS;
}

HI_S32 OPTM_M_SetHDateFmt(HI_S32 ch, HI_UNF_ENC_FMT_E enFmt)
{
    HI_U32 value;

    if(ch > 0)
    {
        return HI_FAILURE;
    }

    s_stHDate[ch].enFmt = enFmt;

    switch (enFmt)
    {
        case HI_UNF_ENC_FMT_1080P_60:
        case HI_UNF_ENC_FMT_1080P_50:
        case HI_UNF_ENC_FMT_1080P_30:
        case HI_UNF_ENC_FMT_1080P_25:
#ifndef CHIP_TYPE_hi3716mv330
        case HI_UNF_ENC_FMT_1080P_24:
#endif
        {
            value = 0x3;
            VDP_Set_HDateSrc13Coef(DISP_HDATE_SRC_COEF_INDEX_1080P);
            break;
        }

        case HI_UNF_ENC_FMT_1080i_60:
        case HI_UNF_ENC_FMT_1080i_50:
        {
            value = 0x4;
            VDP_Set_HDateSrc13Coef(DISP_HDATE_SRC_COEF_INDEX_1080I);
            break;
        }
#ifdef CHIP_TYPE_hi3716mv330
        case HI_UNF_ENC_FMT_1080P_24:
#endif
        case HI_UNF_ENC_FMT_720P_60:
        case HI_UNF_ENC_FMT_720P_50:
        {
            value = 0x2;
            VDP_Set_HDateSrc13Coef(DISP_HDATE_SRC_COEF_INDEX_720P);
            break;
        }
        case HI_UNF_ENC_FMT_576P_50:
        {
            value = 0x1;
            VDP_Set_HDateSrc13Coef(DISP_HDATE_SRC_COEF_INDEX_576P);
            break;
        }
        case HI_UNF_ENC_FMT_480P_60:
        {
            value = 0;
            VDP_Set_HDateSrc13Coef(DISP_HDATE_SRC_COEF_INDEX_480P);
            break;
        }
        default:
        {
            value = 0x2;
            VDP_Set_HDateSrc13Coef(DISP_HDATE_SRC_COEF_INDEX_720P);
            break;
        }
    }

    OPTM_HAL_HDATE_VideoFmt(HAL_DISP_CHANNEL_DHD, value);

    return HI_SUCCESS;
}

HI_S32 OPTM_M_SetHDatePola(HI_S32 ch, HI_U32 u32Pola)
{
    if(ch > 0)
    {
        return HI_FAILURE;
    }

    s_stHDate[ch].u32Pola = u32Pola;
    OPTM_HAL_HDATE_PolaCtrl(HAL_DISP_CHANNEL_DHD, u32Pola);
    return HI_SUCCESS;
}

HI_S32 OPTM_M_SetHDateSd(HI_S32 ch, HI_BOOL bSdSel)
{
    if(ch > 0)
    {
        return HI_FAILURE;
    }

    s_stHDate[ch].bSdSel = bSdSel;
    OPTM_HAL_SetDateSdSel(HAL_DISP_CHANNEL_DHD, (HI_U32)bSdSel);
    return HI_SUCCESS;
}

HI_S32 OPTM_M_SetHDateLpf(HI_S32 ch, HI_BOOL bLpfEn)
{
    if(ch > 0)
    {
        return HI_FAILURE;
    }

    s_stHDate[ch].bLpfEn = bLpfEn;
    OPTM_HAL_SetDateLfpEnable(HAL_DISP_CHANNEL_DHD, (HI_U32)bLpfEn);
    return HI_SUCCESS;
}

HI_S32 OPTM_M_SetHDateSrc(HI_S32 ch, HI_U32 u32SrcCtrl)
{
    if(ch > 0)
    {
        return HI_FAILURE;
    }

    s_stHDate[ch].u32SrcCtrl = u32SrcCtrl;
    OPTM_HAL_HDATE_SrcCtrl(HAL_DISP_CHANNEL_DHD, u32SrcCtrl);
    return HI_SUCCESS;
}

HI_S32 OPTM_M_SetHDateCsc(HI_S32 ch, HI_U32 u32CscCtrl)
{
    if(ch > 0)
    {
        return HI_FAILURE;
    }

    s_stHDate[ch].u32CscCtrl = u32CscCtrl;
    OPTM_HAL_HDATE_CscCtrl(HAL_DISP_CHANNEL_DHD, u32CscCtrl);
    return HI_SUCCESS;
}

HI_S32 OPTM_M_SetHDateVidOut(HI_S32 ch, HI_U32 u32VidOutCtrl)
{
    if(ch > 0)
    {
        return HI_FAILURE;
    }

    s_stHDate[ch].u32VidOutCtrl = u32VidOutCtrl;
    OPTM_HAL_HDATE_VideoOutFmt(HAL_DISP_CHANNEL_DHD, u32VidOutCtrl);
    return HI_SUCCESS;
}

HI_S32 OPTM_M_SetHDateSyncAdd(HI_S32 ch, HI_U32 u8SyncAddCtrl)
{
    if(ch > 0)
    {
        return HI_FAILURE;
    }

    s_stHDate[ch].u32SyncAddCtrl = u8SyncAddCtrl;
    OPTM_HAL_HDATE_SyncAddCtrl(HAL_DISP_CHANNEL_DHD, u8SyncAddCtrl);
    return HI_SUCCESS;
}

#ifdef  HI_DISP_MACROVISION_SUPPORT
HI_S32 OPTM_M_SetHDateMcvn(HI_S32 ch, HI_UNF_DISP_MACROVISION_MODE_E enMcvn)
{
    if(ch > 0)
    {
        return HI_FAILURE;
    }

    s_stHDate[ch].enMcvn = enMcvn;
    //TODO

    return HI_SUCCESS;
}
#endif

HI_S32 OPTM_M_SetHDateDacSel(HI_S32 ch, HI_U8 *pu8DacSel)
{
    U_HDATE_OUT_CTRL OutCtrl;
    HI_S32 i;

    if(ch > 0)
    {
        return HI_FAILURE;
    }
    s_stHDate[ch].au8DacSel[0]  = 0;
    s_stHDate[ch].au8DacSel[1]  = 0;

    for(i=0; i<OPTM_M_HDATE_DAC_MAX_NUMBER; i++)
    {
        s_stHDate[ch].au8DacSel[2+i] = pu8DacSel[i];
    }

    OutCtrl.u32 = 0;
    OutCtrl.bits.vsync_sel = 0;
    OutCtrl.bits.hsync_sel = 0;
    OutCtrl.bits.video1_sel= s_stHDate[ch].au8DacSel[2] & 0x3;
    OutCtrl.bits.video2_sel= s_stHDate[ch].au8DacSel[3] & 0x3;
    OutCtrl.bits.video3_sel= s_stHDate[ch].au8DacSel[4] & 0x3;

    OPTM_HAL_DATE_OutCtrl(HAL_DISP_CHANNEL_DHD, OutCtrl.u32);

    return HI_SUCCESS;
}



/**************************************************************
                        VOMUX MODULE
 **************************************************************/

volatile U_PERI_CRG53 *g_PERI_CRG53 = HI_NULL;
volatile U_PERI_CRG54 *g_PERI_CRG54 = HI_NULL;
volatile U_PERI_CRG71 *g_PERI_CRG71 = HI_NULL;


HI_U32 g_pOptmRegVirAddr = 0;

volatile HI_U32 *g_pSysVPLL0_CFG  = HI_NULL;
volatile HI_U32 *g_pSysVPLL1_CFG  = HI_NULL;

static U_PERI_CRG53 g_PERI_CRG53_Back;
static U_PERI_CRG54 g_PERI_CRG54_Back;
static U_PERI_CRG71 g_PERI_CRG71_Back;


static HI_U32 g_pSysVPLL0_CFG_Back;
static HI_U32 g_pSysVPLL1_CFG_Back;

#ifdef CHIP_TYPE_hi3716mv330
volatile U_PERI_CRG68 *g_PERI_CRG68 = HI_NULL;
static U_PERI_CRG68 g_PERI_CRG68_Back;
#endif

static OPTM_M_DISP_S s_stDisp[OPTM_M_MAX_DISPLAY]; /* 0, DHD; 1, DSD */

MMZ_BUFFER_S   g_DispRegBuf;

static OPTM_M_VOMUX_S s_stVomux;

#if 0
HI_S32 OPTM_M_GetVomuxDefaultAttr(OPTM_M_VOMUX_S *pstVomux)
{
    pstVomux->au8DacSel[0] = 3;
    pstVomux->au8DacSel[1] = 3;
    pstVomux->au8DacSel[2] = 3;
    pstVomux->au8DacSel[3] = 1;
    //pstVomux->au8DacSel[4] = 1;
    //pstVomux->au8DacSel[5] = 1;
    return HI_SUCCESS;
}

HI_S32 OPTM_M_SetVomuxAttr(OPTM_M_VOMUX_S *pstVomux)
{
    OPTM_M_SetVomuxDacSelect(pstVomux->au8DacSel, OPTM_M_VOMUX_DAC_MAX_NUMBER);
    return HI_SUCCESS;
}
#endif

/* 0~3 is effective; 0xff means to retain the dac's state */
HI_S32 OPTM_M_SetVomuxDacSelect(HI_U8 *pu8DacSel, HI_S32 s32DacNum)
{

    HI_S32 i;

    for(i=0; i<s32DacNum; i++)
    {
        if (pu8DacSel[i] < 4)
        {
    	    s_stVomux.au8DacSel[i] = pu8DacSel[i];
    	    OPTM_HAL_SetDacMux(i, pu8DacSel[i]);
        }
    }


    return HI_SUCCESS;
}


/**************************************************************
                           DAC MODULE
 **************************************************************/
//static OPTM_M_DAC_S s_stDac;
#if 0
HI_S32 OPTM_M_GetDacDefaultAttr(OPTM_M_DAC_S *pstDac)
{
    HI_S32 i;

    for(i=0; i<MAX_DAC_NUM; i++)
    {
       pstDac->aenDac[i] = 0;
    }
    return 0;
}

HI_S32 OPTM_M_SetDacAttr(OPTM_M_DAC_S *pstDac)
{
    OPTM_M_SetDacMode(&(pstDac->aenDac[0]));
    return 0;
}
#endif

HI_S32 OPTM_M_CheckDacMode(HI_UNF_DISP_DAC_MODE_E *penDac)
{
    HI_S32 SDRGB, SDYUV, HDRGB, HDYUV;
    HI_S32  i;

    SDRGB = 0;
    SDYUV = 0;
    HDRGB = 0;
    HDYUV = 0;
    for(i=0; i<MAX_DAC_NUM; i++)
    {
        if (penDac[i] >= HI_UNF_DISP_DAC_MODE_BUTT)
        {
           return -1; /* invalid mode */
        }
        else if ( (penDac[i] >= HI_UNF_DISP_DAC_MODE_Y)
                 && (penDac[i] <= HI_UNF_DISP_DAC_MODE_PR))
        {
           SDYUV = 1;
        }
        else if ( (penDac[i] >= HI_UNF_DISP_DAC_MODE_R)
                 && (penDac[i] <= HI_UNF_DISP_DAC_MODE_B))
        {
           SDRGB = 1;
        }
        else if ( (penDac[i] >= HI_UNF_DISP_DAC_MODE_HD_Y)
                 && (penDac[i] <= HI_UNF_DISP_DAC_MODE_HD_PR))
        {
           HDYUV = 1;
        }
        else if ( (penDac[i] >= HI_UNF_DISP_DAC_MODE_HD_R)
                 && (penDac[i] <= HI_UNF_DISP_DAC_MODE_HD_B))
        {
           HDRGB = 1;
        }
    }

    /* SDate and HDate do not support RGB and YPbPr output at the same time */
    if( ((SDYUV & SDRGB) != 0) || ((HDYUV & HDRGB) != 0) )
    {
        return -1;
    }

    /*
     * CVBS can only use DAC 0 or DAC3
     */

    for(i=0; i<MAX_DAC_NUM ; i++)
    {
        /*DAC0 and DAC3 can not use HD YPbPr at the same time!*/
       if (((penDac[0] <= HI_UNF_DISP_DAC_MODE_HD_PR)   && (penDac[0] >= HI_UNF_DISP_DAC_MODE_HD_Y))
        && ((penDac[3] <= HI_UNF_DISP_DAC_MODE_HD_PR)   && (penDac[3] >= HI_UNF_DISP_DAC_MODE_HD_Y)))
        {
             return -1;
        }

        /*DAC0 and DAC3 can not use  HD RGB at the same time!*/
       if (((penDac[0] <= HI_UNF_DISP_DAC_MODE_HD_B)   && (penDac[0] >= HI_UNF_DISP_DAC_MODE_HD_R))
               && ((penDac[3] <= HI_UNF_DISP_DAC_MODE_HD_B)   && (penDac[3] >= HI_UNF_DISP_DAC_MODE_HD_R)))
       {
            return -1;
       }
    }

    return 0;
}

HI_S32 OPTM_M_GetDacLink(HI_UNF_DISP_DAC_MODE_E *penDac, HI_S32 s32Number, HI_U8 *pu8Dac)
{
    HI_S32 i;

    for(i=0; i<s32Number; i++)
    {
       if (penDac[i] >= HI_UNF_DISP_DAC_MODE_HD_R)
       {
       	// link to dhd
             pu8Dac[i] = 2;
       }
       else if (penDac[i] >= HI_UNF_DISP_DAC_MODE_HD_Y)
       {
       	// link to hdate
             pu8Dac[i] = 3;
       }
       else
       {
             // link to sdate
             pu8Dac[i] = 1;
       }
    }

    return 0;
}

/*
	SDate dac0_in_sel-> DAC0
	SDate dac1_in_sel-> DAC1
	SDate dac2_in_sel-> DAC2
	SDate dac3_in_sel-> DAC3
*/

HI_U32  SDateIndex[MAX_DAC_NUM] =
{
    0,/*DAC0*/
    1,/*DAC1*/
    2,/*DAC2*/
    3,/*DAC3*/
};

HI_S32 OPTM_M_GetSDacSel(HI_UNF_DISP_DAC_MODE_E *penDac, HI_S32 s32Number, HI_U8 *pu8DacType)
{
/*
	000£º0£»
	001£ºcvbs£»
	010£ºG/Y£»
	011£ºB/Pb£»
	100£ºR/Pr£»
	101£ºsvideo_y£»
	110£ºsvideo_c£»
	111£º0¡£
*/


        switch (*penDac)
        {
            case HI_UNF_DISP_DAC_MODE_G:
            case HI_UNF_DISP_DAC_MODE_Y:
            {
                pu8DacType[SDateIndex[s32Number]] = 2 ;
                break;
            }
            case HI_UNF_DISP_DAC_MODE_B:
            case HI_UNF_DISP_DAC_MODE_PB:
            {
                pu8DacType[SDateIndex[s32Number]] = 3 ;
                break;
            }
            case HI_UNF_DISP_DAC_MODE_R:
            case HI_UNF_DISP_DAC_MODE_PR:
            {
                pu8DacType[SDateIndex[s32Number]] = 4 ;
                break;
            }
            case HI_UNF_DISP_DAC_MODE_CVBS:
            {
                pu8DacType[SDateIndex[s32Number]] = 1 ;
                break;
            }
            case HI_UNF_DISP_DAC_MODE_SVIDEO_Y:
            {
                pu8DacType[SDateIndex[s32Number]] = 5 ;
                break;
            }
            case HI_UNF_DISP_DAC_MODE_SVIDEO_C:
            {
                pu8DacType[SDateIndex[s32Number]] = 6 ;
                break;
            }
            default:
            {
                pu8DacType[SDateIndex[s32Number]] = 0 ;
            }
    }

    return 0;
}

/*
    HDate vide1-> DAC0
    HDate vide2-> DAC1
    HDate vide3-> DAC2
    HDate vide1-> DAC3
*/

HI_U32  HDateIndex[MAX_DAC_NUM] =
{
    0,/*DAC0*/
    1,/*DAC1*/
    2,/*DAC2*/
    0,/*DAC3*/
};
HI_S32 OPTM_M_GetHDacSel(HI_UNF_DISP_DAC_MODE_E *penDac, HI_S32 s32Number, HI_U8 *pu8DacType)
{
    /* 0 :noting,  1: R/Pr, 2:G/Y, 3:B/Pb*/

        switch (*penDac)
        {
            case HI_UNF_DISP_DAC_MODE_HD_Y:
            case HI_UNF_DISP_DAC_MODE_HD_G:
            {
                pu8DacType[HDateIndex[s32Number]] = 2 ;
                break;
            }
            case HI_UNF_DISP_DAC_MODE_HD_PB:
            case HI_UNF_DISP_DAC_MODE_HD_B:
            {
                pu8DacType[HDateIndex[s32Number]] = 3 ;
                break;
            }
            case HI_UNF_DISP_DAC_MODE_HD_PR:
            case HI_UNF_DISP_DAC_MODE_HD_R:
            {
                pu8DacType[HDateIndex[s32Number]] = 1 ;
                break;
             }
            default:
            {
                pu8DacType[HDateIndex[s32Number]] = 0 ;
             }
    }

    return 0;
}
HI_VOID OPTM_M_EnableChopper(HI_BOOL bEnable)
{
    g_PERI_CRG71->bits.vdac_chop_cken = 1;

    (HI_VOID)OPTM_HAL_SetDacChopper(bEnable);
}




//#define OPTM_DEBUG_DAC_PRINT_INFO 1
HI_S32 OPTM_M_SetDacMode(HI_UNF_DISP_DAC_MODE_E *penDac)
{
    HI_U8 u8DacSel[OPTM_M_DATE_DAC_MAX_NUMBER];
    HI_S32 i = 0;
    HI_U32 rgben = 0;

    HI_BOOL bAllOn= HI_FALSE ;

    memset(u8DacSel,0,sizeof(u8DacSel));
    /* 1 Set Vomux */
    OPTM_M_GetDacLink(penDac, MAX_DAC_NUM, u8DacSel);
    OPTM_M_SetVomuxDacSelect(u8DacSel, MAX_DAC_NUM);

#ifdef OPTM_DEBUG_DAC_PRINT_INFO
    HI_DBG_DISP("type: %d, %d, %d, %d, %d, %d\n",
              u8DacSel[0],
              u8DacSel[1],
              u8DacSel[2],
              u8DacSel[3],
              u8DacSel[4],
              u8DacSel[5]);
#endif


        /*   set Dac CLK link */
    for(i=0; i<MAX_DAC_NUM; i++)
    {
        /*
            u8DacSel : 1: sdate    2 : dhd  3: hdate
            clk:     0:  sd  clk  1:  hd  clk
        */
         OPTM_M_SetVdacClk(i,((u8DacSel[i] == 1)?0:1));
    }

    Vou_SetVoDigitOutSyncSel(0);

    /* 1.1 add for VGA output */
    for(i=0; i<MAX_DAC_NUM; i++)
    {
        /*link  sdate*/
        if (u8DacSel[i] == 2)
        {
            Vou_SetVoDigitOutSyncSel(2);
            break;
        }
    }

    /* 1.2 */

    /* 2 Set SDate */
    //OPTM_M_GetSDacSel(penDac, MAX_DAC_NUM, u8DacSel);
	 for(i=0; i<MAX_DAC_NUM; i++)
	{
		 if ( (penDac[i] <=HI_UNF_DISP_DAC_MODE_SVIDEO_C  ) &&	(penDac[i] >=HI_UNF_DISP_DAC_MODE_CVBS	))
		 {
			 OPTM_M_GetSDacSel(&penDac[i],i,u8DacSel);
		 }
	 }

    OPTM_M_SetDateDacSel(0, u8DacSel);
#ifdef OPTM_DEBUG_DAC_PRINT_INFO
    HI_DBG_DISP("sd type: %d, %d, %d, %d, %d, %d\n",
              u8DacSel[0],
              u8DacSel[1],
              u8DacSel[2],
              u8DacSel[3],
              u8DacSel[4],
              u8DacSel[5]);
#endif


    /* Add for SD output R/G/B signal */
    rgben = 0;
    for(i=0; i<MAX_DAC_NUM; i++)
    {
    	if ( (HI_UNF_DISP_DAC_MODE_R <= penDac[i]) &&  (HI_UNF_DISP_DAC_MODE_B >= penDac[i]))
    	{
    		rgben = 1;
    		break;
    	}
    }
    OPTM_HAL_DISP_SetDateRgbEn(HAL_DISP_CHANNEL_DSD, rgben);

    /* 3 Set HDate */

    for(i=0; i<MAX_DAC_NUM; i++)
    {
        if ( (penDac[i] <=HI_UNF_DISP_DAC_MODE_HD_B  ) &&  (penDac[i] >=HI_UNF_DISP_DAC_MODE_HD_Y  ))
        {
            OPTM_M_GetHDacSel(&penDac[i],i,u8DacSel);
        }
    }

#ifdef OPTM_DEBUG_DAC_PRINT_INFO
    HI_DBG_DISP("hd type: %d, %d, %d, %d, %d, %d\n",
              u8DacSel[0],
              u8DacSel[1],
              u8DacSel[2],
              u8DacSel[3],
              u8DacSel[4],
              u8DacSel[5]);
#endif

    OPTM_M_SetHDateDacSel(0, u8DacSel);

    for(i=0; i<MAX_DAC_NUM; i++)
    {
        if (penDac[i] != HI_UNF_DISP_DAC_MODE_SILENCE)
        {
            bAllOn = HI_TRUE;
            break;
        }
    }

    for(i=0; i<MAX_DAC_NUM; i++)
    {
        HI_BOOL bOn;

        bOn = (penDac[i] == HI_UNF_DISP_DAC_MODE_SILENCE)? 0 : 1;
        OPTM_HAL_SetDacPower(i, bOn,bAllOn);

        /*because of rwzb HardWare CVBS */
#if 0
        /*after add video buff  shoud set same DAC GC */
        if (HI_UNF_DISP_DAC_MODE_CVBS ==  penDac[i])
            OPTM_HAL_SetDacGc(i, VDAC_DEBUG_CVBS_GC);
        else
#endif

		/*add for rwzb DAC Revise ,enable chopper*/
        OPTM_M_EnableChopper(HI_TRUE);

    }

    return 0;
}

HI_S32 OPTM_M_SetDacGc(HI_UNF_ENC_FMT_E enFmt)
{
    switch (enFmt)
    {
        case HI_UNF_ENC_FMT_PAL:
        case HI_UNF_ENC_FMT_NTSC:
            OPTM_HAL_SetDacGc(0, OPTM_M_DAC0_SDFORMAT_GC);
            OPTM_HAL_SetDacGc(1, OPTM_M_DAC1_SDFORMAT_GC);
            OPTM_HAL_SetDacGc(2, OPTM_M_DAC2_SDFORMAT_GC);
            OPTM_HAL_SetDacGc(3, OPTM_M_DAC3_DEFAULT_GC);
            break;

        case HI_UNF_ENC_FMT_1080P_60:
        case HI_UNF_ENC_FMT_1080P_50:
        case HI_UNF_ENC_FMT_1080P_30:
        case HI_UNF_ENC_FMT_1080P_25:
        case HI_UNF_ENC_FMT_1080P_24:
        case HI_UNF_ENC_FMT_1080i_60:
        case HI_UNF_ENC_FMT_1080i_50:
        case HI_UNF_ENC_FMT_720P_60:
        case HI_UNF_ENC_FMT_720P_50:
        case HI_UNF_ENC_FMT_576P_50:
        case HI_UNF_ENC_FMT_480P_60:
        default:
            OPTM_HAL_SetDacGc(0, OPTM_M_DAC0_DEFAULT_GC);
            OPTM_HAL_SetDacGc(1, OPTM_M_DAC1_DEFAULT_GC);
            OPTM_HAL_SetDacGc(2, OPTM_M_DAC2_DEFAULT_GC);
            OPTM_HAL_SetDacGc(3, OPTM_M_DAC3_DEFAULT_GC);
            break;
    }

    return 0;
}

#ifdef __BOOT__
HI_S32 OPTM_M_ReviseHDDateConnection(HI_UNF_DISP_DAC_MODE_E *penDac,HI_UNF_ENC_FMT_E enHdFmt,HI_UNF_DISP_INTF_TYPE_E enIntfType)
{
    HI_S32 i;
    if ((enIntfType == HI_UNF_DISP_INTF_TYPE_TV)
            && (enHdFmt >= HI_UNF_ENC_FMT_PAL) )
    {
        for (i = 0; i < MAX_DAC_NUM; i++)
        {
            if (penDac[i] == HI_UNF_DISP_DAC_MODE_HD_Y)
            {
                penDac[i] = HI_UNF_DISP_DAC_MODE_Y;
            }
            else if (penDac[i] == HI_UNF_DISP_DAC_MODE_HD_PB)
            {
                penDac[i] = HI_UNF_DISP_DAC_MODE_PB;
            }
            else if (penDac[i] == HI_UNF_DISP_DAC_MODE_HD_PR)
            {
                penDac[i] = HI_UNF_DISP_DAC_MODE_PR;
            }
        }
    }
    return 0;
}

HI_VOID OPTM_M_SetDefDacDelay(HI_VOID)
{
    HI_S32 i;
    for (i=0; i < MAX_DAC_NUM; i++)
    {
        /* set DAC bright-color delay as zero */
        OPTM_HAL_SetDacDelay(i, 0);
    }
    return ;
}

HI_S32 OPTM_M_ReviseHDDacDelay(HI_UNF_DISP_DAC_MODE_E *penDac,HI_UNF_ENC_FMT_E enHdFmt,HI_UNF_DISP_INTF_TYPE_E enIntfType)
{
    HI_S32 i;
    if ((enIntfType == HI_UNF_DISP_INTF_TYPE_TV)
            && (enHdFmt >= HI_UNF_ENC_FMT_NTSC)
            && (enHdFmt <= HI_UNF_ENC_FMT_SECAM_COS))
    {
        /* In the way of 480I outputting, set DAC bright-color delay as zero */
        for(i=0; i<MAX_DAC_NUM; i++)
        {
            if (penDac[i] == HI_UNF_DISP_DAC_MODE_Y)
            {
                OPTM_HAL_SetDacDelay(i, 2);
            }
        }
    }
    return 0;
}
#endif


/**************************************************************
                         DISP MODULE
 **************************************************************/




/*[2] [3]    00:VPLL 297Mhz  01:VPLL 148.5M  10: VPLL 74.25M */
static HI_VOID OPTM_M_SetHd0Clk(HI_U32 u32VPLLPara0,HI_U32 u32VPLLPara1)
{
#ifdef CHIP_TYPE_hi3716mv330
    HI_U32 RdValue0=0;
    HI_U32 RdValue1=0;
    U_PERI_CRG54  stPERI_CRG54;

    RdValue0 = *g_pSysVPLL0_CFG;
    RdValue1 = *g_pSysVPLL1_CFG;

    stPERI_CRG54.u32 = g_PERI_CRG54->u32;

    if ((RdValue0 != u32VPLLPara0)
        || (RdValue1 != u32VPLLPara1)
        || (1 != stPERI_CRG54.bits.vo_hd_clk_sel  )
        || (0 != stPERI_CRG54.bits.vo_hd_clk_div )
        )
    {
        /*Closed HD CLk*/
        g_PERI_CRG54->bits.vo_hd_cken = 0;

        /*set VPLL Clk*/
        *g_pSysVPLL0_CFG = u32VPLLPara0;
        *g_pSysVPLL1_CFG = u32VPLLPara1;

        /* 1: Open HD CLk
         * 2: CLK from VPLL Div 2X
         */
        stPERI_CRG54.bits.vo_hd_clk_sel = 1;/* Select CLK From HD */
        stPERI_CRG54.bits.vo_hd_cken = 1;
        stPERI_CRG54.bits.vo_hd_clk_div = 0;/*div 2x*/
        g_PERI_CRG54->u32 = stPERI_CRG54.u32;
    }
#else
    HI_U32 RdValue0=0;
    HI_U32 RdValue1=0;
    U_PERI_CRG54  stPERI_CRG54;
    U_PERI_CRG53  stPERI_CRG53;

    RdValue0 = *g_pSysVPLL0_CFG;
    RdValue1 = *g_pSysVPLL1_CFG;

    stPERI_CRG54.u32 = g_PERI_CRG54->u32;
    stPERI_CRG53.u32 = g_PERI_CRG53->u32;

    if((RdValue0 != u32VPLLPara0)
        || (RdValue1 != u32VPLLPara1)
        || (1 != stPERI_CRG54.bits.vo_hd_clk_sel  )
        || (0 != stPERI_CRG54.bits.vo_hd_clk_div )
        || (1 != stPERI_CRG53.bits.vohd_clk_sel )
        )
    {
        /*Closed HD CLk*/
        g_PERI_CRG54->bits.vo_hd_cken = 0;
        //g_PERI_CRG54->u32 = stPERI_CRG54.u32;

        /*set VPLL Clk*/
        *g_pSysVPLL0_CFG = u32VPLLPara0;
        *g_pSysVPLL1_CFG = u32VPLLPara1;

        /*1: Open HD CLk
            2: CLK from VPLL Div 2X
            3:Select VPLL Port Fout2 (148MHz)
        */

        stPERI_CRG53.bits.vohd_clk_sel = 1;
        stPERI_CRG54.bits.vo_hd_clk_sel = 1;/* Select CLK From HD */
        stPERI_CRG54.bits.vo_hd_cken = 1;


        stPERI_CRG54.bits.vo_hd_clk_div = 0;/*div 2x*/
        g_PERI_CRG53->u32 = stPERI_CRG53.u32;
        g_PERI_CRG54->u32 = stPERI_CRG54.u32;
    }
#endif
    return;
}

#ifdef CHIP_TYPE_hi3716mv330
static HI_VOID  OPTM_M_SetHd0ClkDiv(HI_U32 u32VouClkDiv, HI_U32 u32HDClkDiv)
{
    U_PERI_CRG54 u32CRG54;
    U_PERI_CRG68 u32CRG68;

    u32CRG68.u32 = g_PERI_CRG68->u32;
    if (u32CRG68.bits.vou_clk_div != u32VouClkDiv)
    {
        u32CRG68.bits.vou_clk_div = u32VouClkDiv;
        g_PERI_CRG68->u32 = u32CRG68.u32;
    }

    u32CRG54.u32 = g_PERI_CRG54->u32;
    if (u32CRG54.bits.vo_hd_clk_div != u32HDClkDiv)
    {
        u32CRG54.bits.vo_hd_clk_div = u32HDClkDiv;
        g_PERI_CRG54->u32 = u32CRG54.u32;
    }
}
#endif


static HI_VOID OPTM_M_SetHd0Clk74d25M(HI_VOID)
{
#ifdef CHIP_TYPE_hi3716mv330
    OPTM_M_SetHd0Clk( s_u32OptmTVClk_v330[0][0], s_u32OptmTVClk_v330[0][1]);
    OPTM_M_SetHd0ClkDiv(s_u32OptmTVClk_v330[0][2], s_u32OptmTVClk_v330[0][3]);
#else
    OPTM_M_SetHd0Clk(s_u32OptmTVClk_v310[0][0], s_u32OptmTVClk_v310[0][1]);
#endif

    return;
}

static HI_VOID OPTM_M_SetHd0Clk148d5M(HI_VOID)
{
#ifdef CHIP_TYPE_hi3716mv330
    OPTM_M_SetHd0Clk(s_u32OptmTVClk_v330[1][0], s_u32OptmTVClk_v330[1][1]);
    OPTM_M_SetHd0ClkDiv(s_u32OptmTVClk_v330[1][2], s_u32OptmTVClk_v330[1][3]);
#else
    OPTM_M_SetHd0Clk(s_u32OptmTVClk_v310[1][0], s_u32OptmTVClk_v310[1][1]);
#endif

    return;
}

static HI_VOID OPTM_M_SetHd0Clk74d18M(HI_VOID)
{
#ifdef CHIP_TYPE_hi3716mv330
    OPTM_M_SetHd0Clk(s_u32OptmTVClk_v330[2][0], s_u32OptmTVClk_v330[2][1]);
    OPTM_M_SetHd0ClkDiv(s_u32OptmTVClk_v330[2][2], s_u32OptmTVClk_v330[2][3]);
#else
    OPTM_M_SetHd0Clk(s_u32OptmTVClk_v310[2][0], s_u32OptmTVClk_v310[2][1]);
#endif

    return;
}

static HI_VOID OPTM_M_SetHd0Clk148d35M(HI_VOID)
{
#ifdef CHIP_TYPE_hi3716mv330
    OPTM_M_SetHd0Clk(s_u32OptmTVClk_v330[3][0], s_u32OptmTVClk_v330[3][1]);
    OPTM_M_SetHd0ClkDiv(s_u32OptmTVClk_v330[3][2], s_u32OptmTVClk_v330[3][3]);
#else
    OPTM_M_SetHd0Clk(s_u32OptmTVClk_v310[3][0], s_u32OptmTVClk_v310[3][1]);
#endif

    return;
}

static HI_VOID OPTM_M_SetHd0Clk27M(HI_VOID)
{
#ifdef CHIP_TYPE_hi3716mv330
    OPTM_M_SetHd0Clk(s_u32OptmTVClk_v330[4][0], s_u32OptmTVClk_v330[4][1]);
    OPTM_M_SetHd0ClkDiv(s_u32OptmTVClk_v330[4][2], s_u32OptmTVClk_v330[4][3]);
#else
    U_PERI_CRG54  stPERI_CRG54;

    stPERI_CRG54.u32 = g_PERI_CRG54->u32;
    if(0 == stPERI_CRG54.bits.vo_hd_clk_sel &&
        0 == stPERI_CRG54.bits.vo_hd_clk_div)
    {
        return ;
    }

    /*Closed HD CLk*/
    g_PERI_CRG54->bits.vo_hd_cken = 0;
    //g_PERI_CRG54->u32 = stPERI_CRG54.u32;

    /*1:Open HD CLk
        2:Clk From SD
        3:div 2x
    */
    stPERI_CRG54.bits.vo_hd_clk_sel = 0;/*Clk From SD */
    stPERI_CRG54.bits.vo_hd_clk_div = 0;/*div 2x*/
    stPERI_CRG54.bits.vo_hd_cken = 1;
    g_PERI_CRG54->u32 = stPERI_CRG54.u32;
#endif
    return;
}

HI_VOID OPTM_M_SetVdacClk(HI_U32 u32DacNum,HI_U32 u32Link)
{
    U_PERI_CRG54  stPERI_CRG54;

    if (u32DacNum >= 4)
        return;

    stPERI_CRG54.u32 = g_PERI_CRG54->u32;
     switch (u32DacNum)
    {
	    case 0:
	        stPERI_CRG54.bits.vdac_ch0_clk_sel= u32Link;
            break;
	    case 1:
	        stPERI_CRG54.bits.vdac_ch1_clk_sel= u32Link;
            break;
	    case 2:
	        stPERI_CRG54.bits.vdac_ch2_clk_sel= u32Link;
            break;
	    case 3:
	        stPERI_CRG54.bits.vdac_ch3_clk_sel= u32Link;

            default:
                break;
     }
    g_PERI_CRG54->u32 = stPERI_CRG54.u32;

    return;
}

#ifdef HI_DISP_LCD_SUPPORT
static HI_U32 s_u32OptmLcdClk_v310[][2] =
{
//{ 0x12666664, 0x20180C8},  /* 640x480  piex:25.175MHz*/
{0x14000000, 0x20050a8},  /* 640x480  piex:25.175MHz(25.2M)*/
{0x11000000, 0x2018140},  /* 800x600  piex:40MHz */
{0x11000000, 0x2018208},  /* 1024x768 piex:65MHz*/
{0x11000000, 0x2018252},  /* 1280x720 piex:74.25MHz------leo*/
{0x11000000, 0x201829c},  /* 1280x800 piex:83.5MHz ?????*/
{0x11000000, 0x2018360},  /* 1280x1024 piex:108MHZ*/
{0x11000000, 0x20182ae},  /* 1360x768 piex:85.75MHz*/        // Rowe
{0x11000000, 0x20182ae},  /* 1366x768 piex:85.75MHz*/
{0x11000000, 0x20050cb},  /* 1400x1050 piex:101MHz*/          //Rowe
{0x11000000, 0x201e42b},  /* 1440x900 piex:106.5*/
{0x11000000, 0x20182c6},  /* 1440x900RB piex:88.75*/
{0x11000000, 0x201830e},  /* 1600x900RB piex:97.75M*/
{0x11000000, 0x2001036},  /* 1600x1200  piex:162*/
{0x11000000, 0x2018493},  /* 1680x1050  piex 146.25MHz----leo*/        //Rowe
{0x11000000, 0x2002063},  /* 1920x1080 piex:148.5*/
{0x11000000, 0x200309a},  /* 1920X1200 piex:154*/
{0x11000000, 0x200309d},  /* 2048x1152 piex:156.75*/
};

static HI_VOID OPTM_M_SetHd0ClkForLcd(HI_S32 index)
{
    OPTM_M_SetHd0Clk( s_u32OptmLcdClk_v310[index][0], s_u32OptmLcdClk_v310[index][1]);
    return;
}

/*M310 not support Custom LCD*/

// this function is use for seting customer define lcd timing
//volatile HI_U32 *g_pOptmRegClkAddr = HI_NULL;
static HI_VOID OPTM_M_SetHd0ClkForLvds(HI_U32 clk_reg_value[])
{
    //*g_pSysHdClkRegVirAddr  = 0;

    //*g_pSysVPLL0_CFG = clk_reg_value[0];
    //*g_pSysVPLL1_CFG = clk_reg_value[1];

    //*g_pSysHdClkRegVirAddr  = 0x03547f00;

	 // g_pOptmRegClkAddr = (HI_U32 *)IO_ADDRESS(0x1020004c);         // set clk driver  ability
	 // *g_pOptmRegClkAddr = 0xf;

    return;
}
#endif

/* get index of DISP struct */
static HI_S32 OPTM_M_DISP_GetIndex(HAL_DISP_OUTPUTCHANNEL_E enDisp)
{
   if (HAL_DISP_CHANNEL_DHD == enDisp)
   {
      return 0;
   }
   else
   {
      return 1;
   }
}

/* for booting?
*/
static HI_S32 s_s32BootSettingFlag = 0;
static OPTM_DISP_BOOT_SETTING_S s_stBootSetting[2];  /* 0, DHD; 1, DSD */

HI_S32 OPTM_M_GetDispBootSettingFlag(HI_VOID)
{
    return s_s32BootSettingFlag;
}

HI_S32 OPTM_M_GetDispBootSetting(HAL_DISP_OUTPUTCHANNEL_E enDisp, OPTM_DISP_BOOT_SETTING_S *pstSetting)
{
    if (!s_s32BootSettingFlag)
    {
        return HI_FAILURE;
    }
    else if ( (enDisp == HAL_DISP_CHANNEL_DHD) || (enDisp == HAL_DISP_CHANNEL_DSD) )
    {
        *pstSetting = s_stBootSetting[OPTM_M_DISP_GetIndex(enDisp)];
        return HI_SUCCESS;
    }
    else
    {
        return HI_FAILURE;
    }
}

static HI_VOID OPTM_M_HardReset(HI_VOID)
{
    U_PERI_CRG53  stPERI_CRG53;
    U_PERI_CRG54  stPERI_CRG54;

    stPERI_CRG53.u32 = g_PERI_CRG53->u32;
    stPERI_CRG54.u32 = g_PERI_CRG54->u32;

    /*Reset  CLk*/
    g_PERI_CRG54->bits.vou_srst_req = 1;

    stPERI_CRG54.u32 = g_PERI_CRG54->u32;
    stPERI_CRG54.u32 = 0x0001C3FF;

    stPERI_CRG54.bits.vo_hd_clk_div = 0;/*div 2x*/

    udelay(10);

    g_PERI_CRG54->u32 = stPERI_CRG54.u32;
    /*SD Select EPLL 54MHz*/
    g_PERI_CRG53->bits.vosd_clk_sel = 0;
    g_PERI_CRG53->bits.vohd_clk_sel = 1;

    return;
}

OPTM_AA_GMM_COEF_S g_stDHDGammaCoeff;


HI_S32 OPTM_M_BaseRegInit(HI_VOID)
{
    return OPTM_HAL_BaseRegInit(IO_ADDRESS(OPTM_REGS_BASE_ADDR));
}


HI_S32 OPTM_M_InitDisp(HI_VOID)
{
    HI_S32          ch;
    HI_S32          nRet;
    HI_U32          Value;

    nRet = HI_DRV_MMZ_AllocAndMap("DispRegBuf", HI_NULL, 0x3000, 0, &g_DispRegBuf);
    if (nRet != 0)
    {
        HI_ERR_DISP("Get DispRegBuf failed\n");
        return HI_FAILURE;
    }

    /*  map VO CLOCK registers  */
    g_PERI_CRG53 = (U_PERI_CRG53 *)IO_ADDRESS(OPTM_REGS_ADDR_CRG53);
    g_PERI_CRG54 = (U_PERI_CRG54 *)IO_ADDRESS(OPTM_REGS_ADDR_CRG54);
#ifdef CHIP_TYPE_hi3716mv330
    g_PERI_CRG68 = (U_PERI_CRG68 *)IO_ADDRESS(OPTM_REGS_ADDR_CRG68);
#endif
    g_PERI_CRG71 = (U_PERI_CRG71 *)IO_ADDRESS(OPTM_REGS_ADDR_CRG71);

    g_pSysVPLL0_CFG =  (HI_U32 *)IO_ADDRESS(OPTM_REGS_ADDR_VPLL0);
    g_pSysVPLL1_CFG =  (HI_U32 *)IO_ADDRESS(OPTM_REGS_ADDR_VPLL1);

    /*  map VO registers  */
    g_pOptmRegVirAddr = IO_ADDRESS(OPTM_REGS_BASE_ADDR);

    {
        /* what is value?
        */
        Value = *((HI_U32 *)(g_pOptmRegVirAddr + 0x1100));
        if (!(Value & 0x80000000)) // ???
        {
           /* DHD is not enabled, which is regarded as no start.
            * Go to reset operation. */

           /*default  720p fmt*/
           OPTM_M_SetHd0Clk74d25M();

            /*  reset  VDP */
           OPTM_M_HardReset();

            /* init U_VOCTRL,U_VHDWBC1STRD,U_DHDVTTHD,U_DSDVTTHD */
            HAL_Initial(g_pOptmRegVirAddr);

            s_s32BootSettingFlag = 0;
        }
        else /* status: enabled*/
        {
            HI_U32 u32SyncSel;

            /* init U_VOCTRL, U_VHDWBC1STRD, U_DHDVTTHD, U_DSDVTTHD */
            HAL_Initial(g_pOptmRegVirAddr);

			/* boot setting for disp-init */
            s_s32BootSettingFlag = 1;

            /* get current format of video system, support TV/VGA
             *
             * HD may be VGA/TV format
             */
            Vou_GetDigitOutSyncSel(&u32SyncSel);
            if(u32SyncSel == 0)     // TV interface
            {
                 s_stBootSetting[0].enType   = HI_UNF_DISP_INTF_TYPE_TV;
                 s_stBootSetting[0].enEncFmt = OPTM_M_GetDispEncFmt(HAL_DISP_CHANNEL_DHD);
                 s_stBootSetting[0].enLcdFmt = OPTM_M_D_LCD_FMT_BUTT;
            }
#ifdef HI_DISP_LCD_SUPPORT
            else if(u32SyncSel == 2)// VGA/LVDS interface
            {
               OPTM_M_D_LCD_FMT_E enFormat = OPTM_M_GetDispLcdFmt(HAL_DISP_CHANNEL_DHD);
               if(OPTM_M_D_LCD_FMT_BUTT == enFormat)   // this is customer define timing
               {
                   s_stBootSetting[0].enType   = HI_UNF_DISP_INTF_TYPE_LCD;
                   s_stBootSetting[0].enEncFmt = HI_UNF_ENC_FMT_BUTT;
                   s_stBootSetting[0].enLcdFmt = OPTM_M_D_LCD_FMT_CUSTOMER_DEFINE;
               }
               else
               {
                  s_stBootSetting[0].enType   = HI_UNF_DISP_INTF_TYPE_LCD;
                  s_stBootSetting[0].enEncFmt = HI_UNF_ENC_FMT_BUTT;
                  s_stBootSetting[0].enLcdFmt = enFormat;
               }

            }
#endif

            HI_INFO_DISP(" HD display IntType(%d), EncFmt(%d), EnLcdFmt(%d)\n",
                   s_stBootSetting[0].enType, s_stBootSetting[0].enEncFmt, s_stBootSetting[0].enLcdFmt);
            /* SD must be TV format */
            s_stBootSetting[1].enType = HI_UNF_DISP_INTF_TYPE_TV;
            s_stBootSetting[1].enEncFmt = OPTM_M_GetDispEncFmt(HAL_DISP_CHANNEL_DSD);
        }
    }

    memset((HI_U8 *)s_stDisp, 0, sizeof(OPTM_M_DISP_S)*OPTM_M_MAX_DISPLAY);

#ifdef HI_DISP_GAMMA_SUPPORT
    /* Init DHD */
    nRet = OPTM_AA_InitGmmCoef();
    if (nRet != HI_SUCCESS)
    {
        HI_DRV_MMZ_UnmapAndRelease(&g_DispRegBuf);
        return HI_FAILURE;
    }

    ch = OPTM_M_DISP_GetIndex(HAL_DISP_CHANNEL_DHD);
    s_stDisp[ch].enDisp = HAL_DISP_CHANNEL_DHD;
    s_stDisp[ch].stCapb.bGmmFunc = HI_TRUE;
    OPTM_AA_InitDispGmm(s_stDisp[ch].enDisp, &(s_stDisp[ch].stGamma));

    /* Init DSD */
    ch = OPTM_M_DISP_GetIndex(HAL_DISP_CHANNEL_DSD);
    s_stDisp[ch].enDisp = HAL_DISP_CHANNEL_DSD;
    s_stDisp[ch].stCapb.bGmmFunc = HI_FALSE;
#else
    ch = OPTM_M_DISP_GetIndex(HAL_DISP_CHANNEL_DHD);
    s_stDisp[ch].enDisp = HAL_DISP_CHANNEL_DHD;
    s_stDisp[ch].stCapb.bGmmFunc = HI_FALSE;

    /* Init DSD */
    ch = OPTM_M_DISP_GetIndex(HAL_DISP_CHANNEL_DSD);
    s_stDisp[ch].enDisp = HAL_DISP_CHANNEL_DSD;
    s_stDisp[ch].stCapb.bGmmFunc = HI_FALSE;
#endif

    return HI_SUCCESS;
}

HI_S32 OPTM_M_DeInitDisp(HI_VOID)
{
#ifdef HI_DISP_GAMMA_SUPPORT
    HI_S32 ch;

    ch = OPTM_M_DISP_GetIndex(HAL_DISP_CHANNEL_DHD);

    OPTM_AA_DeInitDispGmm(&(s_stDisp[ch].stGamma));
    OPTM_AA_DeInitGmmCoef();
#endif

    HAL_DeInitial();

    HI_DRV_MMZ_UnmapAndRelease(&g_DispRegBuf);

    return HI_SUCCESS;
}


HI_S32 OPTM_M_GetDispDefaultAttr(HAL_DISP_OUTPUTCHANNEL_E enDisp, OPTM_M_DISP_S *pstDisp)
{
    OPTM_M_DISP_S stDispTmp;
	/* TODO */
	memset(&(stDispTmp), 0, sizeof(OPTM_M_DISP_S));
	stDispTmp.bEnable = HI_FALSE;    /* enable status */

    stDispTmp.DispInfo.enType = HI_UNF_DISP_INTF_TYPE_TV;
	stDispTmp.stBgc.u8Red   = 0;
	stDispTmp.stBgc.u8Green = 0;
	stDispTmp.stBgc.u8Blue  = 0;

	stDispTmp.u32Bright = 50;
	stDispTmp.u32Contrast = 50;
	stDispTmp.u32Saturation = 50;
	stDispTmp.u32Hue = 50;

	stDispTmp.u32Kr = 50;
	stDispTmp.u32Kg = 50;
	stDispTmp.u32Kb = 50;

    if(HAL_DISP_CHANNEL_DHD == enDisp)
    {
        /* DHD */
    	stDispTmp.enDisp  = HAL_DISP_CHANNEL_DHD;

    	stDispTmp.stCapb.bGmmFunc = HI_TRUE;
    	stDispTmp.bGammaEn        = HI_FALSE;  // default status disnable gamma
    	stDispTmp.bGammaMask      = HI_FALSE;

    	stDispTmp.DispInfo.enFmt    = HI_UNF_ENC_FMT_720P_50;
    	stDispTmp.DispInfo.enLcdFmt = OPTM_DISP_LCD_FMT_BUTT;

    	stDispTmp.aenOrder[0] = HAL_DISP_LAYER_VIDEO1;
    	stDispTmp.aenOrder[1] = HAL_DISP_LAYER_VIDEO2;

	stDispTmp.aenOrder[3] = HAL_DISP_LAYER_GFX0;
	stDispTmp.u32LayerNum = 4;


    	//stDispTmp.enCscMode = OPTM_CSC_MODE_BT709_TO_BT709; /* mode of color space transformation */
    	stDispTmp.enSrcClrSpace = OPTM_CS_eXvYCC_709;         /* color space */
	    stDispTmp.enDstClrSpace = OPTM_CS_eXvYCC_709;

        stDispTmp.stHdmiIntf.s32SyncType   = 1;
    	stDispTmp.stHdmiIntf.s32CompNumber = 2; /* output setting of HDMI, default 0 for others */
    	stDispTmp.stHdmiIntf.s32DataFmt = 0;    /* output setting of HDMI, default 0 for others */

        /* 0, count back 40 lines; 1, from valid region; 2, count back 80 lines  */
		// TODO: l00185424
#ifdef VDP_USE_DEI_FB_OPTIMIZE
        stDispTmp.s32Vtth1PosiFlag = 4;
#else
		stDispTmp.s32Vtth1PosiFlag = 1;
#endif
        stDispTmp.s32Vtth2PosiFlag = 2;
    }
    else
    {
        /* DSD */
    	stDispTmp.enDisp  = HAL_DISP_CHANNEL_DSD;

    	stDispTmp.stCapb.bGmmFunc = HI_FALSE;
    	stDispTmp.bGammaEn        = HI_FALSE;
    	stDispTmp.bGammaMask      = HI_FALSE;

    	stDispTmp.DispInfo.enFmt   = HI_UNF_ENC_FMT_PAL;
	    stDispTmp.DispInfo.enLcdFmt = OPTM_DISP_LCD_FMT_BUTT;

    	stDispTmp.aenOrder[0] = HAL_DISP_LAYER_VIDEO3;
    	stDispTmp.aenOrder[1] = HAL_DISP_LAYER_GFX1;
    	stDispTmp.aenOrder[2] = HAL_DISP_LAYER_BUTT;
    	stDispTmp.aenOrder[3] = HAL_DISP_LAYER_BUTT;
    	stDispTmp.u32LayerNum = 2;
    	//stDispTmp.enCscMode = OPTM_CSC_MODE_BT601_TO_BT601; /* mode of color space transformation */
    	stDispTmp.enSrcClrSpace = OPTM_CS_eXvYCC_601;         /* color space */
	    stDispTmp.enDstClrSpace = OPTM_CS_eXvYCC_601;

		/* 0, count back 40 lines; 1, from valid region; 2, count back 80 lines */
		// TODO: l00185424
#ifdef VDP_USE_DEI_FB_OPTIMIZE
        stDispTmp.s32Vtth1PosiFlag = 4;
#else
		stDispTmp.s32Vtth1PosiFlag = 1;
#endif
        stDispTmp.s32Vtth2PosiFlag = 2;
    }

    memcpy(pstDisp, &stDispTmp, sizeof(OPTM_M_DISP_S));

    return HI_SUCCESS;
}

HI_S32 OPTM_M_GetDispAttr(HAL_DISP_OUTPUTCHANNEL_E enDisp, OPTM_M_DISP_S *pstDisp)
{
    HI_S32 ch;

    ch = OPTM_M_DISP_GetIndex(enDisp);

    memcpy(pstDisp, &(s_stDisp[ch]), sizeof(OPTM_M_DISP_S));

    return HI_SUCCESS;
}

HI_S32 OPTM_M_SetDispAttr(HAL_DISP_OUTPUTCHANNEL_E enDisp, OPTM_M_DISP_S *pstDisp)
{
    HI_S32 ch;

    ch = OPTM_M_DISP_GetIndex(enDisp);

    /* set flag of start position of vertical sequence interrupt flag */
    OPTM_M_SetVtthPosiFlag(enDisp, 1, pstDisp->s32Vtth1PosiFlag);
    OPTM_M_SetVtthPosiFlag(enDisp, 2, pstDisp->s32Vtth2PosiFlag);

    s_stDisp[ch].DispInfo.enFmt = pstDisp->DispInfo.enFmt;
    OPTM_M_SetDispIntfType(enDisp, pstDisp->DispInfo.enType);
    if (HI_UNF_DISP_INTF_TYPE_TV == pstDisp->DispInfo.enType)
    {
        if (pstDisp->DispInfo.enFmt >= HI_UNF_ENC_FMT_861D_640X480_60)
        {
            return HI_FAILURE;
        }
        OPTM_M_SetDispEncFmt(enDisp, pstDisp->DispInfo.enFmt);
    }
#ifdef HI_DISP_LCD_SUPPORT
    else
    {
        if (pstDisp->DispInfo.enLcdFmt >= OPTM_DISP_LCD_FMT_BUTT)
        {
            return HI_FAILURE;
        }
        if(OPTM_DISP_LCD_FMT_CUSTOMER_DEFINE != pstDisp->DispInfo.enLcdFmt)
        {
           OPTM_M_SetLcdDefaultPara(enDisp, pstDisp->DispInfo.enLcdFmt);
        }
        else
        {
           s_stDisp[ch].DispInfo.enLcdFmt = OPTM_DISP_LCD_FMT_CUSTOMER_DEFINE;
        }
    }
#endif

    OPTM_M_SetDispOrder(enDisp, &(pstDisp->aenOrder[0]), pstDisp->u32LayerNum);
    if (!s_s32BootSettingFlag)
    {
        OPTM_M_SetDispBgc(enDisp, &(pstDisp->stBgc));
    }

    s_stDisp[ch].u32Bright     = pstDisp->u32Bright;
    s_stDisp[ch].u32Contrast   = pstDisp->u32Contrast;
    s_stDisp[ch].u32Saturation = pstDisp->u32Saturation;
    s_stDisp[ch].u32Hue        = pstDisp->u32Hue;
    s_stDisp[ch].u32Kr        = pstDisp->u32Kr;
    s_stDisp[ch].u32Kg        = pstDisp->u32Kg;
    s_stDisp[ch].u32Kb        = pstDisp->u32Kb;

    OPTM_M_SetDispCscMode(enDisp, pstDisp->enSrcClrSpace, pstDisp->enDstClrSpace);

    OPTM_M_SetDispEnable(enDisp, pstDisp->bEnable);

#ifdef HI_DISP_GAMMA_SUPPORT
    if (s_stDisp[ch].stCapb.bGmmFunc == HI_TRUE)
    {
         OPTM_M_SetDispGamma(enDisp, pstDisp->bGammaEn);
    }
#endif

	/*
	* For TV format above 576p_50Hz, Hsync/Vsync has pull-up;
	* For TV format below 576p_50Hz, Hsync/Vsync has pull-down;
	* The default setting is "0" before, meaning pull-up.
	*/
    if (pstDisp->DispInfo.enFmt <= HI_UNF_ENC_FMT_720P_50)
    {
        pstDisp->stHdmiIntf.u32DvNegative = 0;
        pstDisp->stHdmiIntf.u32HsyncNegative = 0;
        pstDisp->stHdmiIntf.u32VsyncNegative = 0;
    }
    else if (pstDisp->DispInfo.enFmt <= HI_UNF_ENC_FMT_861D_640X480_60)
    {
        pstDisp->stHdmiIntf.u32DvNegative = 0;
        pstDisp->stHdmiIntf.u32HsyncNegative = 1;
        pstDisp->stHdmiIntf.u32VsyncNegative = 1;
        //DEBUG_PRINTK("set nagitive Hsync/Vsync\n");
    }
    if(HI_UNF_DISP_INTF_TYPE_TV == pstDisp->DispInfo.enType)
    {
        OPTM_M_SetDispHdmiIntf(enDisp, &(pstDisp->stHdmiIntf));
    }
#ifdef HI_DISP_LCD_SUPPORT
    else              //setting hdmi para for lcd format
    {
        OPTM_M_D_LCD_FMT_E enMFmt = OPTM_M_D_LCD_FMT_BUTT;

        enMFmt = (OPTM_M_D_LCD_FMT_E)(pstDisp->DispInfo.enLcdFmt);
        OPTM_M_SetDispHdmiForLcd(enDisp, enMFmt);
    }
#endif

    return HI_SUCCESS;
}

#if 0
HI_S32 OPTM_M_GetDispCap(HAL_DISP_OUTPUTCHANNEL_E enDisp, OPTM_M_DISP_CAP_S *pstCap)
{
    HI_S32 ch = OPTM_M_DISP_GetIndex(enDisp);

    *pstCap = s_stDisp[ch].stCapb;

    return HI_SUCCESS;
}
#endif

HI_S32 OPTM_M_GetDispInfo(HAL_DISP_OUTPUTCHANNEL_E enDisp, OPTM_M_DISP_INFO_S *pstInfo)
{

    HI_S32 ch = OPTM_M_DISP_GetIndex(enDisp);
#if  0

    if (HI_UNF_DISP_INTF_TYPE_TV == s_stDisp[ch].DispInfo.enType)
    {
        memcpy(pstInfo, &s_stDisp[ch].DispInfo, sizeof(OPTM_M_DISP_INFO_S));
    }
    else
    {
        pstInfo->enType = HI_UNF_DISP_INTF_TYPE_LCD;

        /* parse LCD coefficients, set pstInfo->stInfo */
        memcpy(pstInfo, &s_stDisp[ch].DispInfo, sizeof(OPTM_M_DISP_INFO_S));
    }
#endif

    memcpy(pstInfo, &s_stDisp[ch].DispInfo, sizeof(OPTM_M_DISP_INFO_S));

    pstInfo->u32Bright = s_stDisp[ch].u32Bright;
    pstInfo->u32Contrast = s_stDisp[ch].u32Contrast;
    pstInfo->u32Saturation = s_stDisp[ch].u32Saturation;
    pstInfo->u32Hue = s_stDisp[ch].u32Hue;

    pstInfo->u32Kr = s_stDisp[ch].u32Kr;
    pstInfo->u32Kg = s_stDisp[ch].u32Kg;
    pstInfo->u32Kb = s_stDisp[ch].u32Kb;

    return HI_SUCCESS;
}

/* return refresh rate, no distinction of progressive and interlaced */
HI_S32 OPTM_M_GetDispRate(HAL_DISP_OUTPUTCHANNEL_E enDisp)
{
    HI_S32 ch = OPTM_M_DISP_GetIndex(enDisp);

    if (HI_UNF_DISP_INTF_TYPE_TV == s_stDisp[ch].DispInfo.enType)
    {
        return s_stDisp[ch].DispInfo.u32DispRate;
    }
    else
    {
        return s_stDisp[ch].DispInfo.u32DispRate;
    }
}

/* return field information: 1, progressive; 0, interlace */
HI_S32 OPTM_M_GetDispProgressive(HAL_DISP_OUTPUTCHANNEL_E enDisp)
{
    HI_S32 ch = OPTM_M_DISP_GetIndex(enDisp);

    if (HI_UNF_DISP_INTF_TYPE_TV == s_stDisp[ch].DispInfo.enType)
    {
        return (HI_S32)(s_stDisp[ch].DispInfo.bProgressive);
    }
    else
    {
        return 1;
    }
}

/* return screen resolution */
HI_S32 OPTM_M_GetDispScreen(HAL_DISP_OUTPUTCHANNEL_E enDisp, HI_RECT_S *pstScrnWin)
{
    HI_S32 ch = OPTM_M_DISP_GetIndex(enDisp);

    *pstScrnWin = s_stDisp[ch].DispInfo.stScrnWin;

    return HI_SUCCESS;
}

HI_S32 OPTM_M_GetGfxScreen(HAL_DISP_OUTPUTCHANNEL_E enDisp, HI_RECT_S *pstScrnWin)
{
    HI_S32 ch = OPTM_M_DISP_GetIndex(enDisp);

    if(s_stDisp[ch].DispInfo.stAdjstWin.bAdjstScrnWinFlg)
    {

       *pstScrnWin = s_stDisp[ch].DispInfo.stAdjstWin.stAdjstScrnWin;

       return HI_SUCCESS;
    }
    else
    {
       return HI_FAILURE;

    }

}

HI_S32 OPTM_M_GetDispBtmFlag(HAL_DISP_OUTPUTCHANNEL_E enDisp)
{
   HI_S32 ch = OPTM_M_DISP_GetIndex(enDisp);

   return s_stDisp[ch].s32BtmFieldFlag;
}


HI_S32 OPTM_M_SetDispEnable(HAL_DISP_OUTPUTCHANNEL_E enDisp, HI_BOOL bEnable)
{
    HI_S32 ch = OPTM_M_DISP_GetIndex(enDisp);

    s_stDisp[ch].bEnable = bEnable;

    HAL_DISP_SetIntfEnable(s_stDisp[ch].enDisp, bEnable);

    return HI_SUCCESS;
}


/* set interface type */
HI_S32 OPTM_M_SetDispIntfType(HAL_DISP_OUTPUTCHANNEL_E enDisp, HI_UNF_DISP_INTF_TYPE_E enType)
{
    HI_S32            ch;
    //HI_U32           *pu32SysPinSet;
    ch          = OPTM_M_DISP_GetIndex(enDisp);

    s_stDisp[ch].DispInfo.enType = enType;

    /* TV interface */
    if (HI_UNF_DISP_INTF_TYPE_TV == enType)
    {
        s_stDisp[ch].DispInfo.enLcdFmt = OPTM_DISP_LCD_FMT_BUTT;
    }
    else if (HI_UNF_DISP_INTF_TYPE_LCD == enType)
    {
        s_stDisp[ch].DispInfo.enFmt = HI_UNF_ENC_FMT_BUTT;
    }

    /* TV interface */
    if (HI_UNF_DISP_INTF_TYPE_TV == enType)
    {
        HAL_DISP_CLIP_S stClip;

        HAL_DISP_SetIntfSyncMode(enDisp, HAL_DISP_SYNC_MODE_SIGNAL);

        /* set clip */
        if (enDisp == HAL_DISP_CHANNEL_DSD)
        {
            stClip.bClipEn        = HI_TRUE;
            stClip.u16ClipLow_y   = 0x10<<2;
            stClip.u16ClipLow_cb  = 0x10<<2;
            stClip.u16ClipLow_cr  = 0x10<<2;
            stClip.u16ClipHigh_y  = 0xeb<<2;
            stClip.u16ClipHigh_cb = 0xf0<<2;
            stClip.u16ClipHigh_cr = 0xf0<<2;
        }
        else
        {
            if( s_stDisp[ch].DispInfo.enFmt < HI_UNF_ENC_FMT_PAL)
            {
                 stClip.bClipEn        = HI_TRUE;

                 /*for mv300 dhd sharpen, we should not use super-black.*/

                 stClip.u16ClipLow_y   = 64;
                 stClip.u16ClipLow_cb  = 64;
                 stClip.u16ClipLow_cr  = 64;


                 stClip.u16ClipHigh_y  = 1019;
                 stClip.u16ClipHigh_cb = 1019;
                 stClip.u16ClipHigh_cr = 1019;
            }
            else        // SD fmt
            {
                stClip.bClipEn        = HI_TRUE;
                stClip.u16ClipLow_y   = 0x10<<2;
                stClip.u16ClipLow_cb  = 0x10<<2;
                stClip.u16ClipLow_cr  = 0x10<<2;
                stClip.u16ClipHigh_y  = 0xeb<<2;
                stClip.u16ClipHigh_cb = 0xf0<<2;
                stClip.u16ClipHigh_cr = 0xf0<<2;
            }
        }

        /*  set clip enable */
        HAL_DISP_SetIntfClip(enDisp, stClip);

        /*  set YPbPr output?  */

    }
#ifdef HI_DISP_VGA_SUPPORT
    /* VGA (LCD) interface */
    else
    {
        HAL_DISP_SetIntfSyncMode(enDisp, HAL_DISP_SYNC_MODE_SIGNAL);

        /*  set clip disable */
        HAL_DISP_SetIntfClipEna(enDisp, HI_FALSE);

        /* VGA pins multiplex and RGB-output setting */

        /* VGA output order of RGB lines */
        OPTM_HAL_SetVgaOutputOrder(OPTM_VGA_INTF_ORDER_BGR);

    }
#endif

    return HI_SUCCESS;

}

HI_VOID OPTM_M_GetTvFmtInfo(HI_UNF_ENC_FMT_E enFmt, OPTM_M_DISP_INFO_S *pstFmtInfo)
{
    HI_RECT_S *pstWin = &(pstFmtInfo->stScrnWin);
    switch (enFmt)
    {
	    case HI_UNF_ENC_FMT_1080P_60:
	    {
	        pstWin->s32X = 0;
	        pstWin->s32Y = 0;

#ifdef _OPTM_DEBUG_DHD_FOR_FPGA_
	        pstWin->s32Width  = 1184;
#else
            pstWin->s32Width  = 1920;
#endif
	        pstWin->s32Height = 1080;
	        pstFmtInfo->bProgressive = HI_TRUE;
	        pstFmtInfo->u32DispRate = 60;
	        return;
	    }
	    case HI_UNF_ENC_FMT_1080P_50:
	    {
	        pstWin->s32X = 0;
	        pstWin->s32Y = 0;

#ifdef _OPTM_DEBUG_DHD_FOR_FPGA_
	        pstWin->s32Width  = 1184;
#else
            pstWin->s32Width  = 1920;
#endif
	        pstWin->s32Height = 1080;
	        pstFmtInfo->bProgressive = HI_TRUE;
	        pstFmtInfo->u32DispRate = 50;
	        return;
	    }
	    case HI_UNF_ENC_FMT_1080P_30:
	    {
	        pstWin->s32X = 0;
	        pstWin->s32Y = 0;

#ifdef _OPTM_DEBUG_DHD_FOR_FPGA_
	        pstWin->s32Width  = 1184;
#else
            pstWin->s32Width  = 1920;
#endif
	        pstWin->s32Height = 1080;
	        pstFmtInfo->bProgressive = HI_TRUE;
	        pstFmtInfo->u32DispRate = 30;
	        return;
	    }
	    case HI_UNF_ENC_FMT_1080P_25:
	    {
	        pstWin->s32X = 0;
	        pstWin->s32Y = 0;

#ifdef _OPTM_DEBUG_DHD_FOR_FPGA_
	        pstWin->s32Width  = 1184;
#else
            pstWin->s32Width  = 1920;
#endif
	        pstWin->s32Height = 1080;
	        pstFmtInfo->bProgressive = HI_TRUE;
	        pstFmtInfo->u32DispRate = 25;
	        return;
	    }
	    case HI_UNF_ENC_FMT_1080P_24:
	    {
	        pstWin->s32X = 0;
	        pstWin->s32Y = 0;
#ifdef _OPTM_DEBUG_DHD_FOR_FPGA_
	        pstWin->s32Width  = 1184;
#else
            pstWin->s32Width  = 1920;
#endif
	        pstWin->s32Height = 1080;
	        pstFmtInfo->bProgressive = HI_TRUE;
	        pstFmtInfo->u32DispRate = 24;
	        return;
	    }
	    case HI_UNF_ENC_FMT_1080i_60:
	    {
	        pstWin->s32X = 0;
	        pstWin->s32Y = 0;

#ifdef _OPTM_DEBUG_DHD_FOR_FPGA_
	        pstWin->s32Width  = 1184;
#else
            pstWin->s32Width  = 1920;
#endif
	        pstWin->s32Height = 1080;
	        pstFmtInfo->bProgressive = HI_FALSE;
	        pstFmtInfo->u32DispRate = 60;
	        return;
	    }
	    case HI_UNF_ENC_FMT_1080i_50:
	    {
	        pstWin->s32X = 0;
	        pstWin->s32Y = 0;

#ifdef _OPTM_DEBUG_DHD_FOR_FPGA_
	        pstWin->s32Width  = 1184;
#else
            pstWin->s32Width  = 1920;
#endif
	        pstWin->s32Height = 1080;
	        pstFmtInfo->bProgressive = HI_FALSE;
	        pstFmtInfo->u32DispRate = 50;
	        return;
	    }
	    case HI_UNF_ENC_FMT_720P_60:
	    {
	        pstWin->s32X = 0;
	        pstWin->s32Y = 0;

#ifdef _OPTM_DEBUG_DHD_FOR_FPGA_
	        pstWin->s32Width  = 1088;
#else
            pstWin->s32Width  = 1280;
#endif
	        pstWin->s32Height = 720;
	        pstFmtInfo->bProgressive = HI_TRUE;
	        pstFmtInfo->u32DispRate = 60;
	        return;
	    }
	    case HI_UNF_ENC_FMT_720P_50:
	    {
	        pstWin->s32X = 0;
	        pstWin->s32Y = 0;
	        pstWin->s32Width  = 1280;
	        pstWin->s32Height = 720;
	        pstFmtInfo->bProgressive = HI_TRUE;
	        pstFmtInfo->u32DispRate = 50;
	        return;
	    }
	    case HI_UNF_ENC_FMT_576P_50:
	    {
	        pstWin->s32X = 0;
	        pstWin->s32Y = 0;
	        pstWin->s32Width  = 720;
	        pstWin->s32Height = 576;
	        pstFmtInfo->bProgressive = HI_TRUE;
	        pstFmtInfo->u32DispRate = 50;
	        return;
	    }
	    //case HI_UNF_ENC_FMT_576i_50:
	    case HI_UNF_ENC_FMT_PAL:
	    case HI_UNF_ENC_FMT_PAL_N:
	    case HI_UNF_ENC_FMT_PAL_Nc:
	    case HI_UNF_ENC_FMT_SECAM_SIN:
	    case HI_UNF_ENC_FMT_SECAM_COS:
	    {

			if (HI_TRUE == pstFmtInfo->stAdjstWin.bAdjstScrnWinFlg)
			{
				if (pstFmtInfo->stAdjstWin.enFmt == enFmt)
				{
					pstFmtInfo->stAdjstWin.stAdjstScrnWin = pstFmtInfo->stAdjstWin.stScrnWin;
				}
				else
				{
					pstFmtInfo->stAdjstWin.stAdjstScrnWin.s32Y = (pstFmtInfo->stAdjstWin.stScrnWin.s32Y * 576/480)&0xfffffffcL;
					pstFmtInfo->stAdjstWin.stAdjstScrnWin.s32Height = pstFmtInfo->stAdjstWin.stScrnWin.s32Height * 576/480&0xfffffffcL;
			    }
			}
	        pstWin->s32X = 0;
	        pstWin->s32Y = 0;
	        pstWin->s32Width  = 720;
	        pstWin->s32Height = 576;


	        pstFmtInfo->bProgressive = HI_FALSE;
	        pstFmtInfo->u32DispRate = 50;
	        return;
	    }

	    case HI_UNF_ENC_FMT_480P_60:
	    {
	        pstWin->s32X = 0;
	        pstWin->s32Y = 0;
	        pstWin->s32Width  = 720;
	        pstWin->s32Height = 480;
	        pstFmtInfo->bProgressive = HI_TRUE;
	        pstFmtInfo->u32DispRate = 60;
	        return;
	    }
	    //case HI_UNF_ENC_FMT_480i_60:
	    case HI_UNF_ENC_FMT_NTSC:
	    case HI_UNF_ENC_FMT_NTSC_J:
	    case HI_UNF_ENC_FMT_NTSC_PAL_M:
	    {

			if (HI_TRUE == pstFmtInfo->stAdjstWin.bAdjstScrnWinFlg)
			{
				if (pstFmtInfo->stAdjstWin.enFmt == enFmt)
				{
					pstFmtInfo->stAdjstWin.stAdjstScrnWin = pstFmtInfo->stAdjstWin.stScrnWin;
				}
				else
				{
					pstFmtInfo->stAdjstWin.stAdjstScrnWin.s32Y = (pstFmtInfo->stAdjstWin.stScrnWin.s32Y * 480/576)&0xfffffffcL;
					pstFmtInfo->stAdjstWin.stAdjstScrnWin.s32Height = (pstFmtInfo->stAdjstWin.stScrnWin.s32Height * 480/576)&0xfffffffcL;
			    }
			}
	        pstWin->s32X = 0;
	        pstWin->s32Y = 0;
	        pstWin->s32Width  = 720;
	        pstWin->s32Height = 480;

	        pstFmtInfo->bProgressive = HI_FALSE;
	        pstFmtInfo->u32DispRate = 60;
	        return;
	    }
	    default:
	    {
	        pstWin->s32X = 0;
	        pstWin->s32Y = 0;
	        pstWin->s32Width  = 0;
	        pstWin->s32Height = 0;
	        pstFmtInfo->bProgressive = HI_FALSE;
	        pstFmtInfo->u32DispRate = 0;
	        return;
	    }
    }
}

/*******************************************************************************
                 set display  sequence
 *******************************************************************************/

/* In future, display systems will be added according to demand */
/* for LCD display, coefficients are to be set by up layer */
static HAL_DISP_SYNCINFO_S s_stSyncTiming[] =
{
  /* |--INTFACE---||-----TOP-----||----HORIZON--------||----BOTTOM-----||-PULSE-||-INVERSE-| */
  /* Synm,Iop, Itf, Vact,Vbb,Vfb,  Hact, Hbb,Hfb,Hmid,  Bvact,Bvbb,Bvfb, Hpw,Vpw, Idv,Ihs,Ivs */
  // 0 HI_UNF_ENC_FMT_1080P_60,
  {1,   1,   2,  1080,  41,  4,  1920, 192, 88,  1,     1,   1,  1,     44, 5,  0,  0,  0}, /* 1080P@60Hz */
  // 1 HI_UNF_ENC_FMT_1080P_50,
  {1,   1,   2,  1080,  41,  4,  1920, 192, 528, 1,     1,   1,  1,     44, 5,  0,  0,  0}, /* 1080P@50Hz */
  // 2 HI_UNF_ENC_FMT_1080P_30
  {1,   1,   2,  1080,  41,  4,  1920, 192, 88,  1,     1,   1,  1,    44,  5,  0,  0,  0}, /* 1080P@30Hz */
  // 3 HI_UNF_ENC_FMT_1080P_25,
  {1,   1,   2,  1080,  41,  4,  1920, 192, 528, 1,     1,   1,  1,    44, 5,  0,  0,  0}, /* 1080P@25Hz */
  // 4 HI_UNF_ENC_FMT_1080P_24 @74.25MHz,
  {1,   1,   2,  1080,  41,  4,  1920, 192, 638, 1,     1,   1,  1,    44, 5,  0,  0,  0}, /* 1080P@24Hz */
  // 5 HI_UNF_ENC_FMT_1080i_60
  {1,   0,   2,   540,  20,  2,  1920, 192, 88,908,   540,  21,  2,    44/*1*/,  5/*1*/,  0,  0,  0}, /* 1080I@60Hz */
  // 6 HI_UNF_ENC_FMT_1080i_50
  {1,   0,   2,   540,  20,  2,  1920, 192,528,1128,  540,  21,  2,     44/*1*/, 5/*1*/,  0,  0,  0}, /* 1080I@50Hz */
  // 7 HI_UNF_ENC_FMT_720P_60
  {1,   1,   2,   720,  25,  5,  1280, 260,110,  1,     1,   1,  1,    40,  5,  0,  0,  0}, /* 720P@60Hz */
  // 8 HI_UNF_ENC_FMT_720P_50
  {1,   1,   2,   720,  25,  5,  1280, 260,440,  1,     1,   1,  1,     40, 5,  0,  0,  0},  /* 720P@50Hz */

  /* Synm,Iop, Itf, Vact,Vbb,Vfb,  Hact, Hbb,Hfb,Hmid,  Bvact,Bvbb,Bvfb, Hpw,Vpw, Idv,Ihs,Ivs */
  // 9  HI_UNF_ENC_FMT_576P_50,
  {1,   1,   2,   576,  44,  5,   720, 132, 12,  1,     1,   1,  1,     64, 5,  0,  0,  0}, /* 576P@50Hz */
  // 10 HI_UNF_ENC_FMT_480P_60,
  {1,   1,   2,   480,  36,  9,   720, 122, 16,  1,     1,   1,  1,     62, 6,  0,  0,  0}, /* 480P@60Hz */
  // 11 HI_UNF_ENC_FMT_PAL
  {0,   0,   0,   288,  22,  2,	  720, 132, 12,300,   288,  23,  2,    126, 3,  0,  0,  0},/* 576I(PAL) */
  // 12 BT601 HI_UNF_ENC_FMT_NTSC
  /* Synm,Iop, Itf, Vact,Vbb,Vfb,  Hact, Hbb,Hfb,Hmid,  Bvact,Bvbb,Bvfb, Hpw,Vpw, Idv,Ihs,Ivs */
 // {0,   0,   0,   240,  18,            4,                720,     122,   16,   310,     240,       19,       4,     124, 3,  0,  0,  0},/* 480I(NTSC) */
  // 13 861D HI_UNF_ENC_FMT_NTSC
    {0,   0,   0,   240,  18,  4,   720, 119, 19,310,   240,  19,  4,    124, 3,  0,  0,  0},/* 480I(NTSC) */
  // 13 861D HI_UNF_ENC_FMT_NTSC_TO_VHD
  {1,   0,   2,   240,  18,  4,  1440, 238, 38,620,   240,  19,  4,    124, 3,  0,  0,  0},/* 480I(NTSC) */
  // 14 HI_UNF_ENC_FMT_PAL_TO_VHD
  {1,   0,   2,   288,  22,  2,	 1440, 264, 24,600,   288,  23,  2,    126, 3,  0,  0,  0},/* 576I(PAL) */

};

static HI_UNF_ENC_FMT_E s_enDispEncFmtFromIndex[] =
{
HI_UNF_ENC_FMT_1080P_60,
HI_UNF_ENC_FMT_1080P_50,
HI_UNF_ENC_FMT_1080P_30,
HI_UNF_ENC_FMT_1080P_25,
HI_UNF_ENC_FMT_1080P_24,
HI_UNF_ENC_FMT_1080i_60,
HI_UNF_ENC_FMT_1080i_50,
HI_UNF_ENC_FMT_720P_60,
HI_UNF_ENC_FMT_720P_50,

HI_UNF_ENC_FMT_576P_50,
HI_UNF_ENC_FMT_480P_60,
HI_UNF_ENC_FMT_PAL,
HI_UNF_ENC_FMT_NTSC,
HI_UNF_ENC_FMT_NTSC,
HI_UNF_ENC_FMT_PAL,
};
HI_S32 OPTM_M_GetFmtSyncIndex(HAL_DISP_OUTPUTCHANNEL_E HalDispId, HI_UNF_ENC_FMT_E enDispFmt)
{
    HI_S32 index = 0;
	HI_U32 vn1, vn2;

    switch (enDispFmt)
    {
        case HI_UNF_ENC_FMT_1080P_60:
        {
            index = 0;
            break;
        }
        case HI_UNF_ENC_FMT_1080P_50:
        {
            index = 1;
            break;
        }
        case HI_UNF_ENC_FMT_1080P_30:
        {
            index = 2;
            break;
        }
        case HI_UNF_ENC_FMT_1080P_25:
        {
            index = 3;
            break;
        }
        case HI_UNF_ENC_FMT_1080P_24:
        {
            index = 4;
            break;
        }
        case HI_UNF_ENC_FMT_1080i_60:
        {
            index = 5;
            break;
        }
        case HI_UNF_ENC_FMT_1080i_50:
        {
            index = 6;
            break;
        }
        case HI_UNF_ENC_FMT_720P_60:
        {
            index = 7;
            break;
        }
        case HI_UNF_ENC_FMT_720P_50:
        {
            index = 8;
            break;
        }

        case HI_UNF_ENC_FMT_576P_50:
        {
            index = 9;
            break;
        }
        case HI_UNF_ENC_FMT_480P_60:
        {
            index = 10;
            break;
        }
        case HI_UNF_ENC_FMT_PAL:
        case HI_UNF_ENC_FMT_PAL_N:
        case HI_UNF_ENC_FMT_PAL_Nc:
        case HI_UNF_ENC_FMT_SECAM_SIN:
        case HI_UNF_ENC_FMT_SECAM_COS:
        {
    	    /* Get vou version */
            OPTM_HAL_GetVersion(&vn1, &vn2);



			{
			    index = 11;
			}

            break;
        }
        case HI_UNF_ENC_FMT_NTSC:
        case HI_UNF_ENC_FMT_NTSC_J:
        case HI_UNF_ENC_FMT_NTSC_PAL_M:
        {
    	    /* Get vou version */
            OPTM_HAL_GetVersion(&vn1, &vn2);


			{
			    index = 12;
			}

            break;
        }
        default:
        {
            index = 0;
            break;
        }
    }
    return index;
}


HI_VOID OPTM_M_SetDispSync(HAL_DISP_OUTPUTCHANNEL_E HalDispId, HI_UNF_ENC_FMT_E enDispFmt, HI_BOOL bBtOutput)
{
    HAL_DISP_SYNCINFO_S stSyncInfo;
    HI_S32 index;
//    HI_U32 vtthd1, vtthd2;
	HI_U32 vn1, vn2;

    index = OPTM_M_GetFmtSyncIndex(HalDispId, enDispFmt);
    memcpy(&stSyncInfo, &s_stSyncTiming[index], sizeof(stSyncInfo));

    switch (enDispFmt)
    {
        /* 12 HI_UNF_ENC_FMT_1080P_60, */
        case HI_UNF_ENC_FMT_1080P_60:
        {
            if (bBtOutput == HI_TRUE)
            {
                stSyncInfo.u8Intfb = 1;
                HAL_DISP_SetIntfDataFmt(HalDispId, HAL_DISP_INTFDATAFMT_YCBCR422);
            }
            else
            {
                HAL_DISP_SetIntfDataFmt(HalDispId, HAL_DISP_INTFDATAFMT_YCBCR444);
            }
            HAL_DISP_SetIntfSync(HalDispId, stSyncInfo);

#ifdef _OPTM_DEBUG_DHD_FOR_FPGA_
            OPTM_HAL_DhdDebugSet(HI_TRUE, 0x4a);
#else
            OPTM_HAL_DhdDebugSet(HI_FALSE, 0);
#endif
            OPTM_HAL_DISP_SetIntrMode(HalDispId, HI_FALSE);
            break;
        }
        /* 13 HI_UNF_ENC_FMT_1080P_50, */
        case HI_UNF_ENC_FMT_1080P_50:
        {
            if (bBtOutput == HI_TRUE)
            {
                stSyncInfo.u8Intfb = 1;
                HAL_DISP_SetIntfDataFmt(HalDispId, HAL_DISP_INTFDATAFMT_YCBCR422);
            }
            else
            {
                HAL_DISP_SetIntfDataFmt(HalDispId, HAL_DISP_INTFDATAFMT_YCBCR444);
            }
            HAL_DISP_SetIntfSync(HalDispId, stSyncInfo);
#ifdef _OPTM_DEBUG_DHD_FOR_FPGA_
            OPTM_HAL_DhdDebugSet(HI_TRUE, 0x4a);
#else
            OPTM_HAL_DhdDebugSet(HI_FALSE, 0);
#endif
            OPTM_HAL_DISP_SetIntrMode(HalDispId, HI_FALSE);
            break;
        }
        case HI_UNF_ENC_FMT_1080P_30:
        {
            if (bBtOutput == HI_TRUE)
            {
                stSyncInfo.u8Intfb = 1;
                HAL_DISP_SetIntfDataFmt(HalDispId, HAL_DISP_INTFDATAFMT_YCBCR422);
            }
            else
            {
                HAL_DISP_SetIntfDataFmt(HalDispId, HAL_DISP_INTFDATAFMT_YCBCR444);
            }

            HAL_DISP_SetIntfSync(HalDispId, stSyncInfo);
            OPTM_HAL_DhdDebugSet(HI_FALSE, 0);
            OPTM_HAL_DISP_SetIntrMode(HalDispId, HI_FALSE);
            break;
        }
        /* 14 HI_UNF_ENC_FMT_1080P_25, */
        case HI_UNF_ENC_FMT_1080P_25:
        {
            if (bBtOutput == HI_TRUE)
            {
                stSyncInfo.u8Intfb = 1;
                HAL_DISP_SetIntfDataFmt(HalDispId, HAL_DISP_INTFDATAFMT_YCBCR422);
            }
            else
            {
                HAL_DISP_SetIntfDataFmt(HalDispId, HAL_DISP_INTFDATAFMT_YCBCR444);
            }
            HAL_DISP_SetIntfSync(HalDispId, stSyncInfo);
#ifdef _OPTM_DEBUG_DHD_FOR_FPGA_
            OPTM_HAL_DhdDebugSet(HI_TRUE, 0x4a);
#else
            OPTM_HAL_DhdDebugSet(HI_FALSE, 0);
#endif

            OPTM_HAL_DISP_SetIntrMode(HalDispId, HI_FALSE);
            break;
        }
        /* 15 HI_UNF_ENC_FMT_1080P_24, */
        case HI_UNF_ENC_FMT_1080P_24:
        {
            if (bBtOutput == HI_TRUE)
            {
                stSyncInfo.u8Intfb = 1;
                HAL_DISP_SetIntfDataFmt(HalDispId, HAL_DISP_INTFDATAFMT_YCBCR422);
            }
            else
            {
                HAL_DISP_SetIntfDataFmt(HalDispId, HAL_DISP_INTFDATAFMT_YCBCR444);
            }
            HAL_DISP_SetIntfSync(HalDispId, stSyncInfo);
#ifdef _OPTM_DEBUG_DHD_FOR_FPGA_
            OPTM_HAL_DhdDebugSet(HI_TRUE, 0x4a);
#else
            OPTM_HAL_DhdDebugSet(HI_FALSE, 0);
#endif
            OPTM_HAL_DISP_SetIntrMode(HalDispId, HI_FALSE);
            break;
        }
        case HI_UNF_ENC_FMT_1080i_60:
        {
            if (bBtOutput == HI_TRUE)
            {
                stSyncInfo.u8Intfb = 1;
                HAL_DISP_SetIntfDataFmt(HalDispId, HAL_DISP_INTFDATAFMT_YCBCR422);
            }
            else
            {
                HAL_DISP_SetIntfDataFmt(HalDispId, HAL_DISP_INTFDATAFMT_YCBCR444);
            }

            HAL_DISP_SetIntfSync(HalDispId, stSyncInfo);
#ifdef _OPTM_DEBUG_DHD_FOR_FPGA_
            OPTM_HAL_DhdDebugSet(HI_TRUE, 0x4a);
#else
            OPTM_HAL_DhdDebugSet(HI_FALSE, 0);
#endif
            OPTM_HAL_DISP_SetIntrMode(HalDispId, HI_TRUE);
            break;
        }
        case HI_UNF_ENC_FMT_1080i_50:
        {
            if (bBtOutput == HI_TRUE)
            {
                stSyncInfo.u8Intfb = 1;
                HAL_DISP_SetIntfDataFmt(HalDispId, HAL_DISP_INTFDATAFMT_YCBCR422);
            }
            else
            {
                HAL_DISP_SetIntfDataFmt(HalDispId, HAL_DISP_INTFDATAFMT_YCBCR444);
            }
            HAL_DISP_SetIntfSync(HalDispId, stSyncInfo);
#ifdef _OPTM_DEBUG_DHD_FOR_FPGA_
            OPTM_HAL_DhdDebugSet(HI_TRUE, 0x4a);
#else
            OPTM_HAL_DhdDebugSet(HI_FALSE, 0);
#endif
            OPTM_HAL_DISP_SetIntrMode(HalDispId, HI_TRUE);
            break;
        }
        case HI_UNF_ENC_FMT_720P_60:
        {
            if (bBtOutput == HI_TRUE)
            {
                stSyncInfo.u8Intfb = 1;
                HAL_DISP_SetIntfDataFmt(HalDispId, HAL_DISP_INTFDATAFMT_YCBCR422);
            }
            else
            {
                HAL_DISP_SetIntfDataFmt(HalDispId, HAL_DISP_INTFDATAFMT_YCBCR444);
            }

            HAL_DISP_SetIntfSync(HalDispId, stSyncInfo);
#ifdef _OPTM_DEBUG_DHD_FOR_FPGA_
            OPTM_HAL_DhdDebugSet(HI_TRUE, 0x45);
#else
            OPTM_HAL_DhdDebugSet(HI_FALSE, 0);
#endif
            OPTM_HAL_DISP_SetIntrMode(HalDispId, HI_FALSE);
            break;
        }
        case HI_UNF_ENC_FMT_720P_50:
        {
            if (bBtOutput == HI_TRUE)
            {
                stSyncInfo.u8Intfb = 1;
                HAL_DISP_SetIntfDataFmt(HalDispId, HAL_DISP_INTFDATAFMT_YCBCR422);
            }
            else
            {
                HAL_DISP_SetIntfDataFmt(HalDispId, HAL_DISP_INTFDATAFMT_YCBCR444);
            }

            HAL_DISP_SetIntfSync(HalDispId, stSyncInfo);
            OPTM_HAL_DhdDebugSet(HI_FALSE, 0);
            OPTM_HAL_DISP_SetIntrMode(HalDispId, HI_FALSE);
            break;
        }

        /* 16 HI_UNF_ENC_FMT_576P_50, */
        case HI_UNF_ENC_FMT_576P_50:
        {
            if (bBtOutput == HI_TRUE)
            {
                stSyncInfo.u8Intfb = 1;
                HAL_DISP_SetIntfDataFmt(HalDispId, HAL_DISP_INTFDATAFMT_YCBCR422);
            }
            else
            {
                HAL_DISP_SetIntfDataFmt(HalDispId, HAL_DISP_INTFDATAFMT_YCBCR444);
            }
            HAL_DISP_SetIntfSync(HalDispId, stSyncInfo);
            OPTM_HAL_DhdDebugSet(HI_FALSE, 0);
            OPTM_HAL_DISP_SetIntrMode(HalDispId, HI_FALSE);
            break;
        }
        /* 17 HI_UNF_ENC_FMT_480P_60, */
        case HI_UNF_ENC_FMT_PAL:
        case HI_UNF_ENC_FMT_PAL_N:
        case HI_UNF_ENC_FMT_PAL_Nc:
        case HI_UNF_ENC_FMT_SECAM_SIN:
        case HI_UNF_ENC_FMT_SECAM_COS:
        /* case HI_UNF_ENC_FMT_576i_50: */
        {
            /* Timing Setting */
            HAL_DISP_SetIntfSync(HalDispId, stSyncInfo);

			if(HAL_DISP_CHANNEL_DHD == HalDispId)
			{
				/* Get vou version */
                OPTM_HAL_GetVersion(&vn1, &vn2);

                // change vomux


	    {
			HAL_DISP_SetIntfDataFmt(HalDispId, HAL_DISP_INTFDATAFMT_YCBCR422);
	    }

	}
	else
	{
            	HAL_DISP_SetIntfDataFmt(HalDispId, HAL_DISP_INTFDATAFMT_YCBCR422);
            }

            OPTM_HAL_DISP_SetIntrMode(HalDispId, HI_TRUE);
            break;
        }
        case HI_UNF_ENC_FMT_480P_60:
        {
            if (bBtOutput == HI_TRUE)
            {
                stSyncInfo.u8Intfb = 1;
                HAL_DISP_SetIntfDataFmt(HalDispId, HAL_DISP_INTFDATAFMT_YCBCR422);
            }
            else
            {
                HAL_DISP_SetIntfDataFmt(HalDispId, HAL_DISP_INTFDATAFMT_YCBCR444);
            }
            HAL_DISP_SetIntfSync(HalDispId, stSyncInfo);
            OPTM_HAL_DhdDebugSet(HI_FALSE, 0);
            OPTM_HAL_DISP_SetIntrMode(HalDispId, HI_FALSE);
            break;
        }
        case HI_UNF_ENC_FMT_NTSC:
        case HI_UNF_ENC_FMT_NTSC_J:
        case HI_UNF_ENC_FMT_NTSC_PAL_M:
        //case HI_UNF_ENC_FMT_480i_60:
        {
			if(HAL_DISP_CHANNEL_DHD == HalDispId)
			{
				/* Get vou version */
                OPTM_HAL_GetVersion(&vn1, &vn2);

                // v100 change vomux

		    {
				HAL_DISP_SetIntfDataFmt(HalDispId, HAL_DISP_INTFDATAFMT_YCBCR422);
		    }

			}
			else
			{
				HAL_DISP_SetIntfDataFmt(HalDispId, HAL_DISP_INTFDATAFMT_YCBCR422);
			}
            //HAL_DISP_SetIntfDataFmt(HalDispId, HAL_DISP_INTFDATAFMT_YCBCR422);
            HAL_DISP_SetIntfSync(HalDispId, stSyncInfo);
            OPTM_HAL_DISP_SetIntrMode(HalDispId, HI_TRUE);
            break;
        }

        default:
        {
            break;
        }
    }

    return;
}


#define OPTM_DISP_VTTHD_UPDATE_POINT  5
#define OPTM_GFX_EXPECT_LINE_NUM_BEFORE_UPDATE  80
/*
 *   set start position of vertical sequence interrupt:
 *   Vtthd : 1, 2, 3;
 *   flag  : 0, count back 40 lines in valid region; 1, from valid region
 */
HI_VOID OPTM_M_SetVtthPosi(HAL_DISP_OUTPUTCHANNEL_E HalDispId, HAL_DISP_SYNCINFO_S *pstSyncInfo, HI_S32 Vtthd, HI_S32 flag)
{
    HI_U32 vtthd;

    //DEBUG_PRINTK("==========================OPTM_M_SetVtthPosi: disp=%d, vtthd=%d, flag=%d\n",
    //        HalDispId, Vtthd, flag);

    if ( (Vtthd > 3) || (flag > 4) )
    {
        return;
    }

    if (1 == flag)
    {
        /*  set threshold of display channel interrupt 1, for video layer */
        vtthd =  2 * pstSyncInfo->u16Vbb + pstSyncInfo->u16Vfb;
    }
    else if (2 == flag)
    {

        HI_U32 line_num =   OPTM_DISP_VTTHD_UPDATE_POINT            \
			               + OPTM_GFX_EXPECT_LINE_NUM_BEFORE_UPDATE;

        if (pstSyncInfo->u16Vbb > line_num)
        {
        	vtthd = pstSyncInfo->u16Vbb - line_num;
        }
        else
        {
        	 vtthd =  pstSyncInfo->u16Vbb     \
			 	    + pstSyncInfo->u16Vact    \
			 	    + pstSyncInfo->u16Vbb     \
			 	    + pstSyncInfo->u16Vfb     \
			 	    - line_num;
        }

    }
    else if (3 == flag)
    {
        vtthd = pstSyncInfo->u16Vbb;
    }
#ifdef VDP_USE_DEI_FB_OPTIMIZE
    else if (4 == flag)
    {
        if (HAL_DISP_CHANNEL_DSD == HalDispId)
        {
            vtthd =  (pstSyncInfo->u16Vbb + pstSyncInfo->u16Vact + pstSyncInfo->u16Vfb)*VDP_CONFIG_POINT_PERCENT/100;
        }
        else
        {
            vtthd =  (pstSyncInfo->u16Vbb + pstSyncInfo->u16Vact + pstSyncInfo->u16Vfb)*VDP_CONFIG_POINT_PERCENT/100;
        }
    }
#endif
    else
    {
        /*  set threshold of display channel interrupt 1, for video layer */
        vtthd = pstSyncInfo->u16Vbb + pstSyncInfo->u16Vact - 40;
    }

    HAL_DISP_SetVtThd(HalDispId, Vtthd, vtthd);

    return;
}

/*  set flag of start position of vertical sequence interrupt flag */
HI_VOID OPTM_M_SetVtthPosiFlag(HAL_DISP_OUTPUTCHANNEL_E HalDispId, HI_S32 Vtthd, HI_S32 flag)
{
    HI_S32 ch = OPTM_M_DISP_GetIndex(HalDispId);

    if ( (Vtthd > 2) || (flag > 4) )
    {
        return;
    }

    if (1 == Vtthd)
    {
        s_stDisp[ch].s32Vtth1PosiFlag = flag;
    }
    else
    {
        s_stDisp[ch].s32Vtth2PosiFlag = flag;
    }

    return;
}


/*  set flag of start position of vertical sequence interrupt flag, and effect immediately */
HI_VOID OPTM_M_SetVtthPosiFlagAndEffect(HAL_DISP_OUTPUTCHANNEL_E HalDispId, HI_S32 Vtthd, HI_S32 flag)
{
    HI_S32 ch = OPTM_M_DISP_GetIndex(HalDispId);
    HI_S32 index;

    /*  set flag of start position of vertical sequence interrupt flag */
    OPTM_M_SetVtthPosiFlag(HalDispId, Vtthd, flag);

    if (HI_UNF_DISP_INTF_TYPE_TV == s_stDisp[ch].DispInfo.enType)
    {
        index = OPTM_M_GetFmtSyncIndex(s_stDisp[ch].enDisp, s_stDisp[ch].DispInfo.enFmt);

        OPTM_M_SetVtthPosi(HalDispId, &s_stSyncTiming[index], Vtthd, flag);
    }
#ifdef HI_DISP_LCD_SUPPORT
    else if (HI_UNF_DISP_INTF_TYPE_LCD == s_stDisp[ch].DispInfo.enType)
    {
        OPTM_M_SetVtthPosi(HalDispId, &s_stLcdSyncTiming[(HI_S32)s_stDisp[ch].DispInfo.enLcdFmt], Vtthd, flag);
    }
#endif

    return;
}


HI_VOID OPTM_M_SetDispClk(HAL_DISP_OUTPUTCHANNEL_E HalDispId, HI_UNF_ENC_FMT_E enDispFmt)
{
    if (HalDispId == HAL_DISP_CHANNEL_DSD)
    {
        return;
    }
    else if (HalDispId == HAL_DISP_CHANNEL_DHD)
    {
        switch (enDispFmt)
        {
            case HI_UNF_ENC_FMT_PAL:
            case HI_UNF_ENC_FMT_PAL_N:
            case HI_UNF_ENC_FMT_PAL_Nc:
            case HI_UNF_ENC_FMT_SECAM_SIN:
            case HI_UNF_ENC_FMT_SECAM_COS:
            case HI_UNF_ENC_FMT_NTSC:
            case HI_UNF_ENC_FMT_NTSC_J:
            case HI_UNF_ENC_FMT_NTSC_PAL_M:
            case HI_UNF_ENC_FMT_576P_50:
            case HI_UNF_ENC_FMT_480P_60:
            {
                OPTM_M_SetHd0Clk27M();
                break;
            }
            case HI_UNF_ENC_FMT_1080P_60:
            {
                OPTM_M_SetHd0Clk148d35M();
                break;
            }

            case HI_UNF_ENC_FMT_1080P_50:
            {
                OPTM_M_SetHd0Clk148d5M();
                break;
            }
            case HI_UNF_ENC_FMT_1080P_24:
            case HI_UNF_ENC_FMT_1080P_25:
            case HI_UNF_ENC_FMT_1080P_30:
            case HI_UNF_ENC_FMT_1080i_50:
            case HI_UNF_ENC_FMT_720P_50:
            {
                OPTM_M_SetHd0Clk74d25M();
                break;
            }

            case HI_UNF_ENC_FMT_1080i_60:
            case HI_UNF_ENC_FMT_720P_60:
            {
                OPTM_M_SetHd0Clk74d18M();
                break;
            }

            default:
            {
                break;
            }
        }
    }

    return;
}

HI_S32 OPTM_M_SetDispEncFmt(HAL_DISP_OUTPUTCHANNEL_E enDisp, HI_UNF_ENC_FMT_E enFmt)
{
    HI_S32 ch = OPTM_M_DISP_GetIndex(enDisp);
    OPTM_HIFB_DISP_INFO_S stInfo;
    HI_S32 index;

    s_stDisp[ch].DispInfo.enFmt = enFmt;

    /*  set output sequence data bit-width, progressive */
    OPTM_M_SetDispSync(s_stDisp[ch].enDisp, enFmt, s_stDisp[ch].bBt1120Enable);

    index = OPTM_M_GetFmtSyncIndex(enDisp, enFmt);

    /*  set vertical sequence interrupt 1 */
    OPTM_M_SetVtthPosi(enDisp, &s_stSyncTiming[index], 1, s_stDisp[ch].s32Vtth1PosiFlag);

    /*  set vertical sequence interrupt 2 */
    OPTM_M_SetVtthPosi(enDisp, &s_stSyncTiming[index], 2, s_stDisp[ch].s32Vtth2PosiFlag);

    OPTM_M_SetVtthPosi(enDisp, &s_stSyncTiming[index], 3, 3);
    /*  set clock */
    OPTM_M_SetDispClk(s_stDisp[ch].enDisp, enFmt);

    /* get display system related information */
    OPTM_M_GetTvFmtInfo(enFmt, &(s_stDisp[ch].DispInfo));
    //s_stDisp[ch].DispInfo.bAdjstScrnWin = HI_FALSE;

    /*  set display window  */
    OPTM_HAL_SetDispChWnd(s_stDisp[ch].enDisp,
                          s_stDisp[ch].DispInfo.stScrnWin.s32Width,
                          s_stDisp[ch].DispInfo.stScrnWin.s32Height);

    /* record information of current screen for graphic layer: w, h, iop */
    stInfo.enScanMode = (s_stDisp[ch].DispInfo.bProgressive==HI_TRUE) ?
                         OPTM_HIFB_SCAN_MODE_P : OPTM_HIFB_SCAN_MODE_I;
    stInfo.u32ScreenWidth  = s_stDisp[ch].DispInfo.stScrnWin.s32Width;
    stInfo.u32ScreenHeight = s_stDisp[ch].DispInfo.stScrnWin.s32Height;
    OPTM_M_INT_SetDispInfoForGfx(s_stDisp[ch].enDisp, &stInfo);

	OPTM_HAL_SetIfirCoef(enDisp, enFmt);
    return HI_SUCCESS;
}


HI_UNF_ENC_FMT_E OPTM_M_GetDispEncFmt(HAL_DISP_OUTPUTCHANNEL_E enDisp)
{
    HI_UNF_ENC_FMT_E enFmt;
    HAL_DISP_SYNCINFO_S stSyncInfo;
    HI_S32 i;

    /*
     * query synchronization sequence, initial check of system;
     * status of registers
     */
    HAL_DISP_GetIntfSync(enDisp, &stSyncInfo);

    for(i=0; i<15; i++)
    {
        if(  (stSyncInfo.bIop     == s_stSyncTiming[i].bIop)
           &&(stSyncInfo.u16Hact  == s_stSyncTiming[i].u16Hact)
           &&(stSyncInfo.u16Hbb   == s_stSyncTiming[i].u16Hbb)
           &&(stSyncInfo.u16Hfb   == s_stSyncTiming[i].u16Hfb)
           &&(stSyncInfo.u16Vact  == s_stSyncTiming[i].u16Vact)
           &&(stSyncInfo.u16Vbb   == s_stSyncTiming[i].u16Vbb)
           &&(stSyncInfo.u16Vfb   == s_stSyncTiming[i].u16Vfb)
           &&(stSyncInfo.u16Bvact == s_stSyncTiming[i].u16Bvact)
           &&(stSyncInfo.u16Bvbb  == s_stSyncTiming[i].u16Bvbb)
           &&(stSyncInfo.u16Bvfb  == s_stSyncTiming[i].u16Bvfb)
          )
        {
            break;
        }
    }

    /*  for same sequence, distinguish them precisely according to pll setting */
    if (i >= 15)
    {
        /* no matched system, quit directly */
        return HI_UNF_ENC_FMT_BUTT;
    }
    else
    {
        HI_U32 value;

        value = *g_pSysVPLL0_CFG;
        enFmt = s_enDispEncFmtFromIndex[i];

#ifdef CHIP_TYPE_hi3716mv330
        if ( (enFmt == HI_UNF_ENC_FMT_1080P_60) || (enFmt == HI_UNF_ENC_FMT_1080P_30))
        {
            if (s_u32OptmTVClk_v330[3][0] == value  )
            {
                enFmt = HI_UNF_ENC_FMT_1080P_60;
            }
            else
            {
                enFmt = HI_UNF_ENC_FMT_1080P_30;
            }
          }
        else if((enFmt == HI_UNF_ENC_FMT_1080P_50) || (enFmt == HI_UNF_ENC_FMT_1080P_25))
        {
            if (s_u32OptmTVClk_v330[1][0] == value )
            {
                enFmt = HI_UNF_ENC_FMT_1080P_50;
            }
            else
            {
                enFmt = HI_UNF_ENC_FMT_1080P_25;
            }
        }
#else
        if ( (enFmt == HI_UNF_ENC_FMT_1080P_60) || (enFmt == HI_UNF_ENC_FMT_1080P_30))
        {
            if (s_u32OptmTVClk_v310[3][0] == value  )
            {
                enFmt = HI_UNF_ENC_FMT_1080P_60;
            }
            else
            {
                enFmt = HI_UNF_ENC_FMT_1080P_30;
            }
          }
        else if((enFmt == HI_UNF_ENC_FMT_1080P_50) || (enFmt == HI_UNF_ENC_FMT_1080P_25))
        {
            if (s_u32OptmTVClk_v310[1][0] == value )
            {
                enFmt = HI_UNF_ENC_FMT_1080P_50;
            }
            else
            {
                enFmt = HI_UNF_ENC_FMT_1080P_25;
            }
        }
#endif
    }

    return enFmt;
}

/************************************************************************************
 *                              LCD intf setting                                    *
 ************************************************************************************/

/************************************************************************************
 *                           display  sequence  set                                 *
 ************************************************************************************/

#ifdef HI_DISP_LCD_SUPPORT

/* In future, display systems will be added according to demand */
/* for LCD display, coefficients are to be set by up layer */
static HAL_DISP_SYNCINFO_S s_stLcdSyncTiming[] =
{
  /* |--INTFACE---||-----TOP-----||----HORIZON--------||----BOTTOM-----||-PULSE-||-INVERSE-| */
  /* Synm,Iop, Itf, Vact,Vbb,Vfb,  Hact, Hbb,Hfb,Hmid,  Bvact,Bvbb,Bvfb, Hpw,Vpw, Idv,Ihs,Ivs */
  {1,   1,   2,   480,  35, 10,   640, 144, 16,  1,     1,   1,  1,     96, 2,  0,  0,  0}, /*  640x480@60Hz@25.175MHz */
  {1,   1,   2,   600,  27,  1,	  800, 216, 40,  1,     1,   1,  1,    128, 4,  0,  0,  0}, /*  800*600@60Hz */
  {1,   1,   2,   768,  35,  3,  1024, 296, 24,  1,     1,   1,  1,    136, 6,  0,  0,  0}, /*  1024x768@60Hz */
  {1,   1,   2,   720,  25,  5,  1280, 260,110,  1,     1,   1,  1,     40, 5,  0,  0,  0}, /*  1280x720@60Hz */
  {1,   1,   2,   800,  28,  3,  1280, 328, 72,  1,     1,   1,  1,    128, 6,  0,  0,  0}, /*  1280x800@60Hz, H- V+ */
  {1,   1,   2,  1024,  41,  1,  1280, 360, 48,  1,     1,   1,  1,    112, 3,  0,  0,  0}, /*  1280x1024@60Hz */
  {1,   1,   2,   768,  24,  3,  1360, 368, 64,  1,     1,   1,  1,    112, 6,  0,  0,  0}, /*  1360x768@60Hz */    //Rowe
  {1,   1,   2,   768,  27,  3,  1366, 356, 70,  1,     1,   1,  1,    143, 3,  0,  0,  0}, /*  1366x768@60Hz */
  {1,   1,   2,  1050,  36,  3,  1400, 376, 88,  1,     1,   1,  1,    144, 4,  0,  0,  0}, /*  1400x1050@60Hz */      //Rowe
  {1,   1,   2,   900,  31,  3,  1440, 384, 80,  1,     1,   1,  1,    152, 6,  0,  0,  0}, /*  1440x900@60Hz@106.5MHz */
  {1,   1,   2,   900,  23,  3,  1440, 112, 48,  1,     1,   1,  1,   	32, 6,  0,  0,  0}, /*  1440x900@60Hz@88.75MHz RB */
  {1,   1,   2,   900,  23,  3,  1600, 112, 48,  1,     1,   1,  1,     32, 5,  0,  0,  0}, /*  1600x1200@60Hz@162MHz H+ V- */
  {1,   1,   2,  1200,  49,  1,  1600, 496, 64,  1,     1,   1,  1,    192, 3,  0,  0,  0}, /*  1600x1200@60Hz@162MHz */
  {1,   1,   2,  1050,  36,  3,  1680, 456,104,  1,     1,   1,  1,    176, 6,  0,  0,  0}, /*  1680x1050@60Hz@146MHz */    //Rowe
  {1,   1,   2,  1080,  41,  4,  1920, 192, 88,  1,     1,   1,  1,     44, 5,  0,  0,  0}, /*  1920x1080@60Hz H+ V+*/
  {1,   1,   2,  1200,  32,  3,  1920, 112, 48,  1,     1,   1,  1,     32, 6,  0,  0,  0}, /*  1920x1200@60Hz@154MHz */
  {1,   1,   2,  1152,  30,  3,  2048, 112, 48,  1,     1,   1,  1,     32, 5,  0,  0,  0}, /*  2048x1152@60Hz@156.75MHz */
};

static OPTM_M_D_LCD_FMT_E s_enDispLcdFmtFromIndex[] =
{
    OPTM_M_D_LCD_FMT_861D_640X480_60HZ,
    OPTM_M_D_LCD_FMT_VESA_800X600_60HZ,
    OPTM_M_D_LCD_FMT_VESA_1024X768_60HZ,
    OPTM_M_D_LCD_FMT_VESA_1280X720_60HZ,
    OPTM_M_D_LCD_FMT_VESA_1280X800_60HZ,
    OPTM_M_D_LCD_FMT_VESA_1280X1024_60HZ,
    OPTM_M_D_LCD_FMT_VESA_1360X768_60HZ,    //Rowe
    OPTM_M_D_LCD_FMT_VESA_1366X768_60HZ,
	OPTM_M_D_LCD_FMT_VESA_1400X1050_60HZ,   //Rowe
    OPTM_M_D_LCD_FMT_VESA_1440X900_60HZ,
    OPTM_M_D_LCD_FMT_VESA_1440X900_60HZ_RB,
    OPTM_M_D_LCD_FMT_VESA_1600X900_60HZ_RB,
    OPTM_M_D_LCD_FMT_VESA_1600X1200_60HZ,
	OPTM_M_D_LCD_FMT_VESA_1680X1050_60HZ,   //Rowe
    OPTM_M_D_LCD_FMT_VESA_1920X1080_60HZ,
    OPTM_M_D_LCD_FMT_VESA_1920X1200_60HZ,
    OPTM_M_D_LCD_FMT_VESA_2048X1152_60HZ
};

OPTM_M_D_LCD_FMT_E OPTM_M_GetDispLcdFmt(HAL_DISP_OUTPUTCHANNEL_E enDisp)
{
    OPTM_M_D_LCD_FMT_E  enLcdFmt;
    HAL_DISP_SYNCINFO_S stSyncInfo;
    HI_S32              i;

    /*
     * query synchronization sequence, initial check of system;
     * status of registers
     */
    HAL_DISP_GetIntfSync(enDisp, &stSyncInfo);

    for(i=0; i < OPTM_M_D_LCD_FMT_CUSTOMER_DEFINE; i++)
    {
        if(  (stSyncInfo.bIop     == s_stLcdSyncTiming[i].bIop)
           &&(stSyncInfo.u16Hact  == s_stLcdSyncTiming[i].u16Hact)
           &&(stSyncInfo.u16Hbb   == s_stLcdSyncTiming[i].u16Hbb)
           &&(stSyncInfo.u16Hfb   == s_stLcdSyncTiming[i].u16Hfb)
           &&(stSyncInfo.u16Vact  == s_stLcdSyncTiming[i].u16Vact)
           &&(stSyncInfo.u16Vbb   == s_stLcdSyncTiming[i].u16Vbb)
           &&(stSyncInfo.u16Vfb   == s_stLcdSyncTiming[i].u16Vfb)
           &&(stSyncInfo.u16Bvact == s_stLcdSyncTiming[i].u16Bvact)
           &&(stSyncInfo.u16Bvbb  == s_stLcdSyncTiming[i].u16Bvbb)
           &&(stSyncInfo.u16Bvfb  == s_stLcdSyncTiming[i].u16Bvfb)
          )
        {
            break;
        }
    }

    /*  if same sequence, distinguish them precisely according to pll setting */
    if (i >= OPTM_M_D_LCD_FMT_CUSTOMER_DEFINE)
    {
        /* no matched system, quit directly */
        enLcdFmt = OPTM_M_D_LCD_FMT_BUTT;
    }
    else
    {
        enLcdFmt = s_enDispLcdFmtFromIndex[i];
    }

    return enLcdFmt;

}


HI_S32 OPTM_M_GetLcdDefaultPara(OPTM_M_D_LCD_FMT_E enLcdFmt, HI_UNF_DISP_LCD_PARA_S *pstSyncInfo)
{
    HAL_DISP_SYNCINFO_S *pstLocInfo;

    if ( enLcdFmt >= OPTM_M_D_LCD_FMT_BUTT)
    {
        return HI_FAILURE;
    }

    if(enLcdFmt >= 14)
		        return HI_FAILURE;
    pstLocInfo = &s_stLcdSyncTiming[(HI_S32)enLcdFmt];

    pstSyncInfo->VFB           = pstLocInfo->u16Vfb;             /**< vertical forward blanking */
    pstSyncInfo->VBB           = pstLocInfo->u16Vbb;             /**< vertical backward blanking */
    pstSyncInfo->VACT          = pstLocInfo->u16Vact;            /**< vertical valid region */
    pstSyncInfo->HFB           = pstLocInfo->u16Hfb;             /**< horizontal forward blanking */
    pstSyncInfo->HBB           = pstLocInfo->u16Hbb;             /**< horizontal backward blanking */
    pstSyncInfo->HACT          = pstLocInfo->u16Hact;            /**< horizontal valid region */
    pstSyncInfo->VPW           = pstLocInfo->u16Vpw;             /**< width of vertical impulse */
    pstSyncInfo->HPW           = pstLocInfo->u16Hpw;             /**< width horizontal impulse*/
    pstSyncInfo->IDV           = pstLocInfo->bIdv;               /**< reverse or not for valid data signal */
    pstSyncInfo->IHS           = pstLocInfo->bIhs;               /**< reverse or not for horizontal synchronization impulse signal */
    pstSyncInfo->IVS           = pstLocInfo->bIvs;               /**< reverse or not for vertical synchronization impulse signal */
    pstSyncInfo->ClockReversal = HI_FALSE;                       /**< reverse for clock */
    pstSyncInfo->DataWidth     = HI_UNF_DISP_LCD_DATA_WIDTH24;   /**< data bit-width */
    pstSyncInfo->ItfFormat     = HI_UNF_DISP_LCD_DATA_FMT_RGB888;/**< data format */
    pstSyncInfo->DitherEnable  = HI_FALSE;                       /**< enable or not for Dither */

    return HI_SUCCESS;
}


HI_S32 OPTM_M_SetLcdDefaultPara(HAL_DISP_OUTPUTCHANNEL_E enDisp, OPTM_M_D_LCD_FMT_E enLcdFmt)
{
    OPTM_HIFB_DISP_INFO_S stInfo;
    HI_S32 ch = OPTM_M_DISP_GetIndex(enDisp);//(enDisp != HAL_DISP_CHANNEL_DHD);

    HAL_DISP_SYNCINFO_S *pstLocInfo;

//    HI_U32 vtthd1, vtthd2;

    if ( enLcdFmt >= OPTM_M_D_LCD_FMT_CUSTOMER_DEFINE)
    {
        return HI_FAILURE;
    }

    s_stDisp[ch].DispInfo.enLcdFmt = enLcdFmt;

    pstLocInfo = &s_stLcdSyncTiming[(HI_S32)enLcdFmt];

    /* get display system related information */
	s_stDisp[ch].DispInfo.stScrnWin.s32X      = 0;
	s_stDisp[ch].DispInfo.stScrnWin.s32Y      = 0;
	s_stDisp[ch].DispInfo.stScrnWin.s32Width  = pstLocInfo->u16Hact;
	s_stDisp[ch].DispInfo.stScrnWin.s32Height = pstLocInfo->u16Vact;
	s_stDisp[ch].DispInfo.bProgressive        = HI_TRUE;
	s_stDisp[ch].DispInfo.u32DispRate         = 60;  ///TODO: ADD RATE

    /*  set display window  */
    OPTM_HAL_SetDispChWnd(s_stDisp[ch].enDisp,
                          s_stDisp[ch].DispInfo.stScrnWin.s32Width,
                          s_stDisp[ch].DispInfo.stScrnWin.s32Height);

    /*  set bit-width of output sequence, progressive information */
    HAL_DISP_SetIntfDataFmt(enDisp, HAL_DISP_INTFDATAFMT_RGB888);
    HAL_DISP_SetIntfSync(enDisp, s_stLcdSyncTiming[(HI_S32)enLcdFmt]);
    OPTM_HAL_DhdDebugSet(HI_FALSE, 0);
    OPTM_HAL_DISP_SetIntrMode(enDisp, HI_FALSE);

#if 0
    vtthd1 = pstLocInfo->u16Vbb+ pstLocInfo->u16Vact - 10;
    HAL_DISP_SetVtThd(enDisp, 1, vtthd1);


    vtthd2 = pstLocInfo->u16Vbb+ pstLocInfo->u16Vact +
             pstLocInfo->u16Vbb + pstLocInfo->u16Vfb - 5 - 80;
    OPTM_HAL_DISP_SetIntrThd2(enDisp, vtthd2);
#else

    // TODO: l00185424 LCD, MODIFY IT LATER
    /*  set vertical sequence interrupt 1 */
    OPTM_M_SetVtthPosi(enDisp, pstLocInfo, 1, s_stDisp[ch].s32Vtth1PosiFlag);

    /*  set vertical sequence interrupt 2 */
    OPTM_M_SetVtthPosi(enDisp, pstLocInfo, 2, s_stDisp[ch].s32Vtth2PosiFlag);
#endif
    OPTM_M_SetVtthPosi(enDisp, pstLocInfo, 3, 3);


    /* set data format of interface ???? */
    stInfo.enScanMode = (s_stDisp[ch].DispInfo.bProgressive==HI_TRUE) ?
                         OPTM_HIFB_SCAN_MODE_P : OPTM_HIFB_SCAN_MODE_I;
    stInfo.u32ScreenWidth  = s_stDisp[ch].DispInfo.stScrnWin.s32Width;
    stInfo.u32ScreenHeight = s_stDisp[ch].DispInfo.stScrnWin.s32Height;
    OPTM_M_INT_SetDispInfoForGfx(s_stDisp[ch].enDisp, &stInfo);

    /* set clock */
    OPTM_M_SetHd0ClkForLcd((HI_S32)enLcdFmt);

    return HI_SUCCESS;
}

HI_S32 OPTM_M_SetDispLcdPara(HAL_DISP_OUTPUTCHANNEL_E enDisp, HI_UNF_DISP_LCD_PARA_S *pstLcd)
{
    HAL_DISP_SYNCINFO_S stTiming;
    OPTM_HIFB_DISP_INFO_S stInfo;
    HI_S32 ch = OPTM_M_DISP_GetIndex(enDisp);
    /* set clock */
    HI_U32 clk_value[2];

    memcpy(&(s_stDisp[ch].DispInfo.LcdPara), pstLcd, sizeof(HI_UNF_DISP_LCD_PARA_S));

    stTiming.bSynm    = 1;
    stTiming.bIop     = 1;
    stTiming.u8Intfb  = 2;
    stTiming.u16Vact  = pstLcd->VACT;
    stTiming.u16Vbb   = pstLcd->VBB;
    stTiming.u16Vfb   = pstLcd->VFB;
    stTiming.u16Hact  = pstLcd->HACT;
    stTiming.u16Hbb   = pstLcd->HBB;
    stTiming.u16Hfb   = pstLcd->HFB;
    stTiming.u16Hmid  = 1;
    stTiming.u16Bvact = 1;
    stTiming.u16Bvbb  = 1;
    stTiming.u16Bvfb  = 1;
    stTiming.u16Hpw   = pstLcd->HPW;
    stTiming.u16Vpw   = pstLcd->VPW;
    stTiming.bIdv     = pstLcd->IDV;
    stTiming.bIhs     = pstLcd->IHS;
    stTiming.bIvs     = pstLcd->IVS;

    /* get display system related information */
	s_stDisp[ch].DispInfo.stScrnWin.s32X = 0;
	s_stDisp[ch].DispInfo.stScrnWin.s32Y = 0;
	s_stDisp[ch].DispInfo.stScrnWin.s32Width  = pstLcd->HACT;
	s_stDisp[ch].DispInfo.stScrnWin.s32Height = pstLcd->VACT;
	s_stDisp[ch].DispInfo.bProgressive = HI_TRUE;
	s_stDisp[ch].DispInfo.u32DispRate  = 60; //TODO: ADD RATE

    /*  set display window  */
    OPTM_HAL_SetDispChWnd(s_stDisp[ch].enDisp,
                          s_stDisp[ch].DispInfo.stScrnWin.s32Width,
                          s_stDisp[ch].DispInfo.stScrnWin.s32Height);

    /*  set data bit-width of output sequence, progressive information */
    HAL_DISP_SetIntfDataFmt(enDisp, HAL_DISP_INTFDATAFMT_RGB888);
    HAL_DISP_SetIntfSync(enDisp, stTiming);
    OPTM_HAL_DhdDebugSet(HI_FALSE, 0);
    OPTM_HAL_DISP_SetIntrMode(enDisp, HI_FALSE);

    /* set data format of interface ???? */
    stInfo.enScanMode = (s_stDisp[ch].DispInfo.bProgressive==HI_TRUE) ?
                         OPTM_HIFB_SCAN_MODE_P : OPTM_HIFB_SCAN_MODE_I;
    stInfo.u32ScreenWidth  = s_stDisp[ch].DispInfo.stScrnWin.s32Width;
    stInfo.u32ScreenHeight = s_stDisp[ch].DispInfo.stScrnWin.s32Height;
    OPTM_M_INT_SetDispInfoForGfx(s_stDisp[ch].enDisp, &stInfo);

    HI_DBG_DISP("@@@LCD para Vact(%d),vbb(%d), vfb(%d),vpw(%d),hact(%d),hbb(%d),hfb(%d),hpw(%d)\n",
          stTiming.u16Vact, stTiming.u16Vbb,stTiming.u16Vfb, stTiming.u16Vpw,
          stTiming.u16Hact, stTiming.u16Hbb, stTiming.u16Hfb, stTiming.u16Hpw);


    OPTM_HAL_SetDataMux(HAL_DISP_DATA_SEL0, HAL_DISP_DATA_SEPRA_3);
    OPTM_HAL_SetDataMux(HAL_DISP_DATA_SEL1, HAL_DISP_DATA_SEPRA_3);
    OPTM_HAL_SetDataMux(HAL_DISP_DATA_SEL2, HAL_DISP_DATA_SEPRA_3);


    clk_value[0] = pstLcd->ClkPara0;
    clk_value[1] = pstLcd->ClkPara1;
    OPTM_M_SetHd0ClkForLvds(clk_value);

 #if 0
    /* set clock */
    if ((640 == pstLcd->HACT) && (480 == pstLcd->VACT))
    {
        OPTM_M_SetHd0ClkForLcd((HI_S32)OPTM_M_D_LCD_FMT_861D_640X480_60HZ);
    }
    else if ((800 == pstLcd->HACT) && (600 == pstLcd->VACT))
    {
        OPTM_M_SetHd0ClkForLcd((HI_S32)OPTM_M_D_LCD_FMT_VESA_800X600_60HZ);
    }
    else if ((1024 == pstLcd->HACT) && (768 == pstLcd->VACT))
    {
        OPTM_M_SetHd0ClkForLcd((HI_S32)OPTM_M_D_LCD_FMT_VESA_1024X768_60HZ);
    }
    else if ((1280 == pstLcd->HACT) && (1024 == pstLcd->VACT))
    {
        OPTM_M_SetHd0ClkForLcd((HI_S32)OPTM_M_D_LCD_FMT_VESA_1280X1024_60HZ);
    }
    else if ((1366 == pstLcd->HACT) && (768 == pstLcd->VACT))
    {
        OPTM_M_SetHd0ClkForLcd((HI_S32)OPTM_M_D_LCD_FMT_VESA_1366X768_60HZ);
    }
    else if ((1440 == pstLcd->HACT) && (900 == pstLcd->VACT) && (31 == pstLcd->VBB))
    {
        OPTM_M_SetHd0ClkForLcd((HI_S32)OPTM_M_D_LCD_FMT_VESA_1440X900_60HZ);
    }
    else if ((1440 == pstLcd->HACT) && (900 == pstLcd->VACT) && (23 == pstLcd->VBB))
    {
        OPTM_M_SetHd0ClkForLcd((HI_S32)OPTM_M_D_LCD_FMT_VESA_1440X900_60HZ_RB);
    }
    else if ((1600 == pstLcd->HACT) && (1200 == pstLcd->VACT))
    {
        OPTM_M_SetHd0ClkForLcd((HI_S32)OPTM_M_D_LCD_FMT_VESA_1600X1200_60HZ);
    }
    else if ((1280 == pstLcd->HACT) && (720 == pstLcd->VACT))
    {
        OPTM_M_SetHd0ClkForLcd((HI_S32)OPTM_M_D_LCD_FMT_VESA_1280X720_60HZ);
    }

    else if ((1280 == pstLcd->HACT) && (800 == pstLcd->VACT))
    {
        OPTM_M_SetHd0ClkForLcd((HI_S32)OPTM_M_D_LCD_FMT_VESA_1280X800_60HZ);
    }

    else if ((1600 == pstLcd->HACT) && (900 == pstLcd->VACT))
    {
        OPTM_M_SetHd0ClkForLcd((HI_S32)OPTM_M_D_LCD_FMT_VESA_1600X900_60HZ_RB);
    }

    else if ((1920 == pstLcd->HACT) && (1080 == pstLcd->VACT))
    {
        OPTM_M_SetHd0ClkForLcd((HI_S32)OPTM_M_D_LCD_FMT_VESA_1920X1080_60HZ);
    }
#endif
    return HI_SUCCESS;
}
#endif

HI_S32 OPTM_M_GetLayerDispOrderNumber(HAL_DISP_OUTPUTCHANNEL_E enDisp,
                                     HAL_DISP_LAYER_E enLayer)
{
    if (HAL_DISP_CHANNEL_DHD == enDisp)
    {
        switch(enLayer)
        {
            case HAL_DISP_LAYER_VIDEO1:
            {
                return 1;
            }
            case HAL_DISP_LAYER_VIDEO2:
            {
                return 2;
            }
            case HAL_DISP_LAYER_VIDEO4:
            {
                return 5;
            }
            case HAL_DISP_LAYER_GFX0:
            {
                return 3;
            }
            case HAL_DISP_LAYER_GFX1:
            {
                return 4;
            }
            default:
            {
                return 0;
            }
        }
    }
    else if (HAL_DISP_CHANNEL_DSD == enDisp)
    {
        switch(enLayer)
        {
            case HAL_DISP_LAYER_VIDEO3:
            {
                return 1;
            }
            case HAL_DISP_LAYER_GFX1:
            {
                return 2;
            }
            default:
            {
                return 0;
            }
        }
    }
    else
    {
        return 0;
    }
}


HI_S32 OPTM_M_SetDispOrder(HAL_DISP_OUTPUTCHANNEL_E enDisp, HAL_DISP_LAYER_E *pOrder, HI_U32 u32LayerNum)
{
    HI_S32 i;
    HI_U8 u8Order[5];
    HI_S32 ch = OPTM_M_DISP_GetIndex(enDisp);

#ifdef _OPTM_DEBUG_MIXER_
    HI_DBG_DISP("ch=%d, u32LayerNum=%d\n", enDisp, u32LayerNum);
#endif
    s_stDisp[ch].u32LayerNum = u32LayerNum;
    for(i=0; i<u32LayerNum; i++)
    {
       s_stDisp[ch].aenOrder[i] = pOrder[i];
       u8Order[i] = (HI_U8)OPTM_M_GetLayerDispOrderNumber(enDisp, pOrder[i]);
#ifdef _OPTM_DEBUG_MIXER_
    HI_DBG_DISP("i=%d, \n", u8Order[i]);
#endif
    }

    for(; i<5; i++)
    {
        u8Order[i] = (HI_U8)0;
    }


    OPTM_HAL_SetCbmMixerPrio(s_stDisp[ch].enDisp, u8Order);
    return HI_SUCCESS;
}

HI_S32 OPTM_M_SetDispBgc(HAL_DISP_OUTPUTCHANNEL_E enDisp, HI_UNF_DISP_BG_COLOR_S *pstBgc)
{
    HI_UNF_YCBCR_COLOR_S stYuvBgc;
    HAL_DISP_BKCOLOR_S stBkg;
    HI_S32 ch = OPTM_M_DISP_GetIndex(enDisp);
    OPTM_CS_E enSrcCs=OPTM_CS_eUnknown, enDstCs;

    s_stDisp[ch].stBgc = *pstBgc;



    OPTM_M_GetDispCscMode(enDisp, &enSrcCs, &enDstCs);

     if (OPTM_CS_eRGB == enSrcCs)
     {
		 stYuvBgc.u8Y 	 = pstBgc->u8Red;
		 stYuvBgc.u8Cb = pstBgc->u8Green;
		 stYuvBgc.u8Cr  = pstBgc->u8Blue;
     } else {
         OPTM_ALG_API_Rgb2Yuv(pstBgc, &stYuvBgc);
    }



    stBkg.u8Bkg_a  = 0;
    stBkg.u8Bkg_y  = stYuvBgc.u8Y;
    stBkg.u8Bkg_cb = stYuvBgc.u8Cb;
    stBkg.u8Bkg_cr = stYuvBgc.u8Cr;
    Vou_SetCbmBkg(ch, stBkg);

#ifdef OPTM_VIDEO_MIXER_ENABLE

    /* set properties of VIDEO MIXER */
    if (HAL_DISP_CHANNEL_DHD == enDisp)
    {
        /* set background color to black */
        Vou_SetCbmBkg(2, stBkg);

        /* set alpha to 0, to avoid that VM background color screens other windows, mainly for graphic layer */
        Vou_SetCbmVmixerAlphaSel(0);
    }
#endif

    return HI_SUCCESS;
}

HI_S32 OPTM_M_SetDispCscMode(HAL_DISP_OUTPUTCHANNEL_E enDisp, OPTM_CS_E enSrcCs, OPTM_CS_E enDstCs)
{

    HI_S32 ch = OPTM_M_DISP_GetIndex(enDisp);

    s_stDisp[ch].enSrcClrSpace = enSrcCs;
    s_stDisp[ch].enDstClrSpace = enDstCs;

#if  0

    /* calculate DC component */
    OPTM_ALG_API_CalcCscDc(s_stDisp[ch].enSrcClrSpace, s_stDisp[ch].enDstClrSpace, s_stDisp[ch].u32Bright,
                           s_stDisp[ch].u32Contrast, &stCscDcCoef);
    HAL_DISP_SetIntfCscDcCoef(enDisp, &stCscDcCoef);

    /* calculate CSC coefficients */
    OPTM_ALG_API_CalcChroma(s_stDisp[ch].enSrcClrSpace, s_stDisp[ch].enDstClrSpace,
                            s_stDisp[ch].u32Saturation, s_stDisp[ch].u32Contrast, s_stDisp[ch].u32Hue,
                            s_stDisp[ch].u32Kr, s_stDisp[ch].u32Kg, s_stDisp[ch].u32Kb,
                            &stCscCoef);
    HAL_DISP_SetIntfCscCoefEx(enDisp, &stCscCoef);

    HAL_DISP_SetIntfCscEna(enDisp, HI_TRUE);

#endif

    return HI_SUCCESS;
}

HI_S32 OPTM_M_GetDispCscMode(HAL_DISP_OUTPUTCHANNEL_E enDisp, OPTM_CS_E *penSrcCs, OPTM_CS_E *penDstCs)
{
	HI_S32 ch = OPTM_M_DISP_GetIndex(enDisp);

	if (penSrcCs && penDstCs)
	{
		*penSrcCs = s_stDisp[ch].enSrcClrSpace;
		*penDstCs = s_stDisp[ch].enDstClrSpace;

		return HI_SUCCESS;
	}

	return HI_FAILURE;
}



HI_S32 OPTM_M_SetDispColorTemperature(HAL_DISP_OUTPUTCHANNEL_E enDisp, HI_U32 u32Kr,HI_U32 u32Kg,HI_U32 u32Kb)
{
    IntfCscCoef_S stCscCoef;
    HI_S32 ch = OPTM_M_DISP_GetIndex(enDisp);

    s_stDisp[ch].u32Kr = u32Kr;
    s_stDisp[ch].u32Kg = u32Kg;
    s_stDisp[ch].u32Kb = u32Kb;

    /* calculate CSC coefficients */
    OPTM_ALG_API_CalcChroma(s_stDisp[ch].enSrcClrSpace, s_stDisp[ch].enDstClrSpace,
                            s_stDisp[ch].u32Saturation, s_stDisp[ch].u32Contrast, s_stDisp[ch].u32Hue,
                            s_stDisp[ch].u32Kr, s_stDisp[ch].u32Kg, s_stDisp[ch].u32Kb,
                            &stCscCoef);

    HAL_DISP_SetIntfCscCoefEx(enDisp, &stCscCoef);

    return HI_SUCCESS;
}


HI_S32 OPTM_M_SetDispBright(HAL_DISP_OUTPUTCHANNEL_E enDisp, HI_U32 u32Bright)
{
    IntfCscDcCoef_S stCscDcCoef;
    HI_S32 ch = OPTM_M_DISP_GetIndex(enDisp);

    s_stDisp[ch].u32Bright = u32Bright;

    /* calculate DC component */
    OPTM_ALG_API_CalcCscDc(s_stDisp[ch].enSrcClrSpace, s_stDisp[ch].enDstClrSpace, s_stDisp[ch].u32Bright,
                           s_stDisp[ch].u32Contrast, &stCscDcCoef);
    HAL_DISP_SetIntfCscDcCoef(enDisp, &stCscDcCoef);

    return HI_SUCCESS;
}

HI_S32 OPTM_M_SetDispContrast(HAL_DISP_OUTPUTCHANNEL_E enDisp, HI_U32 u32Contrast)
{
    IntfCscDcCoef_S stCscDcCoef;
    IntfCscCoef_S stCscCoef;
    HI_S32 ch = OPTM_M_DISP_GetIndex(enDisp);

    s_stDisp[ch].u32Contrast = u32Contrast;

    /* calculate DC component */
    OPTM_ALG_API_CalcCscDc(s_stDisp[ch].enSrcClrSpace, s_stDisp[ch].enDstClrSpace, s_stDisp[ch].u32Bright,
                           s_stDisp[ch].u32Contrast, &stCscDcCoef);
    HAL_DISP_SetIntfCscDcCoef(enDisp, &stCscDcCoef);

    /* calculate CSC coefficients */
    OPTM_ALG_API_CalcChroma(s_stDisp[ch].enSrcClrSpace, s_stDisp[ch].enDstClrSpace,
                            s_stDisp[ch].u32Saturation, s_stDisp[ch].u32Contrast, s_stDisp[ch].u32Hue,
                            s_stDisp[ch].u32Kr, s_stDisp[ch].u32Kg, s_stDisp[ch].u32Kb,
                            &stCscCoef);
    HAL_DISP_SetIntfCscCoefEx(enDisp, &stCscCoef);

    return HI_SUCCESS;
}

HI_S32 OPTM_M_SetDispSaturation(HAL_DISP_OUTPUTCHANNEL_E enDisp, HI_U32 u32Saturation)
{
    IntfCscCoef_S stCscCoef;
    HI_S32 ch = OPTM_M_DISP_GetIndex(enDisp);

    s_stDisp[ch].u32Saturation = u32Saturation;

    /* calculate CSC coefficients */
    OPTM_ALG_API_CalcChroma(s_stDisp[ch].enSrcClrSpace, s_stDisp[ch].enDstClrSpace,
                            s_stDisp[ch].u32Saturation, s_stDisp[ch].u32Contrast, s_stDisp[ch].u32Hue,
                            s_stDisp[ch].u32Kr, s_stDisp[ch].u32Kg, s_stDisp[ch].u32Kb,
                            &stCscCoef);
    HAL_DISP_SetIntfCscCoefEx(enDisp, &stCscCoef);

    return HI_SUCCESS;
}

HI_S32 OPTM_M_SetDispHue(HAL_DISP_OUTPUTCHANNEL_E enDisp, HI_U32 u32Hue)
{
    IntfCscCoef_S stCscCoef;
    HI_S32 ch = OPTM_M_DISP_GetIndex(enDisp);

    s_stDisp[ch].u32Hue = u32Hue;

    /* calculate CSC coefficients */
    OPTM_ALG_API_CalcChroma(s_stDisp[ch].enSrcClrSpace, s_stDisp[ch].enDstClrSpace,
                            s_stDisp[ch].u32Saturation, s_stDisp[ch].u32Contrast, s_stDisp[ch].u32Hue,
                            s_stDisp[ch].u32Kr, s_stDisp[ch].u32Kg, s_stDisp[ch].u32Kb,
                            &stCscCoef);
    HAL_DISP_SetIntfCscCoefEx(enDisp, &stCscCoef);

    return HI_SUCCESS;
}

#ifdef HI_DISP_GAMMA_SUPPORT
HI_S32 OPTM_M_SetDispGamma(HAL_DISP_OUTPUTCHANNEL_E enDisp, HI_BOOL bEnable)
{
    HI_S32 ch = OPTM_M_DISP_GetIndex(enDisp);

    if (ch != 0)
    {
        return HI_FAILURE;
    }

    if (s_stDisp[ch].bGammaMask != HI_TRUE)
    {
        OPTM_AA_SetGmmEnable(&(s_stDisp[ch].stGamma), bEnable);
    }


    s_stDisp[ch].bGammaEn = bEnable;

    return HI_SUCCESS;
}

/*  set GAMMA coefficients */
HI_S32 OPTM_M_SetDispGammaCoef(HAL_DISP_OUTPUTCHANNEL_E enDisp, HI_UNF_ENC_FMT_E enEncFmt)
{
    HI_S32 ch = OPTM_M_DISP_GetIndex(enDisp);

    if (ch != 0)
    {
        return HI_FAILURE;
    }

    if (HI_TRUE == s_stDisp[ch].stCapb.bGmmFunc)
    {
        OPTM_AA_SetGmmCoef(&(s_stDisp[ch].stGamma), enEncFmt);
    }

    return HI_SUCCESS;
}
#endif

#if 0
HI_S32 OPTM_M_SetDispGammaMask(HAL_DISP_OUTPUTCHANNEL_E enDisp, HI_BOOL bMask)
{
    HI_S32 ch = OPTM_M_DISP_GetIndex(enDisp);

    if (ch != 0)
    {
        return HI_FAILURE;
    }

    if (s_stDisp[ch].bGammaMask != bMask)
    {
        if (bMask == HI_TRUE)
        {
            OPTM_AA_SetGmmEnable(&(s_stDisp[ch].stGamma), HI_FALSE);
        }
        else
        {
            OPTM_AA_SetGmmEnable(&(s_stDisp[ch].stGamma), s_stDisp[ch].bGammaEn);
        }

        s_stDisp[ch].bGammaMask = bMask;
    }

    return HI_SUCCESS;
}
#endif

HI_S32 OPTM_M_GetDispHdmiIntf(HAL_DISP_OUTPUTCHANNEL_E enDisp, OPTM_M_DISP_HDMI_S *pstHdmiIntf)
{
    HI_S32 ch = OPTM_M_DISP_GetIndex(enDisp);

    if (ch != 0)
    {
        return HI_FAILURE;
    }

    *pstHdmiIntf = s_stDisp[ch].stHdmiIntf;
    return HI_SUCCESS;
}

#if 1
HI_S32 OPTM_M_SetDispHdmiIntf(HAL_DISP_OUTPUTCHANNEL_E enDisp, OPTM_M_DISP_HDMI_S *pstHdmiIntf)
{
    HI_U8 u8Data = 0;
    HI_S32 ch = OPTM_M_DISP_GetIndex(enDisp);

    /* it must be DHD */
    if (ch != 0)
    {
        return HI_FAILURE;
    }

    s_stDisp[ch].stHdmiIntf = *pstHdmiIntf;

    Vou_SetSyncRev(0, pstHdmiIntf->u32DvNegative);
    Vou_SetSyncRev(1, pstHdmiIntf->u32HsyncNegative);
    Vou_SetSyncRev(2, pstHdmiIntf->u32VsyncNegative);

    if (pstHdmiIntf->s32CompNumber == 0)
    {
        u8Data |= 6;
    }
    else if (pstHdmiIntf->s32CompNumber == 1)
    {
        u8Data |= 4;
    }

    if (pstHdmiIntf->s32DataFmt == 1)
    {
        u8Data |= 2;
    }

    if (pstHdmiIntf->s32SyncType == 1)
    {
        u8Data |= 1;
    }

    /* u8Data:
      000  YCbCr444 30bit,  synchronization  embeded
      001  YCbCr444 30bit,  synchronization  separate
      010  RGB444   30bit,  synchronization  embeded
      011  RGB444   30bit,  synchronization  separate
      100  YCbCr422 20bit,  synchronization  embeded
      101  YCbCr422 20bit,  synchronization  separate
      110  YCbCr422 10bit,  synchronization  embeded
      111  YCbCr422 10bit,  synchronization  separate
    */

    //HI_ERR_DISP("Old setting Vou_SetHdmiSel set for HDMI interface u8Data:0x%x\n", u8Data);
    Vou_SetHdmiSel(u8Data);

    return HI_SUCCESS;
}

#ifdef HI_DISP_LCD_SUPPORT
HI_VOID OPTM_M_GetLcdHVPForHdmi(OPTM_M_D_LCD_FMT_E enMFmt, HI_U32 *pu32HP, HI_BOOL *pu32VP)
{
    switch(enMFmt)
    {
        case OPTM_M_D_LCD_FMT_861D_640X480_60HZ:
        {
            *pu32HP = 1;
            *pu32VP = 1;
            break;
        }
        case OPTM_M_D_LCD_FMT_VESA_800X600_60HZ:
        {
            *pu32HP = 0;
            *pu32VP = 0;
            break;
        }
        case OPTM_M_D_LCD_FMT_VESA_1024X768_60HZ:
        {
            *pu32HP = 1;
            *pu32VP = 1;
            break;
        }
        case OPTM_M_D_LCD_FMT_VESA_1280X1024_60HZ:
        {
            *pu32HP = 0;
            *pu32VP = 0;
            break;
        }
        case OPTM_M_D_LCD_FMT_VESA_1366X768_60HZ:
        {
            *pu32HP = 0;
            *pu32VP = 0;
            break;
        }
        case OPTM_M_D_LCD_FMT_VESA_1440X900_60HZ:
        {
            *pu32HP = 1;
            *pu32VP = 0;
            break;
        }
        case OPTM_M_D_LCD_FMT_VESA_1440X900_60HZ_RB:
        {
            *pu32HP = 0;
            *pu32VP = 1;
            break;
        }
        case OPTM_M_D_LCD_FMT_VESA_1600X1200_60HZ:
        {
            *pu32HP = 0;
            *pu32VP = 0;
            break;
        }
        case OPTM_M_D_LCD_FMT_VESA_1920X1200_60HZ:
        {
            *pu32HP = 1;
            *pu32VP = 0;
            break;
        }
        case OPTM_M_D_LCD_FMT_VESA_2048X1152_60HZ:
        {
            *pu32HP = 0;
            *pu32VP = 1;
            break;
        }

        case OPTM_M_D_LCD_FMT_VESA_1280X720_60HZ:
        {
            *pu32HP = 0;
            *pu32VP = 0;
            break;
        }
        case OPTM_M_D_LCD_FMT_VESA_1280X800_60HZ:
        {
            *pu32HP = 0;
            *pu32VP = 1;
            break;
        }
        case OPTM_M_D_LCD_FMT_VESA_1600X900_60HZ_RB:
        {
            *pu32HP = 1;
            *pu32VP = 0;
            break;
        }
        case OPTM_M_D_LCD_FMT_VESA_1920X1080_60HZ:
        {
            *pu32HP = 0;
            *pu32VP = 0;
            break;
        }
        case OPTM_M_D_LCD_FMT_VESA_1360X768_60HZ:    //Rowe
        {
            *pu32HP = 0;
            *pu32VP = 0;
            break;
        }
        case OPTM_M_D_LCD_FMT_VESA_1400X1050_60HZ:    //Rowe
        {
            *pu32HP = 1;
            *pu32VP = 0;
            break;
        }
        case OPTM_M_D_LCD_FMT_VESA_1680X1050_60HZ:     //Rowe
        {
            *pu32HP = 1;
            *pu32VP = 0;
            break;
        }
        default:
        {
            *pu32HP = 0;
            *pu32VP = 0;
        }
    }
}

HI_S32 OPTM_M_SetDispHdmiForLcd(HAL_DISP_OUTPUTCHANNEL_E enDisp, OPTM_M_D_LCD_FMT_E enMFmt)
{
    HI_U8 u8Data = 0;
    HI_U32 Hp, Vp;
    OPTM_M_DISP_HDMI_S *pstHdmiIntf;
    HI_S32 ch = OPTM_M_DISP_GetIndex(enDisp);

    if (ch != 0)
    {
        return HI_FAILURE;
    }

    pstHdmiIntf = &s_stDisp[ch].stHdmiIntf;

    OPTM_M_GetLcdHVPForHdmi(enMFmt, &Hp, &Vp);

    pstHdmiIntf->u32HsyncNegative = Hp;
    pstHdmiIntf->u32VsyncNegative = Vp;
    pstHdmiIntf->u32DvNegative    = 0;

	/*set hdmi Data YCBCR444*/
    pstHdmiIntf->s32DataFmt    = 0;
    pstHdmiIntf->s32CompNumber = 2;
    pstHdmiIntf->s32SyncType   = 1;

    Vou_SetSyncRev(0, pstHdmiIntf->u32DvNegative);
    Vou_SetSyncRev(1, pstHdmiIntf->u32HsyncNegative);
    Vou_SetSyncRev(2, pstHdmiIntf->u32VsyncNegative);

    if (pstHdmiIntf->s32CompNumber == 0)
    {
        u8Data |= 6;
    }
    else if (pstHdmiIntf->s32CompNumber == 1)
    {
        u8Data |= 4;
    }

    if (pstHdmiIntf->s32DataFmt == 1)
    {
        u8Data |= 2;
    }

    if (pstHdmiIntf->s32SyncType == 1)
    {
        u8Data |= 1;
    }

    /* u8Data:
      000  YCbCr444 30bit,  synchronization  embeded
      001  YCbCr444 30bit,  synchronization  separate
      010  RGB444   30bit,  synchronization  embeded
      011  RGB444   30bit,  synchronization  separate
      100  YCbCr422 20bit,  synchronization  embeded
      101  YCbCr422 20bit,  synchronization  separate
      110  YCbCr422 10bit,  synchronization  embeded
      111  YCbCr422 10bit,  synchronization  separate
    */

    //HI_ERR_DISP("Old setting Vou_SetHdmiSel set for HDMI interface u8Data:0x%x\n", u8Data);
    Vou_SetHdmiSel(u8Data);

    return HI_SUCCESS;
}
#endif


#else
HI_S32 OPTM_M_SetDispHdmiIntf(HAL_DISP_OUTPUTCHANNEL_E enDisp, OPTM_M_DISP_HDMI_S *pstHdmiIntf)
{
    HI_U8 u8Data = 0;
    HI_S32 ch = OPTM_M_DISP_GetIndex(enDisp);

    if (ch != 0)
    {
        return HI_FAILURE;
    }
    HI_ERR_DISP("u32DvNegative:0x%x, u32HsyncNegative:0x%x, pstHdmiIntf->u32VsyncNegative:0x%x\n", pstHdmiIntf->u32DvNegative, pstHdmiIntf->u32HsyncNegative, pstHdmiIntf->u32VsyncNegative);
    HI_ERR_DISP("s32CompNumber:0x%x, s32DataFmt:0x%x, pstHdmiIntf->s32SyncType:0x%x\n", pstHdmiIntf->s32CompNumber, pstHdmiIntf->s32DataFmt, pstHdmiIntf->s32SyncType);

    s_stDisp[ch].stHdmiIntf = *pstHdmiIntf;

    Vou_SetSyncRev(0, pstHdmiIntf->u32DvNegative);
    Vou_SetSyncRev(1, pstHdmiIntf->u32HsyncNegative);
    Vou_SetSyncRev(2, pstHdmiIntf->u32VsyncNegative);

/*
    if (pstHdmiIntf->s32CompNumber == 0)
    {
        u8Data |= 6;
    }
    else if (pstHdmiIntf->s32CompNumber == 1)
    {
        u8Data |= 4;
    }

    if (pstHdmiIntf->s32DataFmt == 1)
    {
        u8Data |= 2;
    }

    if (pstHdmiIntf->s32SyncType == 1)
    {
        u8Data |= 1;
    }
*/

    if (2 == pstHdmiIntf->s32CompNumber) /* 30 bit */
    {
    	if (0 == pstHdmiIntf->s32DataFmt) /* YCbcr */
    	{
    		u8Data = 0x0;
    	}
    	else /* RGB */
    	{
    		u8Data = 0x10;
    	}
    }
    else if (1 == pstHdmiIntf->s32CompNumber) /* 20 bit */
    {
    	u8Data = 0x100;
    }
    else if (0 == pstHdmiIntf->s32CompNumber) /* 10 bit */
    {
    	u8Data = 0x110;
    }
    else
    {
    	return HI_FAILURE;
    }

    if (1 == pstHdmiIntf->s32SyncType) /* 1,  synchronization  separate mode*/
    {
    	u8Data |= 0x1;
    }

    /*u8Data:
      000  YCbCr444 30bit,  synchronization  embeded
      001  YCbCr444 30bit,  synchronization  separate
      010  RGB444   30bit,  synchronization  embeded
      011  RGB444   30bit,  synchronization  separate
      100  YCbCr422 20bit,  synchronization  embeded
      101  YCbCr422 20bit,  synchronization  separate
      110  YCbCr422 10bit,  synchronization  embeded
      111  YCbCr422 10bit,  synchronization  separate
    */
    HI_ERR_DISP("kernel debug: Vou_SetHdmiSel set for HDMI interface u8Data:0x%x\n", u8Data);
    Vou_SetHdmiSel(u8Data);

    return HI_SUCCESS;
}
#endif

HI_VOID OPTM_M_SaveDXD(HAL_DISP_OUTPUTCHANNEL_E enDisp)
{
    /* Use sync, need close sync before standby, or SD couldn't output after resume.
	 * It will be opened in SD interrupt
	 */
    if (HAL_DISP_CHANNEL_DSD == enDisp)
    {
        OPTM_HAL_SetSync(enDisp, HI_FALSE);
    }

    /* save DXD and Date Reg */
    HAL_DISP_SaveDXD(enDisp, g_DispRegBuf.u32StartVirAddr);

    /* disable Date */
    HAL_DATE_Enable(enDisp, HI_FALSE);

    /* disable DXD */
    HAL_DISP_SetIntfEnable(enDisp, HI_FALSE);

    return;
}

HI_VOID OPTM_M_RestoreDXD(HAL_DISP_OUTPUTCHANNEL_E enDisp, HI_BOOL bEnable)
{
    if (HAL_DISP_CHANNEL_DHD == enDisp)
    {
        HAL_DISP_SetRegUpNoRatio(HAL_DISP_LAYER_VIDEO1);
    }

    HAL_DISP_RestoreDXD(enDisp, g_DispRegBuf.u32StartVirAddr);

    HAL_DISP_SetIntfEnable(enDisp, bEnable);

    return;
}

HI_VOID OPTM_M_SaveCommon(HI_VOID)
{
    HAL_DISP_SaveCommon(g_DispRegBuf.u32StartVirAddr);

    /* backup frequency-division coefficients of VOU clock */
    g_pSysVPLL0_CFG_Back= *g_pSysVPLL0_CFG;
    g_pSysVPLL1_CFG_Back= *g_pSysVPLL1_CFG;
    g_PERI_CRG53_Back.u32= g_PERI_CRG53->u32;
    g_PERI_CRG54_Back.u32 = g_PERI_CRG54->u32;
#ifdef CHIP_TYPE_hi3716mv330
    g_PERI_CRG68_Back.u32 = g_PERI_CRG68->u32;
#endif
	g_PERI_CRG71_Back.u32 = g_PERI_CRG71->u32;

    /* backup VOU system-control registers */

    return;
}

HI_VOID OPTM_M_RestoreCommon(HI_VOID)
{
    /*  restore frequency-division coefficients of VOU clock  */
    *g_pSysVPLL0_CFG = g_pSysVPLL0_CFG_Back ;
    *g_pSysVPLL1_CFG = g_pSysVPLL1_CFG_Back ;

    /*  restore VOU system-control registers and reset */
    /*  reset  */
    OPTM_M_HardReset();

    g_PERI_CRG53->u32 = g_PERI_CRG53_Back.u32 ;
    g_PERI_CRG54->u32 = g_PERI_CRG54_Back.u32 ;
#ifdef CHIP_TYPE_hi3716mv330
    g_PERI_CRG68->u32 = g_PERI_CRG68_Back.u32 ;
#endif
	g_PERI_CRG71->u32 = g_PERI_CRG71_Back.u32 ;

    HAL_DISP_RestoreCommon(g_DispRegBuf.u32StartVirAddr);

    return;
}


/**************************************************************
                        INT MODULE
 **************************************************************/

/*  interrupt service program */
static OPTM_M_IRQ_EXT_S s_stIrq[32];

static OPTM_HIFB_DISP_INFO_S s_stDispInfo[2]; /* 0, DHD; 1, DSD */
static HI_U32 s_u32DispInfoChangeFlag[2];     /*  0, DHD, bit0, G0, bit4, G1; */
                                              /*  1,DSD, bit0, G1 */
//static OPTM_M_IRQ_EXT_S s_stGfxDispChangeIrq[2];//0, DHD; 1, DSD

static OPTM_M_IRQ_S s_stSdTtxIrq;
static HI_U32       s_u32DispChangeFlagADLayer;

HI_VOID OPTM_M_INT_InitIrq(HI_VOID)
{
    /* initialize interrupt nodes  */
    memset(s_stIrq, 0, sizeof(OPTM_M_IRQ_EXT_S) * 32);

    /* initialize HIFB call-back functions and information of display channel */
    s_u32DispInfoChangeFlag[0] = 0;
    s_u32DispInfoChangeFlag[1] = 0;
    s_u32DispChangeFlagADLayer = 0;
    memset(s_stDispInfo, 0, sizeof(OPTM_HIFB_DISP_INFO_S) * 2);
    //memset(s_stGfxDispChangeIrq, 0, sizeof(OPTM_M_IRQ_EXT_S) * 2);

    /* initialize TTX interrupt service program */
    memset(&s_stSdTtxIrq, 0, sizeof(OPTM_M_IRQ_S));
}

static HI_S32 OPTM_M_GetIntNumber(HAL_DISP_INTERRUPTMASK_E enInt)
{
    HI_U32 u32Int;
    HI_S32 i;

    u32Int = (HI_U32)enInt;
    for(i=0; i<32; i++)
    {
        if(u32Int & 1)
        {
            break;
        }
        u32Int = u32Int >> 1;
    }
    return i;
}

HI_S32 OPTM_M_INT_Registe(HAL_DISP_INTERRUPTMASK_E enInt, HI_S32 s32CallOrder,
                          OPTM_IRQ_FUNC pFunc, HI_U32 u32Param0, HI_U32 u32Param1)
{
    OPTM_M_IRQ_S *pstDstIrq;
    HI_S32 s32Irq;

    s32Irq = OPTM_M_GetIntNumber(enInt);

    pstDstIrq = &(s_stIrq[s32Irq&0x1f].stIrq[s32CallOrder]);

    if( (s_stIrq[s32Irq&0x1f].u32IrqFlag & (1 << s32CallOrder)) != 0)
    {
        HI_ERR_DISP("DISP ERR! Isr regist again, int = 0x%x, order=%d\n", enInt, s32CallOrder);
        return HI_FAILURE;
    }

    pstDstIrq->pFunc  = pFunc;
    pstDstIrq->u32Param0 = u32Param0;
    pstDstIrq->u32Param1 = u32Param1;

    s_stIrq[s32Irq&0x1f].u32IrqFlag |= (1 << s32CallOrder);
    if (0 == s_stIrq[s32Irq&0x1f].bIntEnable)
    {
        s_stIrq[s32Irq&0x1f].bIntEnable = 1;
        HAL_DISP_ClearIntSta((HI_U32)enInt);
        HAL_DISP_SetIntEnable((HI_U32)enInt);
    }

    return HI_SUCCESS;
}

HI_S32 OPTM_M_INT_UnRegiste(HAL_DISP_INTERRUPTMASK_E enInt, HI_S32 s32CallOrder)
{
    HI_S32 s32Irq;

    s32Irq = OPTM_M_GetIntNumber(enInt);

    s_stIrq[s32Irq&0x1f].u32IrqFlag &= ~(1 << s32CallOrder);
    s_stIrq[s32Irq&0x1f].stIrq[s32CallOrder].pFunc = HI_NULL;

    if ( (0 == s_stIrq[s32Irq&0x1f].u32IrqFlag)
        && (0 != s_stIrq[s32Irq&0x1f].bIntEnable) )
    {
        s_stIrq[s32Irq&0x1f].bIntEnable = 0;
        HAL_DISP_SetIntDisable((HI_U32)enInt);
    }

    return HI_SUCCESS;
}


/* s32Dxd : 0, DHD; 1, DSD */
HI_S32 OPTM_M_INT_SetDispInfoForGfx(HAL_DISP_OUTPUTCHANNEL_E enDisp,
                                                 OPTM_HIFB_DISP_INFO_S *pstInfo)
{
    if(HAL_DISP_CHANNEL_DHD == enDisp)
    {
//DEBUG_PRINTK("DHD set display info\n");
        s_stDispInfo[0] = *pstInfo;
        s_u32DispInfoChangeFlag[0] |= 0x11;
        s_u32DispChangeFlagADLayer =0x11;
    }
    else
    {
//DEBUG_PRINTK("DSD set display info\n");
        s_stDispInfo[1] = *pstInfo;
        s_u32DispInfoChangeFlag[1] |= 0x01;
    }

    return HI_SUCCESS;
}

HI_S32 OPTM_M_INT_RegisteTtx(OPTM_M_IRQ_S *pstTtx, HI_S32 s32CallOrder)
{
    s_stSdTtxIrq = *pstTtx;
    return HI_SUCCESS;
}

HI_S32 OPTM_M_INT_UnRegisteTtx(OPTM_M_IRQ_S *pstTtx, HI_S32 s32CallOrder)
{
    s_stSdTtxIrq.pFunc = HI_NULL;
    return HI_SUCCESS;
}

HI_U32 u32WTEIntCnt = 0;
HI_U32 u32DHDVTIntCnt = 0;

HI_U32 g_DhdUnf = 0;
HI_U32 g_DsdUnf = 0;

/*  Interrupt Service Program  */

/* count interrupt time-cost, with unit of ns */
//#define OPTM_DISP_DEBUG_GET_IST_TIME 1
//#define OPTM_DISP_DEBUG_GET_VHD_IST_TIME 1
//#define OPTM_DISP_DEBUG_GET_VSD_IST_TIME 1

/* count interrupt time interval */
//#define OPTM_DISP_DEBUG_GET_VTHD_INT_GAP 1

HI_S32 OPTM_M_ISR_Isr(HI_S32 irq, HI_VOID *dev_id)
{
#ifdef OPTM_DISP_DEBUG_GET_IST_TIME
    HI_U64 SysTimeA, SysTimeB;
    static HI_U64 u64MaxTime = 0;
#endif

#ifdef OPTM_DISP_DEBUG_GET_IST_TIME
    SysTimeA = sched_clock();
#endif

    /* 20110113 G45208
     * make mission-complete interrupt ahead, do it first
     * to make sure the turning of buffer
     */
    if ( HAL_DISP_GetIntSta(HAL_DISP_INTMSK_WTEINT) )
    {
        /* WBC0 FINISH interrupt */
        HI_U32 IrqTmp, i;
        u32WTEIntCnt++;

        HAL_DISP_ClearIntSta(HAL_DISP_INTMSK_WTEINT);

        if(s_stIrq[8].u32IrqFlag != 0)
        {
            IrqTmp = s_stIrq[8].u32IrqFlag;
            i = 0;
            do
            {
                if ( (IrqTmp & (1 << i)) != 0)
                {
                    s_stIrq[8].stIrq[i].pFunc(s_stIrq[8].stIrq[i].u32Param0,
                                              s_stIrq[8].stIrq[i].u32Param1);
                    IrqTmp &= ~(1 << i);
                }
                i++;
            }while( (IrqTmp != 0) && (i<8) );
        }
    }
    else if ( HAL_DISP_GetIntSta(HAL_DISP_INTMSK_VTEINT) )
    {
        /* WBC1 FINISH interrupt */
        HI_U32 IrqTmp, i;

        HAL_DISP_ClearIntSta(HAL_DISP_INTMSK_VTEINT);

        if(s_stIrq[9].u32IrqFlag != 0)
        {
            IrqTmp = s_stIrq[9].u32IrqFlag;
            i = 0;
            do
            {
                if ( (IrqTmp & (1 << i)) != 0)
                {
                    s_stIrq[9].stIrq[i].pFunc(s_stIrq[9].stIrq[i].u32Param0,
                                              s_stIrq[9].stIrq[i].u32Param1);
                    IrqTmp &= ~(1 << i);
                }
                i++;
            }while( (IrqTmp != 0) && (i<8) );
        }
    }
    else if ( HAL_DISP_GetIntSta(HAL_DISP_INTMSK_LNKTEINT) )
    {
        /* WBC1 LIST FINISH interrupt */
        HI_U32 IrqTmp, i;

        HAL_DISP_ClearIntSta(HAL_DISP_INTMSK_LNKTEINT);

        if(s_stIrq[12].u32IrqFlag != 0)
        {
            IrqTmp = s_stIrq[12].u32IrqFlag;
            i = 0;
            do
            {
                if ( (IrqTmp & (1 << i)) != 0)
                {
                    s_stIrq[12].stIrq[i].pFunc(s_stIrq[12].stIrq[i].u32Param0,
                                              s_stIrq[12].stIrq[i].u32Param1);
                    IrqTmp &= ~(1 << i);
                }
                i++;
            }while( (IrqTmp != 0) && (i<8) );
        }
    }
    else
    /*  vertical sequence interrupt */
    if ( HAL_DISP_GetIntSta(HAL_DISP_INTMSK_DHDVTTHD) )
    {
        HI_U32 IrqTmp, i;

#ifdef OPTM_DISP_DEBUG_GET_VHD_IST_TIME
    HI_U64 SysTimeA1, SysTimeB1;
    HI_U64 TimeDiff = 0;

#endif

#ifdef OPTM_DISP_DEBUG_GET_VTHD_INT_GAP
    static HI_U64 SysTimeA = 0;
    HI_U64 u64Gap, SysTimeB;
#endif

		u32DHDVTIntCnt++;

        HAL_DISP_ClearIntSta(HAL_DISP_INTMSK_DHDVTTHD);

        /* query flags of current B/T field */
        s_stDisp[OPTM_M_DISP_GetIndex(HAL_DISP_CHANNEL_DHD)].s32BtmFieldFlag = OPTM_HAL_DISP_GetCurrField(HAL_DISP_CHANNEL_DHD);

#ifdef OPTM_DISP_DEBUG_GET_VHD_IST_TIME
    SysTimeA1 = sched_clock();
#endif

#ifdef OPTM_DISP_DEBUG_GET_VTHD_INT_GAP
    SysTimeB = sched_clock();
    u64Gap   = SysTimeB - SysTimeA;
    SysTimeA = SysTimeB;
    if (((HI_U32)(u64Gap >>10 )) >25000)
        HI_DBG_DISP("\n--------------vthd1_gap=%d--------------\n", (HI_U32)(u64Gap >>10 ));
    else
        HI_DBG_DISP("vthd1_gap=%d-\n", (HI_U32)(u64Gap >>10 ));
#endif


        if(s_stIrq[4].u32IrqFlag != 0)
        {
            IrqTmp = s_stIrq[4].u32IrqFlag;
            i = 0;
            do
            {
                if ( (IrqTmp & (1 << i)) != 0)
                {
                    s_stIrq[4].stIrq[i].pFunc(s_stIrq[4].stIrq[i].u32Param0,
                                              s_stIrq[4].stIrq[i].u32Param1);
                    IrqTmp &= ~(1 << i);
                }
                i++;
            }while( (IrqTmp != 0) && (i<8) );
        }

#ifdef OPTM_DISP_DEBUG_GET_VHD_IST_TIME
    SysTimeB1 = sched_clock();
    TimeDiff = SysTimeB1 -SysTimeA1;

    {
        HI_DBG_DISP("hdtime=%d\n", (HI_U32)(TimeDiff >> 10));
    }
#endif


    }
    else if ( HAL_DISP_GetIntSta(HAL_DISP_INTMSK_DHDVTTHD2) )
    {
        HI_U32 IrqTmp, i;
        OPTM_HIFB_DISP_INFO_S stInfo;

        HAL_DISP_ClearIntSta(HAL_DISP_INTMSK_DHDVTTHD2);

        /* interrupt of graphic layer */
        if(s_stIrq[5].u32IrqFlag != 0)
        {
            IrqTmp = s_stIrq[5].u32IrqFlag;

           /* interrupt of graphic layer display information callback */
            stInfo = s_stDispInfo[0];

            /* interrupt of graphic layer display information callback */
            if (s_u32DispInfoChangeFlag[0] & 0x1)
            {
                if ((IrqTmp & 0x01) != 0)
                {
                    s_stIrq[5].stIrq[0].pFunc(s_stIrq[5].stIrq[0].u32Param0, (HI_U32)(&stInfo));
                    s_u32DispInfoChangeFlag[0] &= 0xfe;
                    //DEBUG_PRINTK("return hd info to g0\n");
                }
                IrqTmp = IrqTmp & 0xfffeL;
            }
            if (s_u32DispChangeFlagADLayer)
            {
                if ((s_u32DispChangeFlagADLayer & 0x01)
                    && ((IrqTmp & 0x80) != 0))
                {
                    s_stIrq[5].stIrq[7].pFunc(s_stIrq[5].stIrq[7].u32Param0, (HI_U32)(&stInfo));
                    s_u32DispChangeFlagADLayer &= 0xfe;
                    IrqTmp = IrqTmp & 0xff7fL;
                }

                if ((s_u32DispChangeFlagADLayer & 0x10)
                     && ((IrqTmp & 0x400) != 0))
                {
                    s_stIrq[5].stIrq[10].pFunc(s_stIrq[5].stIrq[10].u32Param0, (HI_U32)(&stInfo));
                    s_u32DispChangeFlagADLayer &= 0xef;
                    IrqTmp = IrqTmp & 0xfbffL;
                }
            }

            i = 1;
            do
            {
                if ( (IrqTmp & (1<< i)) != 0)
                {
                    s_stIrq[5].stIrq[i].pFunc(s_stIrq[5].stIrq[i].u32Param0,
                                              s_stIrq[5].stIrq[i].u32Param1);
                    IrqTmp &= ~((1 << i)&0xffff);
                }
                i++;
            }while( (IrqTmp != 0) && (i<4) );


            if (s_u32DispInfoChangeFlag[0] & 0x10)
            {
                if ((IrqTmp & 0x10) != 0)
                {
                    s_stIrq[5].stIrq[4].pFunc(s_stIrq[5].stIrq[4].u32Param0, (HI_U32)(&stInfo));
                    s_u32DispInfoChangeFlag[0] &= 0xef;
                    //DEBUG_PRINTK("return hd info to g1\n");
                }
                IrqTmp = IrqTmp & 0xffefL;
            }

            i = 5;
            do
            {
                if ( (IrqTmp & (1 << i)) != 0)
                {
                    s_stIrq[5].stIrq[i].pFunc(s_stIrq[5].stIrq[i].u32Param0,
                                              s_stIrq[5].stIrq[i].u32Param1);
                    IrqTmp &= ~((1 << i)&0xffff);
                }
                i++;
            }while( (IrqTmp != 0) && (i<7) );
            i = 8;
            do
            {
                if ( (IrqTmp & (1 << i)) != 0)
                {
                    s_stIrq[5].stIrq[i].pFunc(s_stIrq[5].stIrq[i].u32Param0, s_stIrq[5].stIrq[i].u32Param1);

                    IrqTmp &= ~((1 << i)&0xffff);
                }
                i++;
            }while( (IrqTmp != 0) && (i<10) );

            i = 11;
            do
            {
                if ( (IrqTmp & (1 << i)) != 0)
                {
                    s_stIrq[5].stIrq[i].pFunc(s_stIrq[5].stIrq[i].u32Param0, s_stIrq[5].stIrq[i].u32Param1);

                    IrqTmp &= ~((1 << i)&0xffff);
                }
                i++;
            }while( (IrqTmp != 0) && (i<13) );
        }
    }
    else if ( HAL_DISP_GetIntSta(HAL_DISP_INTMSK_DHDVTTHD3))
    {
        HAL_DISP_ClearIntSta(HAL_DISP_INTMSK_DHDVTTHD3);

        /* interrupt read dire registers */
        if(s_stIrq[6].u32IrqFlag != 0)
        {
            s_stIrq[6].stIrq[0].pFunc(s_stIrq[6].stIrq[0].u32Param0, s_stIrq[6].stIrq[0].u32Param1);
        }

    }
    else if ( HAL_DISP_GetIntSta(HAL_DISP_INTMSK_WBC3STPINT) )
    {

        HAL_DISP_ClearIntSta(HAL_DISP_INTMSK_WBC3STPINT);

        /* interrupt of graphic layer */
        if(s_stIrq[16].u32IrqFlag != 0)
        {
            s_stIrq[16].stIrq[0].pFunc(s_stIrq[16].stIrq[0].u32Param0, s_stIrq[16].stIrq[0].u32Param1);
        }
    }
    else if ( HAL_DISP_GetIntSta(HAL_DISP_INTMSK_DSDVTTHD) )
    {
        /*  vertical sequence interrupt */
        HI_U32 IrqTmp, i;

        HAL_DISP_ClearIntSta(HAL_DISP_INTMSK_DSDVTTHD);

        /* query flags of current B/T field */
        s_stDisp[OPTM_M_DISP_GetIndex(HAL_DISP_CHANNEL_DSD)].s32BtmFieldFlag = OPTM_HAL_DISP_GetCurrField(HAL_DISP_CHANNEL_DSD);

#ifdef OPTM_DISP_DEBUG_GET_VSD_IST_TIME
    HI_U64 SysTimeA, SysTimeB;
    static HI_U64 u64MaxTime = 0;
#endif

#ifdef OPTM_DISP_DEBUG_GET_VSD_IST_TIME
    SysTimeA = sched_clock();
#endif

     //DEBUG_PRINTK("\nS=0x%x%x:", (HI_U32)(SysTimeA >> 32),(HI_U32)(SysTimeA));
        if(s_stIrq[0].u32IrqFlag != 0)
        {
            IrqTmp = s_stIrq[0].u32IrqFlag;
            i = 0;
            do
            {
                if ( (IrqTmp & (1 << i)) != 0)
                {
                    s_stIrq[0].stIrq[i].pFunc(s_stIrq[0].stIrq[i].u32Param0,
                                              s_stIrq[0].stIrq[i].u32Param1);
                    IrqTmp &= ~(1 << i);
                }
                i++;
            }while( (IrqTmp != 0) && (i<8) );
        }

#ifdef OPTM_DISP_DEBUG_GET_VSD_IST_TIME
    SysTimeB = sched_clock();
    SysTimeB -= SysTimeA;

    if (SysTimeB > u64MaxTime)
    {
        u64MaxTime = SysTimeB;
        HI_DBG_DISP("sdtime=0x%x%x\n", (HI_U32)(u64MaxTime >> 32),(HI_U32)(u64MaxTime));
    }
#endif
    }
    else if ( HAL_DISP_GetIntSta(HAL_DISP_INTMSK_DSDVTTHD2))
    {
        HI_U32 IrqTmp, i;
        OPTM_HIFB_DISP_INFO_S stInfo;

        HAL_DISP_ClearIntSta(HAL_DISP_INTMSK_DSDVTTHD2);

        /* interrupt of graphic layer */
        if(s_stIrq[1].u32IrqFlag != 0)
        {
            IrqTmp = s_stIrq[1].u32IrqFlag;

            /* interrupt of graphic layer display information callback */
            if (s_u32DispInfoChangeFlag[1] & 0x1)
            {
                if ((IrqTmp & 0x01) != 0)
                {
                    stInfo = s_stDispInfo[1];
                    s_stIrq[1].stIrq[0].pFunc(s_stIrq[1].stIrq[0].u32Param0, (HI_U32)(&stInfo));
                    s_u32DispInfoChangeFlag[1] &= 0xfeL;

                    IrqTmp = IrqTmp & 0xfeL;
                }
            }

            i = 1;
            do
            {
                if ( (IrqTmp & (1 << i)) != 0)
                {
                    s_stIrq[1].stIrq[i].pFunc(s_stIrq[1].stIrq[i].u32Param0,
                                              s_stIrq[1].stIrq[i].u32Param1);
                    IrqTmp &= ~(1 << i);
                }
                i++;
            }while( (IrqTmp != 0) && (i<8) );
        }
    }
    else if ( HAL_DISP_GetIntSta(HAL_DISP_INTMSK_DHDUFINT) )
    {
        /*  vertical sequence interrupt */
        HI_U32 IrqTmp, i;

        HAL_DISP_ClearIntSta(HAL_DISP_INTMSK_DHDUFINT);

        if(s_stIrq[7].u32IrqFlag != 0)
        {
            IrqTmp = s_stIrq[7].u32IrqFlag;
            i = 0;
            do
            {
                if ( (IrqTmp & (1 << i)) != 0)
                {
                    s_stIrq[7].stIrq[i].pFunc(s_stIrq[7].stIrq[i].u32Param0,
                                              s_stIrq[7].stIrq[i].u32Param1);
                    IrqTmp &= ~(1 << i);
                }
                i++;
            }while( (IrqTmp != 0) && (i<8) );
        }
    }
    else if ( HAL_DISP_GetIntSta(HAL_DISP_INTMSK_G0RRINT) )
    {
        /*  vertical sequence interrupt */
        HI_U32 IrqTmp, i;

        HAL_DISP_ClearIntSta(HAL_DISP_INTMSK_G0RRINT);

        if(s_stIrq[23].u32IrqFlag != 0)
        {
            IrqTmp = s_stIrq[23].u32IrqFlag;
            i = 0;
            do
            {
                if ( (IrqTmp & (1 << i)) != 0)
                {
                    s_stIrq[23].stIrq[i].pFunc(s_stIrq[23].stIrq[i].u32Param0,
                                              s_stIrq[23].stIrq[i].u32Param1);
                    IrqTmp &= ~(1 << i);
                }
                i++;
            }while( (IrqTmp != 0) && (i<8) );
        }
    }
    else if ( HAL_DISP_GetIntSta(HAL_DISP_INTMSK_G1RRINT) )
    {
        /*  vertical sequence interrupt */
        HI_U32 IrqTmp, i;

        HAL_DISP_ClearIntSta(HAL_DISP_INTMSK_G1RRINT);

        if(s_stIrq[24].u32IrqFlag != 0)
        {
            IrqTmp = s_stIrq[24].u32IrqFlag;
            i = 0;
            do
            {
                if ( (IrqTmp & (1 << i)) != 0)
                {
                    s_stIrq[24].stIrq[i].pFunc(s_stIrq[24].stIrq[i].u32Param0,
                                              s_stIrq[24].stIrq[i].u32Param1);
                    IrqTmp &= ~(1 << i);
                }
                i++;
            }while( (IrqTmp != 0) && (i<8) );
        }
    }
#ifdef HI_DSIP_TTX_SUPPORT
	else if (DRV_VOU_TtxIntStatus())
	{
		DRV_VOU_TtxIntClear();

		if (s_stSdTtxIrq.pFunc != HI_NULL)
		{
		        s_stSdTtxIrq.pFunc(s_stSdTtxIrq.u32Param0, s_stSdTtxIrq.u32Param1);
		}
	}
#endif
    else
    {
        //DEBUG_PRINTK("@@@@@@@@@@@@@@@@@@ ## 0x%x\n", HAL_DISP_GetIntSta(HAL_DISP_INTREPORT_ALL));
        //HAL_DISP_ClearIntSta(HAL_DISP_INTREPORT_ALL);
        HI_ERR_DISP("vo_int.");
    }

#ifdef OPTM_DISP_DEBUG_GET_IST_TIME
    SysTimeB = sched_clock();
    SysTimeB -= SysTimeA;

    if (SysTimeB > u64MaxTime)
    {
        u64MaxTime = SysTimeB;
        HI_DBG_DISP("all time=0x%x%x\n", (HI_U32)(u64MaxTime >> 32),(HI_U32)(u64MaxTime));
    }
#endif

    return IRQ_HANDLED;
}

#ifdef HI_DISP_CGMS_SUPPORT
/* Set CGMS A-type data*/
HI_S32 OPTM_M_SetCgmsData(HAL_DISP_OUTPUTCHANNEL_E enDisp, HI_UNF_ENC_FMT_E enFormat, HI_UNF_DISP_CGMS_CFG_S* stCgmsCfg)
{
    //DEBUG_PRINTK("\n#%s, %d\n",__FUNCTION__, __LINE__);

    DISP_CGMS_DATA_S stCgmsData;

    /* different systems */
    switch(enFormat)
    {
        /* the same with 1080i60 system */
        case HI_UNF_ENC_FMT_1080i_50:/* A-type */

        case HI_UNF_ENC_FMT_1080i_60:/* A-type */

        case HI_UNF_ENC_FMT_720P_50: /* A-type */

        case HI_UNF_ENC_FMT_720P_60: /* A-type */

        case HI_UNF_ENC_FMT_480P_60: /* A-type */
        {
            /* A-type */
            if(HI_UNF_DISP_CGMS_TYPE_A == stCgmsCfg->enType)
            {
                /* keep configuration record */
                stCgmsData.cgms_cfg = *stCgmsCfg;

                /* A-type H0~H5 */
                //stCgmsData.cgms_a_data.bits.cgms_a_h = 0x30;

                /* CGMS modes */
                switch(stCgmsCfg->enMode)
                {
                    /* A-type D0~D13 */
                    case HI_UNF_DISP_CGMS_MODE_COPY_FREELY:
                        stCgmsData.cgms_a_data.bits.cgms_a_w = 0x88003; //0xc0011;  /* 1100 00, 00 0000 0001 0001; 00 */
                        break;

                    case HI_UNF_DISP_CGMS_MODE_COPY_NO_MORE:
                        stCgmsData.cgms_a_data.bits.cgms_a_w = 0x28083; //0xc1014;  /* 1100 00, 01 0000 0001 0100; 01 */
                        break;

                    case HI_UNF_DISP_CGMS_MODE_COPY_ONCE:
                        stCgmsData.cgms_a_data.bits.cgms_a_w = 0xd8043; //0xc201b;  /* 1100 00, 10 0000 0001 1011; 10 */
                        break;

                    case HI_UNF_DISP_CGMS_MODE_COPY_NEVER:
                        stCgmsData.cgms_a_data.bits.cgms_a_w = 0x780c3; //0xc301e;  /* 1100 00, 11 0000 0001 1110; 11 */
                        break;

                    default:
                    {
                        HI_ERR_DISP("CGMS mode is not properly set!\n");
                        return HI_FAILURE;
                    }

                }
            }
            /* B-type */
            else if(HI_UNF_DISP_CGMS_TYPE_B == stCgmsCfg->enType)
            {
                /* the next step for CGMS B-type */
                HI_ERR_DISP("CGMS B-type is not supported temporarily!\n");
                return HI_FAILURE;
            }
            else
            {
                HI_ERR_DISP("improper parameters!\n");
                return HI_FAILURE;
            }

            break;
        }
        case HI_UNF_ENC_FMT_576P_50: /* "A" IEC 62375 */
        {
            /* A-type */
            if(HI_UNF_DISP_CGMS_TYPE_A == stCgmsCfg->enType)
            {
                /* keep configuration record */
                stCgmsData.cgms_cfg = *stCgmsCfg;

                /* question: B0~B13 is in the range of
                 * cgms_a_data[19...6] or cgms_a_data[13...0] ??
                 */

                /* CGMS modes */
                 switch(stCgmsCfg->enMode)
                 {
                     /* Data of WSS: B0~B13 */
                     case HI_UNF_DISP_CGMS_MODE_COPY_FREELY:
                         stCgmsData.cgms_a_data.bits.cgms_a_w = 0x0008; //0x0400;  /* 00 01 | 00 00 | 00 00 | 00; 00 */
                         break;

                     case HI_UNF_DISP_CGMS_MODE_COPY_NO_MORE:
                         stCgmsData.cgms_a_data.bits.cgms_a_w = 0x2008; //0x0401;  /* 00 01 | 00 00 | 00 00 | 01; 01 */
                         break;

                     case HI_UNF_DISP_CGMS_MODE_COPY_ONCE:
                         stCgmsData.cgms_a_data.bits.cgms_a_w = 0x1008; //0x0402;  /* 00 01 | 00 00 | 00 00 | 10; 10 */
                         break;

                     case HI_UNF_DISP_CGMS_MODE_COPY_NEVER:
                         stCgmsData.cgms_a_data.bits.cgms_a_w = 0x3008; //0x0403;  /* 00 01 | 00 00 | 00 00 | 11; 11 */
                         break;

                     default:
                     {
                         HI_ERR_DISP("CGMS_DATA is not properly set!\n");
                         return HI_FAILURE;
                     }
                 }

            }
            /* B-type */
            else if(HI_UNF_DISP_CGMS_TYPE_B == stCgmsCfg->enType)
            {
                /* the next step for CGMS B-type */
                HI_ERR_DISP("CGMS B-type is not supported temporarily!\n");
                return HI_FAILURE;
            }
            else
            {
                HI_ERR_DISP("improper parameters!\n");
                return HI_FAILURE;
            }


            break;
        }
        case HI_UNF_ENC_FMT_NTSC_J:    /* "A" IEC 61880 */ /* !! the same with NTSC */

        case HI_UNF_ENC_FMT_NTSC_PAL_M:/* "A" IEC 61880 */ /* !! the same with NTSC */

        case HI_UNF_ENC_FMT_NTSC:      /* "A" IEC 61880 */
        {
            /* HD channel --> SDATE */
            enDisp = HAL_DISP_CHANNEL_DSD;

            //DEBUG_PRINTK("#%s, %d", __FUNCTION__, __LINE__);
            /* A-type */
            if(HI_UNF_DISP_CGMS_TYPE_A == stCgmsCfg->enType)
            {
                /* keep configuration record */
                stCgmsData.cgms_cfg = *stCgmsCfg;

                /* A-type H0~H5 */
                //stCgmsData.cgms_a_data.bits.cgms_a_h = 0x30;

                /* CGMS modes */
                switch(stCgmsCfg->enMode)
                {
                    /* A-type D0~D19 */
                    case HI_UNF_DISP_CGMS_MODE_COPY_FREELY:
                        stCgmsData.cgms_a_data.bits.cgms_a_w = 0x88003; //0xc0011;  /* 1100 00, 00 0000 0001 0001; 00 */
                        break;

                    case HI_UNF_DISP_CGMS_MODE_COPY_NO_MORE:
                        stCgmsData.cgms_a_data.bits.cgms_a_w = 0x28083; //0xc1014;  /* 1100 00, 01 0000 0001 0100; 01 */
                        break;

                    case HI_UNF_DISP_CGMS_MODE_COPY_ONCE:
                        stCgmsData.cgms_a_data.bits.cgms_a_w = 0xd8043; //0xc201b;  /* 1100 00, 10 0000 0001 1011; 10 */
                        break;

                    case HI_UNF_DISP_CGMS_MODE_COPY_NEVER:
                        stCgmsData.cgms_a_data.bits.cgms_a_w = 0x780c3; //0xc301e;  /* 1100 00, 11 0000 0001 1110; 11 */
                        break;

                    default:
                    {
                        HI_ERR_DISP("CGMS_DATA is not properly set!\n");
                        return HI_FAILURE;
                    }

                }
            }
            /* B-type */
            else
            {
                /* the next step for CGMS B-type */
                HI_ERR_DISP("CGMS B-type is not supported for NTSC system!\n");
                return HI_FAILURE;
            }

            break;

        }
        default:
        {
            HI_ERR_DISP("Current system is not supported by CGMS!\n");

            /* return error code? */
            return HI_FAILURE;
        }
    }


    /* Set CGMS A-type */
    if(HI_UNF_DISP_CGMS_TYPE_A == stCgmsCfg->enType && HI_TRUE == stCgmsCfg->bEnable)
    {
        Vou_SetCgmsDataTypeA(enDisp, &stCgmsData);
    }
    else if(HI_UNF_DISP_CGMS_TYPE_B == stCgmsCfg->enType && HI_TRUE == stCgmsCfg->bEnable)
    {
        /* Set CGMS B-type */
        Vou_SetCgmsDataTypeB(enDisp, &stCgmsData);
    }
    else
    {
        HI_ERR_DISP("ERROR! CGMS type is not properly enabled!\n");
        return HI_FAILURE;
    }

    return HI_SUCCESS;

}


/* Set CGMS enable */
HI_VOID OPTM_M_SetCgmsEnable(HAL_DISP_OUTPUTCHANNEL_E enDisp, HI_BOOL bEnable, HI_UNF_DISP_CGMS_TYPE_E enType)
{
    /* set enable/disable */
    DISP_CGMS_TYPE_E en_cgms_type;

    switch(enType)
    {
        case HI_UNF_DISP_CGMS_TYPE_A:
            en_cgms_type = DISP_CGMS_TYPE_A;
            break;

        case HI_UNF_DISP_CGMS_TYPE_B:
            en_cgms_type = DISP_CGMS_TYPE_B;
            break;

        default:
            en_cgms_type = DISP_CGMS_TYPE_BUTT;
    }

    Vou_SetCgmsEnable(enDisp, bEnable, en_cgms_type);
}
#endif

extern HI_VOID OPTM_DispInfoCallbackUnderWbc(HI_U32 u32Param0, HI_U32 u32Param1);

HI_S32 OPTM_M_SetGfxScrnWin(HAL_DISP_OUTPUTCHANNEL_E enDispHalId, HI_UNF_RECT_S* stOutRectCfg)
{
	HI_S32 s32Width;
	HI_S32 s32Height;
    HI_S32 ch = OPTM_M_DISP_GetIndex(enDispHalId);
    HI_UNF_RECT_S stOutRect = *stOutRectCfg;
#ifndef HI_VDP_ONLY_SD_SUPPORT
	if(HAL_DISP_CHANNEL_DSD == enDispHalId) // only for DSD
#else
    if(HAL_DISP_CHANNEL_DHD == enDispHalId)
#endif
	{
		 if((stOutRect.x > s_stDisp[ch].DispInfo.stScrnWin.s32Width)||
	        (stOutRect.y > s_stDisp[ch].DispInfo.stScrnWin.s32Height)||
	        (stOutRect.w < 0)||(stOutRect.h ==0)
	       )
	       {
	            return HI_FAILURE;
	       }

		 /*stOutRect x < 1/5 width ;stOutRect h + stOutRect.x <  width*/
		 s32Width = s_stDisp[ch].DispInfo.stScrnWin.s32Width;
		 if(stOutRect.x*5 > s32Width)
		 {
		 	stOutRect.x = s32Width/5;
		 }
		 if(stOutRect.w*5 < 4*s32Width)
		 {
		 	stOutRect.w = 4*s32Width/5;
		 }
		 if(stOutRect.w + stOutRect.x > s32Width)
		 {
		 	stOutRect.w = s32Width - stOutRect.x;
		 }

		 /*stOutRect y < 1/5 heigth ;stOutRect h +stOutRect.y <  heigth*/
		 s32Height = s_stDisp[ch].DispInfo.stScrnWin.s32Height;
		 if(stOutRect.y*5 > s32Height)
		 {
		 	stOutRect.y = s32Height/5;
		 }
		 if(stOutRect.h*5 < s32Height*4)
		 {
		 	stOutRect.h = s32Height*4/5;
		 }
		 if(stOutRect.y + stOutRect.h > s32Height)
		 {
		 	stOutRect.h = s32Height - stOutRect.y;
		 }

	    s_stDisp[ch].DispInfo.stAdjstWin.bAdjstScrnWinFlg = HI_TRUE;
		s_stDisp[ch].DispInfo.stAdjstWin.enFmt = s_stDisp[ch].DispInfo.enFmt;
		s_stDisp[ch].DispInfo.stAdjstWin.stScrnWin.s32X = stOutRect.x&0xfffffffeL;
		s_stDisp[ch].DispInfo.stAdjstWin.stScrnWin.s32Y= stOutRect.y&0xfffffffcL;
		s_stDisp[ch].DispInfo.stAdjstWin.stScrnWin.s32Width = stOutRect.w&0xfffffffeL;
		s_stDisp[ch].DispInfo.stAdjstWin.stScrnWin.s32Height = stOutRect.h&0xfffffffcL;
		s_stDisp[ch].DispInfo.stAdjstWin.stAdjstScrnWin = s_stDisp[ch].DispInfo.stAdjstWin.stScrnWin;
	//	printk("x:%d,y:%d,w:%d,h:%d\n",stOutRect.x,stOutRect.y,stOutRect.w,stOutRect.h);
		OPTM_DispInfoCallbackUnderWbc(0,0);
	    return HI_SUCCESS;

	}

	return HI_FAILURE;


}

#ifdef __cplusplus
 #if __cplusplus
}
 #endif
#endif /* __cplusplus */

