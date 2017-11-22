#ifndef __DRV_VDEC_EXT_H__
#define __DRV_VDEC_EXT_H__

#ifdef __cplusplus
#if __cplusplus
extern "C"{
#endif
#endif /* __cplusplus */

#include "hi_type.h"
#include "drv_vdec_ioctl.h"
#include "hi_drv_vdec.h"
#include "hi_mpi_vdec.h"

#define PRE_ALLOC_VDEC_VDH_MMZ (1)

/**Compress Info*/
typedef struct hiVDEC_COMPRESS_INFO_S
{
    HI_U32 u32CompressFlag;
    HI_S32 s32CompFrameHeight;
    HI_S32 s32CompFrameWidth;
    HI_U32 u32HeadOffset;            /**<DNRInfo head offset */
    HI_U32 u32YHeadAddr;             /**<Y head info when compress is used */
    HI_U32 u32CHeadAddr;             /**<C head info when compress is used */
    HI_U32 u32HeadStride;            /**<YC head info stride when compress is used */
}HI_VDEC_COMPRESS_INFO_S;

/**VC1 Range Info*/
typedef struct hiVDEC_VC1_RANGE_INFO_S
{
    HI_U8 u8PicStructure;     /**< 0: frame, 1: top, 2: bottom, 3: mbaff, 4: field pair */
    HI_U8 u8PicQPEnable;
    HI_U8 u8ChromaFormatIdc;  /**< 0: yuv400, 1: yuv420 */
    HI_U8 u8VC1Profile;
    
    HI_S32 s32QPY;
    HI_S32 s32QPU;
    HI_S32 s32QPV;
    HI_S32 s32RangedFrm;
    
    HI_U8 u8RangeMapYFlag;
    HI_U8 u8RangeMapY;
    HI_U8 u8RangeMapUVFlag;
    HI_U8 u8RangeMapUV;
    HI_U8 u8BtmRangeMapYFlag;
    HI_U8 u8BtmRangeMapY;
    HI_U8 u8BtmRangeMapUVFlag;
    HI_U8 u8BtmRangeMapUV;
}HI_VDEC_VC1_RANGE_INFO_S;

typedef enum
{
    VDEC_START_RESERVED = 0,
    VDEC_H264 = 0,  
    VDEC_VC1,       
    VDEC_MPEG4,     
    VDEC_MPEG2,     
    VDEC_H263,      
    VDEC_DIVX3,     
    VDEC_AVS,       
    VDEC_JPEG,
    VDEC_REAL8,
    VDEC_REAL9,
    VDEC_VP6,
    VDEC_VP6F,
    VDEC_VP6A,
    VDEC_VP8,
    VDEC_SORENSON,
    VDEC_MVC,
    VDEC_HEVC,
    VDEC_RAW,
    VDEC_USER,
    VDEC_END_RESERVED
} VDEC_STD_E;
typedef struct hiVDEC_DNR_INFO_S
{
    HI_U8  u8PicStructure;       // 0: frame, 1: top, 2: bottom, 3: mbaff, 4: field pair
    HI_U8  u8Range_mapy_flag;
    HI_U8  u8Range_mapy;
    HI_U8  u8Range_mapuv_flag;
    HI_U8  u8Range_mapuv;
    HI_U8  u8Chroma_format_idc;   // 0: yuv400 , 1: yuv420
    HI_U8  u8Vc1Profile;
    HI_S8  s8Use_pic_qp_en;
    HI_S8  s32VcmpEn;           /* frame compress enable */
    HI_S8  s32WmEn;             /* water marker enable */                                                                                         
    VDEC_STD_E video_standard;
    HI_S32 QP_Y;
    HI_S32 QP_U;
    HI_S32 QP_V;
    HI_S32 s32Rangedfrm;
}HI_VDEC_DNR_INFO_S;
typedef struct hiVDEC_PRIV_FRAMEINFO_S
{
    HI_S32                      IsProgressiveSeq;
    HI_S32                      IsProgressiveFrm;
    HI_S32                      RealFrmRate;
    HI_S32                      MatrixCoef;
    HI_U32                      Rwzb;  
    HI_U32                      u32luma_2d_vir_addr;
    HI_U32                      u32chrom_2d_vir_addr;
    HI_U32                      u32DeiState;/* bit 1 close dei, bit 0 final frame*/
    HI_U32                      u32DispTime;/**<PVR Display time*/
    //HI_VDEC_COMPRESS_INFO_S     stCompressInfo;
    HI_VDEC_VC1_RANGE_INFO_S    stVC1RangeInfo;
    HI_UNF_VCODEC_TYPE_E        entype;
    HI_U32                      u32SeqFrameCnt;     /**<Picture ID in a video sequence. The ID of the first frame in each sequence is numbered 0*/ /**<CNcomment: 视频序列中的图像编号，每个序列中第一帧编号为0*/    
    HI_U8                       u8Repeat;           /**<Times of playing a video frame*/ /**<CNcomment: 视频帧播放次数.*/
    HI_U8                       u8EndFrame;         /**<0 Not end frame; 1 Current frame is the end frame; 2 Prior frame is the end frame */
    HI_U8                       u8TestFlag;         /**<VDEC_OPTMALG_INFO_S.Rwzb*/ 
    HI_U8                       u8IsUserSetSampleType;
    HI_U32                      u32OriFrameRate;  /* 1000*rate */ 
    HI_U32 				        u32Is1D;  	   	
    HI_U32                      is_processed_by_dnr;
	HI_U32                      u32Circumrotate;   
    HI_U32                      u32IsLastFrame; 
    HI_S32                      s32ImgSize;
    HI_U32                      u32ResetNum;

    HI_VDEC_DNR_INFO_S           stDNRInfo;
    
}HI_VDEC_PRIV_FRAMEINFO_S;

typedef HI_S32  (*FN_VDEC_RecvFrm)(HI_S32, HI_UNF_VO_FRAMEINFO_S *);
typedef HI_S32  (*FN_VDEC_RlsFrm)(HI_S32, HI_UNF_VO_FRAMEINFO_S *);
typedef HI_S32  (*FN_VDEC_RlsFrmWithoutHandle)(HI_S32, HI_UNF_VO_FRAMEINFO_S *);
typedef HI_S32  (*FN_VDEC_GetEsBuf)(HI_S32,  VDEC_ES_BUF_S *);
typedef HI_S32  (*FN_VDEC_PutEsBuf)(HI_S32,  VDEC_ES_BUF_S *);
typedef HI_S32  (*FN_VDEC_DNRCapture)(HI_S32, HI_DRV_VDEC_DNR_Capture_S *);
typedef HI_S32  (*FN_VDEC_SetRWZBState)(HI_S32, HI_BOOL *);
typedef HI_S32  (*FN_VDEC_ReportDmxBufRls)(HI_HANDLE);

typedef struct tagVDEC_EXPORT_FUNC_S
{
    FN_VDEC_RecvFrm             pfnVDEC_RecvFrm;
    FN_VDEC_RlsFrm              pfnVDEC_RlsFrm;
    FN_VDEC_RlsFrmWithoutHandle pfnVDEC_RlsFrmWithoutHandle;
    FN_VDEC_GetEsBuf            pfnVDEC_GetEsBuf;
    FN_VDEC_PutEsBuf            pfnVDEC_PutEsBuf;
    FN_VDEC_DNRCapture          pfnVDEC_DNRCapture;
    FN_VDEC_SetRWZBState        pfnVDEC_SetRWZBState;
    FN_VDEC_ReportDmxBufRls     pfnVDEC_ReportDmxBufRls;
}VDEC_EXPORT_FUNC_S;


HI_S32 VDEC_DRV_ModInit(HI_VOID);
HI_VOID VDEC_DRV_ModExit(HI_VOID);

#ifdef __cplusplus
#if __cplusplus
}
#endif
#endif /* __cplusplus */

#endif /* __DRV_VDEC_EXT_H__ */

