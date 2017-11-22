#ifndef __VDP_RWZB_H_
#define __VDP_RWZB_H_
//#include "drv_disp_com.h"

#include "optm_basic.h"
//#include "optm_define.h"
#include "optm_reg.h"

#ifdef __cplusplus
 #if __cplusplus
extern "C" {
 #endif
#endif /* __cplusplus */


#define VDAC_DEBUG_CVBS_GC 0x3e
#define OPTM_VO_FME_PAT_CVBS_CCITT033	1ul
#define OPTM_VO_FME_PAT_CVBS_CCITT18	2ul
#define OPTM_VO_FME_PAT_576I        	3ul
#define OPTM_VO_FME_PAT_480I        	4ul
#define OPTM_VO_FME_PAT_CVBS_CBAR576_75 8ul
#define OPTM_VO_FME_PAT_CVBS_CCIR3311   9ul
#define OPTM_VO_FME_PAT_CVBS_MATRIX625  10ul
#define OPTM_VO_FME_PAT_576I_CBAR_75_B	11ul
#define OPTM_VO_FME_PAT_576I_BOWTIE 18ul
#define OPTM_VO_FME_PAT_480I_CODEC43 22ul
#define OPTM_VO_FME_PAT_480I_MATRX525 23ul
#define OPTM_VO_FME_PAT_CVBS_CCITT033_NTSC 20ul
#define OPTM_VO_FME_PAT_CVBS_CBAR704_576 24ul
#define OPTM_VO_FME_PAT_CVBS_480I_MT 25ul
#define OPTM_VO_FME_PAT_CVBS_576I_MT 26ul
#define OPTM_VO_FME_PAT_CVBS_480P_MT 27ul
#define OPTM_VO_FME_PAT_CVBS_50_FLAT_FIELD  31ul
#define OPTM_VO_FME_PAT_CVBS_75_COLORBARS   32ul
#define OPTM_VO_FME_PAT_CVBS_NTC7_COMBINATION   33ul
#define OPTM_VO_FME_PAT_CVBS_NTC7_COMPOSITE   34ul
#define OPTM_VO_FME_PAT_CVBS_DEFAULT OPTM_VO_FME_PAT_CVBS_CCITT033


#define FIDELITY_480I_YPBPR   OPTM_VO_FME_PAT_480I
#define FIDELITY_576I_YPBPR   OPTM_VO_FME_PAT_576I

#define FIDELITY_033   OPTM_VO_FME_PAT_CVBS_CCITT033
#define FIDELITY_MATRIX525   OPTM_VO_FME_PAT_480I_MATRX525

#define FIDELITY_SKN   OPTM_VO_FME_PAT_CVBS_CCITT033_NTSC
#define FIDELITY_ZDN   OPTM_VO_FME_PAT_480I_CODEC43
#define FIDELITY_MOTO_CVBS   OPTM_VO_FME_PAT_CVBS_480I_MT



#define DISP_HDATE_SRC_COEF_INDEX_DEFAULT 0
#define DISP_HDATE_SRC_COEF_INDEX_480P  1
#define DISP_HDATE_SRC_COEF_INDEX_576P  1
#define DISP_HDATE_SRC_COEF_INDEX_720P  2
#define DISP_HDATE_SRC_COEF_INDEX_1080I 2
#define DISP_HDATE_SRC_COEF_INDEX_1080P 3


#define DISP_SDATE_SRC_COEF_INDEX_PAL_NTSC   0
#define DISP_SDATE_SRC_COEF_INDEX_480I_576I 1

#ifdef CHIP_TYPE_hi3716mv330
#ifdef HI_DISP_YPBPR_VIDEO_BUFF
  //YPbPr's circuit type is video buffer
  #define OPTM_M_DAC0_DEFAULT_GC (0x0)
  #define OPTM_M_DAC1_DEFAULT_GC (0x0)
  #define OPTM_M_DAC2_DEFAULT_GC (0x0)
  #define OPTM_M_DAC0_SDFORMAT_GC (0xa)
  #define OPTM_M_DAC1_SDFORMAT_GC (0xb)
  #define OPTM_M_DAC2_SDFORMAT_GC (0xa)
#else
  //YPbPr's circuit type is LC
  #define OPTM_M_DAC0_DEFAULT_GC (0x28)
  #define OPTM_M_DAC1_DEFAULT_GC (0x28)
  #define OPTM_M_DAC2_DEFAULT_GC (0x28)
  #define OPTM_M_DAC0_SDFORMAT_GC (0x3d)
  #define OPTM_M_DAC1_SDFORMAT_GC (0x3d)
  #define OPTM_M_DAC2_SDFORMAT_GC (0x3d)
#endif

#ifndef HI_DISP_CVBS_VIDEO_BUFF
  //CVBS's circuit type is LC
  #define OPTM_M_DAC3_DEFAULT_GC (0x3d)
#else
  //CVBS's circuit type is video buffer
  #define OPTM_M_DAC3_DEFAULT_GC (0xb)
#endif

#define DISP_SDATE_CGAIN (1)

#else
#ifdef HI_DISP_YPBPR_VIDEO_BUFF
  //YPbPr's circuit type is video buffer
  #define OPTM_M_DAC0_DEFAULT_GC (0x3b)
  #define OPTM_M_DAC1_DEFAULT_GC (0x3a)
  #define OPTM_M_DAC2_DEFAULT_GC (0x3b)
  #define OPTM_M_DAC0_SDFORMAT_GC (0x3b)
  #define OPTM_M_DAC1_SDFORMAT_GC (0x3a)
  #define OPTM_M_DAC2_SDFORMAT_GC (0x3b)
#else
  //YPbPr's circuit type is LC
  #define OPTM_M_DAC0_DEFAULT_GC (0x3e)
  #define OPTM_M_DAC1_DEFAULT_GC (0x3d)
  #define OPTM_M_DAC2_DEFAULT_GC (0x3c)
  #define OPTM_M_DAC0_SDFORMAT_GC (0x3e)
  #define OPTM_M_DAC1_SDFORMAT_GC (0x3d)
  #define OPTM_M_DAC2_SDFORMAT_GC (0x3c)
#endif

#ifndef HI_DISP_CVBS_VIDEO_BUFF
  //CVBS's circuit type is LC
  #define OPTM_M_DAC3_DEFAULT_GC (0x3e)
#else
  //CVBS's circuit type is video buffer
  #define OPTM_M_DAC3_DEFAULT_GC (0x3d)
#endif

#define DISP_SDATE_CGAIN (0)
#endif

HI_VOID  VDP_Set_HDateSrc13Coef( HI_U32 u32Fmt);

HI_VOID VDP_Set_SDateSrcCoef(HI_U32 u32Fmt);

HI_VOID   VDP_Set_SDateRwzbReviseSrcCoef( HI_U32 u32RwzbType);

#ifdef __cplusplus
 #if __cplusplus
}
 #endif
#endif /* __cplusplus */

#endif  /* __OPTM_DISP_H__ */


