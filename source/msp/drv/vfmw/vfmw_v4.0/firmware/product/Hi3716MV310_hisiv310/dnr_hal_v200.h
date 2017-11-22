
#ifndef __DNR_HAL_V200_HEADER__
#define __DNR_HAL_V200_HEADER__

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
} DNR_V200_START;
typedef struct
{
    //USIGN mbamt_to_dec: 16;
    USIGN reserved:			16;
    USIGN vdh_rst_busy: 	1;
    USIGN reserved1: 		15;
} DNR_V200_BASIC_CFG0;

typedef struct
{
    USIGN video_standard: 		4;
    USIGN pic_structure: 		2;
    USIGN chroma_format: 		1;
    //USIGN Use_pic_qp_en: 		1;
    USIGN reserved0:			1;
    USIGN on_line_flag: 		1;
    //USIGN Frm_fld_save_mode: 	1;
    USIGN reserved1:			1;
    USIGN Vc1_profile: 			2;
    USIGN reserved2: 			4;
    USIGN pic_height_in_mb: 	8;
    USIGN pic_width_in_mb: 		8;
} DNR_V200_BASIC_CFG1;

typedef struct
{
    USIGN pic_width_in_mb: 10;
    USIGN reserved: 6;
    USIGN pic_height_in_mb: 10;
    USIGN reserved1: 6;
} DNR_V200_BASIC_CFG2;

typedef struct
{
    //USIGN dc_en: 1;
    USIGN reserved0:				1;
    USIGN db_en: 					1;
    USIGN dr_en: 					1;
    USIGN vcmp_en: 					1;
    USIGN mirror_en:               1;
    USIGN reserved2:				1;
    USIGN Memory_clock_gating_en: 	1;
    USIGN Module_clock_gating_en: 	1;
    USIGN db_use_weak_flt: 			1;
    USIGN db_vert_flt_en: 			1;
    USIGN db_hor_flt_en: 			1;
    USIGN Range_mapy: 				3;
    USIGN Range_mapuv: 				3;
    USIGN Range_mapy_flag: 			1;
    USIGN Range_mapuv_flag: 		1;
    USIGN Rangedfrm: 				1;
    USIGN range_en_offline:			1;
    USIGN reserved: 				3;
    USIGN qp_adjusted_dr: 			8;
} DNR_V200_BASIC_CFG;

typedef struct
{
    //USIGN thr_dc_max_flt_diff: 8;
    USIGN reserved:			8;
    USIGN thr_dr_smooth: 	8;
    USIGN thr_db_smooth: 	8;
    USIGN detail_qp_thr: 	8;
} DNR_V200_DNR_THR;

typedef struct
{
    USIGN Db_beta_scale: 	8;
    USIGN Db_alpha_scale: 	8;
    USIGN Thr_leastblkdiff: 16;
    //USIGN reserved: 8;
} DNR_V200_DB_THR;

typedef struct
{
    USIGN ystaddr_1d:	32;
} DNR_V200_YSTADDR_1D;

typedef struct
{
    USIGN ystride_1d: 	32;
} DNR_V200_YSTRIDE_1D;

typedef struct
{
    USIGN uvoffset_1d:	32;
} DNR_V200_UVOFFSET_1D;

typedef struct
{
    USIGN ystride_2d:	16;
    USIGN reserved:		16;
} DNR_V200_YSTRIDE_2D;

typedef struct
{
    USIGN int_dnr_raw:	1;
    USIGN reserved:		31;
} DNR_V200_INT_RAW;

typedef struct
{
    USIGN int_dnr_state: 1;
    USIGN reserved:		31;
} DNR_V200_INT_STATE;

typedef struct
{
    USIGN int_dnr_clr: 	1;
    USIGN reserved: 	31;
} DNR_V200_INT_CLR;

typedef struct
{
    USIGN int_dnr_mask: 1;
    USIGN reserved: 	31;
} DNR_V200_INT_MASK;

typedef struct
{
    USIGN dnr_offline_th: 	16;
    USIGN reserved: 		16;
} DNR_V200_OFFLINE_TH;

