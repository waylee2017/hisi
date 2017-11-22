
/******************************************************************************
*
* Copyright (C) 2014 Hisilicon Technologies Co., Ltd.  All rights reserved.
*
* This program is confidential and proprietary to Hisilicon  Technologies Co., Ltd. (Hisilicon),
*  and may not be copied, reproduced, modified, disclosed to others, published or used, in
* whole or in part, without the express prior written permission of Hisilicon.
*
******************************************************************************
File Name     : optm_m_disp.h
Version       : Initial Draft
Author        : Hisilicon multimedia software group
Created       : 2009/1/16
Last Modified :
Description   :
Function List :
History       :
******************************************************************************/
#ifndef __OPTM_M_DISP_H__
#define __OPTM_M_DISP_H__

#include "optm_basic.h"
#include "optm_define.h"
#include "optm_alg_api.h"
#include "optm_disp_rwzb.h"

#ifndef __BOOT__
#include "optm_disp.h"
#include "optm_debug.h"
#endif


#ifdef __cplusplus
 #if __cplusplus
extern "C" {
 #endif
#endif /* __cplusplus */

/**************************************************************
 *                       DATE MODULE                          *
 **************************************************************/
#define OPTM_M_DATE_DAC_MAX_NUMBER 6

/* definition of DTO init phase for PAL,NTSC format */
#define OPTM_M_DATE_DTO_INIT_PHASE_PAL  0xb0
#define OPTM_M_DATE_DTO_INIT_PHASE_NTSC 0x85

typedef struct  tagOPTM_M_DATE_S
{
	HI_BOOL bEnable;/*  enable status  */

    /* Date Attribute */
	HI_UNF_ENC_FMT_E enFmt;
	HI_U32 u32DateCoeff0;
	HI_U32 u32CGain;
	HI_BOOL bScartEn;
	HI_UNF_DISP_MACROVISION_MODE_E enMcvn;

    /* bit7~4 : reserved; */
    /* bit3   : dacX delay enable; */
    /* bit2~0 : dacX interface select; */
	HI_U8 au8DacSel[OPTM_M_DATE_DAC_MAX_NUMBER];
}OPTM_M_DATE_S;



/* virtual basic address of OPTM registers' list */
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    vosd_clk_sel      : 1   ; // [0] 0:EPLL 54M  1:VPLL 54M
        unsigned int    reserved1      : 1   ; // [1]
        unsigned int    vohd_clk_sel      : 2   ;
                                            /*[2] [3]    00:VPLL 297Mhz  01:VPLL 148.5M  10: VPLL 74.25M */
        unsigned int    reserved          : 29   ; // [3]
    } bits;

    // Define an unsigned member
    unsigned int    u32;
} U_PERI_CRG53;

typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    vo_bus_cken      : 1   ; // [0]
        unsigned int    vo_cken      : 1   ; // [1]
        unsigned int    vo_sd_cken      : 1   ; // [2]
        unsigned int    vo_sdate_cken          : 1   ; // [3]
        unsigned int    vo_hd_cken      : 1   ; // [4]
        unsigned int    vo_hdate_cken      : 1   ; // [5]
        unsigned int    vdac_ch0_cken      : 1   ; // [6]
        unsigned int    vdac_ch1_cken          : 1   ; // [7]
        unsigned int    vdac_ch2_cken       : 1   ; // [8]
        unsigned int    vdac_ch3_cken       : 1   ; // [9]
        unsigned int    reserved10_11       : 2   ; // [10] [11]
        unsigned int    vo_sd_clk_sel            : 1   ; // [12]
        unsigned int    vo_sddac_sel        : 1   ; // [13]
        unsigned int    vo_sdac_cken       : 1   ; // [14]
        unsigned int    vo_hdac_cken           : 1   ; // [15]
        unsigned int    vo_hd_clk_sel       : 1   ; // [16]
        unsigned int    vo_hddac_sel   : 1   ; // [17]
        unsigned int    vo_hd_clk_div           : 2   ; // [18]  [19]
        unsigned int    vdac_ch0_clk_sel          : 1   ; // [20]
        unsigned int    vdac_ch1_clk_sel           : 1   ; // [21]
        unsigned int    vdac_ch2_clk_sel          : 1   ; // [22]
        unsigned int    vdac_ch3_clk_sel           : 1   ; // [23]
        unsigned int    reserved24_25           : 2   ; // [24] [25]
        unsigned int    hdmi_clk_sel           : 1   ; // [26]
        unsigned int    reserved27_29  : 3   ; // [27 29]
        unsigned int    vou_srst_req         : 1   ; // [30]
        unsigned int    Reserved31             : 1   ; // [31]
    } bits;

    // Define an unsigned member
    unsigned int    u32;
} U_PERI_CRG54;

