/******************************************************************************

  Copyright (C), 2001-2011, Hisilicon Tech. Co., Ltd.

 ******************************************************************************
  File Name     : hi_unf_video.h
  Version       : Initial Draft
  Author        : Hisilicon multimedia software group
  Created       : 2009/12/17
  Description   :
  History       :
  1.Date        : 2009/12/17
    Author      : w58735
    Modification: Created file

*******************************************************************************/

#ifndef __HI_UNF_VIDEO_H__
#define __HI_UNF_VIDEO_H__


#ifdef __cplusplus
#if __cplusplus
extern "C"{
#endif
#endif /* __cplusplus */

#include "hi_common.h"

/*************************** Structure Definition ****************************/
/** \addtogroup      VIDEO_Common */
/** @{ */  /** <!-- 【VIDEO_Common】 */



/**Defines the video norm.*/
/**CNcomment: 定义视频制式枚举*/
typedef enum hiUNF_ENC_FMT_E
{
    HI_UNF_ENC_FMT_1080P_60 = 0,     /**<1080p 60 Hz*/
    HI_UNF_ENC_FMT_1080P_50,         /**<1080p 50 Hz*/
    HI_UNF_ENC_FMT_1080P_30,         /**<1080p 30 Hz*/
    HI_UNF_ENC_FMT_1080P_25,         /**<1080p 25 Hz*/
    HI_UNF_ENC_FMT_1080P_24,         /**<1080p 24 Hz*/

    HI_UNF_ENC_FMT_1080i_60,         /**<1080i 60 Hz*/
    HI_UNF_ENC_FMT_1080i_50,         /**<1080i 60 Hz*/

    HI_UNF_ENC_FMT_720P_60,          /**<720p 60 Hz*/
    HI_UNF_ENC_FMT_720P_50,          /**<720p 50 Hz */

    HI_UNF_ENC_FMT_576P_50,          /**<576p 50 Hz*/
    HI_UNF_ENC_FMT_480P_60,          /**<480p 60 Hz*/

    HI_UNF_ENC_FMT_PAL,              /**<B D G H I PAL */
    HI_UNF_ENC_FMT_PAL_N,            /**<(N)PAL        */
    HI_UNF_ENC_FMT_PAL_Nc,           /**<(Nc)PAL       */

    HI_UNF_ENC_FMT_NTSC,             /**<(M)NTSC       */
    HI_UNF_ENC_FMT_NTSC_J,           /**< NTSC-J        */
    HI_UNF_ENC_FMT_NTSC_PAL_M,       /**<(M)PAL        */

    HI_UNF_ENC_FMT_SECAM_SIN,        /**< SECAM_SIN*/
    HI_UNF_ENC_FMT_SECAM_COS,        /**< SECAM_COS*/
    
    HI_UNF_ENC_FMT_861D_640X480_60,
    HI_UNF_ENC_FMT_VESA_800X600_60,
    HI_UNF_ENC_FMT_VESA_1024X768_60,
    HI_UNF_ENC_FMT_VESA_1280X720_60,
    HI_UNF_ENC_FMT_VESA_1280X800_60,
    HI_UNF_ENC_FMT_VESA_1280X1024_60,
    HI_UNF_ENC_FMT_VESA_1360X768_60,         /**<Rowe*/
    HI_UNF_ENC_FMT_VESA_1366X768_60,
    HI_UNF_ENC_FMT_VESA_1400X1050_60,        /**<Rowe*/
    HI_UNF_ENC_FMT_VESA_1440X900_60,
    HI_UNF_ENC_FMT_VESA_1440X900_60_RB,
    HI_UNF_ENC_FMT_VESA_1600X900_60_RB,
    HI_UNF_ENC_FMT_VESA_1600X1200_60,
    HI_UNF_ENC_FMT_VESA_1680X1050_60,       /**<Rowe*/
    HI_UNF_ENC_FMT_VESA_1920X1080_60,
    HI_UNF_ENC_FMT_VESA_1920X1200_60,
    HI_UNF_ENC_FMT_VESA_2048X1152_60,
    HI_UNF_ENC_FMT_VESA_CUSTOMER_DEFINE,

    HI_UNF_ENC_FMT_BUTT
}HI_UNF_ENC_FMT_E;

/**Defines the aspect ratio.*/
/**CNcomment: 定义宽高比枚举*/
typedef enum hiUNF_ASPECT_RATIO_E
{
    HI_UNF_ASPECT_RATIO_UNKNOWN,  /**<Unknown*/ /**<CNcomment: 未知宽高比*/
    HI_UNF_ASPECT_RATIO_4TO3,     /**<4:3*/ /**<CNcomment: 4比3*/
    HI_UNF_ASPECT_RATIO_16TO9,    /**<16:9*/ /**<CNcomment: 16比9*/
    HI_UNF_ASPECT_RATIO_SQUARE,   /**<Square*/ /**<CNcomment: 正方形*/
    HI_UNF_ASPECT_RATIO_14TO9,    /**<14:9*/ /**<CNcomment: 14比9*/
    HI_UNF_ASPECT_RATIO_221TO1,   /**<221:100*/ /**<CNcomment: 221比100*/
    HI_UNF_ASPECT_RATIO_ZOME,     /**<Unsupported default, display as rate of width and height of data source*/ /**<CNcomment: 默认不支持，根据数据源宽高比显示*/
    HI_UNF_ASPECT_RATIO_FULL,     /**<Unsupported default, display as full screen*/ /**<CNcomment: 默认不支持，全屏显示*/
    HI_UNF_ASPECT_RATIO_235TO1,   /**<235:100*/ /**<CNcomment: 235比100*/    
    HI_UNF_ASPECT_RATIO_BUTT
}HI_UNF_ASPECT_RATIO_E;

/**Defines the mode of converting the aspect ratio.*/
/**CNcomment: 定义宽高比转换方式枚举*/
typedef enum hiUNF_ASPECT_CVRS_E
{
    HI_UNF_ASPECT_CVRS_IGNORE = 0x0,   /**<Ignore*/ /**<CNcomment: 忽略*/
    HI_UNF_ASPECT_CVRS_LETTERBOX,      /**<Add black borders*/ /**<CNcomment: 加黑边*/
    HI_UNF_ASPECT_CVRS_PANANDSCAN,     /**<Clip the picture*/ /**<CNcomment: 裁减*/
    HI_UNF_ASPECT_CVRS_COMBINED,       /**<Add black borders and clip the picture*/ /**<CNcomment: 加黑边和裁减混合*/
    HI_UNF_ASPECT_CVRS_BUTT
} HI_UNF_ASPECT_CVRS_E;

/**Defines the mode of the video decoder.*/
/**CNcomment: 定义视频解码器模式枚举*/
typedef enum hiUNF_VCODEC_MODE_E
{
    HI_UNF_VCODEC_MODE_NORMAL = 0,   /**<Decode all frames.*/ /**<CNcomment: 解所有帧*/
    HI_UNF_VCODEC_MODE_IP,           /**<Decode only I frames and P frames.*/ /**<CNcomment: 只解IP帧*/
    HI_UNF_VCODEC_MODE_I,            /**<Decode only I frames.*/ /**<CNcomment: 只解I帧*/
    HI_UNF_VCODEC_MODE_DROP_INVALID_B,  /**<Decode all frames except the first B frame sequence behind I frames */ /**<CNcomment: 解所有帧，除了紧跟着I帧后面的B帧*/
    HI_UNF_VCODEC_MODE_FIRST_I,        /**<Decode only first I frame */ /**<CNcomment: 只解码第一个I帧*/
    HI_UNF_VCODEC_MODE_BUTT
}HI_UNF_VCODEC_MODE_E;

/**Defines special control operation of decoder*/
/**CNcomment: 定义解码器解码的特殊控制选项 */
typedef enum hiHI_UNF_VCODEC_CTRL_OPTION_E
{
    HI_UNF_VCODEC_CTRL_OPTION_SIMPLE_DPB = 0x1,
    
} HI_UNF_VCODEC_CTRL_OPTION_E;

/**Defines the decoding capability (resolution) of the decoder.*/
/**CNcomment: 定义解码器解码能力(分辨率) */
typedef enum hiUNF_VCODEC_CAP_LEVEL_E
{
    HI_UNF_VCODEC_CAP_LEVEL_NULL = 0, /**<Do not decode.*/ /**<CNcomment: 不需要解码 */
    HI_UNF_VCODEC_CAP_LEVEL_QCIF = 0, /**<The resolution of the picture to be decoded is less than or equal to 176x144.*/ /**<CNcomment: 解码的图像大小不超过176*144 */
    HI_UNF_VCODEC_CAP_LEVEL_CIF,      /**<The resolution of the picture to be decoded less than or equal to 352x288.*/ /**<CNcomment: 解码的图像大小不超过352*288 */
    HI_UNF_VCODEC_CAP_LEVEL_D1,       /**<The resolution of the picture to be decoded less than or equal to 720x576.*/ /**<CNcomment: 解码的图像大小不超过720*576 */  
    HI_UNF_VCODEC_CAP_LEVEL_720P,     /**<The resolution of the picture to be decoded is less than or equal to 1280x720.*/ /**<CNcomment: 解码的图像大小不超过1280*720 */
    HI_UNF_VCODEC_CAP_LEVEL_FULLHD,   /**<The resolution of the picture to be decoded is less than or equal to 1920x1080.*/ /**<CNcomment: 解码的图像大小不超过1920*1080 */ 
    HI_UNF_VCODEC_CAP_LEVEL_BUTT    
} HI_UNF_VCODEC_CAP_LEVEL_E;

/**Defines the stream type supported by the decoder.*/
/**CNcomment: 定义解码器支持的码流类型 */
typedef enum hiUNF_VCODEC_TYPE_E
{
    HI_UNF_VCODEC_TYPE_MPEG2,  /**<MPEG2*/
    HI_UNF_VCODEC_TYPE_MPEG4,  /**<MPEG4 DIVX4 DIVX5*/
    HI_UNF_VCODEC_TYPE_AVS,    /**<AVS*/
    HI_UNF_VCODEC_TYPE_H263,   /**<H263*/
    HI_UNF_VCODEC_TYPE_H264,   /**<H264*/
    HI_UNF_VCODEC_TYPE_REAL8,  /**<REAL*/
    HI_UNF_VCODEC_TYPE_REAL9,  /**<REAL*/
    HI_UNF_VCODEC_TYPE_VC1,    /**<VC-1*/
    HI_UNF_VCODEC_TYPE_VP6,    /**<VP6*/
    HI_UNF_VCODEC_TYPE_VP6F,   /**<VP6F*/
    HI_UNF_VCODEC_TYPE_VP6A,   /**<VP6A*/
    HI_UNF_VCODEC_TYPE_MJPEG,  /**<MJPEG*/
    HI_UNF_VCODEC_TYPE_SORENSON, /**<SORENSON SPARK*/
    HI_UNF_VCODEC_TYPE_DIVX3,  /**<DIVX3*/
    HI_UNF_VCODEC_TYPE_RAW,    /**RAW*/
    HI_UNF_VCODEC_TYPE_JPEG,  /**JPEG, added for VENC*/
    HI_UNF_VCODEC_TYPE_VP8,    /**<VP8*/
    HI_UNF_VCODEC_TYPE_MSMPEG4V1,   /**< MS private MPEG4 */
    HI_UNF_VCODEC_TYPE_MSMPEG4V2,
    HI_UNF_VCODEC_TYPE_MSVIDEO1,    /**< MS video */
    HI_UNF_VCODEC_TYPE_WMV1,
    HI_UNF_VCODEC_TYPE_WMV2,
    HI_UNF_VCODEC_TYPE_RV10,
    HI_UNF_VCODEC_TYPE_RV20,
    HI_UNF_VCODEC_TYPE_SVQ1,        /**< Apple video */
    HI_UNF_VCODEC_TYPE_SVQ3,        /**< Apple video */
    HI_UNF_VCODEC_TYPE_H261,
    HI_UNF_VCODEC_TYPE_VP3,
    HI_UNF_VCODEC_TYPE_VP5,
    HI_UNF_VCODEC_TYPE_CINEPAK,
    HI_UNF_VCODEC_TYPE_INDEO2,
    HI_UNF_VCODEC_TYPE_INDEO3,
    HI_UNF_VCODEC_TYPE_INDEO4,
    HI_UNF_VCODEC_TYPE_INDEO5,
    HI_UNF_VCODEC_TYPE_MJPEGB,
    HI_UNF_VCODEC_TYPE_MVC,
    HI_UNF_VCODEC_TYPE_HEVC,     /**<HEVC, not supported*/
    HI_UNF_VCODEC_TYPE_DV,

    HI_UNF_VCODEC_TYPE_BUTT
}HI_UNF_VCODEC_TYPE_E;

/**Defines VC1 attribute.*/
typedef struct hiUNF_VCODEC_VC1_ATTR_S
{
	HI_BOOL  bAdvancedProfile;   /**<Whether the profile is an advanced profile*/ /**<CNcomment: 是否Advanced Profile*/
	HI_U32   u32CodecVersion;    /**<Version number*/ /**<CNcomment: 版本号*/
}HI_UNF_VCODEC_VC1_ATTR_S;

/**Defines VP6 attribute.*/
typedef struct hiUNF_VCODEC_VP6_ATTR_S
{
	HI_BOOL  bReversed;    /**<To reverse a picture, set this parameter to 1. In this cases, set it to 0.*/ /**<CNcomment: 图像需要倒转时置1，否则置0*/
}HI_UNF_VCODEC_VP6_ATTR_S;

/**Defines extend attribute for vc1 and vp6.*/
typedef union hiUNF_VCODEC_EXTATTR_U
{
	HI_UNF_VCODEC_VC1_ATTR_S stVC1Attr;
	HI_UNF_VCODEC_VP6_ATTR_S stVP6Attr;
}HI_UNF_VCODEC_EXTATTR_U;

/**Defines compress attribute.*/
typedef struct hiUNF_VCODEC_COMPRESS_ATTR_S
{
    HI_S32          s32VcmpEn;           /*reserved*/
    HI_S32          s32WatermarkFlag;    /**<Watermark Flag, 1 means enable, others means disable*/ /**<CNcomment: 压缩水印使能, 1: 使能, others: 不使能*/
    HI_S32          s32WMStartLine;      /**<Watermark Start Line*/ /**<CNcomment: 水印起始行号*/
    HI_S32          s32WMEndLine;        /**<Watermark End Line*/ /**<CNcomment: 水印终止行号*/
}HI_UNF_VCODEC_COMPRESS_ATTR_S;

/**Defines the attributes of a video decoder.*/
/**CNcomment: 定义视频解码器属性结构*/
typedef struct hiUNF_VCODEC_ATTR_S
{
    HI_UNF_VCODEC_TYPE_E        enType;          /**<Video encoding type*/ /**<CNcomment: 视频编码类型*/
	HI_UNF_VCODEC_EXTATTR_U     unExtAttr;       /**<Extra attributes related to the video encoding type*/ /**<CNcomment: 视频编码类型相关的额外属性*/
    HI_UNF_VCODEC_MODE_E  	    enMode;          /**<Mode of a video decoder*/ /**<CNcomment: 视频解码器模式模式*/
    HI_UNF_VCODEC_COMPRESS_ATTR_S stCompressAttr;  /**<compress attribute of video decoder*//**<CNcomment: 视频解码器压缩属性*/
    HI_U32                	    u32ErrCover;     /**<Error concealment threshold of the output frames of a video decoder. The value 0 indicates that no frames are output if an error occurs; the value 100 indicates that all frames are output no matter whether errors occur.*/
                                                 /**<CNcomment: 视频解码器的输出帧错误隐藏门限，0:出现错误即不输出；100:不管错误比例全部输出*/
    HI_U32                	    u32Priority;     /**<Priority of a video decoder. The value range is [1, HI_UNF_VCODEC_MAX_PRIORITY]. The value 0 is a reserved value. If you set the value to 0, no error message is displayed, but the value 1 is used automatically. The smaller the value, the lower the priority.*/
                                                 /**<CNcomment: 视频解码器优先级, 取值范围: 大于等于1，小于等于HI_UNF_VCODEC_MAX_PRIORITY, 0是保留值，配置为0不会报错，但是会自动取值为1,数值越小优先级越低 */
    HI_BOOL                     bOrderOutput;    /**<Whether the videos are output by the decoding sequence. You are advised to set this parameter to HI_TRUE in VP mode, and HI_FALSE in other modes.*/
                                                 /**<CNcomment: 是否按解码序输出，VP模式下推荐配置为HI_TRUE, 一般模式下配置为HI_FALSE */	
    HI_S32                      s32CtrlOptions;  /**<The value is HI_UNF_VCODEC_CTRL_OPTION_E, or the 'or' value of several enum type*/
                                                 /**<CNcomment: 取值为HI_UNF_VCODEC_CTRL_OPTION_E，或者几个枚举的'或'  */
	HI_VOID*                    pCodecContext;   /**<Private codec context *//**<CNcomment: 私有解码上下文*/
}HI_UNF_VCODEC_ATTR_S;

/**Defines the advanced attributes of a video decoder.*/
/**CNcomment: 定义视频解码器增强属性结构*/
typedef struct hiUNF_VCODEC_ADV_ATTR_S
{
    HI_UNF_VCODEC_TYPE_E  enType;           /**<Video encoding type*/ /**<CNcomment: 视频编码类型*/
    HI_UNF_VCODEC_MODE_E  enMode;           /**<Mode of a video decoder*/ /**<CNcomment: 视频解码器模式模式*/
    HI_U32                u32ErrCover;      /**<Error concealment threshold of the output frames of a video decoder. The value 0 indicates that no frames are output if an error occurs; the value 100 indicates that all frames are output no matter whether errors occur.*/
                                            /**<CNcomment: 视频解码器的输出帧错误隐藏门限，0:出现错误即不输出；100:不管错误比例全部输出*/
    HI_U32                u32Priority;      /**<Priority of a video decoder. The value range is [1, HI_UNF_VCODEC_MAX_PRIORITY]. The value 0 is a reserved value. If you set the value to 0, no error message is displayed, but the value 1 is used automatically. The smaller the value, the lower the priority.*/
                                            /**<CNcomment: 视频解码器优先级, 取值范围: 大于等于1，小于等于HI_UNF_VCODEC_MAX_PRIORITY, 0是保留值，配置为0不会报错，但是会自动取值为1,数值越小优先级越低 */
    HI_BOOL               bOrderOutput;     /**<Whether the videos are output by the displaying sequence. You are advised to set this parameter to HI_TRUE in VP mode, and HI_FALSE in other modes.*/
                                            /**<CNcomment: 是否按解码序输出，VP模式下推荐配置为HI_TRUE, 一般模式下配置为HI_FALSE */
    HI_S32                s32CtrlOptions;   /**<The value is HI_UNF_VCODEC_CTRL_OPTION_E, or the 'or' value of several enum type*/
                                            /**<CNcomment: 取值为HI_UNF_VCODEC_CTRL_OPTION_E，或者几个枚举的'或'  */
}HI_UNF_VCODEC_ADV_ATTR_S;

/**Defines the sub stream protocol.*/
/**CNcomment: 定义码流的协议分支枚举*/
typedef enum hiUNF_VIDEO_SUB_STANDARD_E
{
    HI_UNF_VIDEO_SUB_STANDARD_UNKNOWN,       /**<Unknown*/ /**<CNcomment: 未知协议分支*/
    HI_UNF_VIDEO_SUB_STANDARD_MPEG2_MPEG1,   /**<The MPEG2 protocol family is compatible with MPEG1.*/ /**<CNcomment: MPEG2协议族可以兼容MPEG1 */
    HI_UNF_VIDEO_SUB_STANDARD_MPEG4_SHV,     /**<The MPEG4 protocol family is compatible with SHV.*/ /**<CNcomment: MPEG4协议族可以兼容SHV*/
    HI_UNF_VIDEO_SUB_STANDARD_MPEG4_XVID,    /**<The MPEG4 protocol family includes the sub protocol XVID.*/ /**<CNcomment: MPEG4协议包含XVID分支*/
    HI_UNF_VIDEO_SUB_STANDARD_MPEG4_DIVX,    /**<The MPEG4 protocol family includes the sub protocol DIVX.*/ /**<CNcomment: MPEG4协议包含DIVX分支*/

    HI_UNF_VIDEO_SUB_STANDARD_BUTT
}HI_UNF_VIDEO_SUB_STANDARD_E;

/**Defines the video sampling type.*/
/**CNcomment: 定义视频采样类型枚举*/
typedef enum hiUNF_VIDEO_SAMPLE_TYPE_E
{
    HI_UNF_VIDEO_SAMPLE_TYPE_UNKNOWN,                  /**<Unknown*/ /**<CNcomment: 未知采样方式*/
    HI_UNF_VIDEO_SAMPLE_TYPE_PROGRESSIVE,              /**<Progressive*/ /**<CNcomment: 采样方式为逐行*/
    HI_UNF_VIDEO_SAMPLE_TYPE_INTERLACE,                /**<Interlaced*/ /**<CNcomment: 采样方式为隔行*/
    HI_UNF_VIDEO_SAMPLE_TYPE_INFERED_PROGRESSIVE,      /**<Inferred progressive*/ /**<CNcomment: 采样方式为推测逐行*/
    HI_UNF_VIDEO_SAMPLE_TYPE_INFERED_INTERLACE,        /**<Inferred interlaced*/ /**<CNcomment: 采样方式为推测隔行*/

    HI_UNF_VIDEO_SAMPLE_TYPE_BUTT
}HI_UNF_VIDEO_SAMPLE_TYPE_E;

/**Defines the frame rate of the video stream.*/
/**CNcomment: 定义视频码流帧率结构*/
typedef struct hiUNF_VCODEC_FRMRATE_S
{
    HI_U32 u32fpsInteger;     /**<Integral part of the frame rate (in frame/s)*/ /**<CNcomment: 码流的帧率的整数部分, fps */
    HI_U32 u32fpsDecimal;     /**<Fractional part (calculated to three decimal places) of the frame rate (in frame/s)*/
                              /**<CNcomment: 码流的帧率的小数部分（保留3位）, fps */
}HI_UNF_VCODEC_FRMRATE_S;

/**Defines the information about video streams.*/
/**CNcomment: 定义视频码流信息结构*/
typedef struct hiUNF_VCODEC_STREAMINFO_S
{
    HI_UNF_VCODEC_TYPE_E        enVCodecType;   /**<Stream type*/ /**<CNcomment: 码流类型 */
    HI_UNF_VIDEO_SUB_STANDARD_E enSubStandard;  /**<Sub stream protocol*/ /**<CNcomment: 码流的协议分支 */
    HI_U32                      u32SubVersion;  /**<Version of the sub stream protocol*/ /**<CNcomment: 码流子协议版本号 */
    HI_U32                      u32Profile;     /**<Stream profile*/ /**<CNcomment: 码流的profile */
    HI_U32                      u32Level;       /**<Stream level*/ /**<CNcomment: 码流的level */
    HI_UNF_ENC_FMT_E            enDisplayNorm;  /**<Display norm (PAL or NTSC)*/ /**<CNcomment: 显示标准(P/N) */
    HI_UNF_VIDEO_SAMPLE_TYPE_E  enSampleType;   /**<Sampling type (progressive or interlaced)*/ /**<CNcomment: 采样方式(逐行/隔行) */
    HI_UNF_ASPECT_RATIO_E       enAspectRatio;  /**<Output aspect ratio*/ /**<CNcomment: 输出宽高比 */

    HI_U32 u32bps;            /**<Bit rate, in kbit/s*/ /**<CNcomment: 码流的码率, Kbps */
    HI_U32 u32fpsInteger;     /**<Integral part of the frame rate (in frame/s)*/ /**<CNcomment: 码流的帧率的整数部分, fps */
    HI_U32 u32fpsDecimal;     /**<Fractional part (calculated to three decimal places) of the frame rate (in frame/s)*/ /**<CNcomment: 码流的帧率的小数部分（保留3位）, fps */
    HI_U32 u32Width;          /**<Width of the decoded picture*/ /**<CNcomment: 解码图像宽 */
    HI_U32 u32Height;         /**<Height of the decoded picture*/ /**<CNcomment: 解码图像高 */
    HI_U32 u32DisplayWidth;   /**<Width of the displayed picture*/ /**<CNcomment: 显示图像宽 */
    HI_U32 u32DisplayHeight;  /**<Height of the displayed picture*/ /**<CNcomment: 显示图像高 */
    HI_U32 u32DisplayCenterX; /**<Horizontal coordinate of the center of the displayed picture (the upper left point of the source picture serves as the coordinate origin)*/
                              /**<CNcomment: 显示图像中心横坐标，以原始图像的左上角为坐标原点 */
    HI_U32 u32DisplayCenterY; /**<Vertical coordinate of the center of the displayed picture (the upper left point of the source picture serves as the coordinate origin)*/
                              /**<CNcomment: 显示图像中心纵坐标，以原始图像的左上角为坐标原点 */
}HI_UNF_VCODEC_STREAMINFO_S;

/**Defines the information about the video sequence.*/
/**CNcomment: 定义视频序列数据信息结构*/
typedef struct hiUNF_VIDEO_SEQUENCE_INFO_S
{
    HI_U32                      u32Height;          /**<Picture height in the video sequence*/ /**<CNcomment: 视频序列中图像的高度*/
    HI_U32                      u32Width;           /**<Picture width in the video sequence*/ /**<CNcomment: 视频序列中图像的宽度*/
    HI_UNF_ASPECT_RATIO_E       enAspect;           /**<Picture aspect ratio in the video sequence*/ /**<CNcomment: 视频序列中图像的宽高比*/
    HI_UNF_VIDEO_SAMPLE_TYPE_E  enSampleType;       /**<Video sampling type*/ /**<CNcomment: 视频采样类型*/
    HI_U32                      u32FrameRate;       /**<Frame rate for playing videos*/ /**<CNcomment: 视频播放帧率*/
    HI_U32                      u32BitRate;         /**<Bit rate for playing videos*/ /**<CNcomment: 视频播放的比特率*/
    HI_UNF_VCODEC_TYPE_E        entype;             /**<Video decoding type, including MPEG2, MPEG4, and H.264*/ /**<CNcomment: 视频解码类型，包括MPEG2、MPEG4、H.264三种*/
    HI_BOOL                     bIsLowDelay;        /**<Low delay*/ /**<CNcomment: 是否低延迟*/
    HI_U32                      u32VBVBufferSize;   /**<Buffer size*/ /**<CNcomment: 缓冲区大小*/
    HI_U32                      u32StreamID;        /**<Video stream ID*/ /**<CNcomment: 视频流的ID*/
    HI_U32                      u32Profile;         /**<Video decoding profile*/ /**<CNcomment: 视频解码的profile*/
    HI_U32                      u32Level;           /**<Video decoding level*/ /**<CNcomment: 视频解码的level*/
    HI_UNF_ENC_FMT_E            enVideoFormat;      /**<Video format. This format is valid only when VIDEO_MPEGSTANDARD_E is VIDeo_MPEG_STANDARD_ISO_IEC_13818.*/
                                                    /**<CNcomment: 视频格式，只有VIDEO_MPEGSTANDARD_E为VIDeo_MPEG_STANDARD_ISO_IEC_13818，该格式才有效*/

    /** Valid only if VIDEO_MPEGSTANDARD_E is VIDeo_MPEG_STANDARD_ISO_IEC_13818 */
    HI_U32                      u32FrameRateExtensionN;    /**<Integral part of the frame rate (in frame/s)*/ /**<CNcomment: 码流的帧率的整数部分，单位为fps*/
    HI_U32                      u32FrameRateExtensionD;    /**<Fractional part (calculated to three decimal places) of the frame rate (in frame/s)*/ /**<CNcomment: 码流的帧率的小数部分（保留3bit），单位为fps*/
}HI_UNF_VIDEO_SEQUENCE_INFO_S;

/**Defines the type of the video frame.*/
/**CNcomment: 定义视频帧的类型枚举*/
typedef enum hiUNF_VIDEO_FRAME_TYPE_E
{
    HI_UNF_FRAME_TYPE_UNKNOWN,   /**<Unknown*/ /**<CNcomment: 未知的帧类型*/
    HI_UNF_FRAME_TYPE_I,         /**<I frame*/ /**<CNcomment: I帧*/
    HI_UNF_FRAME_TYPE_P,         /**<P frame*/ /**<CNcomment: P帧*/
    HI_UNF_FRAME_TYPE_B,         /**<B frame*/ /**<CNcomment: B帧*/
    HI_UNF_FRAME_TYPE_BUTT
}HI_UNF_VIDEO_FRAME_TYPE_E;

/**Defines the profile of video broadcasting.*/
/**CNcomment: 定义视频广播的profile枚举*/
typedef enum hiUNF_VIDEO_BROADCAST_PROFILE_E
{
    HI_UNF_VIDEO_BROADCAST_DVB,        /**<Digital video broadcasting (DVB)*/ /**<CNcomment: 数字视频广播DVB*/
    HI_UNF_VIDEO_BROADCAST_DIRECTV,    /**<American live broadcast operator DirecTV*/ /**<CNcomment: 美国直播运营商DirecTV*/
    HI_UNF_VIDEO_BROADCAST_ATSC,       /**<Advanced Television Systems Committee (ATSC)*/ /**<CNcomment: 先进电视制式委员会ATSC（Advanced Television Systems Committee）*/
    HI_UNF_VIDEO_BROADCAST_DVD,        /**<Digital video disc (DVD)*/ /**<CNcomment: 数字视频光盘*/
    HI_UNF_VIDEO_BROADCAST_ARIB,       /**<Association of Radio Industries and Businesses (ARIB)*/ /**<CNcomment: 无线电工业及商业协会规格*/
    HI_UNF_VIDEO_BROADCAST_BUTT
}HI_UNF_VIDEO_BROADCAST_PROFILE_E;

/**Defines the position of the user data in the video information.*/
/**CNcomment: 定义视频信息中用户数据的位置枚举*/
typedef enum hiUNF_VIDEO_USER_DATA_POSITION_E
{
    HI_UNF_VIDEO_USER_DATA_POSITION_UNKNOWN,       /**<Unknown*/ /**<CNcomment: 未知位置*/
    HI_UNF_VIDEO_USER_DATA_POSITION_MPEG2_SEQ,     /**<The data is parsed from sequences under the MPEG2 protocol.*/ /**<CNcomment: MPEG2协议下，从序列中解出*/
    HI_UNF_VIDEO_USER_DATA_POSITION_MPEG2_GOP,     /**<The data is parsed from the group of pictures (GOP) under the MPEG2 protocol.*/ /**<CNcomment: MPEG2协议下，从GOP（Group Of Pictures）中解出*/
    HI_UNF_VIDEO_USER_DATA_POSITION_MPEG2_FRAME,   /**<The data is parsed from picture frames under the MPEG2 protocol.*/ /**<CNcomment: MPEG2协议下，从图像帧中解出*/
    HI_UNF_VIDEO_USER_DATA_POSITION_MPEG4_VSOS,    /**<The data is parsed from the sequences of visible objects under the MPEG4 protocol.*/ /**<CNcomment: MPEG4协议下，从可视对像序列中解出*/
    HI_UNF_VIDEO_USER_DATA_POSITION_MPEG4_VSO,     /**<The data is parsed from visible objects under the MPEG4 protocol.*/ /**<CNcomment: MPEG4协议下，从可视对像中解出*/
    HI_UNF_VIDEO_USER_DATA_POSITION_MPEG4_VOL,     /**<The data is parsed from the video object layer under the MPEG4 protocol.*/ /**<CNcomment: MPEG4协议下，从视频对像层中解出*/
    HI_UNF_VIDEO_USER_DATA_POSITION_MPEG4_GOP,     /**<The data is parsed from the GOP under the MPEG4 protocol.*/ /**<CNcomment: MPEG4协议下，从GOP中解出*/
    HI_UNF_VIDEO_USER_DATA_POSITION_H264_REG,      /**<The data is parsed from the user_data_regestered_itu_t_t35() syntax under the H.264 protocol.*/ /**<CNcomment: 从H.264协议的user_data_regestered_itu_t_t35()语法中解出*/
    HI_UNF_VIDEO_USER_DATA_POSITION_H264_UNREG,    /**<The data is parsed from the user_data_unregestered() syntax under the H.264 protocol.*/ /**<CNcomment: 从H.264协议的user_data_unregestered()语法中解出*/
    HI_UNF_VIDEO_USER_DATA_POSITION_BUTT
}HI_UNF_VIDEO_USER_DATA_POSITION_E;

/**Defines the structure of the user data in the video information.*/
/**CNcomment: 定义视频信息中的用户数据结构*/
typedef struct hiUNF_VIDEO_USERDATA_S
{
    HI_UNF_VIDEO_BROADCAST_PROFILE_E   enBroadcastProfile;   /**<Broadcasting profile of the user data*/ /**<CNcomment: 用户数据的广播profile*/
    HI_UNF_VIDEO_USER_DATA_POSITION_E  enPositionInStream;   /**<Position of the user data in video streams*/ /**<CNcomment: 用户数据在视频流中的位置*/
    HI_U32                             u32Pts;               /**<PTS corresponding to the user data*/ /**<CNcomment: 用户数据对应的时间戳*/
    HI_U32                             u32SeqCnt;            /**<Sequence ID of the user data*/ /**<CNcomment: 用户数据的前一序列数*/
    HI_U32                             u32SeqFrameCnt;       /**<Frame number of the user data*/ /**<CNcomment: 用户数据的前一帧数*/
    HI_U8                              *pu8Buffer;           /**<Initial address of the user data memory, output parameter*/ /**<CNcomment: 用户数据内存区的初始地址,输出参数*/
    HI_U32                             u32Length;            /**<User data size (a multiple of 1 byte)*/ /**<CNcomment: 用户数据的大小，以1byte为单位*/
    HI_BOOL                            bBufferOverflow;      /**<Indicate that whether the user data size exceeds the maximum size defined by MAX_USER_DATA_LEN.*/ /**<CNcomment: 标志用户数据的长度是否超过了MAX_USER_DATA_LEN定义的最大值*/
    HI_UNF_VIDEO_FRAME_TYPE_E          enPicCodingType;      /**<picture coding type*/ /**<CNcomment:用户数据位于图像的编码类型*/
	HI_BOOL							   bTopFieldFirst;      /**<Top field first flag*/ /**<CNcomment: 顶场优先标志*/
}HI_UNF_VIDEO_USERDATA_S;

/**Defines the parameters of format changing */
/**CNcomment: 定义制式切换时的相关参数*/
typedef struct hiUNF_NORMCHANGE_PARAM_S
{
    HI_UNF_ENC_FMT_E            enNewFormat;			/**<New format*/ /**<CNcomment: 新的制式*/
    HI_U32                      u32ImageWidth;			/**<Width of image*/ /**<CNcomment: 图像宽度*/
    HI_U32                      u32ImageHeight;			/**<Height of image*/ /**<CNcomment: 图像高度*/
    HI_UNF_VIDEO_SAMPLE_TYPE_E  enSampleType;			/**<Sampling type*//**<CNcomment:采样类型*/
    HI_U32                      u32FrameRate;			/**<Frame rate*//**<CNcomment:帧率*/
}HI_UNF_NORMCHANGE_PARAM_S;

/**Defines the video format.*/
/**CNcomment: 定义视频格式枚举*/
typedef enum hiUNF_VIDEO_FORMAT_E
{
    HI_UNF_FORMAT_YUV_SEMIPLANAR_422 = 0X10,       /**<The YUV spatial sampling format is 4:2:2.*/ /**<CNcomment: YUV空间采样格式为4:2:2*/
    HI_UNF_FORMAT_YUV_SEMIPLANAR_420 = 0X11,       /**<The YUV spatial sampling format is 4:2:0.*/ /**<CNcomment: YUV空间采样格式为4:2:0*/
    HI_UNF_FORMAT_YUV_PACKAGE_UYVY,                /**<The YUV spatial sampling format is package, and the pixel arrangement sequence in the memory is UYVY.*/ /**<CNcomment: YUV空间采样格式为package,内存排列为UYVY*/
    HI_UNF_FORMAT_YUV_PACKAGE_YUYV,                /**<The YUV spatial sampling format is package, and the pixel arrangement sequence in the memory is YUYV.*/ /**<CNcomment: YUV空间采样格式为package,内存排列为YUYV*/
    HI_UNF_FORMAT_YUV_PACKAGE_YVYU,                /**<The YUV spatial sampling format is package, and the pixel arrangement sequence in the memory is YVYU.*/ /**<CNcomment: YUV空间采样格式为package,内存排列为YVYU*/
    HI_UNF_FORMAT_YUV_BUTT
}HI_UNF_VIDEO_FORMAT_E;

/**Defines the video frame/field mode.*/
/**CNcomment: 定义视频帧场模式枚举*/
typedef enum hiUNF_VIDEO_FIELD_MODE_E
{
    HI_UNF_VIDEO_FIELD_ALL,        /**<Frame mode*/ /**<CNcomment: 帧模式*/
    HI_UNF_VIDEO_FIELD_TOP,        /**<Top field mode*/ /**<CNcomment: 顶场模式*/
    HI_UNF_VIDEO_FIELD_BOTTOM,     /**<Bottom field mode*/ /**<CNcomment: 底场模式*/
    HI_UNF_VIDEO_FIELD_BUTT
}HI_UNF_VIDEO_FIELD_MODE_E;

/**Defines the playing time of videos.*/
/**CNcomment: 定义视频播放时间结构*/
typedef struct hiUNF_VIDEO_TIMECODE_S
{
    HI_U8   u8Hours;         /**<Hour*/ /**<CNcomment: 时*/
    HI_U8   u8Minutes;       /**<Minute*/ /**<CNcomment: 分*/
    HI_U8   u8Seconds;       /**<Second*/ /**<CNcomment: 秒*/
    HI_U8   u8Frames;        /**<Number of played frames*/ /**<CNcomment: 播放帧数*/
    HI_BOOL bInterpolated;   /**<Whether time is interpolated.*/ /**<CNcomment: 是否经过插值*/
}HI_UNF_VIDEO_TIMECODE_S;

/**Defines memory alloc mode for captured picture.*/
/**CNcomment: 定义捕获图像内存分配格式*/
typedef enum hiUNF_CAPTURE_ALLOC_TYPE_E
{
    HI_UNF_CAPTURE_NO_ALLOC,	    /**<no alloc*/ /**<CNcomment: 不需分配内存*/
    HI_UNF_CAPTURE_USER_ALLOC,	    /**<user alloc*/ /**<CNcomment: 用户分配*/
    HI_UNF_CAPTURE_DRIVER_ALLOC,	/**<driver alloc*/ /**<CNcomment: 驱动分配*/
}HI_UNF_CAPTURE_ALLOC_TYPE_E;

/**Defines memory alloc struct for captured picture.*/
/**CNcomment: 定义捕获图像内存分配结构体*/
typedef struct hiUNF_CAPTURE_MEM_MODE_S
{
    HI_U32			    u32StartPhyAddr;	    /**<start phy addr*/ /**<CNcomment: 起始物理地址*/
    HI_U32			    u32StartUserAddr;       /*<start user addr*/ /**<CNcomment: 起始用户地址*/
    HI_U32			    u32DataLen;		    /*<len of databuf*/ /**<CNcomment: 数据区长度*/
    HI_UNF_CAPTURE_ALLOC_TYPE_E	    enAllocMemType;	    /*<type*/ /**<CNcomment: 类型*/
}HI_UNF_CAPTURE_MEM_MODE_S;

/**Defines the information about the captured picture.*/
/**CNcomment: 定义捕获图象信息结构*/
typedef struct hiUNF_CAPTURE_PICTURE_S
{
    HI_U32                u32TopYStartAddr;      /**<Address of the memory for storing top field Y of the captured picture*/ /**<CNcomment: 存放捕获图象的顶场Y内存地址 */
    HI_U32                u32TopCStartAddr;      /**<Address of the memory for storing top field C of the captured picture*/ /**<CNcomment: 存放捕获图象的顶场C内存地址 */
    HI_U32                u32BottomYStartAddr;   /**<Address of the memory for storing bottom field Y of the captured picture*/ /**<CNcomment: 存放捕获图象的底场Y内存地址 */
    HI_U32                u32BottomCStartAddr;   /**<Address of the memory for storing bottom field C of the captured picture*/ /**<CNcomment: 存放捕获图象的底场C内存地址 */
    HI_U32                u32Width;              /**<Width of the captured picture*/ /**<CNcomment: 捕获图象的宽度 */
    HI_U32                u32Height;             /**<Height of the captured picture*/ /**<CNcomment: 捕获图象的高度 */
    HI_U32                u32Stride;             /**<Stride of the captured picture*/ /**<CNcomment: 捕获图象的行距 */
    HI_UNF_VIDEO_FORMAT_E    enVideoFormat;      /**<Color format of the snapshot*/ /**<CNcomment: 捕获截屏颜色格式 */
    HI_UNF_VIDEO_FIELD_MODE_E enFieldMode;       /**<Frame/field mode of the captured picture*/ /**<CNcomment: 捕获图象的帧场信息 */
    HI_UNF_VIDEO_SAMPLE_TYPE_E  enSampleType;    /**<Progressive/interlaced mode of the captured picture*/ /**<CNcomment: 捕获图象的逐隔行信息 */
    HI_U32                u32CompressFlag;
    HI_S32                s32CompFrameHeight;
    HI_S32                s32CompFrameWidth;
    HI_UNF_CAPTURE_MEM_MODE_S   stOutAllocMode;
} HI_UNF_CAPTURE_PICTURE_S;

/**Defines the field source of video frames.*/
/**CNcomment: 定义视频帧中场来源枚举 */
typedef enum hiUNF_VIDEO_FRAME_COMBINE_E
{
    HI_UNF_VIDEO_FRAME_COMBINE_T0B0,     /**<Both fields are originated from the previous frame.*/ /**<CNcomment: 两场都来自上一帧*/
    HI_UNF_VIDEO_FRAME_COMBINE_T0B1,     /**<The top field is originated from the previous frame, and the bottom field is originated from the current frame.*/ /**<CNcomment: 顶场来自上一帧，底场来自当前帧*/
    HI_UNF_VIDEO_FRAME_COMBINE_T1B0,     /**<The top field is originated from the current frame, and the bottom field is originated from the previous frame.*/ /**<CNcomment: 顶场来自当前帧，底场来自上一帧*/
    HI_UNF_VIDEO_FRAME_COMBINE_T1B1,     /**<Both fields are originated from the current frame.*/ /**<CNcomment: 两场都来自当前帧*/
    HI_UNF_VIDEO_FRAME_COMBINE_BUTT

}HI_UNF_VIDEO_FRAME_COMBINE_E;

/**Defines 3D frame packing type*/
typedef enum hiUNF_VIDEO_FRAME_PACKING_TYPE_E
{
    HI_UNF_FRAME_PACKING_TYPE_NONE,            /**< normal frame, not a 3D frame */
    HI_UNF_FRAME_PACKING_TYPE_SIDE_BY_SIDE,   /**< side by side */
    HI_UNF_FRAME_PACKING_TYPE_TOP_BOTTOM,     /**< top bottom */
    HI_UNF_FRAME_PACKING_TYPE_TIME_INTERLACED,  /**< time interlaced: one frame for left eye, the next frame for right eye */
    HI_UNF_FRAME_PACKING_TYPE_BUTT             
}HI_UNF_VIDEO_FRAME_PACKING_TYPE_E;

/** max user data num of each frame*/
#define MAX_USER_DATA_NUM       4
/** max user data length*/
#define MAX_USER_DATA_LEN       256UL

/**Defines the information about video frames.*/
/**CNcomment: 定义视频帧信息结构*/
typedef struct hiUNF_VO_FRAMEINFO_S
{
    HI_UNF_VIDEO_SEQUENCE_INFO_S        stSeqInfo;                /**<Video sequence. When the sequence ID is changed, the information in the data type is valid for the current frame only.*/ /**<CNcomment: 视频序列信息，当序列号改变时只对当前帧有效*/
    HI_U32                              u32FrameIndex;            /**<Frame index ID of a video sequence*/ /**<CNcomment: 视频序列中的帧索引号*/
    HI_UNF_VIDEO_FORMAT_E               enVideoFormat;            /**<Video format*/ /**<CNcomment: 视频格式*/
    HI_UNF_ENC_FMT_E                    enDisplayNorm;            /**<Display norm*/ /**<CNcomment: 播放标准*/
    HI_UNF_VIDEO_FRAME_TYPE_E           enFrameType;              /**<Frame type*/ /**<CNcomment: 帧类型*/
    HI_UNF_VIDEO_SAMPLE_TYPE_E          enSampleType;             /**<Sampling type*/ /**<CNcomment: 采样类型*/
    HI_UNF_VIDEO_FIELD_MODE_E           enFieldMode;              /**<Frame or field encoding mode*/ /**<CNcomment: 帧或场编码模式*/
    HI_BOOL                             bTopFieldFirst;           /**<Top field first flag*/ /**<CNcomment: 顶场优先标志*/
    HI_UNF_ASPECT_RATIO_E               enAspectRatio;            /**<Picture aspect ratio*/ /**<CNcomment: 图像宽高比*/
    HI_UNF_VIDEO_FRAME_COMBINE_E        enVideoCombine;           /**<Source of the fields in video frames*/ /**<CNcomment: 视频帧中场来源*/
    HI_UNF_VIDEO_FRAME_PACKING_TYPE_E   enFramePackingType;       /**<3D frame packing type*/

    HI_U32                              u32Width;                 /**<Width of the source picture*/ /**<CNcomment: 原始图像宽*/
    HI_U32                              u32Height;                /**<Height of the source picture*/ /**<CNcomment: 原始图像高*/
    HI_U32                              u32DisplayWidth;          /**<Width of the displayed picture*/ /**<CNcomment: 显示图像宽*/
    HI_U32                              u32DisplayHeight;         /**<Height of the displayed picture*/ /**<CNcomment: 显示图像高*/
    HI_U32                              u32DisplayCenterX;        /**<Horizontal coordinate of the center of the displayed picture (the upper left point of the source picture serves as the coordinate origin)*/ /**<CNcomment: 显示中心x坐标，原始图像左上角为坐标原点*/
    HI_U32                              u32DisplayCenterY;        /**<Vertical coordinate of the center of the displayed picture (the upper left point of the source picture serves as the coordinate origin)*/ /**<CNcomment: 显示中心y坐标，原始图像左上角为坐标原点*/
    HI_U32                              u32ErrorLevel;            /**<Error percentage of a decoded picture, ranging from 0% to 100%*/ /**<CNcomment: 一幅解码图像中的错误比例，取值为0～100*/
    HI_U32                              u32SeqCnt;                /**<Video sequence ID. The ID of the first frame is numbered 0, and the subsequent ID is increased by 1. When the maximum value is reached, the ID starts from 0 again.*/ /**<CNcomment: 视频序列号，从0开始计数第一帧图像，以1递增，达到最大值后归0重新计数*/
    HI_U32                              u32SeqFrameCnt;           /**<Picture ID in a video sequence. The ID of the first frame in each sequence is numbered 0*/ /**<CNcomment: 视频序列中的图像编号，每个序列中第一帧编号为0*/
    HI_U32                              u32SrcPts;                /**<Original PTS of a video frame*/ /**<CNcomment: 视频帧的原始时间戳*/
    HI_U32                              u32Pts;                   /**<PTS of a video frame*/ /**<CNcomment: 视频帧的时间戳*/
    HI_UNF_VIDEO_TIMECODE_S             stTimeCode;               /**<Playing time of a video frame*/ /**<CNcomment: 一个视频帧的播放时间值*/

    HI_U32                              u32YAddr;                 /**<Address of the Y component in the current frame*/ /**<CNcomment: 当前帧Y分量数据的地址*/
    HI_U32                              u32CAddr;                 /**<Address of the C component in the current frame*/ /**<CNcomment: 当前帧C分量数据的地址*/

    HI_U32                              u32LstYAddr;              /**<Address of the Y component in the previous frame*/ /**<CNcomment: 上一帧Y分量数据的地址*/
    HI_U32                              u32LstYCddr;              /**<Address of the C component in the previous frame*/ /**<CNcomment: 上一帧C分量数据的地址*/

    HI_U32                              u32YStride;               /**<Stride of the Y component*/ /**<CNcomment: Y分量数据的跨幅*/
    HI_U32                              u32CStride;               /**<Stride of the C component*/ /**<CNcomment: C分量数据的跨幅*/
    HI_U32                              u32Repeat;                /**<Times of playing a video frame*/ /**<CNcomment: 视频帧播放次数.*/
    HI_U32                              u32MgcNum;                /**<Magic number of a video frame*/ /**<CNcomment: 视频帧魔术字*/

    HI_U32                           u32VdecInfo[64];           /**< 0~4: VDEC_OPTMALG_INFO_S,  5~6: Y/C kernel-vir addr, 7-15: reserved */
    HI_U32                           u32CompressFlag;
    HI_S32                           s32CompFrameHeight;
    HI_S32                           s32CompFrameWidth;
    HI_U32								u32nxtPts;
}HI_UNF_VO_FRAMEINFO_S;

#pragma pack(4)
/**Change flag bits of the network parameter structures*/
/**CNcomment: 网络参数结构变更标志位 */
typedef struct
{
   HI_U32   bit1IPAddr:1;	/**<Change flag of the IP address. It indicates that u32IpLen and u8IpAddr[16] change.*/ /**<CNcomment: ip变更标记, u32IpLen和u8IpAddr[16]有更改*/
   HI_U32   bit1IPPort:1;	/**<Change flag of the IP port. It indicates that u16Ipport changes.*/ /**<CNcomment: ip port变更标记, u16Ipport有更改*/
   HI_U32   bit1IPTos:1;	/**<Change flag of the IP service type. It indicates that u32IPTos and u32Mask change.*/ /**<CNcomment: IP服务类型变更标记,u32IPTos和u32Mask有更改*/
   HI_U32   bit1Vlan:1;		/**<VLAN change flag, reserved. It indicates that u32VlanEn, u32VlanPri, u32VlanPid, and u32Mask change.*/ /**<CNcomment: Vlan变更标记,u32VlanEn,u32VlanPri,u32VlanPid和u32Mask有更改，保留*/
   HI_U32   bit1Protocol:1;	/**<Change flag of the protocol type, reserved. Only IPv4 is supported currently.*/ /**<CNcomment: 协议类型变更标记，目前只支持IPV4,保留*/
   HI_U32   bit25Resv:27;         
}HI_UNF_NET_CHANGE_S;

/**Configuration of the network parameter structure*/
/**CNcomment: 配置网络参数结构 */
typedef struct
{
    HI_U32 					  u32IpLen;          /**<Length of the source IP address. The IP address can be 4 bytes (IPv4) or 16 bytes (IPv6). Other values are invalid.*/ /**<CNcomment: source ip地址长度，4(IPV4)或16(IPV6)，其它值无效*/
    HI_U8 					  u8IpAddr[16];      /**<Source IP address. The IP address can be 4 bytes (IPv4) or 16 bytes (IPv6), but is not a string. For a 4-byte IP address, 192.168.1.1 for example, each segment occupies one byte.*/ /**<CNcomment: source ip地址，4字节(IPV4)或16字节(IPV6)，不是字符串，以192.168.1.1为例，4字节依次为192,168,1,1*/
    HI_U16 					  u16Ipport;    	 /**<Source RTP port number. The RTP port number must be an even number, and the corresponding RTCP port number is the RTP port number plus 1.*/ /**<CNcomment: source RTP 端口号，应为偶数；对应RTCP端口号为该数值+1*/
    HI_U16 					  u16Reserve;    	 /**<Reserved*/ /**<CNcomment: 保留字段*/
    HI_U32 					  u32Protocol;       /**<Protocol type, reserved. The value 0x0800 indicates IPv4, and the value 0x86dd indicates IPv6. Only IPv4 is supported currently.*/ /**<CNcomment: 协议类型,0x0800--IPV4, 0x86dd--IPV6，目前只支持IPV4，保留*/
	HI_U32					  u32PayLoadValue;   /**<Payload type*/ /**<CNcomment: 负载类型 */   
	HI_UNF_NET_CHANGE_S       stNetChange;       /**<Change flag of network parameters*/ /**<CNcomment: 网络参数变更标志位  */ 

}HI_UNF_VP_NET_PARA_S;
#pragma pack()

/**Defines the types of the user data in the video information.*/
/**CNcomment: 定义视频信息中的用户数据类型 */
typedef enum hiHI_UNF_VIDEO_USERDATA_TYPE_E
{
    HI_UNF_VIDEO_USERDATA_UNKNOWN = 0,      /**<Unknown type*/ /**<CNcomment: 未知类型*/
    HI_UNF_VIDEO_USERDATA_DVB1_CC = 0x1,    /**<Closed Caption Data*/ /**<CNcomment: 字幕数据*/
    HI_UNF_VIDEO_USERDATA_DVB1_BAR = 0x2,   /**<Bar Data*/ /**<CNcomment: Bar数据*/
    HI_UNF_VIDEO_USERDATA_AFD = 0x10000,    /**<Active Format Description*/ /**<CNcomment: 模式描述数据*/
    HI_UNF_VIDEO_USERDATA_BUTT
}HI_UNF_VIDEO_USERDATA_TYPE_E;

/**Defines the information of video frame address.*/
/**CNcomment: 视频帧地址信息*/
typedef struct hiUNF_VIDEO_FRAME_ADDR_S
{
    HI_U32             u32YAddr;    /**<Address of the Y component in the current frame*/ /**<CNcomment: 当前帧Y分量数据的地址*/
    HI_U32             u32CAddr;    /**<Address of the C component in the current frame*/ /**<CNcomment: 当前帧C分量数据的地址*/
    HI_U32             u32CrAddr;   /**<Address of the Cr component in the current frame*/ /**<CNcomment: 当前帧Cr分量数据的地址*/

    HI_U32             u32YStride;  /**<Stride of the Y component*/ /**<CNcomment: Y分量数据的跨幅*/
    HI_U32             u32CStride;  /**<Stride of the C component*/ /**<CNcomment: C分量数据的跨幅*/
    HI_U32             u32CrStride; /**<Stride of the Cr component*/ /**<CNcomment: Cr分量数据的跨幅*/
}HI_UNF_VIDEO_FRAME_ADDR_S;


typedef struct hiUNF_VIDEO_FRAME_INFO_S
{
    HI_U32                              u32FrameIndex;      /**<Frame index ID of a video sequence*/ /**<CNcomment: 视频序列中的帧索引号*/
    HI_UNF_VIDEO_FRAME_ADDR_S           stVideoFrameAddr[2];/**<Information of video frame address, if the frame is 2D, only stVideoFrameAddr[0] is valid*/ /**<CNcomment: 视频帧地址信息, 2D帧时，仅stVideoFrameAddr[0]有效*/
    HI_U32                              u32Width;           /**<Width of the source picture*/ /**<CNcomment: 原始图像宽*/
    HI_U32                              u32Height;          /**<Height of the source picture*/ /**<CNcomment: 原始图像高*/
    HI_U32                              u32SrcPts;          /**<Original PTS of a video frame*/ /**<CNcomment: 视频帧的原始时间戳*/
    HI_U32                              u32Pts;             /**<PTS of a video frame*/ /**<CNcomment: 视频帧的时间戳*/
    HI_U32                              u32AspectWidth;     /**<Aspect width*/ /**<CNcomment: 最佳显示幅型比之宽度比值*/
    HI_U32                              u32AspectHeight;    /**<Aspect height*/ /**<CNcomment: 最佳显示幅型比之高度比值*/
    HI_UNF_VCODEC_FRMRATE_S             stFrameRate;        /**<Frame rate*/ /**<CNcomment: 帧率*/

    HI_UNF_VIDEO_FORMAT_E               enVideoFormat;      /**<Video YUV format*/ /**<CNcomment: 视频YUV格式*/
    HI_BOOL                             bProgressive;       /**<Sampling type (progressive or interlaced)*/ /**<CNcomment: 采样方式(逐行/隔行) */
    HI_UNF_VIDEO_FIELD_MODE_E           enFieldMode;        /**<Frame or field encoding mode*/ /**<CNcomment: 帧或场编码模式*/
    HI_BOOL                             bTopFieldFirst;     /**<Top field first flag*/ /**<CNcomment: 顶场优先标志*/
    HI_UNF_VIDEO_FRAME_PACKING_TYPE_E   enFramePackingType; /**<3D frame packing type*/
    HI_U32                              u32Circumrotate;    /**<Need circumrotate, 1 need */ /**<CNcomment: 是否需要旋转，1 需要*/
    HI_BOOL                             bVerticalMirror;    /**<Vertical mirror*/ /**<CNcomment: 垂直翻转*/
    HI_BOOL                             bHorizontalMirror;  /**<Horizontal mirror*/ /**<CNcomment: 水平翻转*/
    HI_U32                              u32DisplayWidth;    /**<Width of the displayed picture*/ /**<CNcomment: 显示图像宽*/
    HI_U32                              u32DisplayHeight;   /**<Height of the displayed picture*/ /**<CNcomment: 显示图像高*/
    HI_U32                              u32DisplayCenterX;  /**<Horizontal coordinate of the center of the displayed picture (the upper left point of the source picture serves as the coordinate origin)*/ /**<CNcomment: 显示中心x坐标，原始图像左上角为坐标原点*/
    HI_U32                              u32DisplayCenterY;  /**<Vertical coordinate of the center of the displayed picture (the upper left point of the source picture serves as the coordinate origin)*/ /**<CNcomment: 显示中心y坐标，原始图像左上角为坐标原点*/
    HI_U32                              u32ErrorLevel;      /**<Error percentage of a decoded picture, ranging from 0% to 100%*/ /**<CNcomment: 一幅解码图像中的错误比例，取值为0～100*/
    HI_U32                              u32Private[64];     /**<Reserved*/
}HI_UNF_VIDEO_FRAME_INFO_S;


/** @} */  /** <!-- ==== Structure Definition End ==== */

#ifdef __cplusplus
#if __cplusplus
}
#endif
#endif /* __cplusplus */

#endif /* __HI_UNF_VIDEO_ H*/