typedef struct
{
    USIGN QP_Y: 		8;
    USIGN QP_U: 		8;
    USIGN QP_V: 		8;
    USIGN reserved: 	8;
} DNR_V200_USE_PIC_QP;

typedef struct
{
    USIGN Dx_beta_scale: 	8;//0x8
    USIGN Dx_alpha_scale: 	8;//0x4
    USIGN reserved: 		16;
} DNR_V200_DX_SCALE;

typedef struct
{
    USIGN emar_id: 			4;
    USIGN reserved: 		4;
    USIGN wr_outstanding: 	4;
    USIGN rd_outstanding: 	4;
    USIGN ram_type: 		2;
    USIGN reserved1:		14;
} DNR_V200_EMAR_ID;

typedef struct
{
    USIGN max_cnt_dblk_rd: 	5;
    USIGN max_cnt_dblk_wr: 	5;
    USIGN max_cnt_prc: 		5;
    USIGN max_cnt_other: 	5;
    USIGN reserved: 		12;
} DNR_V200_RPT_CNT;

typedef struct
{
    USIGN sed_top_read_to: 	10;
    USIGN reserved: 		22;
} DNR_V200_MAC_DATA_TO;

typedef struct
{
    USIGN prc_read_to: 	10;
    USIGN reserved: 	22;
} DNR_V200_MAC_INFO_TO;

typedef struct
{
    USIGN dr_read_to: 		10;
    USIGN dr_top_write_to: 	10;
    USIGN reserved: 		12;
} DNR_V200_DR_TO;

typedef struct
{
    USIGN do_top_write_to: 10;
    USIGN reserved: 22;
} DNR_V200_DO_TO;

typedef struct
{
    USIGN tf_read_to: 10;
    USIGN reserved: 22;
} DNR_V200_SM_TO;

typedef struct
{
    USIGN DnrThrInterlaceCnt 	: 4;
    USIGN DnrThrIntlColCnt      : 4;
    USIGN DnrIntlEn             : 1;
    USIGN reserved              : 7;
    USIGN DbThrMaxDiffHor       : 8;
    USIGN DbThrMaxDiffVert      : 8;
} DNR_V200_THR_1;

typedef struct
{
    USIGN DrThrPeak8x8Zone      : 8;
    USIGN DrThrFlat3x3Zone      : 5;
    USIGN reserved              : 3;
    USIGN DrThrEdgeGrad         : 8;
    USIGN DrThrMaxSimilarPixDiff: 5;
    USIGN reserved1             : 3;
} DNR_V200_THR_2;

typedef struct
{
    USIGN vcmp_wm_start_line	    : 16;
    USIGN vcmp_wm_end_line		: 16;
} DNR_V200_VCMP_CFG0;

typedef struct
{
    USIGN dnr_dec_cycleperpic	: 32;
} DNR_V200_CYCLEPERPIC;

typedef struct
{
    USIGN dnr_rd_bdwidth_perpic	: 32;
} DNR_V200_RD_BDWIDTH_PERPIC;

typedef struct
{
    USIGN dnr_wr_bdwidth_perpic	: 32;
} DNR_V200_WR_BDWIDTH_PERPIC;

typedef struct
{
    USIGN dnr_rd_req_perpic	: 32;
} DNR_V200_RD_REQ_PERPIC;

typedef struct
{
    USIGN dnr_wr_req_perpic	: 32;
} DNR_V200_WR_REQ_PERPIC;

typedef struct
{
    USIGN dnr_mbinfo_staddr:               32;
} DNR_V200_MBINFO_STADDR;


typedef struct
{
    USIGN dnr_version_id :   32;
} DNR_V200_VERSION_ID;

typedef struct
{
    USIGN test_start	: 1;
    USIGN reserved		: 31;
} DNR_V200_AXI_TEST_ST;

typedef struct
{
    USIGN axi_test_mode	: 1;
    USIGN reserved		: 31;
} DNR_V200_AXI_TEST_MODE;