/* Define the union U_PERI_CRG68 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    phy_tmds_cken         : 1   ; /* [0]  */
        unsigned int    ssc_in_cken           : 1   ; /* [1]  */
        unsigned int    ssc_bypass_cken       : 1   ; /* [2]  */
        unsigned int    hdmitx_ctrl_osc_24m_cken : 1   ; /* [3]  */
        unsigned int    hdmitx_phy_srst_req   : 1   ; /* [4]  */
        unsigned int    vdp_hdmi_srst_req     : 1   ; /* [5]  */
        unsigned int    phy_tmds_srst_req     : 1   ; /* [6]  */
        unsigned int    ssc_clk_div           : 4   ; /* [10..7]  */
        unsigned int    reserved_0            : 1   ; /* [11]  */
        unsigned int    tmds_clk_div          : 3   ; /* [14..12]  */
        unsigned int    reserved_1            : 1   ; /* [15]  */
        unsigned int    vou_clk_div           : 5   ; /* [20..16]  */
        unsigned int    reserved_2            : 11  ; /* [31..21]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_PERI_CRG68;

/* Define the union U_PERI_CRG71 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    vdac_chop_cken        : 1   ; /* [0]  */
        unsigned int    reserved_0            : 15  ; /* [15..1]  */
        unsigned int    vdac_c_clk_pctrl      : 1   ; /* [16]  */
        unsigned int    vdac_r_clk_pctrl      : 1   ; /* [17]  */
        unsigned int    vdac_g_clk_pctrl      : 1   ; /* [18]  */
        unsigned int    vdac_b_clk_pctrl      : 1   ; /* [19]  */
        unsigned int    reserved_1            : 12  ; /* [31..20]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_PERI_CRG71;

/* ch must be set 0 for this version. */
HI_S32 OPTM_M_GetDateDefaultAttr(HI_S32 ch, OPTM_M_DATE_S *pstDate);
HI_S32 OPTM_M_GetDateAttr(HI_S32 ch, OPTM_M_DATE_S *pstDate);
HI_S32 OPTM_M_SetDateAttr(HI_S32 ch, OPTM_M_DATE_S *pstDate);

HI_S32 OPTM_M_SetDateEnable(HI_S32 ch, HI_BOOL bEnable);
HI_S32 OPTM_M_SetDateFmt(HI_S32 ch, HI_UNF_ENC_FMT_E enFmt);
HI_S32 OPTM_M_SetDateCoeff0(HI_S32 ch, HI_U32 u32Coeff0);
HI_S32 OPTM_M_SetDateCGain(HI_S32 ch, HI_U32 u32CGain);
HI_S32 OPTM_M_SetDateMcvn(HI_S32 ch, HI_UNF_DISP_MACROVISION_MODE_E enMcvn);
HI_S32 OPTM_M_SetDateDacSel(HI_S32 ch, HI_U8 *pu8DacSel);
HI_S32 OPTM_M_SetDateScartEn(HI_S32 ch, HI_BOOL bEnable);


/***************************************************************
 *                     HDATE MODULE                            *
 ***************************************************************/
#define OPTM_M_HDATE_DAC_MAX_NUMBER 5
typedef struct  tagOPTM_M_HDATE_S
{
	HI_BOOL bEnable;    /*  enable  status  */

    /* Date Attribute */
	HI_UNF_ENC_FMT_E enFmt;

	HI_U32 u32Pola;    /* bit5~0: 0, anode; 1, negative */

    HI_BOOL bLpfEn;
    HI_BOOL bSdSel;

	HI_U32 u32SrcCtrl;     /*  bit1~0: 0, no proces; 1, filter; */
	                       /*  2, 2x  interpolation;   3, 4x  interpolation */
	HI_U32 u32CscCtrl;     /*  0, YCbCr->YPbPr;  */
	                       /*  1, YCbCr->RGB_BT709; */
	                       /*  2, YCbCr->RGB_BT601; */
	                       /*  3, YCbCr->RGB_SMPTE240; */
	HI_U32 u32VidOutCtrl;  /* 0, RGB; 1, YPbPr; 2, VGA */
	HI_U32 u32SyncAddCtrl; /* bit0, R/Pr; bit1, G/Y; bit2, B/Pb */
	HI_UNF_DISP_MACROVISION_MODE_E enMcvn;

    /* bit1~0: dacX interface select; */
	HI_U8 au8DacSel[OPTM_M_HDATE_DAC_MAX_NUMBER+2];
}OPTM_M_HDATE_S;

