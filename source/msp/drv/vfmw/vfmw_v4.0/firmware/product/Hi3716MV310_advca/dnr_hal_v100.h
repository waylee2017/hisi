
#ifndef __DNR_HAL_V100_HEADER__
#define __DNR_HAL_V100_HEADER__

#ifdef __cplusplus
extern "C" {
#endif

#include "basedef.h"
#include "dnr_hal.h"

/*come form vdm_hal.h*/
typedef struct
{
    USIGN dnr_start: 1;
    USIGN reserved: 31;
} DNR_V100_START;
typedef struct
{
    USIGN mbamt_to_dec: 16;
    USIGN reserved: 16;
} DNR_V100_BASIC_CFG0;

typedef struct
{
    USIGN video_standard: 4;
    USIGN pic_structure: 2;
    USIGN chroma_format: 1;
    USIGN Use_pic_qp_en: 1;
    USIGN on_line_flag: 1;
    USIGN Frm_fld_save_mode: 1;
    USIGN Vc1_profile: 2;
    USIGN reserved1: 4;
    USIGN pic_height_in_mb: 8;
    USIGN pic_width_in_mb: 8;
} DNR_V100_BASIC_CFG1;

typedef struct
{
    USIGN dc_en: 1;
    USIGN db_en: 1;
    USIGN dr_en: 1;
    USIGN wr_2d_mod: 1;
    USIGN wr_2d_en: 1;
    USIGN sm_en: 1;
    USIGN Memory_clock_gating_en: 1;
    USIGN Module_clock_gating_en: 1;
    USIGN db_use_weak_flt: 1;
    USIGN db_vert_flt_en: 1;
    USIGN db_hor_flt_en: 1;
    USIGN Range_mapy: 3;
    USIGN Range_mapuv: 3;
    USIGN Range_mapy_flag: 1;
    USIGN Range_mapuv_flag: 1;
    USIGN Rangedfrm: 1;
    USIGN range_en_offline: 1;
    USIGN reserved: 3;
    USIGN qp_adjusted_dr: 8;
} DNR_V100_BASIC_CFG;

typedef struct
{
    USIGN thr_dc_max_flt_diff: 8;
    USIGN thr_dr_smooth: 8;
    USIGN thr_db_smooth: 8;
    USIGN detail_qp_thr: 4;
    USIGN reserved: 4;
} DNR_V100_DNR_THR;

typedef struct
{
    USIGN Db_beta_scale: 8;
    USIGN Db_alpha_scale: 8;
    USIGN Thr_leastblkdiff: 8;
    USIGN reserved: 8;
} DNR_V100_DB_THR;

typedef struct
{
    USIGN ystride_1d: 32;
} DNR_V100_YSTRIDE_1D;

typedef struct
{
    //USIGN ddr_stride: 16;
    //USIGN reserved: 16;
    USIGN ddr_stride: 10;
    USIGN reserved: 22;
} DNR_V100_DDR_STRIDE;
typedef struct
{
    USIGN int_dnr_clr: 1;
    USIGN reserved: 31;
} DNR_V100_INT_CLR;

typedef struct
{
    USIGN int_dnr_mask: 1;
    USIGN reserved: 31;
} DNR_V100_INT_MASK;

typedef struct
{
    USIGN dnr_offline_th: 16;
    USIGN reserved: 16;
} DNR_V100_OFFLINE_TH;

typedef struct
{
    USIGN ystride_1d: 32;
    //USIGN reserved: 16;
} DNR_V100_DBLK_YSTRIDE_1D;

typedef struct
{
    USIGN emar_id: 4;
    USIGN reserved: 4;
    USIGN wr_outstanding: 4;
    USIGN rd_outstanding: 4;
    USIGN ram_type: 2;
    USIGN reserved1: 14;
} DNR_V100_EMAR_ID;

typedef struct
{
    USIGN max_cnt_dblk_rd: 5;
    USIGN max_cnt_dblk_wr: 5;
    USIGN max_cnt_prc: 5;
    USIGN max_cnt_other: 5;
    USIGN reserved: 12;
} DNR_V100_RPT_CNT;

typedef struct
{
    USIGN sed_top_read_to: 10;
    USIGN reserved: 22;
} DNR_V100_SED_TO;

typedef struct
{
    USIGN prc_read_to: 10;
    USIGN reserved: 22;
} DNR_V100_PRC_TO;

typedef struct
{
    USIGN dr_read_to: 10;
    USIGN dr_top_write_to: 10;
    USIGN reserved: 12;
} DNR_V100_DR_TO;

typedef struct
{
    USIGN do_top_write_to: 10;
    USIGN reserved: 22;
} DNR_V100_DO_TO;

typedef struct
{
    USIGN tf_read_to: 10;
    USIGN reserved: 22;
} DNR_V100_TF_TO;
typedef struct
{
    USIGN ystride_1d_down_fld: 16;
    USIGN reserved: 16;
} DNR_V100_YSTRIDE_1D_DOWN_FLD;

typedef struct
{
    USIGN QP_Y: 8;
    USIGN QP_U: 8;
    USIGN QP_V: 8;
    USIGN reserved: 8;
} DNR_V100_USE_PIC_QP;

typedef struct
{
    USIGN Dx_beta_scale: 8;//0x8
    USIGN Dx_alpha_scale: 8;//0x4
    USIGN reserved: 16;
} DNR_V100_DX_SCALE;

//===================================
typedef struct
{
    USIGN LBXEN: 		1;
    USIGN reserved: 	31;
} DNR_V100_LTX_CFG0;

typedef struct
{
    USIGN Lbx_wm: 		1;
    USIGN Lbx_tb_en: 	1;
    USIGN Lbx_rl_en: 	1;
    USIGN reserved: 	29;
} DNR_V100_LTX_CFG1;

typedef struct
{
    USIGN H_startp: 16;
    USIGN H_endp: 16;
} DNR_V100_LTX_CFG2;

typedef struct
{
    USIGN v_startp: 16;
    USIGN V_endp: 16;
} DNR_V100_LTX_CFG3;

typedef struct
{
    USIGN h_pthr: 8;
    USIGN v_pthr: 8;
    USIGN reserved: 16;
} DNR_V100_LTX_CFG4;

typedef struct
{
    USIGN blthd: 16;
    USIGN reserved: 16;
} DNR_V100_LTX_CFG5;

typedef struct
{
    USIGN bcthd: 16;
    USIGN reserved: 16;
} DNR_V100_LTX_CFG6;

typedef struct
{
    USIGN wlthd: 16;
    USIGN reserved: 16;
} DNR_V100_LTX_CFG7;

typedef struct
{
    USIGN wcthd: 16;
    USIGN reserved: 16;
} DNR_V100_LTX_CFG8;

typedef struct
{
    USIGN Value_clr: 1;
    USIGN his_clr: 1;
    USIGN reserved: 30;
} DNR_V100_LTX_CFG9;

typedef struct
{
    USIGN dnr_mbinfo_staddr:               32;
} DNR_V100_MBINFO_STADDR;

typedef struct
{
    USIGN dnr_version_id :   32;
} DNR_V100_VERSION_ID;

typedef struct
{
    USIGN RegDnrThrInterlaceCnt : 4;
    USIGN DnrThrIntlColCnt      : 4;
    USIGN DnrIntlEn             : 1;
    USIGN reserved              : 7;
    USIGN DbThrMaxDiffHor       : 8;
    USIGN DbThrMaxDiffVert      : 8;
} DNR_V100_THR_1;

typedef struct
{
    USIGN DrThrPeak8x8Zone      : 8;
    USIGN DrThrFlat3x3Zone      : 5;
    USIGN reserved              : 3;
    USIGN DrThrEdgeGrad         : 8;
    USIGN DrThrMaxSimilarPixDiff: 5;
    USIGN reserved1             : 3;
} DNR_V100_THR_2;

typedef struct
{

    //=================================
    DNR_V100_START *dnr_start;
    DNR_V100_BASIC_CFG0 *dnr_basic_cfg0;
    DNR_V100_BASIC_CFG1 *dnr_basic_cfg1;
    DNR_V100_BASIC_CFG *dnr_basic_cfg;
    DNR_V100_DNR_THR *dnr_dnr_thr;
    DNR_V100_DB_THR *dnr_db_thr;
    UINT32 *dnr_ystaddr_1d;
    UINT32 *dnr_uvoffset_1d;
    UINT32 *dnr_ystaddr_2d;
    UINT32 *dnr_info_addr;
    UINT32 *dnr_dblk_ystaddr_1d;
    UINT32 *dnr_dblk_uvoffset_1d;
    UINT32 *dnr_ystaddr_1d_down_fld;
    UINT32 *dnr_uvoffset_1d_down_fld;
    DNR_V100_YSTRIDE_1D *dnr_ystride_1d;
    DNR_V100_DDR_STRIDE *dnr_ddr_stride;
    DNR_V100_INT_CLR *dnr_int_clr;
    DNR_V100_INT_MASK *dnr_int_mask;
    DNR_V100_OFFLINE_TH *dnr_offline_th;
    DNR_V100_DBLK_YSTRIDE_1D *dnr_dblk_ystride_1d;
    DNR_V100_EMAR_ID *dnr_emar_id;
    DNR_V100_RPT_CNT *dnr_rpt_cnt;
    DNR_V100_SED_TO *dnr_sed_to;
    DNR_V100_PRC_TO *dnr_prc_to;
    DNR_V100_DR_TO *dnr_dr_to;
    DNR_V100_DO_TO *dnr_do_to;
    DNR_V100_TF_TO *dnr_tf_to;
    DNR_V100_THR_1 *dnr_thr_1;
    DNR_V100_THR_2 *dnr_thr_2;
    DNR_V100_YSTRIDE_1D_DOWN_FLD *dnr_ystride_1d_down_fld;
    DNR_V100_LTX_CFG0 *dnr_ltx_cfg0;
    DNR_V100_LTX_CFG1 *dnr_ltx_cfg1;
    DNR_V100_LTX_CFG2 *dnr_ltx_cfg2;
    DNR_V100_LTX_CFG3 *dnr_ltx_cfg3;
    DNR_V100_LTX_CFG4 *dnr_ltx_cfg4;
    DNR_V100_LTX_CFG5 *dnr_ltx_cfg5;
    DNR_V100_LTX_CFG6 *dnr_ltx_cfg6;
    DNR_V100_LTX_CFG7 *dnr_ltx_cfg7;
    DNR_V100_LTX_CFG8 *dnr_ltx_cfg8;
    DNR_V100_LTX_CFG9 *dnr_ltx_cfg9;
    DNR_V100_USE_PIC_QP *dnr_use_pic_qp;
    DNR_V100_DX_SCALE *dnr_dx_scale;
    DNR_V100_VERSION_ID *dnr_version_id;
    //===================================

} DNROFF_V100_REGINF_S;

/*======================================================================*/
/*  全局变量                                                            */
/*======================================================================*/

/*======================================================================*/
/*  函数申明                                                            */
/*======================================================================*/
VOID DNRHAL_V100_Init(VOID);

VOID DNRHAL_V100_CfgReg(DNR_CFG_S *pDnrOffCfg);
VOID DNRHAL_V100_CfgDnrReg(VOID);
VOID DNRHAL_V100_MakeDnrReg(DNR_CFG_S *pDnrOffCfg);
VOID DNRHAL_V100_PrintReg(DNROFF_V100_REGINF_S *pRegInf);
VOID DNRHAL_V100_Reset(VOID);
VOID DNRHAL_V100_Start(VOID);
VOID DNRHAL_V100_ClearIntState(VOID);
VOID DNRHAL_V100_MaskInt(VOID);
VOID DNRHAL_V100_EnableInt(VOID);
VOID DNRHAL_V100_PrintDnrPhyRegDat(VOID);

#ifdef __cplusplus
}
#endif
#endif