typedef struct
{
    USIGN axi_test_addr	: 32;
} DNR_V200_AXI_TEST_ADDR;

typedef struct
{
    USIGN axi_len_minus1	: 4;
    USIGN axi_rw			: 1;
    USIGN reserved			: 3;
    USIGN axi_cmd_num		: 8;
    USIGN axi_cmd_stride	: 16;
} DNR_V200_AXI_TEST_CMD;

typedef struct
{
    USIGN axi_loop_num		: 16;
    USIGN axi_loop_int		: 16;
} DNR_V200_AXI_TEST_LOOP;

typedef struct
{
    USIGN axi_test_sta	: 1;
    USIGN reserved		: 31;
} DNR_V200_AXI_TEST_STA;

typedef struct
{

    //=================================
    DNR_V200_START *dnr_start;
    DNR_V200_BASIC_CFG0 *dnr_basic_cfg0;
    DNR_V200_BASIC_CFG1 *dnr_basic_cfg1;
    DNR_V200_BASIC_CFG2 *dnr_basic_cfg2;
    DNR_V200_BASIC_CFG *dnr_basic_cfg;
    DNR_V200_DNR_THR *dnr_dnr_thr;
    DNR_V200_DB_THR *dnr_db_thr;
    DNR_V200_YSTADDR_1D *dnr_ystaddr_1d;
    DNR_V200_UVOFFSET_1D *dnr_uvoffset_1d;
    UINT32 *dnr_ystaddr_2d;
    UINT32 *dnr_dblk_ystaddr_1d;
    UINT32 *dnr_dblk_uvoffset_1d;
    UINT32 *dnr_ystaddr_1d_down_fld;
    UINT32 *dnr_uvoffset_1d_down_fld;
    DNR_V200_YSTRIDE_1D *dnr_ystride_1d;
    DNR_V200_YSTRIDE_2D *dnr_ystride_2d;
    DNR_V200_INT_CLR *dnr_int_clr;
    DNR_V200_INT_MASK *dnr_int_mask;
    DNR_V200_OFFLINE_TH *dnr_offline_th;
    DNR_V200_EMAR_ID *dnr_emar_id;
    DNR_V200_RPT_CNT *dnr_rpt_cnt;
    DNR_V200_MAC_DATA_TO *dnr_sed_to;
    DNR_V200_MAC_INFO_TO *dnr_prc_to;
    DNR_V200_DR_TO *dnr_dr_to;
    DNR_V200_DO_TO *dnr_do_to;
    DNR_V200_SM_TO *dnr_tf_to;
    DNR_V200_THR_1 *dnr_thr_1;
    DNR_V200_THR_2 *dnr_thr_2;
    DNR_V200_VCMP_CFG0 *dnr_vcmp_cfg0;
    DNR_V200_USE_PIC_QP *dnr_use_pic_qp;
    DNR_V200_DX_SCALE *dnr_dx_scale;
    DNR_V200_VERSION_ID *dnr_version_id;
    //===================================

} DNROFF_V200_REGINF_S;

/*======================================================================*/
/*  全局变量                                                            */
/*======================================================================*/

/*======================================================================*/
/*  函数申明                                                            */
/*======================================================================*/
VOID DNRHAL_V200_Init(VOID);
VOID DNRHAL_V200_CfgReg(DNR_CFG_S *pDnrOffCfg);
VOID DNRHAL_V200_CfgDnrReg(VOID);
VOID DNRHAL_V200_MakeDnrReg(DNR_CFG_S *pDnrOffCfg);
VOID DNRHAL_V200_PrintReg(DNROFF_V200_REGINF_S *pRegInf);
VOID DNRHAL_V200_Reset(VOID);
VOID DNRHAL_V200_Start(VOID);
VOID DNRHAL_V200_ClearIntState(VOID);
VOID DNRHAL_V200_MaskInt(VOID);
VOID DNRHAL_V200_EnableInt(VOID);
VOID DNRHAL_V200_PrintDnrPhyRegDat(VOID);

#ifdef __cplusplus
}
#endif
#endif