/* ch must be set 0 for this version. */
HI_S32 OPTM_M_GetHDateDefaultAttr(HI_S32 ch, OPTM_M_HDATE_S *pstHDate);
HI_S32 OPTM_M_GetHDateAttr(HI_S32 ch, OPTM_M_HDATE_S *pstHDate);
HI_S32 OPTM_M_SetHDateAttr(HI_S32 ch, OPTM_M_HDATE_S *pstHDate);

HI_S32 OPTM_M_SetHDateEnable(HI_S32 ch, HI_BOOL bEnable);
HI_S32 OPTM_M_SetHDateFmt(HI_S32 ch, HI_UNF_ENC_FMT_E enFmt);
HI_S32 OPTM_M_SetHDatePola(HI_S32 ch, HI_U32 u32Pola);
HI_S32 OPTM_M_SetHDateSd(HI_S32 ch, HI_BOOL bSdSel);
HI_S32 OPTM_M_SetHDateLpf(HI_S32 ch, HI_BOOL bLpfEn);
HI_S32 OPTM_M_SetHDateSrc(HI_S32 ch, HI_U32 u8SrcCtrl);
HI_S32 OPTM_M_SetHDateCsc(HI_S32 ch, HI_U32 u8CscCtrl);
HI_S32 OPTM_M_SetHDateVidOut(HI_S32 ch, HI_U32 u8VidOutCtrl);
HI_S32 OPTM_M_SetHDateSyncAdd(HI_S32 ch, HI_U32 u8SyncAddCtrl);
HI_S32 OPTM_M_SetHDateMcvn(HI_S32 ch, HI_UNF_DISP_MACROVISION_MODE_E enMcvn);
HI_S32 OPTM_M_SetHDateDacSel(HI_S32 ch, HI_U8 *pu8DacSel);

/**************************************************************
 *                      VOMUX MODULE                          *
 **************************************************************/
#define OPTM_M_VOMUX_DAC_MAX_NUMBER MAX_DAC_NUM
#define OPTM_M_V101_DAC_DEFAULT_YUV_GC  (0x3f)
#define OPTM_M_V101_DAC_DEFAULT_RGB_GC  (0x6)

#define OPTM_M_V200_DAC_DEFAULT_YUV_GC  (0x3c)
#define OPTM_M_V200_DAC_DEFAULT_RGB_GC  (0xe)



typedef struct  tagOPTM_M_VOMUX_S
{
    //TODO:
    //HI_U8 DSDToDate; /* 0, DSD to SDate; 1, DSD to HDate; */
    //HI_U8 DHDToDate; /* 0, DHD to Hdate; 1, DHD to SDate; */

    /* 0, debug; 1, SDate; 2, Analog output; 3, HDate; */
    HI_U8 au8DacSel[OPTM_M_VOMUX_DAC_MAX_NUMBER];
}OPTM_M_VOMUX_S;

HI_S32 OPTM_M_GetVomuxDefaultAttr(OPTM_M_VOMUX_S *pstVomux);
HI_S32 OPTM_M_SetVomuxAttr(OPTM_M_VOMUX_S *pstVomux);

/* 0~3 is effective; 0xff means to retain the dac's state */
HI_S32 OPTM_M_SetVomuxDacSelect(HI_U8 *pu8DacSel, HI_S32 s32DacNum);


/**************************************************************
 *                         DAC MODULE                         *
 **************************************************************/
//vou dac clk setting bits
#define OPTM_M_CRG_REG_HDDAC_CLK_BITS 0x00200000uL
#define OPTM_M_CRG_REG_SDDAC_CLK_BITS 0x00080000uL
#define OPTM_M_CRG_REG_DAC_CLK_BITS (OPTM_M_CRG_REG_HDDAC_CLK_BITS | OPTM_M_CRG_REG_SDDAC_CLK_BITS)

//vou fmt detect bits
#define OPTM_M_CRG_REG_DETECT_BITS 0x03d7ffffuL

/*
typedef struct  tagOPTM_M_DAC_S
{
    HI_BOOL bScartEn;
    HI_UNF_DISP_DAC_MODE_E aenDac[MAX_DAC_NUM];
}OPTM_M_DAC_S;
*/
/*
HI_S32 OPTM_M_GetDacDefaultAttr(OPTM_M_DAC_S *pstDac);
HI_S32 OPTM_M_SetDacAttr(OPTM_M_DAC_S *pstDac);
*/

