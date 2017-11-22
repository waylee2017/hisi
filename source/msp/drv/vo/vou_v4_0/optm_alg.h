
/******************************************************************************
*
* Copyright (C) 2014 Hisilicon Technologies Co., Ltd.  All rights reserved.
*
* This program is confidential and proprietary to Hisilicon  Technologies Co., Ltd. (Hisilicon),
*  and may not be copied, reproduced, modified, disclosed to others, published or used, in
* whole or in part, without the express prior written permission of Hisilicon.
*
******************************************************************************
File Name     : optm_alg.h
Version       : Initial Draft
Author        : Hisilicon multimedia software group
Created       : 2009/1/16
Last Modified :
Description   :
Function List :
History       :
******************************************************************************/
#ifndef __OPTM_ALG_H__
#define __OPTM_ALG_H__


#include "hi_type.h"

#include "optm_define.h"

#ifdef __cplusplus
 #if __cplusplus
extern "C" {
 #endif
#endif /* __cplusplus */

#define OPTM_ALG_ABS(x)     (((x) < 0) ? -(x) : (x))
#define OPTM_ALG_MIN2(x, y) (((x) < (y)) ? (x) : (y))
#define OPTM_ALG_MAX2(x, y) (((x) > (y)) ? (x) : (y))
#define OPTM_ALG_CLIP3(low, high, x) (OPTM_ALG_MAX2( OPTM_ALG_MIN2((x), (high)), (low)))


#define DEFAULT_MAX_PDRPT_NOISE 15000
#define DEFAULT_MIN_PDRPT_NOISE 200
#define DEFAULT_MAX_LASI_NOISE 5000
#define MAX_ALLOW_PDRPTINTV_FLD 60
#define OPTM_ALG_FRC_PRECISION  32//256

/* for video zme */
#define ALG_VD_HSCL_PRECISION 1048576
#define ALG_VD_VSCL_PRECISION 4096

#define	ALG_DIE_MOSAIC_WIDTH	720
#define	ALG_DIE_MOSAIC_HEIGHT	576
#define	ALG_DIE_NORMAL_WIDTH	720
#define	ALG_DIE_NORMAL_HEIGHT	576

typedef enum
{
    DIE_FALSE = 0,
    DIE_TRUE
} DIE_BOOL_EN;

typedef enum
{
    FC_DET0 = 0,
    FC_DET1,
    FC_DET2,
    FC_LOCK
} COPY_STATE_EN;

typedef enum
{
    PB_VIDEO = 0,
    PB_32PD,
    PB_COPY,
    PB_22PD
} PB_STATE_EN;

typedef struct
{
    HI_S32 IsProgressiveSeq;
    HI_S32 IsProgressiveFrm;
    HI_S32 RealFrmRate;
    HI_S32 MatrixCoef;
}OPTMALG_VDEC_INFO_S;

typedef struct
{
    HI_S8      Pd32Det;
    HI_S8      PdState;
    HI_S8      PdSubState; /*10 sub state to set pd para. meaningless when pd32det is false*/
    HI_S8      RptFlag;
    HI_S8      WithOvlpTitle;
} PD32_INFO_S;

typedef struct
{
    HI_S32 Count;
} PD32_PHASE_INFO_S;

typedef struct
{
    HI_S8      FcDet;
    HI_S8      FcState;
    HI_S8      SadMean;
    HI_S8      LockFldCnt;
    HI_S8      TraceFldCnt;
} FC_INFO_S;

/*------------------------structs' definitions---------------------------*/
typedef struct
{
    HI_S32 histFrmITDiff[5]; /* save five successive history FrmITDiff values for calculating mean value. */
    HI_S32 lstFrmITDiffMean; /* mean value of last five history FrmITDiff values. */
    HI_S32 curFrmITDiffMean; /* mean value of current five history FrmITDiff values. */
    HI_S32 meanFrmITDiffAcc; /* Accumulation value of history FrmITDiff mean diffrence. */
    HI_S32 lstRepfMotion;    /* Repeate field motion of last time. */
    HI_S32 anomalCnt;        /* abnormal situation counter of progressive state. */

	HI_S32 lstPcc_Crss;	 /* save the current PCC_CRSS for next use,add by b00182026 for 4 field IP detect at 2011-11-16 */
	HI_S32 lstnonmatch_weave;	 /* save the current PCC_CRSS for next use,add by b00182026 for 4 field IP detect at 2011-11-16 */

    HI_S32 field_match_weave;
    HI_S32 field_nonmatch_weave;
    HI_S32 field_pcc_crss;
    HI_S32 field_match_tkr;
    HI_S32 field_nonmatch_tkr;

    HI_S32 frame_match_weave;
    HI_S32 frame_nonmatch_weave;
    HI_S32 frame_pcc_crss;
    HI_S32 frame_match_tkr;
    HI_S32 frame_nonmatch_tkr;
    HI_S8 phaseCnt[2];/* 22pulldown phase counter */
    HI_S8 pld22Lock;  /* lock state:0-unlock; 1-lock */
    HI_S8 ppcEnable;  /* per-pixel correction enable: 0-disable; 1-enable */
} PLD22_CNTXT_S;

typedef struct
{
    HI_S8 FodEnable;
    HI_S8 Pld22Enable;
    HI_S8 Pld32Enable;
    HI_S8 FcEnable;
} OPTM_ALG_CONFIG_S;

typedef struct
{
    HI_S32 lst_repeat;
    HI_S32 cur_repeat;
    HI_S32 nxt_repeat;
}REPEAT_S;

typedef struct
{
    HI_S32 lst_drop;
    HI_S32 cur_drop;
    HI_S32 nxt_drop;
}DROP_S;

typedef struct
{
	//add by b00182026 for 4 field FOD detect at 2011-11-15
	HI_S32 die_lum_mode;  /* 0-5 field, 1-4field,2-3field*/
    OPTM_ALG_CONFIG_S AlgCfg;
    HI_S32 SadBuf[16], SadCnt, *pSadRd, *pSadWt;
    PD32_INFO_S Pld32InfoBuf[5], PdInfo;
    PD32_PHASE_INFO_S Phases32[5];
    HI_S8 Last32Phase;
    HI_S32 SADDiffAcc;
    HI_S8 FieldOrder;
    HI_S8 SceneChange[2];
    HI_S32 ScSadBuf[6];
    HI_S32 Pld22LockState[3]; /* lock state of last 3 fields */
    PLD22_CNTXT_S Pld22Ctx;
    HI_U16 sadReg[16][3];
    FC_INFO_S FcInfo;
    HI_S8 MainState;
    HI_S8 PrevMainState;
    HI_S8 init_symbol;
    REPEAT_S RepeatHist;
    DROP_S DropHist;
    OPTMALG_VDEC_INFO_S *pVdecInfo;
    HI_S32 stlstPD32;  /* the last state of 3:2 pulldown detection when at NtoP conversion: 0-unlock; 1-lock; */
    HI_S32 stcurPD32;  /* the current state of 3:2 pulldown detection when at NtoP conversion: 0-unlock; 1-lock;*/
    HI_S32 stFrcCfg;   /* -1:drop; 0-normal; 1-repeat; valid when stcurPD32 is locked.*/
    HI_U32 stCycCnt;
    HI_U32 u32FodCnt; /* history counter for clear fod */
} OPTM_ALG_PBCTX_S;

typedef struct
{
	HI_BOOL fstWinDeiEn;
	HI_BOOL secWinDeiEn;
	HI_BOOL thdWinDeiEn;
	HI_BOOL fthWinDeiEn;
}OPTM_ALG_WinDeiEn_S;

typedef struct
{
	int height;          /* height of source*/
	int width;           /* width of source*/

	int die_lum_en;      /* deinterlace enable for luma*/
	int die_chm_en;      /* deinterlace enable for chroma*/
	int die_lum_mode;  /* 0-5 field, 1-4field,2-3field*/
       int die_chm_mode; /* 0-5 field, 1-4field,2-3field*/

	int pd_en;     /* pulldown detect enable on-off: 1-enable; 0-disable*/
	int ip_en;     /* Interleaved/Progressive detect enable on-off: 1-enable; 0-disable*/
	int fod_en;    /* field order detect enable on-off: 1-enable; 0-disable*/
	int fc_en;   /* frame copy detect enable on-off: 1-enable; 0-disable*/

	int st_mode; /* 5-KLM; 6-KLQR; 7-KLQRM; 8-STKLM; 9-KLMN;*/
	int edge_smooth_en; /* edge smooth enable on-off: 1-disable; 0-enable*/
	int die_cout_sel2_en; /* die chroma out select 2field combine enable on-off: 1-disable; 0-enable */

	HI_BOOL init_btflag; /* when field order detect disable, initial the field order*/

	HI_BOOL bRstFlag;  /* added tmp*/
}DIE_CONFIG;

typedef struct
{
	unsigned char  TF_SAD_THD ;
	unsigned char  TF_SAD_RATE;

	unsigned char  TF_STD_THD ;
	unsigned char  TF_STD_RATE;
} DintlTfps;

typedef struct
{
	unsigned char  TSMIX_SAD_THD ;
	unsigned char  TSMIX_SAD_RATE;

	unsigned char  TSMIX_STD_THD ;
	unsigned char  TSMIX_STD_RATE;
} DintlTsps;

typedef struct  {
	int HEIGHT;
	int WIDTH;
	int CHEIGHT;
	int CWIDTH;
	int STRIDE;
	int CSTRIDE;

	unsigned char YUV_TYPE;
	unsigned char BT_MODE;
} SrcInfo;


typedef struct
{
    HI_U8  DIR_RATIO;
    HI_U8  DIR_RATIO_NORTH;
    HI_U8  BC1_MAX_DZ;
    HI_U8  BC1_AUTODZ_GAIN;
    HI_U8  BC1_GAIN;
    HI_U8  BC2_MAX_DZ;
    HI_U8  BC2_AUTODZ_GAIN;
    HI_U8  BC2_GAIN;
    HI_U8  RATIO_LIMIT_SCALE;
    int  MIN_NORTH_STRENGTH;
    int  INTP_SCALE_RATIO[15]; /* Interpolator's scale ratio*/
    HI_U8  INTERP_OPTIM_EN;    /* For Interpoletor optimazation*/
    HI_U8 EDGE_SMOOTH_EN;      /* edge smooth enable*/
    HI_U8 EDGE_SMOOTH_RATIO;   /* edge smooth ratio*/
} InterpInfo;

typedef struct
{
    HI_U8 DINTL_LUM_EN;        /* Die luma enable*/
    HI_U8 DINTL_CHM_EN;        /* Die Chroma enable*/

    HI_U8 SN_RESET;
    HI_U8 SN_STOP;

    HI_U8 REF_FIELD;

    HI_U8 WIN_H;           /*  window horizontally for motion detect -WIN_H to WIN_H*/
    HI_U8 SCALE_RATIO_PPD; /* scale for current ma*/

    HI_U8 TABLE_Q[3];      /* quantization for motion value*/

    HI_U8 TABLE_RQ[4];     /* reverse quantization for motion value*/

    HI_U8 LUMA_MODE;       /* 0-5 field, 1-4field,2-3field*/
    HI_U8 CHR_MODE;        /* 0-5 field, 1-4field,2-3field*/

    HI_U8 LUMA_MF_255_EN;  /* force luma ma as 255, used when one stream start*/
    HI_U8 CMA_MF_255_EN;   /* force chroma ma as 255*/


    /*  ---------------------------------------------
     *  Can only choose one history fetch method
     *  --------------------------------------------- */
    HI_U8 ST_MODE;         /* 5-KLM; 6-KLQR; 7-KLQRM; 8-STKLM; 9-KLMN;*/

    HI_U8 Q_USING_MAX;
    HI_U8 SCD_USING_MAX;

    HI_U8 CROSS_CHROMA_EN; /* when 3 field mode enabled, chroma_motion_en should be disabled*/
    HI_U8 CHROMA_MA_OFFSET;
    HI_U8 NO_CCR_DETECT_MAX;
    HI_U8 NO_CCR_DETECT_THRESH;
    HI_U8 SIMILAR_MAX;
    HI_U8 SIMILAR_THRESH;
    HI_U8 NO_CCR_DETECT_BLEND;
    HI_U8 MAX_XCHROMA;

    /*  ---------------------------------------------
     *  new added DEI registers in X6
     *  --------------------------------------------- */

    HI_U8 ST_UPD_MODE;  /*move info update mode:0-the update info is the current mov info(same as 3716); 1-the update info is the max of current info and history K info*/
    HI_U8 ST_WBC_MODE;  /*move info write back mode: 0-the move info used the middle pixel of the window; 1-the move info used the all 5 pixels of the window*/
    HI_U8 MID_THD_2FLD; /*move Threshold for 2 field median deinterlace*/
    HI_U8 SAD_THD;      /*move Threshold for 5/4 field deinterlace*/
} DintlInfo;

typedef struct
{
    SrcInfo     tSRCINFO;       /* Source para info*/
	InterpInfo  tINTERPINFO;    /* Die interpolate para info*/
	DintlInfo   tDINTLINFO;     /* Die para info*/

   	DintlTsps   tTSPS;          /* Die temporal and spatial filter relevant thresh*/
	DintlTfps   tTFPS;          /* Die temporal filter relevant thresh*/

} DieVariables;

/* config paras for two-field combine deinterlace*/
typedef struct
{
	//add by b00182026 for 4 field FOD detect at 2011-11-15
	HI_S32 die_lum_mode;  /* 0-5 field, 1-4field,2-3field*/
    HI_S32 btmode;        /* field order*/
    HI_S32 ref_fld;       /* ref field*/
    /** !!!
      HI_S32 mchdir;
      match field direction */
    HI_S32 width;         /* frame width*/
    HI_S32 height;        /* frame height*/
    HI_S32 yuvtype;       /* yuv type: 0-420; 1-422; else-not support*/
    HI_S32 ChrVertFltEn;
    HI_S32 EdgeSmoothEn;  /* edge smooth enable on-off: 1-disable; 0-enable*/
    HI_S32 DieCoutSel2En; /* die chroma out select 2field combine enable on-off: 1-disable; 0-enable */
} REG_DIE2FLD_CONFIG_S;

/* submission information struct for hardware (exterior interface) */
typedef struct
{
    HI_S32 btmode;
    HI_S32 ref_fld;
    HI_S32 die_reset;
    HI_S32 die_stop;
    HI_S32 dir_mch_l;
    HI_S32 dir_mch_c;
    HI_S32 die_out_sel_l;
    HI_S32 die_out_sel_c;
    HI_S32 jud_en;
    HI_S32 ChromaVertFltEn;
    HI_S32 EdgeSmoothEn;
} REG_PLAYBACK_CONFIG_S;

/* still blocks? */
typedef struct
{
    HI_S32 STILLBLK_THR;    /* 8bit [0:255] */
    HI_S32 DIFF_MOVBLK_THR; /* 11bit [0:2047] */
} REG_STILLBLK_INPUT_S;     /* still block */


/* pulldown detect input */
typedef struct
{
    HI_U32 THR[4]; /* 8bit (0:255] */
} REG_HISTOGRAM_INPUT_S;

typedef struct
{
    HI_U32 THR[3];/* 8bit (0:255] */
} REG_UM_INPUT_S; /* unexpected motion */

typedef struct
{
    HI_S32 CORING_NORM;  /* 8bit [0:255] */
    HI_S32 CORING_TKR;   /* 8bit [0:255] */
    HI_S32 CORING_BLK;   /* 8bit [0:255] */
    HI_U32 H_THR;        /* 8bit (0:255] */
    HI_U32 V_THR[4];     /* 8bit (0:255] */
    HI_S32 MOV_CORING_NORM;  /* 8bit (0:255] */
    HI_S32 MOV_CORING_TKR;  /* 8bit (0:255] */
    HI_S32 MOV_CORING_BLK;  /* 8bit (0:255] */
} REG_PCC_INPUT_S;       /* polarity change counter */

typedef struct
{
    HI_U32 THR[4];    /* 8bit (0:255] */
} REG_ITDIFF_INPUT_S; /*  inverse telecine difference */

typedef struct
{
    HI_S32 THR;       /* 8bit (0:255] */
    HI_S32 EDGE_THR;  /* 8bit (0:255] */
    HI_S32 LASI_MOV_THR; /*8bit (0:255]  the threshold for new method(median method) for Lasi */
} REG_LASI_INPUT_S;

typedef struct
{
    HI_S32 ROW0; /*  16bit (0:pic width) */
    HI_S32 ROW1; /*  16bit (ROW0:pic width) */
    HI_S32 COL0; /*  16bit (0:pic_height) */
    HI_S32 COL1; /*  16bit (COL0:pic_height) */
} REG_BLOCKINFO_INPUT_S;

typedef struct
{
    HI_S32 BITSMOV2R; /*8bit (0:255] */
} REG_SCENCHG_INPUT_S;

typedef struct
{
    REG_DIE2FLD_CONFIG_S  DetCommonConfig;
    REG_STILLBLK_INPUT_S  StillBlkCtrl;
    REG_HISTOGRAM_INPUT_S HistogramCtrl;
    REG_UM_INPUT_S        UmCtrl;
    REG_PCC_INPUT_S       PccCtrl;
    REG_ITDIFF_INPUT_S    ItdiffCtrl;
    REG_LASI_INPUT_S      LasiCtrl;
    REG_BLOCKINFO_INPUT_S BlockInfo;
    REG_SCENCHG_INPUT_S   ScenChgCtrl;
} REG_DETECT_CONFIG_S;

typedef struct
{
    DieVariables pVar;
    REG_DETECT_CONFIG_S pldCfg;

    int update_flag;     /* flag for update statistic data: 0-update; 1-stop updating   */

}DIE_INFO;

typedef struct
{
    HI_BOOL g_lstreffld;    /* reference field for the frame befor the current frame */
    HI_BOOL g_curreffld;    /* reference field for the current frame */
    HI_BOOL g_nxtreffld;    /* reference field for the coming frame */
}REF_FLD;

typedef struct
{
    HI_BOOL g_lstbtmode;
    HI_BOOL g_curbtmode;
    HI_BOOL g_nxtbtmode;
}OPTM_ALG_BTMODE_S;

typedef struct
{
    int PD_EN;           /* pulldown detect enable on-off: 1-enable; 0-disable */
    int IP_EN;           /* Interleaved/Progressive detect enable on-off: 1-enable; 0-disable */
    int FOD_EN;          /* field order detect enable on-off: 1-enable; 0-disable */
	int PD_MODE;         /* pulldown detect mode: 1-hardware mode; 0-software mode */
	HI_BOOL init_btflag; /* when field order detect disable, initial the field order */
}DETECT_EN;


/* pulldown detect output */
typedef struct
{
    HI_S32 lasiCnt14;
    HI_S32 lasiCnt32;
    HI_S32 lasiCnt34;
} REG_LASI_STAT_S;

typedef struct
{
    HI_S32 PCC_FFWD;
    HI_S32 PCC_FWD;
    HI_S32 PCC_BWD;
    HI_S32 PCC_CRSS;
    HI_S32 pixel_weave;
    HI_S32 PCC_FWD_TKR;
    HI_S32 PCC_BWD_TKR;
    HI_S32 PCCBLK_FWD[9];
    HI_S32 PCCBLK_BWD[9];
} REG_PCC_STAT_S;

typedef struct
{
    HI_S32 HISTOGRAM_BIN_1;
    HI_S32 HISTOGRAM_BIN_2;
    HI_S32 HISTOGRAM_BIN_3;
    HI_S32 HISTOGRAM_BIN_4;
} REG_HISTOGRAM_STAT_S;

typedef struct
{
    HI_S32 match_UM;
    HI_S32 nonmatch_UM;
    HI_S32 match_UM2;
    HI_S32 nonmatch_UM2;
} REG_UM_STAT_S;

typedef struct
{
    HI_S32 StillBlkCnt;
    HI_S32 BlkSad[16];
} REG_STILLBLK_STAT_S;

typedef struct
{
    HI_S32 iCHD;
} REG_SCENCHG_STAT_S;


typedef struct
{
    HI_S32               frmITDiff;
    REG_UM_STAT_S        frmUm;
    REG_PCC_STAT_S       frmPcc;
    REG_HISTOGRAM_STAT_S frmHstBin;
    REG_LASI_STAT_S      lasiStat;
    REG_STILLBLK_STAT_S  StillBlkInfo;
    REG_SCENCHG_STAT_S	 SceneChangeInfo;
} DETECT_STAT_S;


typedef struct
{
	HI_U32 coef_addr_tap_l8c4_1;   /* 18*8+18*4 */
	HI_U32 coef_addr_tap_l8c4_equal1;
	HI_U32 coef_addr_tap_l8c4_075 ;
	HI_U32 coef_addr_tap_l8c4_05  ;
	HI_U32 coef_addr_tap_l8c4_033 ;
	HI_U32 coef_addr_tap_l8c4_025 ;
	HI_U32 coef_addr_tap_l8c4_0;

	HI_U32 coef_addr_tap_l6c4_1;
	HI_U32 coef_addr_tap_l6c4_equal1;
	HI_U32 coef_addr_tap_l6c4_075;
	HI_U32 coef_addr_tap_l6c4_05;
	HI_U32 coef_addr_tap_l6c4_033;
	HI_U32 coef_addr_tap_l6c4_025;
	HI_U32 coef_addr_tap_l6c4_0;

	HI_U32 coef_addr_tap_l4c4_1;
	HI_U32 coef_addr_tap_l4c4_equal1 ;
	HI_U32 coef_addr_tap_l4c4_075;
	HI_U32 coef_addr_tap_l4c4_05;
	HI_U32 coef_addr_tap_l4c4_033;
	HI_U32 coef_addr_tap_l4c4_025;
	HI_U32 coef_addr_tap_l4c4_0;

	HI_U32 coef_addr_tap_l4c2_1;
	HI_U32 coef_addr_tap_l4c2_equal1;
	HI_U32 coef_addr_tap_l4c2_075;
	HI_U32 coef_addr_tap_l4c2_05;
	HI_U32 coef_addr_tap_l4c2_033;
	HI_U32 coef_addr_tap_l4c2_025;
	HI_U32 coef_addr_tap_l4c2_0;



	HI_U32 coef_addr_vc2tap_1   ;
	HI_U32 coef_addr_vc2tap_equal1 ;
	HI_U32 coef_addr_vc2tap_075 ;
	HI_U32 coef_addr_vc2tap_05  ;
	HI_U32 coef_addr_vc2tap_033 ;
	HI_U32 coef_addr_vc2tap_025 ;
	HI_U32 coef_addr_vc2tap_0   ;
} FIR_COEF_ADDR_S;

typedef struct
{
	HI_U32 coef_addr_h_1;
	HI_U32 coef_addr_h_equal1;
	HI_U32 coef_addr_h_075 ;
	HI_U32 coef_addr_h_05  ;
	HI_U32 coef_addr_h_033 ;
	HI_U32 coef_addr_h_025 ;
	HI_U32 coef_addr_h_0;

	HI_U32 coef_addr_v4tap_1;
	HI_U32 coef_addr_v4tap_equal1;
	HI_U32 coef_addr_v4tap_075;
	HI_U32 coef_addr_v4tap_05;
	HI_U32 coef_addr_v4tap_033;
	HI_U32 coef_addr_v4tap_025;
	HI_U32 coef_addr_v4tap_0;

#if 0
	HI_U32 coef_addr_v2tap_1   ;
	HI_U32 coef_addr_v2tap_equal1 ;
	HI_U32 coef_addr_v2tap_075 ;
	HI_U32 coef_addr_v2tap_05  ;
	HI_U32 coef_addr_v2tap_033 ;
	HI_U32 coef_addr_v2tap_025 ;
	HI_U32 coef_addr_v2tap_0   ;
#endif
	HI_U32 coef_sd_addr_h_1;
	HI_U32 coef_sd_addr_h_equal1;
	HI_U32 coef_sd_addr_h_075 ;
	HI_U32 coef_sd_addr_h_05  ;
	HI_U32 coef_sd_addr_h_033 ;
	HI_U32 coef_sd_addr_h_025 ;
	HI_U32 coef_sd_addr_h_0;

	HI_U32 coef_sd_addr_v4tap_1;
	HI_U32 coef_sd_addr_v4tap_equal1;
	HI_U32 coef_sd_addr_v4tap_075;
	HI_U32 coef_sd_addr_v4tap_05;
	HI_U32 coef_sd_addr_v4tap_033;
	HI_U32 coef_sd_addr_v4tap_025;
	HI_U32 coef_sd_addr_v4tap_0;

} GFX_FIR_COEF_ADDR_S;



/* --------------------------------------------------------------------- */
/*  Window API PARA */
typedef struct
{
    int  ori_in_width       ; /* !!useless--original width before pan and scan */
    int  ori_in_height      ; /* !!useless--original height before pan and scan */
    int  pan_scan_in_width  ; /* !!useless--input width of pan and scan */
    int  pan_scan_in_height ; /* !!useless--input height of pan and scan */
    int  pan_scan_in_hoffset; /* !!useless--horizontal offset for pan and scan */
    int  pan_scan_in_voffset; /* !!useless--vertical offset for pan and scan */
    int  zme_in_width      ;  /* input width of scaler */
    int  zme_in_height     ;  /* input height of scaler  */
    int  zme_out_width      ; /* output width of scaler */
    int  zme_out_height     ; /* output height of scaler */
    int  yuv_type           ; /* 0-422;1-420;2-411;3-400 */

    HI_BOOL zme_input_inter    ; /* input vide format for scaler:0-interlaced;1-processive */
    HI_BOOL zme_input_bfield   ; /* input field when interlaced input for scaler:0-top field;1-bottom field */
    HI_BOOL zme_output_inter   ; /* output vide format for scaler:0-interlaced;1-processive */
    HI_BOOL zme_output_bfield  ; /* output field when interlaced input for scaler:0-top field;1-bottom field     */
    HI_BOOL die_lum_en         ; /* lum dintl enable  */
    HI_BOOL die_chm_en         ; /* chroma dintl enable */
    HI_BOOL die_ref_field      ; /* !!useless--reference field for deinterlace:0-top field;1-bottom field */
    HI_BOOL source_cosited     ; /* source format:0-cosited; 1-interspersed */

    FIR_COEF_ADDR_S *p_coef_addr;

}WND_SCALER_CONFIG;

typedef struct
{
	  int  video_in_width          ; /* !!useless--input width of dintl  */
    int  video_in_height         ; /* !!useless--input height of dintl */
    int  zme_in_width            ; /* !!useless--input width of scaler  */
    int  zme_in_height           ; /* !!useless--input height of scaler */
    int  zme_out_width           ; /* !!useless--output width of scaler  */
    int  zme_out_height          ; /* !!useless--output height of scaler */
    int  pan_scan_out_lum_hoffset; /* !!useless--lum horizontal offset of pan and scan after crop */
    int  pan_scan_out_lum_voffset; /* !!useless--lum vertical offset of pan and scan after crop   */
    int  pan_scan_out_chm_hoffset; /* !!useless--chroma horizontal offset of pan and scan after crop */
    int  pan_scan_out_chm_voffset; /* !!useless--chroma vertical offset of pan and scan after crop  */
    int  lum_coordinate_x        ; /* !!useless--start horizontal coordinate for lum  */
    int  lum_coordinate_y        ; /* !!useless--start vertical coordinate for lum */
    int  chm_coordinate_x        ; /* !!useless--start horizontal coordinate for chroma */
    int  chm_coordinate_y        ; /* !!useless--start vertical coordinate for chroma      */

}WND_INFO;

typedef struct
{
	HI_S32 lock_state;  /* 0-unlock; 1-lock */
	HI_S32 play_state;  /* 0-play; 1-drop */
}OPTM_ALG_PD32N2PFRC_CTRL;


/*  initial func. */
extern HI_VOID Optm_Alg_ResetFod(OPTM_ALG_BTMODE_S *pBtMode, HI_BOOL btflag);
extern HI_BOOL Optm_Alg_InitPld(DIE_CONFIG *pDieCfg, OPTM_ALG_PBCTX_S *pPldChn,
	                                         REF_FLD *pRefFld, OPTM_ALG_BTMODE_S *pBtMode, HI_BOOL btflag);
DIE_INFO InitDieInfo(DIE_CONFIG * reg);

/*  DIE API */
HI_VOID ConfigDieInfo( DIE_CONFIG reg, DETECT_STAT_S stat_info,
                           OPTM_ALG_PBCTX_S *pDieCtxt, REF_FLD *pRefFld,
                           HI_S32 nRepeat, HI_S32 nDrop, OPTM_ALG_BTMODE_S *pBtMode,
                           REG_PLAYBACK_CONFIG_S *pstCfgInfo, HI_BOOL n2pFlag,
                           OPTM_ALG_PD32N2PFRC_CTRL *pFrcCtrl, HI_BOOL bWbc1En);

extern HI_BOOL Optm_Alg_PdDetRst(OPTM_ALG_PBCTX_S *pPldChn);
extern HI_VOID Optm_Alg_PdModuleEnable(OPTM_ALG_CONFIG_S *pChnPldCfg, OPTM_ALG_PBCTX_S *pPldChn);
extern HI_VOID Optm_Alg_SetFod(HI_S32 FieldOrder, OPTM_ALG_PBCTX_S *pPldCtx);
extern HI_VOID Optm_Alg_GetPlayBackConfig(REG_DIE2FLD_CONFIG_S *pBaseCfg,  DETECT_STAT_S *pDetInf, HI_BOOL Is2ndFld,
                                                      HI_BOOL NxtIs2ndFld, HI_S32 PBDelay, OPTM_ALG_PBCTX_S *pPldCtx,
                                                      REG_PLAYBACK_CONFIG_S *pstCfgInfo, HI_BOOL n2pFlag);


HI_S32 OPTM_ALG_ProcRefFld(REF_FLD *pRefFld, HI_S32 nRepeat, HI_S32 nDrop,
	                                                   OPTM_ALG_BTMODE_S *pBtMode);




#define VOU_ZOOM_COEF_ITEM   18 /* 18 items for each zoom group coefficients */
#define VOU_ZOOM_COEF_MAXTAP 8  /* maximum tap of each item is eight */

/*
 * Row of Buffer records both chromatic and luma setting coefficients;
 * each item occupies 10 bits and here is larger allocation
 */
#define VOU_ZOOM_COEF_SIZE  (VOU_ZOOM_COEF_ITEM*VOU_ZOOM_COEF_MAXTAP*4)

typedef enum hiVOU_ZOOM_COEF_E
{
    VOU_ZOOM_COEF_1  = 0,
    VOU_ZOOM_COEF_EQU_1,
    VOU_ZOOM_COEF_075,
    VOU_ZOOM_COEF_05,
    VOU_ZOOM_COEF_033,
    VOU_ZOOM_COEF_025,
    VOU_ZOOM_COEF_0,
    VOU_ZOOM_COEF_BUTT

} VOU_ZOOM_COEF_E;

typedef enum hiVOU_ZOOM_TAP_E
{
    VOU_ZOOM_TAP_8LH = 0,
    VOU_ZOOM_TAP_6LV ,
    VOU_ZOOM_TAP_4CH ,
    VOU_ZOOM_TAP_4CV ,
    VOU_ZOOM_TAP_2CV ,

    //VOU_TiHf_ZOOM_TAP_2LH,
	VOU_TiHf_ZOOM_TAP_8LH,/*m310 change*/
    VOU_TiHf_ZOOM_TAP_2LV,
    //VOU_TiHf_ZOOM_TAP_2CH,
	VOU_TiHf_ZOOM_TAP_4CH,/*m310 change*/
    VOU_TiHf_ZOOM_TAP_2CV,
    VOU_ZOOM_TAP_BUTT
} VOU_ZOOM_TAP_E;

typedef enum hiVOU_GFX_ZOOM_TAP_E
{
    VOU_GFX_ZOOM_TAP_8LH = 0,
    VOU_GFX_ZOOM_TAP_4LV ,
    VOU_GFX_ZOOM_TAP_8CH ,
    VOU_GFX_ZOOM_TAP_4CV ,
    VOU_GFX_TiHf_ZOOM_TAP_2LH,
    VOU_GFX_TiHf_ZOOM_TAP_2LV,
    VOU_GFX_TiHf_ZOOM_TAP_2CH,
    VOU_GFX_TiHf_ZOOM_TAP_2CV,
    VOU_GFX_ZOOM_TAP_BUTT
} VOU_GFX_ZOOM_TAP_E;

typedef enum hiVOU_GFX_SD_ZOOM_TAP_E
{
    VOU_GFX_SD_ZOOM_TAP_8LH = 0,
    VOU_GFX_SD_ZOOM_TAP_4LV ,
    VOU_GFX_SD_ZOOM_TAP_8CH ,
    VOU_GFX_SD_ZOOM_TAP_4CV ,
    VOU_GFX_SD_ZOOM_TAP_BUTT
} VOU_GFX_SD_ZOOM_TAP_E;

extern const HI_S32 *g_pOrgZoomCoef[VOU_ZOOM_COEF_BUTT][VOU_ZOOM_TAP_BUTT];
extern const HI_S32 *g_pOrgZoomCoef_sd_IMPREX_On[VOU_ZOOM_COEF_BUTT][VOU_ZOOM_TAP_BUTT];
extern const HI_S32 *g_pOrgZoomCoef_sd_IMPREX_Off[VOU_ZOOM_COEF_BUTT][VOU_ZOOM_TAP_BUTT];
extern const HI_S16 *g_pGfxOrgZoomCoef[VOU_ZOOM_COEF_BUTT][VOU_GFX_ZOOM_TAP_BUTT];
extern const HI_S16 *g_pSDGfxOrgZoomCoef[VOU_ZOOM_COEF_BUTT][VOU_GFX_SD_ZOOM_TAP_BUTT];
extern const HI_S16 *g_pGfxOrgZoomCoef_sharp[VOU_ZOOM_COEF_BUTT][VOU_GFX_ZOOM_TAP_BUTT];


/* ---------------------------------------------------------------------*/
typedef struct
{
    HI_BOOL hfir_en;         /* 0-disable;1-enable;*/
    HI_BOOL alpha_hmed_en;   /* 0-disable;1-enable;*/
    HI_BOOL lum_hmed_en;     /* 0-disable;1-enable;*/
    HI_BOOL chm_hmed_en;     /* 0-disable;1-enable;*/
    HI_BOOL lc_hfir_mode;    /* 0-copy;1-filter;*/
    HI_BOOL alpha_hfir_mode; /* 0-copy;1-filter;*/
    HI_BOOL hfir_order;      /* 0-horizontal scaler before vertical; 1-horizontal scaler after vertical;*/
    HI_S32  hfir_ratio;
    HI_S32  lum_hor_offset;
    HI_S32  chm_hor_offset;

    HI_BOOL vfir_en;         /* 0-disable;1-enable;*/
    HI_BOOL alpha_vmed_en;   /* 0-disable;1-enable;*/
    HI_BOOL lum_vmed_en;     /* 0-disable;1-enable;*/
    HI_BOOL chm_vmed_en;     /* 0-disable;1-enable;*/
    HI_BOOL lc_vfir_mode;    /* 0-copy;1-filter;*/
    HI_BOOL alpha_vfir_mode; /* 0-copy;1-filter;*/
    HI_S32  vfir_tap;        /* 0-4tap; 1-2tap;*/
    HI_S32  vfir_ratio;
    HI_S32  vfir_top_offset; /* offset when output is interlaced and top field.*/
    HI_S32  vfir_btm_offset; /* offset when output is interlaced and bottom field.*/

    HI_U32 coef_addr_h;
    HI_U32 coef_addr_v;

    HI_S32 gfx_read_mode;
}GFX_SCALER_INFO_S;

typedef struct
{
    HI_U32 zme_in_width;
    HI_U32 zme_in_height;
    HI_U32 zme_out_width;
    HI_U32 zme_out_height;
    HI_BOOL zme_input_prog  ;   /* input vide format for scaler:0-interlaced;1-processive */
    HI_BOOL zme_output_prog  ;  /* output vide format for scaler:0-interlaced;1-processive */

    GFX_FIR_COEF_ADDR_S *p_coef_addr;
}GFX_SCALER_CONFIG_S;

/*  SCALER API PARA.*/
typedef struct
{
        HI_BOOL lum_vfir_en   ; /* vertical scaler of lum enable      */
        HI_BOOL lum_hfir_en   ; /* horizontal scaler of lum enable    */
        HI_BOOL chm_vfir_en   ; /* vertical scaler of chroma enable    */
        HI_BOOL chm_hfir_en   ; /* horizontal scaler of chroma enable  */
        HI_BOOL lum_vfir_mode ; /* vertical scaler mode of lum: 0-copy mode; 1-filter mode      */
        HI_BOOL lum_hfir_mode ; /* horizontal scaler mode of lum: 0-copy mode; 1-filter mode    */
        HI_BOOL chm_vfir_mode ; /* vertical scaler mode of chroma: 0-copy mode; 1-filter mode   */
        HI_BOOL chm_hfir_mode ; /* horizontal scaler  modeof chroma: 0-copy mode; 1-filter mode */
        HI_BOOL lum_vmed_en   ; /* median filter enable for lum vertical scaler      */
        HI_BOOL lum_hmed_en   ; /* median filter enable for lum horizontal scaler    */
        HI_BOOL chm_vmed_en   ; /* median filter enable for chroma vertical scaler   */
        HI_BOOL chm_hmed_en   ; /* median filter enable for chroma horizontal scaler */
        HI_BOOL hfir_order    ; /* 0-horizontal filter before vertical filter; 1-horizontal filter after vertical filter */

        int  lum_vfir_tap  ; /* filter tap of lum vertical scaler    */
        int  chm_vfir_tap  ; /* filter tap of chroma vertical scaler */
        int  lum_hfir_ratio; /* horizontal ratio of lum scaler*/
        int  lum_vfir_ratio; /* vertical ratio of lum scaler  */
        int  lum_hor_offset; /* horizontal offset for lum     */
        int  chm_hor_offset; /* horizontal offset for chroma  */
        int  lum_ver_offset; /* vertical offset for lum       */
        int  chm_ver_offset; /* vertical offset for chroma    */
#if 0
        int * lum_hfir_coef ; /* coefficients for lum horizontal filter  */
        int * lum_vfir_coef ; /* coefficients for lum vertical filter   */
        int * chm_hfir_coef ; /* coefficients for chroma horizontal filter */
        int * chm_vfir_coef ; /* coefficients for chroma vertical filter  */
#endif

	HI_U32 coef_addr_h;
	HI_U32 coef_addr_v;
    /*  ---------------------------------------------
      *  new added Scaler registers in X6
      *  --------------------------------------------- */
    HI_BOOL non_lnr_en;  /*non-linear scaler enable*/
    HI_U8   zme_in_fmt;  /*input video format for scaler: 0-422; 1-420; 2-444*/
    HI_U8   zme_out_fmt; /*input video format for scaler: 0-422; 1-420; 2-444*/
}SCALER_INFO;


typedef enum tagOPTM_ALG_FLT_TAP
{
	TAP8 = 0,  /* 8tap */
	TAP6,      /*  6tap */
	TAP4,      /*   4tap */
	TAP2       /*   2tap */
}OPTM_ALG_FLT_TAP;

typedef struct
{
    WND_INFO     ALG_WND_INFO;
    SCALER_INFO  ALG_SCALER_INFO;
}OPTM_ALG_WND_ZME_INFO;


/* SCALER_INFO GetScalerInfo(WND_SCALER_CONFIG * reg, WND_INFO * info); */
//SCALER_INFO GetScalerInfo(WND_SCALER_CONFIG * reg, WND_INFO * info, OPTM_ALG_FLT_TAP lum_vfir_tap, OPTM_ALG_FLT_TAP chm_vfir_tap, HI_S32 flag);
HI_VOID OPTM_ALG_GetGfxScalerInfo(GFX_SCALER_CONFIG_S *pCfg, GFX_SCALER_INFO_S *pscaler_info, HI_S32 flag);



/* WND_INFO GetWndInfo(WND_SCALER_CONFIG *reg); */
OPTM_ALG_WND_ZME_INFO GetWndZmeInfo_HL8C4_VL6C4(WND_SCALER_CONFIG * reg );
OPTM_ALG_WND_ZME_INFO GetWndZmeInfo_HL8C4_VL4C4(WND_SCALER_CONFIG * reg);
OPTM_ALG_WND_ZME_INFO GetWndZmeInfo_HL8C4_VL4C4OR2(WND_SCALER_CONFIG * reg);



/* frame rate switch API */
/* For X5_HD-----2009,09,22 */
/* --------------------- definitions of structs and enumerators ------------------------- */
typedef enum
{
	INTERLACED,  /* interlaced */
	PROGRESSIVE  /* progressive */
}IP_INFO;

typedef enum
{
	FR24,   /* 24 frame/sec */
	FR25,   /* 25 frame/sec or 50 field/sec */
	FR30,   /* 30 frame/sec or 60 field/sec  */
	FR50,   /* 50 frame/sec */
	FR60    /* 60 frame/sec */
}FRAME_RATE;

typedef enum
{
	I50,  /* 50 field/sec */
	I60,  /* 60 field/sec */
	P24,  /* 24 frame/sec */
	P25,  /* 25 frame/sec */
	P30,  /* 30 frame/sec */
	P50,  /* 50 frame/sec */
	P60   /* 60 frame/sec */
}FORMAT_TYPE;

typedef struct
{
	IP_INFO        input_ip_info;
	IP_INFO        output_ip_info;
	FRAME_RATE     input_frame_rate;
	FRAME_RATE     output_frame_rate;
}FRC_CONFIG;

typedef struct
{
	int frc_flag; /* 0-common; 1-repeat once; 2-drop once; 3-drop twice */
}FRC_MODE;

typedef struct
{
	FORMAT_TYPE input_format;
	FORMAT_TYPE output_format;
}FORMAT_INFO;

FRC_MODE IniFlag(void);
FORMAT_INFO GetFrameRateInfo(FRC_CONFIG * reg, HI_BOOL die_en);
FRC_MODE FrameRateConversion(FORMAT_INFO * info, long input_fnum, long output_fnum);

FORMAT_TYPE OPTM_ALG_GetFormatType(HI_U32 FrameRate);

HI_VOID OPTM_ALG_InitAcmInfo(HAL_DISP_ACMINFO_S * pacm_info, HI_BOOL bTypeValue);


/* CSC coefficients */
typedef struct tagOPTM_ALG_CSC_TABLE
{
    HI_S32 C11;
    HI_S32 C12;
    HI_S32 C13;

    HI_S32 C21;
    HI_S32 C22;
    HI_S32 C23;

    HI_S32 C31;
    HI_S32 C32;
    HI_S32 C33;
} OPTM_ALG_CSC_TABLE;

/* coefficients for chroma space transformation */
HI_VOID OPTM_ALG_CalCSCCoefTprtRGBtoYCbCr(HI_U32 Contrast, HI_U32 Saturation, HI_U32 Hue,
                                          HI_U32 Kr, HI_U32 Kg, HI_U32 Kb,
                                          OPTM_ALG_CSC_TABLE *pCSCTable, OPTM_ALG_CSC_TABLE*pDstCSCTable);
HI_VOID OPTM_ALG_CalCSCCoefTprtYCbCrtoRGB(HI_U32 Contrast, HI_U32 Saturation, HI_U32 Hue,
                                          HI_U32 Kr, HI_U32 Kg, HI_U32 Kb,
                                          OPTM_ALG_CSC_TABLE *pCSCTable, OPTM_ALG_CSC_TABLE*pDstCSCTable);
HI_VOID OPTM_ALG_CalCSCCoefTprtYCbCrtoYCbCr(HI_U32 Contrast, HI_U32 Saturation, HI_U32 Hue,
                                           HI_U32 Kr, HI_U32 Kg, HI_U32 Kb,
                                           OPTM_ALG_CSC_TABLE*pCSCTable, OPTM_ALG_CSC_TABLE *pDstCSCTable);
HI_VOID OPTM_ALG_CalCSCCoefTprtRGBtoRGB_8bit(HI_U32 Contrast, HI_U32 Saturation, HI_U32 Hue,
                                        HI_U32 Kr, HI_U32 Kg, HI_U32 Kb,
                                        OPTM_ALG_CSC_TABLE *pCSCTable, OPTM_ALG_CSC_TABLE*pDstCSCTable);
HI_VOID OPTM_ALG_CalCSCCoefTprtRGBtoRGB(HI_U32 Contrast, HI_U32 Saturation, HI_U32 Hue,
                                        HI_U32 Kr, HI_U32 Kg, HI_U32 Kb,
                                        OPTM_ALG_CSC_TABLE *pCSCTable, OPTM_ALG_CSC_TABLE*pDstCSCTable);


/*****************************************************************
 *              New frame rate convert algorithm                 *
 *****************************************************************/
#define OPTM_ALG_FRC_MIN_DETECT_TIME 6

/* basic display rate for multiple-rate display, q8 fixed point */
#define OPTM_ALG_FRC_BASE_PLAY_RATIO  256

/* maximum display rate:16 */
#define OPTM_ALG_FRC_MAX_PLAY_RATIO   OPTM_ALG_FRC_BASE_PLAY_RATIO * 256

/* minimum display rate: 1/16 */
#define OPTM_ALG_FRC_MIN_PLAY_RATIO   1


typedef enum tagOPTM_ALG_FRC_FMT_E
{
    OPTM_ALG_FRC_FMT_UNKNOWN,
    OPTM_ALG_FRC_FMT_I25,
    OPTM_ALG_FRC_FMT_P15,
	OPTM_ALG_FRC_FMT_I50,  /* 50 field/sec */
	OPTM_ALG_FRC_FMT_I60,  /* 60 field/sec */
	OPTM_ALG_FRC_FMT_P24,  /* 24 frame/sec */
	OPTM_ALG_FRC_FMT_P25,  /* 25 frame/sec */
	OPTM_ALG_FRC_FMT_P30,  /* 30 frame/sec */
	OPTM_ALG_FRC_FMT_P50,  /* 50 frame/sec */
	OPTM_ALG_FRC_FMT_P60   /* 60 frame/sec */
}OPTM_ALG_FRC_FMT_E;

typedef struct tagOPTM_ALG_FRC_S
{
	OPTM_ALG_FRC_FMT_E enInFmt;    /* input format */
	OPTM_ALG_FRC_FMT_E enOutFmt;   /* output format */

	/* frame information */
	HI_S32  s32ImageType;  /*  0, one field; 1, one frame or two filed */
	HI_S32  s32InPro;      /*  1, progressive; 0, interlace; -1, unknown */
	HI_U32  u32InRate;     /* unit: frame */

	HI_S32  s32InDetPro;   /* pull down detect result */
	HI_S32  s32InDetCount; /* detect time */

	/* frame information */
	HI_U32  u32OutRate;  /* fresh rate */
	HI_U32  u32PlayRate;  /* play rate, add by b00182026 */

	HI_U32  u32CurID;     /* current insert or drop position in a FRC cycle, add by b00182026*/

    HI_BOOL bOpened;       /* open or not*/

    HI_U32  u32WorkCase;
	HI_U32  u32InputCount; /* input counter */
}OPTM_ALG_FRC_S;



/* initialization, de-initialization*/
HI_S32 OPTM_ALG_Init(OPTM_ALG_FRC_S *hFrc);
HI_S32 OPTM_ALG_DeInit(OPTM_ALG_FRC_S *hFrc);
HI_S32 OPTM_ALG_Reset(OPTM_ALG_FRC_S *hFrc);

/* set detected results for each row */
HI_S32 OPTM_ALG_SetDecPro(OPTM_ALG_FRC_S *hFrc, HI_S32 s32InDecPro);

/* change frame rate, return value:
   0, no operation;
   1,2,... repeate current frame;
   -1, discard current Frame
*/
/* HI_S32 OPTM_ALG_Frc(OPTM_ALG_FRC_S *hFrc, HI_S32 s32InPro, HI_U32 u32InRate, HI_BOOL bDbFeild, HI_U32 u32OutRate); */
HI_S32 OPTM_ALG_Frc(OPTM_ALG_FRC_S *hFrc, HI_S32 s32InPro, HI_U32 u32InRate, HI_U32 u32OutRate);


typedef enum tagOPTM_ALG_FRC_OPRT_E
{
    OPTM_ALG_FRC_OPRT_NONE = 0,
    OPTM_ALG_FRC_OPRT_DRP_T,
    OPTM_ALG_FRC_OPRT_DRP_B,
    OPTM_ALG_FRC_OPRT_DRP_T_B,
    OPTM_ALG_FRC_OPRT_DRP_FRM,
    OPTM_ALG_FRC_OPRT_RPT_T_ONCE,
    OPTM_ALG_FRC_OPRT_RPT_B_ONCE,
    OPTM_ALG_FRC_OPRT_RPT_T_ONCE_B_ONCE,
    OPTM_ALG_FRC_OPRT_RPT_T_ONCE_B_TWICE,
    OPTM_ALG_FRC_OPRT_RPT_T_TWICE_B_ONCE,
    OPTM_ALG_FRC_OPRT_RPT_FRM_ONCE,
    OPTM_ALG_FRC_OPRT_RPT_FRM_TWICE,
    OPTM_ALG_FRC_OPRT_RPT_FRM_THRICE,
    OPTM_ALG_FRC_OPRT_BUTT
}OPTM_ALG_FRC_OPRT_E;

typedef struct tagOPTM_ALG_FRC_CTRL_S
{
	/* frame rate conversion state for progressive frame : <0-drop; ==0-natrual play; >0-repeat time */
	HI_S32 s32FrmState;
	/* frame rate conversion state for interlaced source-top field: <0-drop; ==0-natrual play; >0-repeat time */
	HI_S32 s32TopState;
	/* frame rate conversion state for interlaced source-bottom field: <0-drop; ==0-natrual play; >0-repeat time */
	HI_S32 s32BtmState;
}OPTM_ALG_FRC_CTRL_S;

typedef struct tagOPTM_ALG_FRC_CFG_S
{
	/* frame information */
	HI_S32  s32ImageType;  /*  0, one field; 1, one frame or two filed */
	HI_S32  s32InPro;      /*  1, progressive; 0, interlace; -1, unknown */
	HI_S32  s32BtMode;     /*  0, TB; 1, BT */
	HI_U32  u32InRate;     /* unit: frame */

	/* display information */
	HI_U32  u32OutRate;   /* fresh rate*/
	HI_U32  u32PlayRate;  /* play rate */
}OPTM_ALG_FRC_CFG_S;

typedef struct hiLTICTI_S
{
	/*LTI*/
	HI_BOOL bEnLTI;

	HI_S8	s8LTIHPTmp[5];

//	const HI_S32	*ps32LTIHorzCoef;/* Lum high_freq component horizontal scale coefficients*/
//	const HI_S32	*ps32LTIVertCoef;/* Lum high_freq component vertical scale coefficients*/

	HI_S16  s16LTICompsatRatio;
	HI_U16  u16LTICoringThrsh;
	HI_U16  u16LTIUnderSwingThrsh;	 /*10bit*/
	HI_U16  u16LTIOverSwingThrsh;    /*10bit*/
	HI_U8	u8LTIMixingRatio;

	HI_U16	u16LTIHFreqThrsh[2];
	HI_U8	u8LTICompsatMuti[3];

	/*CTI*/
	HI_BOOL bEnCTI;

	HI_S8	s8CTIHPTmp[3];

//	const HI_S32	*ps32CTIHorzCoef;/* Chrom high_freq component horizontal scale coefficients*/
//	const HI_S32	*ps32CTIVertCoef;/* Chrom high_freq component vertical scale coefficients*/

	HI_S16  s16CTICompsatRatio;
	HI_U16  u16CTICoringThrsh;
	HI_U16  u16CTIUnderSwingThrsh;  /*10bit*/
	HI_U16  u16CTIOverSwingThrsh;   /*10bit*/
	HI_U8	u8CTIMixingRatio;

	HI_S16	s16LTICTIStrengthRatio;		//strength ratio of LTI for SD source, the value shoulde be 0 to 30
    HI_S16  s16LTICTIStrengthRatio_hd;  //strength ratio of LTI for HD source, the value shoulde be 0 to 30

} LTICTI_S;

HI_VOID OPTM_ALG_FrcFldProcExtern(OPTM_ALG_FRC_S *hFrc, OPTM_ALG_FRC_CFG_S *pstFrcCfg, OPTM_ALG_FRC_CTRL_S *pstFrcCtrl);
OPTM_ALG_FRC_OPRT_E OPTM_ALG_FrcFrmProcExtern(OPTM_ALG_FRC_S *hFrc, OPTM_ALG_FRC_CFG_S *pstFrcCfg);
HI_VOID Video_InitLTICTIInfo(LTICTI_S *pstLTICTI);
HI_VOID Video_GetLTICTIInfo(WND_SCALER_CONFIG *pstCfg, LTICTI_S *pstLTICTI, HI_BOOL RwzbFlag);
HI_VOID Gfx_InitLTICTIInfo(LTICTI_S *pstLTICTI);
HI_VOID Gfx_GetLTICTIInfo(GFX_SCALER_CONFIG_S *pstCfg, LTICTI_S	*pstLTICTI);

#ifdef __cplusplus
 #if __cplusplus
}
 #endif
#endif /* __cplusplus */

#endif /* __OPTM_ALG_H__ */

