/******************************************************************************

  Copyright (C), 2001-2011, Huawei Tech. Co., Ltd.

 ******************************************************************************
 File Name     : tde_type.h
Version       : Initial Draft
Author        : w54130
Created       : 2007/5/21
Last Modified :
Description   : TDE public type
Function List :
History       :
1.Date        : 2007/5/21
Author      : w54130
Modification: Created file

 ******************************************************************************/
#ifndef __TDE_TYPE_H__
#define __TDE_TYPE_H__


#ifdef __cplusplus
#if __cplusplus
extern "C"{
#endif
#endif /* End of #ifdef __cplusplus */

#include "hi_tde_errcode.h"

/****************************************************************************/
/*                             TDE2 types define                             */
/****************************************************************************/
/** TDE句柄定义 */
typedef HI_S32 TDE_HANDLE;

/** TDE中断回调函数 */
typedef HI_VOID (* TDE_FUNC_CB) (HI_VOID *pParaml, HI_VOID *pParamr);

typedef HI_VOID (* TDE_TRIG_SEL)(HI_U32);

/** RGB和Packet YUV 颜色格式 */
typedef enum hiTDE2_COLOR_FMT_E
{
    TDE2_COLOR_FMT_RGB444 = 0,          /**< RGB444格式, Red占4bits Green占4bits, Blue占4bits,其余格式依此类推 */
    TDE2_COLOR_FMT_BGR444,              /**< BGR444格式 */    
    TDE2_COLOR_FMT_RGB555,              /**< RGB555格式 */
    TDE2_COLOR_FMT_BGR555,              /**< BGR555格式 */
    TDE2_COLOR_FMT_RGB565,              /**< RGB565格式 */
    TDE2_COLOR_FMT_BGR565,              /**< BGR565格式 */
    TDE2_COLOR_FMT_RGB888,              /**< RGB888格式 */
    TDE2_COLOR_FMT_BGR888,              /**< BGR888格式 */
    TDE2_COLOR_FMT_ARGB4444,            /**< ARGB4444格式 */
    TDE2_COLOR_FMT_ABGR4444,            /**< ABGR4444格式 */
    TDE2_COLOR_FMT_RGBA4444,            /**< RGBA4444格式 */
    TDE2_COLOR_FMT_BGRA4444,            /**< BGRA4444格式 */
    TDE2_COLOR_FMT_ARGB1555,            /**< ARGB1555格式 */
    TDE2_COLOR_FMT_ABGR1555,            /**< ABGR1555格式 */
    TDE2_COLOR_FMT_RGBA1555,            /**< RGBA1555格式 */
    TDE2_COLOR_FMT_BGRA1555,            /**< BGRA1555格式 */
    TDE2_COLOR_FMT_ARGB8565,            /**< ARGB8565格式 */
    TDE2_COLOR_FMT_ABGR8565,            /**< ABGR8565格式 */
    TDE2_COLOR_FMT_RGBA8565,            /**< RGBA8565格式 */
    TDE2_COLOR_FMT_BGRA8565,            /**< BGRA8565格式 */
    TDE2_COLOR_FMT_ARGB8888,            /**< ARGB8888格式 */
    TDE2_COLOR_FMT_ABGR8888,            /**< ABGR8888格式 */
    TDE2_COLOR_FMT_RGBA8888,            /**< RGBA8888格式 */
    TDE2_COLOR_FMT_BGRA8888,            /**< BGRA8888格式 */
    TDE2_COLOR_FMT_CLUT1,               /**<无Alpha分量,调色板1bit格式,每个像用1个bit表示 */
    TDE2_COLOR_FMT_CLUT2,               /**<无Alpha分量,调色板2bit格式,每个像用2个bit表示 */
    TDE2_COLOR_FMT_CLUT4,               /**<无Alpha分量,调色板4bit格式,每个像用4个bit表示 */
    TDE2_COLOR_FMT_CLUT8,               /**<无Alpha分量,调色板8bit格式,每个像用8个bit表示 */
    TDE2_COLOR_FMT_ACLUT44,             /**<有Alpha分量,调色板1bit格式,每个像用1个bit表示 */
    TDE2_COLOR_FMT_ACLUT88,             /**<有Alpha分量,调色板1bit格式,每个像用1个bit表示 */
    TDE2_COLOR_FMT_A1,                  /**<alpha格式，每个点用1bit */
    TDE2_COLOR_FMT_A8,                  /**<alpha格式，每个点用8bit */
    TDE2_COLOR_FMT_YCbCr888,            /**<YUV packet格式，无alpha分量*/
    TDE2_COLOR_FMT_AYCbCr8888,          /**<YUV packet格式，有alpha分量*/
    TDE2_COLOR_FMT_YCbCr422,            /**<YUV packet422格式 */
    TDE2_COLOR_FMT_byte,                /**<仅用于数据快速copy*/
    TDE2_COLOR_FMT_halfword,            /**<仅用于数据快速copy*/
    TDE2_COLOR_FMT_JPG_YCbCr400MBP,     /**<Semi-planar YUV400格式 ,对应于JPG解码*/
    TDE2_COLOR_FMT_JPG_YCbCr422MBHP,    /**<Semi-planar YUV422格式,水平方向采样，对应于JPG解码 */
    TDE2_COLOR_FMT_JPG_YCbCr422MBVP,    /**<Semi-planar YUV422格式,垂直方向采样，对应于JPG解码 */
    TDE2_COLOR_FMT_MP1_YCbCr420MBP,     /**<Semi-planar YUV420格式 */
    TDE2_COLOR_FMT_MP2_YCbCr420MBP,     /**<Semi-planar YUV420格式 */
    TDE2_COLOR_FMT_MP2_YCbCr420MBI,     /**<Semi-planar YUV400格式 */
    TDE2_COLOR_FMT_JPG_YCbCr420MBP,     /**<Semi-planar YUV400格式,对于应于JPG */
    TDE2_COLOR_FMT_JPG_YCbCr444MBP,     /**<Semi-planar YUV444格式 */
    TDE2_COLOR_FMT_BUTT                 /**< 枚举量结束*/
} TDE2_COLOR_FMT_E;

/** Semi-planar YUV 格式定义 */
typedef enum hiTDE2_MB_COLORFMT_E
{
    TDE2_MB_COLOR_FMT_JPG_YCbCr400MBP = 0,/**<Semi-planar YUV400格式 ,对应于JPG解码*/
    TDE2_MB_COLOR_FMT_JPG_YCbCr422MBHP,   /**<Semi-planar YUV422格式,水平方向采样，对应于JPG解码 */
    TDE2_MB_COLOR_FMT_JPG_YCbCr422MBVP,   /**<Semi-planar YUV422格式,垂直方向采样，对应于JPG解码 */
    TDE2_MB_COLOR_FMT_MP1_YCbCr420MBP,    /**<Semi-planar YUV420格式 */
    TDE2_MB_COLOR_FMT_MP2_YCbCr420MBP,    /**<Semi-planar YUV420格式 */
    TDE2_MB_COLOR_FMT_MP2_YCbCr420MBI,    /**<Semi-planar YUV400格式 */
    TDE2_MB_COLOR_FMT_JPG_YCbCr420MBP,    /**<Semi-planar YUV400格式,对于应于JPG */
    TDE2_MB_COLOR_FMT_JPG_YCbCr444MBP,    /**<Semi-planar YUV444格式,对于应于JPG */
    TDE2_MB_COLOR_FMT_BUTT
} TDE2_MB_COLOR_FMT_E;

/** 用户设置的位图信息结构 */
typedef struct hiTDE2_SURFACE_S
{
    HI_U32 u32PhyAddr;              /**< 位图首地址或Y分量地址 */

    TDE2_COLOR_FMT_E enColorFmt;    /**< 颜色格式 */

    HI_U32 u32Height;               /**< 位图高度 */

    HI_U32 u32Width;                /**< 位图宽度 */

    HI_U32 u32Stride;               /**< 位图跨度或Y分量跨度 */
    HI_U8* pu8ClutPhyAddr;          /**< Clut表地址,用作颜色扩展或颜色校正*/

    HI_BOOL bYCbCrClut;             /**< Clut表是否位于YCbCr空间 */

    HI_BOOL bAlphaMax255;           /**< 位图alpha最大值为255还是128 */

    HI_BOOL bAlphaExt1555;          /**< 是否使能1555的Alpha扩展 */
    HI_U8 u8Alpha0;                 /**< Alpha0、Alpha1值，用作ARGB1555格式 */
    HI_U8 u8Alpha1;                 /**< Alpha0、Alpha1值，用作ARGB1555格式 */
    HI_U32 u32CbCrPhyAddr;          /**< CbCr分量地址,pilot */        
    HI_U32 u32CbCrStride;           /**< CbCr分量跨度,pilot */
} TDE2_SURFACE_S;

/** Semi-planar YUV格式数据定义 */
typedef struct hiTDE2_MB_S
{
    TDE2_MB_COLOR_FMT_E enMbFmt;        /**< YUV格式 */
    HI_U32              u32YPhyAddr;    /**< Y分量物理地址 */
    HI_U32              u32YWidth;      /**< Y分量宽度 */
    HI_U32              u32YHeight;     /**< Y分量高度 */
    HI_U32              u32YStride;     /**< Y分量跨度，每行字节数 */
    HI_U32              u32CbCrPhyAddr; /**< UV分量宽度 */
    HI_U32              u32CbCrStride;  /**< UV分量跨度,每行字节数 */
} TDE2_MB_S;

/** TDE矩形定义*/
typedef struct hiTDE2_RECT_S
{
    HI_S32 s32Xpos;     /**< x坐标 */
    HI_S32 s32Ypos;     /**< y坐标 */
    HI_U32 u32Width;    /**< 宽度 */
    HI_U32 u32Height;   /**< 高度 */
} TDE2_RECT_S;

/** 逻辑运算方式 */
typedef enum hiTDE2_ALUCMD_E
{
    TDE2_ALUCMD_NONE = 0x0,         /**< 不进行alpha和rop叠加 */    
    TDE2_ALUCMD_BLEND = 0x1,        /**< Alpha混合*/
    TDE2_ALUCMD_ROP = 0x2,          /**< 进行rop叠加 */
    TDE2_ALUCMD_COLORIZE = 0x4,     /**< 进行Colorize操作 */
    TDE2_ALUCMD_BUTT = 0x8          /**< 枚举结束 */
} TDE2_ALUCMD_E;

/** ROP操作码定义 */
typedef enum hiTDE2_ROP_CODE_E
{
    TDE2_ROP_BLACK = 0,     /**<Blackness*/
    TDE2_ROP_NOTMERGEPEN,   /**<~(S2 | S1)*/
    TDE2_ROP_MASKNOTPEN,    /**<~S2&S1*/
    TDE2_ROP_NOTCOPYPEN,    /**< ~S2*/
    TDE2_ROP_MASKPENNOT,    /**< S2&~S1 */
    TDE2_ROP_NOT,           /**< ~S1 */
    TDE2_ROP_XORPEN,        /**< S2^S1 */
    TDE2_ROP_NOTMASKPEN,    /**< ~(S2 & S1) */
    TDE2_ROP_MASKPEN,       /**< S2&S1 */
    TDE2_ROP_NOTXORPEN,     /**< ~(S2^S1) */
    TDE2_ROP_NOP,           /**< S1 */
    TDE2_ROP_MERGENOTPEN,   /**< ~S2|S1 */
    TDE2_ROP_COPYPEN,       /**< S2 */
    TDE2_ROP_MERGEPENNOT,   /**< S2|~S1 */
    TDE2_ROP_MERGEPEN,      /**< S2|S1 */
    TDE2_ROP_WHITE,         /**< Whiteness */
    TDE2_ROP_BUTT
} TDE2_ROP_CODE_E;

/** blit镜像定义 */
typedef enum hiTDE2_MIRROR_E
{
    TDE2_MIRROR_NONE = 0,       /**< 不进行镜像 */
    TDE2_MIRROR_HORIZONTAL,     /**< 水平镜像 */
    TDE2_MIRROR_VERTICAL,       /**< 垂直镜像 */
    TDE2_MIRROR_BOTH,           /**< 垂直和水平镜像 */
    TDE2_MIRROR_BUTT
} TDE2_MIRROR_E;

/**Clip操作类型*/
typedef enum hiTDE2_CLIPMODE_E
{
    TDE2_CLIPMODE_NONE = 0, /**< 无clip操作 */
    TDE2_CLIPMODE_INSIDE,   /**<  剪切矩形范围内的数据输出,其余扔掉*/
    TDE2_CLIPMODE_OUTSIDE,  /**< 剪切矩形范围外的数据输出，其余扔掉*/
    TDE2_CLIPMODE_BUTT
} TDE2_CLIPMODE_E;

/**宏块格式缩放类型*/
typedef enum hiTDE2_MBRESIZE_E
{
    TDE2_MBRESIZE_NONE = 0,         /**< 不做缩放 */
    TDE2_MBRESIZE_QUALITY_LOW,      /**< 低质量缩放 */
    TDE2_MBRESIZE_QUALITY_MIDDLE,   /**< 中质量缩放 */
    TDE2_MBRESIZE_QUALITY_HIGH,     /**< 高质量缩放 */
    TDE2_MBRESIZE_BUTT
} TDE2_MBRESIZE_E;

/** 填充色定义 */
typedef struct hiTDE2_FILLCOLOR_S
{
    TDE2_COLOR_FMT_E enColorFmt;    /**< TDE像素格式 */
    HI_U32           u32FillColor;  /**< 填充颜色，根据像素格式而不同 */
} TDE2_FILLCOLOR_S;

/** colorkey选择方向定义 */
typedef enum hiTDE2_COLORKEY_MODE_E
{
    TDE2_COLORKEY_MODE_NONE = 0,     /**< 不做color key */
    TDE2_COLORKEY_MODE_FOREGROUND,   /**< 对前景位图进行color key，说明:对于颜色扩展，在CLUT前做color key；对于颜色校正:在CLUT后做color key */
    TDE2_COLORKEY_MODE_BACKGROUND,   /**< 对背景位图进行color key*/
    TDE2_COLORKEY_MODE_BUTT
} TDE2_COLORKEY_MODE_E;

/** colorkey范围定义 */
typedef struct hiTDE2_COLORKEY_COMP_S
{
    HI_U8 u8CompMin;           /**< 分量最小值*/
    HI_U8 u8CompMax;           /**< 分量最大值*/
    HI_U8 bCompOut;            /**< 分量关键色在范围内/范围外*/
    HI_U8 bCompIgnore;         /**< 分量是否忽略*/
    HI_U8 u8CompMask;          /**< 分量掩码*/
    HI_U8 u8Reserved;
    HI_U8 u8Reserved1;
    HI_U8 u8Reserved2;
} TDE2_COLORKEY_COMP_S;

/** colorkey值定义 */
typedef union hiTDE2_COLORKEY_U
{
    struct
    {
        TDE2_COLORKEY_COMP_S stAlpha;   /**< alpha 分量信息 */
        TDE2_COLORKEY_COMP_S stRed;     /**< 红色分量信息 */
        TDE2_COLORKEY_COMP_S stGreen;   /**< 绿色分量信息 */
        TDE2_COLORKEY_COMP_S stBlue;    /**< 蓝色分量信息 */
    } struCkARGB;
    struct
    {
        TDE2_COLORKEY_COMP_S stAlpha;   /**< alpha 分量信息 */
        TDE2_COLORKEY_COMP_S stY;       /**< Y分量信息 */
        TDE2_COLORKEY_COMP_S stCb;      /**< Cb分量信息 */
        TDE2_COLORKEY_COMP_S stCr;      /**< Cr分量信息 */
    } struCkYCbCr;
    struct
    {
        TDE2_COLORKEY_COMP_S stAlpha;   /**< alpha 分量信息 */
        TDE2_COLORKEY_COMP_S stClut;    /**< 调色板分量信息 */
    } struCkClut;
} TDE2_COLORKEY_U;

/** 输出alpha定义 */
typedef enum hiTDE2_OUTALPHA_FROM_E
{
    TDE2_OUTALPHA_FROM_NORM = 0,    /**< 来源于alpha blending的结果或者抗闪烁的结果 */
    TDE2_OUTALPHA_FROM_BACKGROUND,  /**< 来源于背景位图 */
    TDE2_OUTALPHA_FROM_FOREGROUND,  /**< 来源于前景位图 */
    TDE2_OUTALPHA_FROM_GLOBALALPHA, /**< 来源于全局alpha */
    TDE2_OUTALPHA_FROM_BUTT
} TDE2_OUTALPHA_FROM_E;

/** 缩放滤波定义 */
typedef enum hiTDE2_FILTER_MODE_E
{
    TDE2_FILTER_MODE_COLOR = 0, /**< 对颜色进行滤波 */
    TDE2_FILTER_MODE_ALPHA,     /**< 对alpha通道滤波 */
    TDE2_FILTER_MODE_BOTH,      /**< 对颜色和alpha通道同时滤波 */
    TDE2_FILTER_MODE_BUTT
} TDE2_FILTER_MODE_E;

/**　抗闪烁处理通道配置 */
typedef enum hiTDE2_DEFLICKER_MODE_E
{
    TDE2_DEFLICKER_MODE_NONE = 0,   /**< 不做抗闪 */
    TDE2_DEFLICKER_MODE_RGB,        /**< RGB分量抗闪 */
    TDE2_DEFLICKER_MODE_BOTH,       /**< alpha分量抗闪 */
    TDE2_DEFLICKER_MODE_BUTT
}TDE2_DEFLICKER_MODE_E;

/* blend mode */
typedef enum hiTDE2_BLEND_MODE_E
{
    TDE2_BLEND_ZERO = 0x0,
    TDE2_BLEND_ONE,
    TDE2_BLEND_SRC2COLOR,
    TDE2_BLEND_INVSRC2COLOR,
    TDE2_BLEND_SRC2ALPHA,
    TDE2_BLEND_INVSRC2ALPHA,
    TDE2_BLEND_SRC1COLOR,
    TDE2_BLEND_INVSRC1COLOR,
    TDE2_BLEND_SRC1ALPHA,
    TDE2_BLEND_INVSRC1ALPHA,
    TDE2_BLEND_SRC2ALPHASAT,
    TDE2_BLEND_BUTT
}TDE2_BLEND_MODE_E;

/** alpha混合命令,可以选择自己配置参数，也可以选择Porter/Duff中的一种 */
/* pixel = (source * fs + destination * fd),
   sa = source alpha,
   da = destination alpha */
typedef enum hiTDE2_BLENDCMD_E
{
    TDE2_BLENDCMD_NONE = 0x0,     /**< fs: sa      fd: 1.0-sa */
    TDE2_BLENDCMD_CLEAR,    /**< fs: 0.0     fd: 0.0 */
    TDE2_BLENDCMD_SRC,      /**< fs: 1.0     fd: 0.0 */
    TDE2_BLENDCMD_SRCOVER,  /**< fs: 1.0     fd: 1.0-sa */
    TDE2_BLENDCMD_DSTOVER,  /**< fs: 1.0-da  fd: 1.0 */
    TDE2_BLENDCMD_SRCIN,    /**< fs: da      fd: 0.0 */
    TDE2_BLENDCMD_DSTIN,    /**< fs: 0.0     fd: sa */
    TDE2_BLENDCMD_SRCOUT,   /**< fs: 1.0-da  fd: 0.0 */
    TDE2_BLENDCMD_DSTOUT,   /**< fs: 0.0     fd: 1.0-sa */
    TDE2_BLENDCMD_SRCATOP,  /**< fs: da      fd: 1.0-sa */
    TDE2_BLENDCMD_DSTATOP,  /**< fs: 1.0-da  fd: sa */
    TDE2_BLENDCMD_ADD,      /**< fs: 1.0     fd: 1.0 */
    TDE2_BLENDCMD_XOR,      /**< fs: 1.0-da  fd: 1.0-sa */
    TDE2_BLENDCMD_DST,      /**< fs: 0.0     fd: 1.0 */
    TDE2_BLENDCMD_CONFIG,   /**< 用户自己配置参数*/
    TDE2_BLENDCMD_BUTT
}TDE2_BLENDCMD_E;
/* alpha混合操作选项 */
typedef struct hiTDE2_BLEND_OPT_S
{
    HI_BOOL  bGlobalAlphaEnable;        /**< 是否使能全局alpha */
    HI_BOOL  bPixelAlphaEnable;         /**< 是否使能象素alpha */
    HI_BOOL bSrc1AlphaPremulti;         /**< 是否使能Src1 alpha预乘 */
    HI_BOOL bSrc2AlphaPremulti;         /**< 是否使能Src2 alpha预乘 */
    TDE2_BLENDCMD_E eBlendCmd;          /**< alpha混合命令*/    
    TDE2_BLEND_MODE_E eSrc1BlendMode;   /**< Src1 blend模式选择,在eBlendCmd = TDE2_BLENDCMD_CONFIG时有效 */
    TDE2_BLEND_MODE_E eSrc2BlendMode;   /**< Src2 blend模式选择,在eBlendCmd = TDE2_BLENDCMD_CONFIG时有效 */
}TDE2_BLEND_OPT_S;

/* CSC参数选项*/
typedef struct hiTDE2_CSC_OPT_S
{
    HI_BOOL bICSCUserEnable;		/** 用户自定义ICSC参数使能*/
    HI_BOOL bICSCParamReload;	/** 重新加载用户自定义ICSC参数使能*/
    HI_BOOL bOCSCUserEnable;		/** 用户自定义OCSC参数使能*/
    HI_BOOL bOCSCParamReload;	/** 重新加载用户自定义OCSC参数使能*/
    HI_U32 u32ICSCParamAddr;		/** ICSC参数地址，要求128bit对齐*/
    HI_U32 u32OCSCParamAddr;	/** OCSC参数地址，要求128bit对齐*/
}TDE2_CSC_OPT_S;

/** blit操作选项定义 */
typedef struct hiTDE2_OPT_S
{
    TDE2_ALUCMD_E enAluCmd;                 /**<逻辑运算类型*/

    TDE2_ROP_CODE_E enRopCode_Color;        /**<颜色空间ROP类型*/

    TDE2_ROP_CODE_E enRopCode_Alpha;        /**<Alpha的ROP类型*/

    TDE2_COLORKEY_MODE_E enColorKeyMode;    /**<color key方式*/

    TDE2_COLORKEY_U unColorKeyValue;        /**<color key设置值*/

    TDE2_CLIPMODE_E enClipMode;             /**<区域内作clip还是区域外作clip*/

    TDE2_RECT_S stClipRect;                 /**<clip区域定义*/

    TDE2_DEFLICKER_MODE_E enDeflickerMode;  /**<抗闪烁模式*/

    HI_BOOL bResize;                        /**<是否缩放*/

    TDE2_FILTER_MODE_E enFilterMode;        /**< 缩放时使用的滤波模式 */

    TDE2_MIRROR_E enMirror;                 /**<镜像类型*/

    HI_BOOL bClutReload;                    /**<是否重新加载Clut表*/

    HI_U8   u8GlobalAlpha;                  /**<全局Alpha值*/

    TDE2_OUTALPHA_FROM_E enOutAlphaFrom;    /**<输出alpha来源*/
    
    HI_U32 u32Colorize;                     /**< Colorize值 */

    TDE2_BLEND_OPT_S stBlendOpt;

    TDE2_CSC_OPT_S stCscOpt;	
} TDE2_OPT_S;


/** 宏块操作选项定义 */
typedef struct hiTDE2_MBOPT_S
{
    TDE2_CLIPMODE_E enClipMode;     /**< Clip模式选择*/

    TDE2_RECT_S stClipRect;         /**< clip区域定义*/

    HI_BOOL bDeflicker;             /**< 是否抗闪烁*/

    TDE2_MBRESIZE_E enResize;       /**< 缩放信息*/

    HI_BOOL bSetOutAlpha;           /**< 如果不设置Alpha,则默认输出最大Alpha值*/
    
    HI_U8   u8OutAlpha;             /**< 参加运算的全局alpha */
} TDE2_MBOPT_S;

/** 模式填充操作信息定义 */
typedef struct hiTDE2_PATTERN_FILL_OPT_S
{
    TDE2_ALUCMD_E enAluCmd;                 /**< 逻辑运算类型*/

    TDE2_ROP_CODE_E enRopCode_Color;        /**< 颜色空间ROP类型*/

    TDE2_ROP_CODE_E enRopCode_Alpha;        /**< alpha的ROP类型*/

    TDE2_COLORKEY_MODE_E enColorKeyMode;    /**< color key方式*/

    TDE2_COLORKEY_U unColorKeyValue;        /**< color key值*/

    TDE2_CLIPMODE_E enClipMode;             /**< clip模式*/

    TDE2_RECT_S stClipRect;                 /**< clip区域*/

    HI_BOOL bClutReload;                    /**< 是否重载clut表*/

    HI_U8 u8GlobalAlpha;                    /**< 全局alpha*/

    TDE2_OUTALPHA_FROM_E enOutAlphaFrom;    /**< 输出alpha来源*/

    HI_U32 u32Colorize;                     /* Colorize值*/

    TDE2_BLEND_OPT_S stBlendOpt;            /* Blend操作选项 */

    TDE2_CSC_OPT_S stCscOpt;		/* Csc参数选项*/
    
}TDE2_PATTERN_FILL_OPT_S;

/** 旋转方向定义 */
typedef enum hiTDE_ROTATE_ANGLE_E
{
    TDE_ROTATE_CLOCKWISE_90 = 0,    /**<  顺时针旋转90度 */
    TDE_ROTATE_CLOCKWISE_180,       /**<  顺时针旋转180度 */
    TDE_ROTATE_CLOCKWISE_270,       /**<  顺时针旋转270度 */
    TDE_ROTATE_BUTT
} TDE_ROTATE_ANGLE_E;


/** 抗闪烁级别定义 */
typedef enum hiTDE_DEFLICKER_LEVEL_E
{
    TDE_DEFLICKER_AUTO = 0, /**< *<自适应，由TDE选择抗闪烁系数*/
    TDE_DEFLICKER_LOW,      /**< *低级别抗闪烁*/
    TDE_DEFLICKER_MIDDLE,   /**< *中级别抗闪烁*/
    TDE_DEFLICKER_HIGH,     /**< *高级别抗闪烁*/
    TDE_DEFLICKER_BUTT
}TDE_DEFLICKER_LEVEL_E;


#ifdef __cplusplus
#if __cplusplus
}
#endif
#endif /* End of #ifdef __cplusplus */


#endif /* End of #ifndef __TDE_TYPE_H__ */