HI_S32 OPTM_M_CheckDacMode(HI_UNF_DISP_DAC_MODE_E *penDac);
HI_S32 OPTM_M_SetDacMode(HI_UNF_DISP_DAC_MODE_E *penDac);
HI_S32 OPTM_M_SetDacGc(HI_UNF_ENC_FMT_E enFmt);
HI_S32 OPTM_M_ReviseHDDateConnection(HI_UNF_DISP_DAC_MODE_E *penDac,HI_UNF_ENC_FMT_E enHdFmt,HI_UNF_DISP_INTF_TYPE_E enIntfType);
HI_VOID OPTM_M_SetDefDacDelay(HI_VOID);
HI_S32 OPTM_M_ReviseHDDacDelay(HI_UNF_DISP_DAC_MODE_E *penDac,HI_UNF_ENC_FMT_E enHdFmt,HI_UNF_DISP_INTF_TYPE_E enIntfType);


#if 0
HI_VOID OPTM_M_SetSdVdacClk(HI_U32 value);
HI_VOID OPTM_M_SetHdVdacClk(HI_U32 value);
#else
HI_VOID OPTM_M_SetVdacClk(HI_U32 u32DacNum,HI_U32 u32Link);

#endif

/**************************************************************
*						   DISP MODULE						  *
**************************************************************/

#define OPTM_M_MAX_DISPLAY 2

typedef struct  hiOPTM_M_DISP_HDMI_S
{
    HI_U32 u32HsyncNegative; /*  horizontal synchronization signal negativity enable */
    HI_U32 u32VsyncNegative; /*  vertical synchronization signal negativity enable */
    HI_U32 u32DvNegative;    /*  dv negativity enable */

    HI_S32 s32SyncType;     /* 0,  synchronization embeded  mode; 1, synchronization separate mode */
    HI_S32 s32CompNumber;   /* 0, 10bit; 1, 20bit; 2, 30bit */
    HI_S32 s32DataFmt;      /* 0, YCbCr;1,RGB*/
}OPTM_M_DISP_HDMI_S;

typedef struct  hiOPTM_M_DISP_ADJUST_WINDOW_S
{
    HI_UNF_ENC_FMT_E   enFmt;
    HI_RECT_S          stScrnWin;      //Record set window Rect
    HI_RECT_S          stAdjstScrnWin; //for adjust window Rect
	HI_BOOL            bAdjstScrnWinFlg;
}OPTM_M_DISP_ADJUST_WINDOW_S;

typedef struct  hiOPTM_M_DISP_INFO_S
{
    HI_UNF_DISP_INTF_TYPE_E  enType;
	HI_UNF_ENC_FMT_E         enFmt;
	OPTM_DISP_LCD_FMT_E      enLcdFmt;
    HI_UNF_DISP_LCD_PARA_S   LcdPara;

	HI_RECT_S                stScrnWin;     /* screen window */
	HI_BOOL                  bProgressive;  /* progressive-display flag */
	HI_U32                   u32DispRate;   /* output frequency, unit of frame; 50 field/sec is represented by 25 */
	OPTM_M_DISP_ADJUST_WINDOW_S stAdjstWin;

	/* chnage ::  set CSC in Video/GFX Layers*/
	HI_U32                  u32Bright;
	HI_U32                  u32Contrast;
	HI_U32                  u32Saturation;
	HI_U32                  u32Hue;

	HI_U32                  u32Kr;
	HI_U32                  u32Kg;
	HI_U32                  u32Kb;
}OPTM_M_DISP_INFO_S;

typedef struct  tagOPTM_M_DISP_CAP_S
{
    HI_BOOL bGmmFunc;
}OPTM_M_DISP_CAP_S;



/* display channel */
typedef struct  tagOPTM_M_DISP_S
{
	/* display channel ID*/
	HAL_DISP_OUTPUTCHANNEL_E  enDisp;

	/* user-settable properties */
	HI_BOOL                 bEnable;         /* enable status */

	/* capacity set */
	OPTM_M_DISP_CAP_S       stCapb;

	/* status  */
    OPTM_AA_GMM_COEF_S      stGamma;
	HI_BOOL                 bGammaEn;
	HI_BOOL                 bGammaMask;
    //HI_U32                  u32GammaMode;  /* reserve */

    OPTM_M_DISP_INFO_S      DispInfo;        /* inner properties */
	HAL_DISP_LAYER_E        aenOrder[4];
	HI_U32                  u32LayerNum;

	HI_UNF_DISP_BG_COLOR_S  stBgc;
	OPTM_CS_E               enSrcClrSpace;   /* color space */
	OPTM_CS_E               enDstClrSpace;
	//OPTM_CSC_MODE_E         enCscMode;     /* color space transformation mode */
	HI_U32                  u32Bright;
	HI_U32                  u32Contrast;
	HI_U32                  u32Saturation;
	HI_U32                  u32Hue;

	HI_U32                  u32Kr;
	HI_U32                  u32Kg;
	HI_U32                  u32Kb;

    HI_BOOL                 bBt1120Enable;
    HI_BOOL                 bBt656Enable;

	OPTM_M_DISP_HDMI_S      stHdmiIntf;

    /* current field flag: -1, unknown; 0, top; 1, btm */
    HI_S32                  s32BtmFieldFlag; /* flag of current field (top field or bottom field) */


    /* 0, count back 40 lines in valid region;
     * 1, from valid region;
     * 2, count back 80 lines from update point,
     * for graphic layer.
     */
	HI_S32                  s32Vtth1PosiFlag;

    /* 0, count back 40 lines in valid region;
     * 1, from valid region;
     * 2, count back 80 lines from update point,
     * for graphic layer.
     */
    HI_S32                  s32Vtth2PosiFlag;
}OPTM_M_DISP_S;

typedef struct _tagOPTM_M_LCD_FMT_INFO_S
{
    HI_S32 s32W;
    HI_S32 s32H;
    HI_S32 s32Rate;
    HI_BOOL bRb;
}OPTM_M_LCD_FMT_INFO_S;

typedef enum _tagOPTM_M_D_LCD_FMT_E
{
    OPTM_M_D_LCD_FMT_861D_640X480_60HZ = 0,
    OPTM_M_D_LCD_FMT_VESA_800X600_60HZ,
    OPTM_M_D_LCD_FMT_VESA_1024X768_60HZ,
    OPTM_M_D_LCD_FMT_VESA_1280X720_60HZ,
    OPTM_M_D_LCD_FMT_VESA_1280X800_60HZ,
    OPTM_M_D_LCD_FMT_VESA_1280X1024_60HZ,
	OPTM_M_D_LCD_FMT_VESA_1360X768_60HZ,      //Rowe
    OPTM_M_D_LCD_FMT_VESA_1366X768_60HZ,
    OPTM_M_D_LCD_FMT_VESA_1400X1050_60HZ,     //Rowe
    OPTM_M_D_LCD_FMT_VESA_1440X900_60HZ,
    OPTM_M_D_LCD_FMT_VESA_1440X900_60HZ_RB,
    OPTM_M_D_LCD_FMT_VESA_1600X900_60HZ_RB,
    OPTM_M_D_LCD_FMT_VESA_1600X1200_60HZ,
    OPTM_M_D_LCD_FMT_VESA_1680X1050_60HZ,      //Rowe
    OPTM_M_D_LCD_FMT_VESA_1920X1080_60HZ,
    OPTM_M_D_LCD_FMT_VESA_1920X1200_60HZ,
    OPTM_M_D_LCD_FMT_VESA_2048X1152_60HZ,
    OPTM_M_D_LCD_FMT_CUSTOMER_DEFINE,   // for lvds
    OPTM_M_D_LCD_FMT_BUTT,
}OPTM_M_D_LCD_FMT_E;

typedef struct tagOPTM_DISP_BOOT_SETTING_S
{
    HI_UNF_DISP_INTF_TYPE_E  enType;
    HI_UNF_ENC_FMT_E         enEncFmt;
    OPTM_M_D_LCD_FMT_E       enLcdFmt;
}OPTM_DISP_BOOT_SETTING_S;


HI_VOID OPTM_M_GetTvFmtInfo(HI_UNF_ENC_FMT_E enFmt, OPTM_M_DISP_INFO_S *pstFmtInfo);



HI_S32 OPTM_M_GetDispBootSettingFlag(HI_VOID); /* 0, not setting; 1, setting */
HI_S32 OPTM_M_GetDispBootSetting(HAL_DISP_OUTPUTCHANNEL_E enDisp, OPTM_DISP_BOOT_SETTING_S *pstSetting);

HI_S32 OPTM_M_InitDisp(HI_VOID);
HI_S32 OPTM_M_BaseRegInit(HI_VOID);
HI_S32 OPTM_M_DeInitDisp(HI_VOID);

HI_S32 OPTM_M_GetDispDefaultAttr(HAL_DISP_OUTPUTCHANNEL_E enDisp, OPTM_M_DISP_S *pstDisp);
HI_S32 OPTM_M_GetDispAttr(HAL_DISP_OUTPUTCHANNEL_E enDisp, OPTM_M_DISP_S *pstDisp);
HI_S32 OPTM_M_SetDispAttr(HAL_DISP_OUTPUTCHANNEL_E enDisp, OPTM_M_DISP_S *pstDisp);

HI_S32 OPTM_M_GetDispCap(HAL_DISP_OUTPUTCHANNEL_E enDisp, OPTM_M_DISP_CAP_S *pstCap);

HI_S32 OPTM_M_SetDispEnable(HAL_DISP_OUTPUTCHANNEL_E enDisp, HI_BOOL bEnable);
HI_S32 OPTM_M_SetDispIntfType(HAL_DISP_OUTPUTCHANNEL_E enDisp, HI_UNF_DISP_INTF_TYPE_E enType);
HI_S32 OPTM_M_SetDispEncFmt(HAL_DISP_OUTPUTCHANNEL_E enDisp, HI_UNF_ENC_FMT_E enFmt);
HI_S32 OPTM_M_GetDispCscMode(HAL_DISP_OUTPUTCHANNEL_E enDisp, OPTM_CS_E *penSrcCs, OPTM_CS_E *penDstCs);
HI_S32 OPTM_M_SetGfxScrnWin(HAL_DISP_OUTPUTCHANNEL_E enDispHalId, HI_UNF_RECT_S* stOutRectCfg);

HI_UNF_ENC_FMT_E     OPTM_M_GetDispEncFmt(HAL_DISP_OUTPUTCHANNEL_E enDisp);
OPTM_M_D_LCD_FMT_E   OPTM_M_GetDispLcdFmt(HAL_DISP_OUTPUTCHANNEL_E enDisp);


/*
*   set start position of vertical sequence interrupt:
*   Vtthd : 1, 2, 3;
*   flag  : 0, count back 40 lines in valid region; 1, from valid region; 2, count back 80 lines from update point.
*/
HI_VOID OPTM_M_SetVtthPosi(HAL_DISP_OUTPUTCHANNEL_E HalDispId, HAL_DISP_SYNCINFO_S *pstSyncInfo, HI_S32 Vtthd, HI_S32 flag);

/*
*   set flag of start position of vertical sequence interrupt flag
*   Vtthd : 1, 2, 3;
*   flag  : 0, count back 40 lines in valid region; 1, from valid region; 2, count back 80 lines from update point.
*/
HI_VOID OPTM_M_SetVtthPosiFlag(HAL_DISP_OUTPUTCHANNEL_E HalDispId, HI_S32 Vtthd, HI_S32 flag);

/*
*   set flag of start position of vertical sequence interrupt flag, which effects immediately
*   Vtthd : 1, 2, 3;
*   flag  : 0, count back 40 lines in valid region; 1, from valid region; 2, count back 80 lines from update point.
*/
HI_VOID OPTM_M_SetVtthPosiFlagAndEffect(HAL_DISP_OUTPUTCHANNEL_E HalDispId, HI_S32 Vtthd, HI_S32 flag);


HI_S32 OPTM_M_GetLcdDefaultPara(OPTM_M_D_LCD_FMT_E enLcdFmt, HI_UNF_DISP_LCD_PARA_S *pstSyncInfo);
HI_S32 OPTM_M_SetLcdDefaultPara(HAL_DISP_OUTPUTCHANNEL_E enDisp, OPTM_M_D_LCD_FMT_E enLcdFmt);

HI_S32 OPTM_M_SetDispLcdPara(HAL_DISP_OUTPUTCHANNEL_E enDisp, HI_UNF_DISP_LCD_PARA_S *pstLcd);
HI_S32 OPTM_M_SetDispOrder(HAL_DISP_OUTPUTCHANNEL_E enDisp, HAL_DISP_LAYER_E *pOrder, HI_U32 u32LayerNum);
HI_S32 OPTM_M_SetDispBgc(HAL_DISP_OUTPUTCHANNEL_E enDisp, HI_UNF_DISP_BG_COLOR_S *pstBgc);
HI_S32 OPTM_M_SetDispCscMode(HAL_DISP_OUTPUTCHANNEL_E enDisp, OPTM_CS_E enSrcCs, OPTM_CS_E enDstCs);
HI_S32 OPTM_M_SetDispBright(HAL_DISP_OUTPUTCHANNEL_E enDisp, HI_U32 u32Bright);
HI_S32 OPTM_M_SetDispContrast(HAL_DISP_OUTPUTCHANNEL_E enDisp, HI_U32 u32Contrast);
HI_S32 OPTM_M_SetDispSaturation(HAL_DISP_OUTPUTCHANNEL_E enDisp, HI_U32 u32Saturation);
HI_S32 OPTM_M_SetDispHue(HAL_DISP_OUTPUTCHANNEL_E enDisp, HI_U32 u32Hue);
HI_S32 OPTM_M_SetDispColorTemperature(HAL_DISP_OUTPUTCHANNEL_E enDisp, HI_U32 u32Kr,HI_U32 u32Kg,HI_U32 u32Kb);

HI_S32 OPTM_M_SetDispGamma(HAL_DISP_OUTPUTCHANNEL_E enDisp, HI_BOOL bEnable);
HI_S32 OPTM_M_SetDispGammaMask(HAL_DISP_OUTPUTCHANNEL_E enDisp, HI_BOOL bMask);

/* set GAMMA coefficients  */
HI_S32 OPTM_M_SetDispGammaCoef(HAL_DISP_OUTPUTCHANNEL_E enDisp, HI_UNF_ENC_FMT_E enEncFmt);

/* HDMI interface setting */
HI_S32 OPTM_M_GetDispHdmiIntf(HAL_DISP_OUTPUTCHANNEL_E enDisp, OPTM_M_DISP_HDMI_S *pstHdmiIntf);
HI_S32 OPTM_M_SetDispHdmiIntf(HAL_DISP_OUTPUTCHANNEL_E enDisp, OPTM_M_DISP_HDMI_S *pstHdmiIntf);
HI_S32 OPTM_M_SetDispHdmiForLcd(HAL_DISP_OUTPUTCHANNEL_E enDisp, OPTM_M_D_LCD_FMT_E enMFmt);

HI_VOID OPTM_M_SaveDXD(HAL_DISP_OUTPUTCHANNEL_E enDisp);

HI_VOID OPTM_M_RestoreDXD(HAL_DISP_OUTPUTCHANNEL_E enDisp, HI_BOOL bEnable);

HI_VOID OPTM_M_SaveCommon(HI_VOID);

HI_VOID OPTM_M_RestoreCommon(HI_VOID);


/* get current display information, called frequently */
HI_S32 OPTM_M_GetDispInfo(HAL_DISP_OUTPUTCHANNEL_E enDisp, OPTM_M_DISP_INFO_S *pstInfo);

/* return refresh rate, no distinction of progressive and interlaced */
HI_S32 OPTM_M_GetDispRate(HAL_DISP_OUTPUTCHANNEL_E enDisp);

/* return field information: 1, progressive; 0, interlace */
HI_S32 OPTM_M_GetDispProgressive(HAL_DISP_OUTPUTCHANNEL_E enDisp);

/* return screen resolution*/
HI_S32 OPTM_M_GetDispScreen(HAL_DISP_OUTPUTCHANNEL_E enDisp, HI_RECT_S *pstScrnWin);

HI_S32 OPTM_M_GetDispBtmFlag(HAL_DISP_OUTPUTCHANNEL_E enDisp);


/**************************************************************
            INT MODULE
*/
/* transient custom: each interrupt can register 8 sub-program */
#define OPTM_M_INT_IRQ_MAX_NUMBER 13

/*  DHD VTTHD1 INT ISR ORDER */
#define OPTM_M_HDVTTHD1_ORDER_DISP     0
#define OPTM_M_HDVTTHD1_ORDER_VO       1

#define OPTM_M_HDVTTHD1_ORDER_OFLTASK  2
#define OPTM_M_HDVTTHD1_ORDER_VAD      1

#define OPTM_M_HDVTTHD3_DIE_READ        0
#define OPTM_M_HDVTTHD1_ORDER_WBC0     3
//#define OPTM_M_HDVTTHD1_ORDER_VHDUF    4

/*  DHD VTTHD2 INT ISR ORDER */
#define OPTM_M_HDVTTHD2_ORDER_G0_DISP          0
#define OPTM_M_HDVTTHD2_ORDER_G0               1
#define OPTM_M_HDVTTHD2_ORDER_G0_WAIT_VBLANK   2
#define OPTM_M_HDVTTHD2_ORDER_WBC2             3

#define OPTM_M_HDVTTHD2_ORDER_G1_DISP          4
#define OPTM_M_HDVTTHD2_ORDER_G1               5
#define OPTM_M_HDVTTHD2_ORDER_G1_WAIT_VBLANK   6

#define OPTM_M_HDVTTHD2_ORDER_ZONE1_DISP          7
#define OPTM_M_HDVTTHD2_ORDER_ZONE1               8
#define OPTM_M_HDVTTHD2_ORDER_ZONE1_WAIT_VBLANK   9


/*  DSD VTTSD1 INT ISR ORDER */
#define OPTM_M_SDVTTSD1_ORDER_DISP  0
#define OPTM_M_SDVTTSD1_ORDER_VO    1

/*  DSD VTTSD2 INT ISR ORDER */
#define OPTM_M_SDVTTHD2_ORDER_G1_DISP          0
#define OPTM_M_SDVTTHD2_ORDER_G1               1
#define OPTM_M_SDVTTHD2_ORDER_G1_WAIT_VBLANK   2

#define OPTM_M_SDVTTHD3_DIE_READ        0
/*  WBC0 FINISH ISR R */
#define OPTM_M_WTEINT_ORDER_UP       0

/*  WBC1 FINISH ISR R */
#define OPTM_M_VTEINT_ORDER_OFLTASK  0

/*  G0RR FINISH ISR R */
#define OPTM_M_G0RR_ORDER_UPFINISH   0
#define OPTM_M_ZONE1RR_ORDER_UPFINISH   1

/*  G1RR FINISH ISR R */
#define OPTM_M_G1RR_ORDER_UPFINISH   0


typedef HI_VOID (*OPTM_IRQ_FUNC)(HI_U32 u32Param0, HI_U32 u32Param1);
typedef struct tagOPTM_M_IRQ_S
{
    OPTM_IRQ_FUNC pFunc;
    HI_U32 u32Param0;
    HI_U32 u32Param1;
}OPTM_M_IRQ_S;

typedef struct tagOPTM_M_IRQ_EXT_S
{
    OPTM_M_IRQ_S stIrq[OPTM_M_INT_IRQ_MAX_NUMBER];
    HI_U32 u32IrqFlag;  /* bitX: 0, no irq; 1, irq; call from bit 0 to bit31 */
    HI_U32 bIntEnable;
}OPTM_M_IRQ_EXT_S;


/*scan mode*/
/*  call-back function of graphic layer, called when DISP FMT changes */
typedef enum tagOPTM_HIFB_SCAN_MODE_E
{
    OPTM_HIFB_SCAN_MODE_P,
    OPTM_HIFB_SCAN_MODE_I,
    OPTM_HIFB_SCAN_MODE_BUTT,
}OPTM_HIFB_SCAN_MODE_E;

typedef struct tagOPTM_HIFB_DISP_INFO_S
{
    OPTM_HIFB_SCAN_MODE_E enScanMode;
    HI_U32 u32ScreenWidth;
    HI_U32 u32ScreenHeight;
}OPTM_HIFB_DISP_INFO_S;

HI_VOID OPTM_M_INT_InitIrq(HI_VOID);
HI_S32 OPTM_M_INT_Registe(HAL_DISP_INTERRUPTMASK_E enInt, HI_S32 s32CallOrder,
                          OPTM_IRQ_FUNC pFunc, HI_U32 u32Param0, HI_U32 u32Param1);
HI_S32 OPTM_M_INT_UnRegiste(HAL_DISP_INTERRUPTMASK_E enInt, HI_S32 s32CallOrder);


/* HIFB call-back function  */
/* s32Dxd : 0, DHD; 1, DSD */
HI_S32 OPTM_M_INT_SetDispInfoForGfx(HAL_DISP_OUTPUTCHANNEL_E enDisp, OPTM_HIFB_DISP_INFO_S *pstInfo);

HI_S32 OPTM_M_INT_RegisteTtx(OPTM_M_IRQ_S *pstTtx, HI_S32 s32CallOrder);
HI_S32 OPTM_M_INT_UnRegisteTtx(OPTM_M_IRQ_S *pstTtx, HI_S32 s32CallOrder);


/* main program of interrupt service */
HI_S32 OPTM_M_ISR_Isr(HI_S32 irq, HI_VOID *dev_id);


/* Set CGMS data*/
HI_S32 OPTM_M_SetCgmsData(HAL_DISP_OUTPUTCHANNEL_E enDisp, HI_UNF_ENC_FMT_E enFormat, HI_UNF_DISP_CGMS_CFG_S* stCgmsCfg);

/* Set CGMS enable */
HI_VOID OPTM_M_SetCgmsEnable(HAL_DISP_OUTPUTCHANNEL_E enDisp, HI_BOOL bEnable, HI_UNF_DISP_CGMS_TYPE_E enType);

/* Set gfx output window */
HI_S32 OPTM_M_SetGfxScrnWin(HAL_DISP_OUTPUTCHANNEL_E enDispHalId, HI_UNF_RECT_S* stOutRectCfg);

/* Get gfx output window */
HI_S32 OPTM_M_GetGfxScreen(HAL_DISP_OUTPUTCHANNEL_E enDisp, HI_RECT_S *pstScrnWin);

#ifdef __cplusplus
 #if __cplusplus
}
 #endif
#endif /* __cplusplus */

#endif /* __OPTM_M_DISP_H__ */

