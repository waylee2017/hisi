/******************************************************************************
*
* Copyright (C) 2014 Hisilicon Technologies Co., Ltd.  All rights reserved. 
*
* This program is confidential and proprietary to Hisilicon  Technologies Co., Ltd. (Hisilicon), 
* and may not be copied, reproduced, modified, disclosed to others, published or used, in
* whole or in part, without the express prior written permission of Hisilicon.
*
******************************************************************************
File Name           : hifb_main.c
Version             : Initial Draft
Author              : 
Created             : 2014/08/06
Description         : the vdp base register ddr is 0x10110000
Function List       : 
History             :
Date                       Author                   Modification
2014/08/06                 y00181162                Created file        
******************************************************************************/

/*********************************add include here******************************/
#include <linux/ctype.h>
#include <linux/module.h>
#include <linux/kernel.h>
#include <linux/errno.h>
#include <linux/string.h>
#include <linux/delay.h>
#include <linux/time.h>

#include <linux/slab.h>
#include <linux/mm.h>

#include <linux/fb.h>
#include <asm/uaccess.h>

#include <asm/io.h>
#include <asm/types.h>
#include <asm/stat.h>
#include <asm/fcntl.h>

#include <linux/interrupt.h>
#include "hi_module.h"
#include "hi_drv_module.h"

#include "drv_dev_ext.h"
#include "drv_pdm_ext.h"
#include "hi_debug.h"
#include "drv_disp_ext.h"
#include "hi_drv_proc.h"

#include "hifb_drv.h"

#include "hifb.h"
#include "hifb_p.h"
#include "hifb_comm.h"

#include "hi_gfx_comm_k.h"

#ifdef CFG_HIFB_SCROLLTEXT_SUPPORT
#include "hifb_scrolltext.h"
#endif


#ifdef HI_MCE_SUPPORT
#include "hi_drv_mce.h"
#endif


/***************************** Macro Definition ******************************/
#ifdef HI_ADVCA_FUNCTION_RELEASE
#define HIFB_PROC_SUPPORT            0
#else
#define HIFB_PROC_SUPPORT            1
#endif


#ifdef HI_ADVCA_FUNCTION_RELEASE
#define HIGO_PROC_SUPPORT            0
#else
/** HIGO proc基本上没用到，这里就不用多余的内存了 **/
#define HIGO_PROC_SUPPORT            0
#endif


#define HIFB_MAX_WIDTH(u32LayerId)    s_stDrvHIFBOps.pstCapability[u32LayerId].u32MaxWidth
#define HIFB_MAX_HEIGHT(u32LayerId)   s_stDrvHIFBOps.pstCapability[u32LayerId].u32MaxHeight
#define HIFB_MIN_WIDTH(u32LayerId)    s_stDrvHIFBOps.pstCapability[u32LayerId].u32MinWidth
#define HIFB_MIN_HEIGHT(u32LayerId)   s_stDrvHIFBOps.pstCapability[u32LayerId].u32MinHeight

#define IS_STEREO_ENCPICFRAMING(enEncPicFraming) (  (HIFB_ENCPICFRM_STEREO_SIDEBYSIDE_HALF == enEncPicFraming)\
                                                     || (HIFB_ENCPICFRM_STEREO_TOPANDBOTTOM == enEncPicFraming))


#define IS_STEREO_SW_HWHALF(par)   IS_STEREO_ENCPICFRAMING(par->stDisplayInfo.enEncPicFraming)
#define IS_STEREO_HWHALF(par)      IS_STEREO_ENCPICFRAMING(par->stDisplayInfo.enEncPicFraming)


#define SCALE_K1(par)  par->stDisplayInfo.u32StereoScreenWidth/par->stDisplayInfo.u32MaxScreenWidth
#define SCALE_K2(par)  par->stDisplayInfo.u32StereoScreenHeight/par->stDisplayInfo.u32MaxScreenHeight



/** 要是cfg.mak中没有通过make menuconfig配置则使用自定义大小 **/
#if defined(CFG_HI_HD_FB_VRAM_SIZE)
#define HD0_LAYER_SIZE            CFG_HI_HD_FB_VRAM_SIZE
#elif defined(CFG_HI_SD_FB_VRAM_SIZE)
/**只有Hi3110EV500使用这个配置选项**/
#define HD0_LAYER_SIZE            CFG_HI_SD_FB_VRAM_SIZE
#else
#define HD0_LAYER_SIZE            0
#endif

/**
 **Hi3110EV500/MV310/MV320使用同源回写，不单独使用该图层
 **/
#define SD_LAYER_SIZE             0


/**
 **鼠标和字幕
 **/
#if defined(CFG_HI_AD0_FB_VRAM_SIZE)
#define AD0_LAYER_SIZE            CFG_HI_AD0_FB_VRAM_SIZE
#else
#define AD0_LAYER_SIZE            0
#endif

#define FBNAME "HI_FB"



/**
 **性能统计的时候打开
 **/
//#define TEST_HIFBMAIN_CAPA

#ifdef TEST_HIFBMAIN_CAPA
#define HIFBMAIN_TINIT()   struct timeval tv_start, tv_end; unsigned int time_cost,line_start
#define HIFBMAIN_TSTART()  do_gettimeofday(&tv_start);line_start = __LINE__
#define HIFBMAIN_TEND()    \
do_gettimeofday(&tv_end); \
time_cost = ((tv_end.tv_usec - tv_start.tv_usec) + (tv_end.tv_sec - tv_start.tv_sec)*1000000);  \
HIFB_TRACE("=============================================================================\n"); \
HIFB_TRACE("FROM LINE: %d TO LINE: %d COST: %d us\n",line_start, __LINE__, time_cost);         \
HIFB_TRACE("=============================================================================\n")
#endif


/** 等待待机唤醒 **/
#define WAKEUP_MODE_ADDR        0x101e00c4
/** 待机超时 **/
#define TIMER_WAKEUP            2

/*************************** Structure Definition ****************************/


/********************** Global Variable declaration **************************/

/**
 ** 底下这两个参数是通过加载KO的时候带入，会优先执行
 **/
static char* display = "off";
module_param(display, charp, S_IRUGO);

static char* video = NULL;
module_param(video, charp, S_IRUGO);


/**
 ** to save layer id and layer size 
 **/
HIFB_LAYER_S s_stLayer[HIFB_MAX_LAYER_NUM];
/**
 ** display相关函数获取
 **/
DISP_EXPORT_FUNC_S *ps_DispExportFuncs;
/**
 ** TDE相关函数获取
 **/
HIFB_DRV_TDEOPS_S s_stDrvTdeOps;
/**
 ** fb驱动能力级
 **/
static HIFB_DRV_OPS_S s_stDrvHIFBOps;


/** if not has insmod para,use this size
 ** 默认的图层大小
 **/
static HI_U32 u32LayerSizeArray[HIFB_MAX_LAYER_NUM] =
{
    SD_LAYER_SIZE,         /** fb0 **/
    0,                     /** fb1 **/
    HD0_LAYER_SIZE,        /** fb2 **/
    0,                     /** fb3 **/
    AD0_LAYER_SIZE,        /** fb4 **/
    0,                     /** fb5 **/
    0,                     /** fb6 **/
};

#ifdef CFG_HIFB_SCROLLTEXT_SUPPORT
/*define this array to save the private info of scrolltext layer*/
HIFB_SCROLLTEXT_INFO_S s_stTextLayer[HIFB_LAYER_ID_BUTT];
#endif

/**
 **像素格式要和hifb.h中匹配
 **/
#if HIFB_PROC_SUPPORT
static const HI_CHAR* s_pszFmtName[] = 
{
    "RGB565",
    "RGB888",
    "KRGB444",
    "KRGB555",

    "KRGB888",
    "ARGB4444",
    "ARGB1555",
    "ARGB8888",

    "ARGB8565",
    "RGBA4444",
    "RGBA5551",
    "RGBA5658",

    "RGBA8888",
    "BGR565",
    "BGR888",
    "ABGR4444",

	"ABGR1555",
    "ABGR8888",
    "ABGR8565",
    "KBGR444",

    "KBGR555",
    "KBGR888",
    "1BPP",
    "2BPP",

    "4BPP",
    "8BPP",
    "ACLUT44",
    "ACLUT88",

    "PUYVY",
    "PYUYV",
    "PYVYU",
    "YUV888",
    
    "AYUV8888",
    "YUVA8888",
    
    "BUTT"
};
#endif

/**
 **图层名字
 **/
const static HI_CHAR* s_pszLayerName[] = 
{
	"layer_sd_0",
	"layer_sd_1",
	"layer_hd_0",
	"layer_hd_1",
    "layer_ad_0",
    "layer_cursor",
    "layer_ad_1"
};

/**
 ** 默认固定信息
 **/
static struct fb_fix_screeninfo s_stDefFix[HIFB_LAYER_TYPE_BUTT] =
{
    {/**HD**/
        .id           = "hifb",                  /** 设备驱动名称                                            **/
	    .smem_start   = 0,                       /** 显存起始物理地址                                        **/
		.smem_len     = 0,                       /** 显存大小                                                **/
        .type         = FB_TYPE_PACKED_PIXELS,   /** 显卡类型,固定为FB_TYPE_PACKED_PIXELS,表示象素值紧密排列 **/
		.type_aux     = 0,                       /** 附加类型,不支持,在FB_TYPE_PACKED_PIXELS显卡类型下无含义 **/
        .visual       = FB_VISUAL_TRUECOLOR,     /** 色彩模式,不支持，默认为FB_VISUAL_TRUECOLOR，真彩色      **/
        .xpanstep     = 1,                       /** 支持水平方向上的PAN显示:0:不支持,非0:支持,此时该值用于表示在水平方向上每步进的象素值,固定为1 **/
        .ypanstep     = 1,                       /** 支持垂直方向上的PAN显示:0:不支持,非0:支持,此时该值用于表示在垂直方向上每步进的象素值,固定为1 **/
        .ywrapstep    = 0,                       /** 该方式类似于ypanstep,不同之处在于:当其显示到底部时,能回到显存的开始处进行显示,不支持,默认为0 **/
        .line_length  = HIFB_HD_DEF_STRIDE,      /** 每行字节数                        **/
        .mmio_len     = 0,                       /** 显存映射I/O首地址,不支持，默认为0 **/
        .mmio_start   = 0,                       /** 显存映射I/O长度,不支持，默认为0   **/
        .accel        = FB_ACCEL_NONE,           /** 显示所支持的硬件加速设备,不支持,默认为FB_ACCEL_NONE，无加速设备**/
        .capabilities = 0,                       /** 调色板 **/
    },
    {/**SD**/
        .id           = "hifb",
		.smem_start   = 0,
		.smem_len     = 0,
        .type         = FB_TYPE_PACKED_PIXELS,
		.type_aux     = 0,
        .visual       = FB_VISUAL_TRUECOLOR,
        .xpanstep     = 1,
        .ypanstep     = 1,
        .ywrapstep    = 0,
        .line_length  = HIFB_SD_DEF_STRIDE,     /** SD stride **/
        .mmio_len     = 0,
        .mmio_start   = 0,
        .accel        = FB_ACCEL_NONE,
        .capabilities = 0,
    },
    {/**AD**/
        .id           = "hifb",
		.smem_start   = 0,
		.smem_len     = 0,
        .type         = FB_TYPE_PACKED_PIXELS,
		.type_aux     = 0,
        .visual       = FB_VISUAL_TRUECOLOR,
        .xpanstep     = 1,
        .ypanstep     = 1,
        .ywrapstep    = 0,
        .line_length  = HIFB_AD_DEF_STRIDE,     /** AD stride **/
        .mmio_len     = 0,
        .mmio_start   = 0,
        .accel        = FB_ACCEL_NONE,
        .capabilities = 0,
    }
};
/**
 ** 默认可变信息
 **/
static struct fb_var_screeninfo s_stDefVar[HIFB_LAYER_TYPE_BUTT] =
{
    /**HD**/
    {
        .xres			= HIFB_HD_DEF_WIDTH,          /** 可见屏幕宽度（象素数） **/
        .yres			= HIFB_HD_DEF_HEIGHT,         /** 可见屏幕高度（象素数） **/
        .xres_virtual	= HIFB_HD_DEF_WIDTH,          /** 虚拟屏幕宽度（显存中图像宽度），当该值小于xres时会修改xres，使xres值与该值相等 **/
        .yres_virtual	= HIFB_HD_DEF_HEIGHT,         /** 虚拟屏幕高度（显存中图像高度），当该值小于yres时会修改yres，使yres值与该值相等。结合xres_virtual，可以用来快速水平或垂直平移图像 **/
        .xoffset        = 0,                          /** 在x方向上的偏移象素数 **/
        .yoffset        = 0,                          /** 在y方向上的偏移象素数 **/
        .bits_per_pixel = HIFB_DEF_DEPTH,             /** 每个象素所占的比特数  **/
        .red			= {10, 5, 0},                /** 颜色分量中红色的位域信息 **/
        .green			= {5, 5, 0},                 /** 颜色分量中绿色的位域信息 **/
        .blue			= {0, 5, 0},                 /** 颜色分量中蓝色的位域信息 **/
        .transp			= {15, 1, 0},                /** 颜色分量中alpha分量的位域信息 **/
        .activate		= FB_ACTIVATE_NOW,           /** 设置生效的时刻,不支持，缺省值为FB_ACTIVATE_NOW，表示设置立刻生效，和FB_ACTIVATE_VBL表示垂直消隐区生效 **/
        .pixclock		= -1,                        /** 显示一个点需要的时间，单位为1E-9秒 **/
        .left_margin	= -1,                        /** 分别是左消隐信号、右消隐信号、水平同步时长，这三个值之和等于水平回扫时间，单位为点时钟**/
        .right_margin	= -1,                        /** **/
        .hsync_len		= -1,                        /** **/
        .upper_margin	= -1,                        /** 分别是上消隐信号、下消隐信号、垂直同步时长，这三个值之和等于垂直回扫时间，单位为点时钟**/
        .lower_margin	= -1,                        /** **/
        .vsync_len		= -1,                        /** **/
    },
    /**SD**/
    {
        .xres			= HIFB_SD_DEF_WIDTH,
        .yres			= HIFB_SD_DEF_HEIGHT,
        .xres_virtual	= HIFB_SD_DEF_WIDTH,
        .yres_virtual	= HIFB_SD_DEF_HEIGHT,
        .xoffset        = 0,
        .yoffset        = 0,
        .bits_per_pixel = HIFB_DEF_DEPTH,
        .red			= {10, 5, 0},
        .green			= {5, 5, 0},
        .blue			= {0, 5, 0},
        .transp			= {15, 1, 0},
        .activate		= FB_ACTIVATE_NOW,
        .pixclock		= -1,
        .left_margin	= -1,
        .right_margin	= -1,
        .hsync_len		= -1,
        .upper_margin	= -1,
        .lower_margin	= -1,
        .vsync_len		= -1,
    },
    /**AD**/
    {
        .xres			= HIFB_AD_DEF_WIDTH,
        .yres			= HIFB_AD_DEF_HEIGHT,
        .xres_virtual	= HIFB_AD_DEF_WIDTH,
        .yres_virtual	= HIFB_AD_DEF_HEIGHT,
        .xoffset        = 0,
        .yoffset        = 0,
        .bits_per_pixel = HIFB_DEF_DEPTH,
        .red			= {10, 5, 0},
        .green			= {5, 5, 0},
        .blue			= {0, 5, 0},
        .transp			= {15, 1, 0},
        .activate		= FB_ACTIVATE_NOW,
        .pixclock		= -1,
        .left_margin	= -1,
        .right_margin	= -1,
        .hsync_len		= -1,
        .upper_margin	= -1,
        .lower_margin	= -1,
        .vsync_len		= -1,
    }
};

/* bit filed info of color fmt, the order must be the same as HIFB_COLOR_FMT_E */
static HIFB_ARGB_BITINFO_S s_stArgbBitField[] =
{   /*RGB565*/
    {
        .stRed    = {11, 5, 0},
        .stGreen  = {5, 6, 0},
        .stBlue   = {0, 5, 0},
        .stTransp = {0, 0, 0},
    },
    /*RGB888*/
    {
        .stRed    = {16, 8, 0},
        .stGreen  = {8, 8, 0},
        .stBlue   = {0, 8, 0},
        .stTransp = {0, 0, 0},
    },
    /*KRGB444*/
    {
        .stRed    = {8, 4, 0},
        .stGreen  = {4, 4, 0},
        .stBlue   = {0, 4, 0},
        .stTransp = {0, 0, 0},
    },
    /*KRGB555*/
    {
        .stRed    = {10, 5, 0},
        .stGreen  = {5, 5, 0},
        .stBlue   = {0, 5, 0},
        .stTransp = {0, 0, 0},
    },
    /*KRGB888*/
    {
        .stRed    = {16,8, 0},
        .stGreen  = {8, 8, 0},
        .stBlue   = {0, 8, 0},
        .stTransp = {0, 0, 0},
    },
    /*ARGB4444*/
    {
        .stRed    = {8, 4, 0},
        .stGreen  = {4, 4, 0},
        .stBlue   = {0, 4, 0},
        .stTransp = {12, 4, 0},
    },
    /*ARGB1555*/
    {
        .stRed    = {10, 5, 0},
        .stGreen  = {5, 5, 0},
        .stBlue   = {0, 5, 0},
        .stTransp = {15, 1, 0},
    },
    /*ARGB8888*/
    {
        .stRed    = {16, 8, 0},
        .stGreen  = {8, 8, 0},
        .stBlue   = {0, 8, 0},
        .stTransp = {24, 8, 0},
    },
    /*ARGB8565*/
    {
        .stRed    = {11, 5, 0},
        .stGreen  = {5, 6, 0},
        .stBlue   = {0, 5, 0},
        .stTransp = {16, 8, 0},
    },
    /*RGBA4444*/
    {
        .stRed    = {12, 4, 0},
        .stGreen  = {8, 4, 0},
        .stBlue   = {4, 4, 0},
        .stTransp = {0, 4, 0},
    },
    /*RGBA5551*/
    {
        .stRed    = {11, 5, 0},
        .stGreen  = {6, 5, 0},
        .stBlue   = {1, 5, 0},
        .stTransp = {0, 1, 0},
    },    
    /*RGBA5658*/
    {
        .stRed    = {19, 5, 0},
        .stGreen  = {13, 6, 0},
        .stBlue   = {8, 5, 0},
        .stTransp = {0, 8, 0},
    },  
    /*RGBA8888*/
    {
        .stRed    = {24, 8, 0},
        .stGreen  = {16, 8, 0},
        .stBlue   = {8, 8, 0},
        .stTransp = {0, 8, 0},
    },
    /*BGR565*/
    {
        .stRed    = {0, 5, 0},
        .stGreen  = {5, 6, 0},
        .stBlue   = {11, 5, 0},
        .stTransp = {0, 0, 0},
    },
    /*BGR888*/
    {
        .stRed    = {0, 8, 0},
        .stGreen  = {8, 8, 0},
        .stBlue   = {16, 8, 0},
        .stTransp = {0, 0, 0},
    },
    /*ABGR4444*/
    {
        .stRed    = {0, 4, 0},
        .stGreen  = {4, 4, 0},
        .stBlue   = {8, 4, 0},
        .stTransp = {12, 4, 0},
    },
    /*ABGR1555*/
    {
        .stRed    = {0, 5, 0},
        .stGreen  = {5, 5, 0},
        .stBlue   = {10, 5, 0},
        .stTransp = {15, 1, 0},
    },
    /*ABGR8888*/
    {
        .stRed    = {0, 8, 0},
        .stGreen  = {8, 8, 0},
        .stBlue   = {16, 8, 0},
        .stTransp = {24, 8, 0},
    },
    /*ABGR8565*/
    {
        .stRed    = {0, 5, 0},
        .stGreen  = {5, 6, 0},
        .stBlue   = {11, 5, 0},
        .stTransp = {16, 8, 0},
    },
    /*KBGR444 16bpp*/
    {
        .stRed    = {0, 4, 0},
        .stGreen  = {4, 4, 0},
        .stBlue   = {8, 4, 0},
        .stTransp = {0, 0, 0},
    },
    /*KBGR555 16bpp*/
    {
        .stRed    = {0, 5, 0},
        .stGreen  = {5, 5, 0},
        .stBlue   = {10, 5, 0},
        .stTransp = {0, 0, 0},
    },
    /*KBGR888 32bpp*/
    {
        .stRed    = {0, 8, 0},
        .stGreen  = {8, 8, 0},
        .stBlue   = {16, 8, 0},
        .stTransp = {0, 0, 0},
    },
    
    /*1bpp*/
    {
        .stRed = {0, 1, 0},
        .stGreen = {0, 1, 0},
        .stBlue = {0, 1, 0},
        .stTransp = {0, 0, 0},
    },
    /*2bpp*/
    {
        .stRed = {0, 2, 0},
        .stGreen = {0, 2, 0},
        .stBlue = {0, 2, 0},
        .stTransp = {0, 0, 0},
    },
    /*4bpp*/
    {
        .stRed = {0, 4, 0},
        .stGreen = {0, 4, 0},
        .stBlue = {0, 4, 0},
        .stTransp = {0, 0, 0},
    },
    /*8bpp*/
    {
        .stRed = {0, 8, 0},
        .stGreen = {0, 8, 0},
        .stBlue = {0, 8, 0},
        .stTransp = {0, 0, 0},
    },
    /*ACLUT44*/
    {
        .stRed = {4, 4, 0},
        .stGreen = {4, 4, 0},
        .stBlue = {4, 4, 0},
        .stTransp = {0, 4, 0},
    },
    /*ACLUT88*/
    {
        .stRed = {8, 8, 0},
        .stGreen = {8, 8, 0},
        .stBlue = {8, 8, 0},
        .stTransp = {0, 8, 0},
    }
};


static HI_BOOL gs_bHifbResumeMask = HI_FALSE;
static HI_BOOL gs_bHifbSuspend    = HI_FALSE;

/******************************* API forward declarations *******************/

#ifdef CFG_HIFB_STEREO3D_HW_SUPPORT
static HI_S32 hifb_clearallstereobuf(struct fb_info *info);
#endif
static HI_S32 hifb_refresh(HI_U32 u32LayerId, HIFB_BUFFER_S *pstCanvasBuf, HIFB_LAYER_BUF_E enBufMode);
static HI_VOID hifb_select_antiflicker_mode(HIFB_PAR_S *pstPar);
static HI_S32 hifb_refreshall(struct fb_info *info);
static HI_S32 hifb_tde_callback(HI_VOID *pParaml, HI_VOID *pParamr);
static HI_S32 hifb_setcolreg(unsigned regno, unsigned red, unsigned green,
                unsigned blue, unsigned transp, struct fb_info *info);
static HI_S32 hifb_pan_display(struct fb_var_screeninfo *var, struct fb_info *info);

/******************************* API realization *****************************/



/***************************************************************************************
* func          : hifb_clear_logo
* description   : CNcomment: logo过渡 CNend\n
* param[in]     : 
* retval        : NA
* others:       : NA
***************************************************************************************/
static HI_VOID hifb_logo_app(HIFB_PAR_S* par)
{

#ifdef HI_MCE_SUPPORT
		HI_UNF_MCE_STOPPARM_S stStopParam = {0};
#endif
		PDM_EXPORT_FUNC_S   *pstPdmFuncs = HI_NULL;
		(HI_VOID) HI_DRV_MODULE_GetFunction(HI_ID_PDM, (HI_VOID **)&pstPdmFuncs);
		
		if(NULL == par){
			return;
		}

		if(HIFB_LAYER_BUF_DOUBLE == par->stBufInfo.enBufMode){
    		while(HI_FALSE == par->stBufInfo.bRefreshed){msleep(1);}
    	}

		/**
		 ** 双buffer的情况下保证图层切完地址之后在下一个中断生效
		 **/
		s_stDrvHIFBOps.HIFB_DRV_WaitVBlank(par->u32LayerID);
		
        if (par->u32LayerID != HIFB_LAYER_AD_0){ 
           s_stDrvHIFBOps.HIFB_DRV_EnableLayer(par->u32LayerID, HI_TRUE);
           s_stDrvHIFBOps.HIFB_DRV_UpdataLayerReg(par->u32LayerID);
		   s_stDrvHIFBOps.HIFB_DRV_EnableLayer(HIFB_LAYER_AD_0, HI_FALSE);
		   s_stDrvHIFBOps.HIFB_DRV_UpdataLayerReg(HIFB_LAYER_AD_0);
        }else{
            s_stDrvHIFBOps.HIFB_DRV_EnableLayer(HIFB_LAYER_AD_0,HI_TRUE);  
            s_stDrvHIFBOps.HIFB_DRV_UpdataLayerReg(HIFB_LAYER_AD_0);
        }
		par->bShow          = HI_TRUE;
		par->bBootLogoToApp = HI_FALSE;
		
		par->u32ParamModifyMask |= HIFB_LAYER_PARAMODIFY_INRECT;
		par->u32ParamModifyMask |= HIFB_LAYER_PARAMODIFY_OUTRECT;


#ifdef HI_MCE_SUPPORT
		/**
		 **clear mem
		 **/
		stStopParam.enStopMode   = HI_UNF_MCE_STOPMODE_BLACK;
		stStopParam.u32PlayCount = 1;
		stStopParam.u32PlayTime  = 0;
		stStopParam.hNewWin      = HI_NULL;
		HI_DRV_MCE_Stop(&stStopParam);
#endif
		/** 在更新点之前释放，或者延迟2帧所有的时间 **/
		s_stDrvHIFBOps.HIFB_DRV_WaitVBlank(par->u32LayerID);

		if (HI_NULL != pstPdmFuncs){
			msleep(60);/** delay 3fps **/
			pstPdmFuncs->pfnPDM_ReleaseReserveMem("LAYER_SURFACE");
			pstPdmFuncs->pfnPDM_ReleaseReserveMem("VO_GfxWbc2");
		}
}

/***************************************************************************************
* func          : hifb_islayeropen
* description   : CNcomment: 判断图层是否打开 CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
static HI_S32 hifb_islayeropen(HI_U32 u32LayerID)
{
    struct fb_info *info;
    HIFB_PAR_S *pstPar;
    HI_S32 s32Ret;

    info  = s_stLayer[u32LayerID].pstInfo;
    pstPar = (HIFB_PAR_S *)info->par;
    s32Ret = atomic_read(&pstPar->ref_count);
    if (s32Ret > 0)
    {
        return HI_SUCCESS;
    }        
    return HI_FAILURE;
}

/*****************************************************************************
 Prototype    : hifb_getfmtbyargb
 Description  : get pixel format by argb bitfield
 Input        : struct fb_bitfield red
                struct fb_bitfield green
                struct fb_bitfield blue
                struct fb_bitfield transp
 Output       : None
 Return Value : static
 Calls        :
 Called By    :

  History        :
  1.Date         : 2006/11/9
    Author       : w54130
    Modification : Created function

*****************************************************************************/
static HIFB_COLOR_FMT_E hifb_getfmtbyargb(struct fb_bitfield *red, struct fb_bitfield *green,
                                          struct fb_bitfield *blue, struct fb_bitfield *transp, HI_U32 u32ColorDepth)
{
    HI_U32 i = 0;
    HI_U32 u32Bpp;

    /* not support color palette low than 8bit*/
    if (u32ColorDepth < 8)
    {
        return  HIFB_FMT_BUTT;   
    }
    
    if (u32ColorDepth == 8)
    {
        return HIFB_FMT_8BPP;
    }

    for (i = 0; i < sizeof(s_stArgbBitField)/sizeof(HIFB_ARGB_BITINFO_S); i++)
    {
        if ((hifb_bitfieldcmp(*red, s_stArgbBitField[i].stRed) == 0)
            && (hifb_bitfieldcmp(*green, s_stArgbBitField[i].stGreen) == 0)
            && (hifb_bitfieldcmp(*blue, s_stArgbBitField[i].stBlue) == 0)
            && (hifb_bitfieldcmp(*transp, s_stArgbBitField[i].stTransp) == 0))
        {
            u32Bpp = hifb_getbppbyfmt(i);
            if (u32Bpp == u32ColorDepth)
            {
                return i;
            }
        }
    } 
    //i = HIFB_FMT_BUTT;
    switch(u32ColorDepth)
    {
        case 16:
            i = HIFB_FMT_RGB565;
            break;
        case 24:
            i = HIFB_FMT_RGB888;
            break;
        case 32:
            i = HIFB_FMT_ARGB8888;
            break;
        default:
            i = HIFB_FMT_BUTT;
            break;            
    }
    if(HIFB_FMT_BUTT != i)
    {
        *red = s_stArgbBitField[i].stRed;
        *green = s_stArgbBitField[i].stGreen;
        *blue = s_stArgbBitField[i].stBlue;
        *transp = s_stArgbBitField[i].stTransp;
    }
    return i;
}


/***************************************************************************************
* func          : hifb_checkmem_enough
* description   : CNcomment: 判断内存是否足够 CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
HI_S32 hifb_checkmem_enough(struct fb_info *info,HI_U32 u32Pitch,HI_U32 u32Height)
{
    HI_U32 u32BufferNum = 0;
    HI_U32 uBuffersize = 0;
    HIFB_PAR_S *par = (HIFB_PAR_S *)info->par;
    
    switch(par->stBufInfo.enBufMode)
    {
        case HIFB_LAYER_BUF_DOUBLE:
        case HIFB_LAYER_BUF_DOUBLE_IMMEDIATE:
        {
            u32BufferNum = 2;
            break;
        }
        case HIFB_LAYER_BUF_ONE:
        {
            u32BufferNum = 1;
            break;
        }
        default:
            return HI_SUCCESS;
    }    
    uBuffersize = u32BufferNum * u32Pitch * u32Height;
    if(info->fix.smem_len >= uBuffersize)
    {
        return HI_SUCCESS;
    }
    HIFB_ERROR("memory is not enough!  now is %d u32Pitch %d u32Height %d expect %d\n",info->fix.smem_len,u32Pitch, u32Height,uBuffersize);
    return HI_FAILURE;
}


/***************************************************************************************
* func          : hifb_check_fmt
* description   : CNcomment: 检查要配置的像素格式是否正确 CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
static HI_S32 hifb_check_fmt(struct fb_var_screeninfo *var, struct fb_info *info)
{
    HI_U32 u32MaxXRes = 0;
    HI_U32 u32MaxYRes = 0;
    HIFB_COLOR_FMT_E enFmt;
    HIFB_PAR_S *par = (HIFB_PAR_S *)info->par;
    //HI_U32 u32ExpectedLen = 0;  
        
    enFmt = hifb_getfmtbyargb(&var->red, &var->green, &var->blue, &var->transp, var->bits_per_pixel);
    if (enFmt == HIFB_FMT_BUTT)
    {
        HIFB_ERROR("Unknown fmt(offset, length) r:(%d,%d,%d) ,g:(%d,%d,%d), b(%d,%d,%d), a(%d,%d,%d), bpp:%d!\n",
            var->red.offset, var->red.length, var->red.msb_right,
            var->green.offset, var->green.length, var->green.msb_right,
            var->blue.offset, var->blue.length, var->blue.msb_right,
            var->transp.offset, var->transp.length, var->transp.msb_right,
            var->bits_per_pixel);
        return -EINVAL;
    }

    if ((!s_stDrvHIFBOps.pstCapability[par->u32LayerID].bColFmt[enFmt])
        || (!s_stDrvTdeOps.HIFB_DRV_TdeSupportFmt(enFmt)))
    {
    	HIFB_ERROR("enFmt = %d\n",enFmt);
        HIFB_ERROR("Unsupported PIXEL FORMAT!\n");
        return -EINVAL;
    }

    /* virtual resolution must be no less than minimal resolution */
    if (var->xres_virtual < HIFB_MIN_WIDTH(par->u32LayerID))
    {
        var->xres_virtual = HIFB_MIN_WIDTH(par->u32LayerID);
    }

    if (var->yres_virtual < HIFB_MIN_HEIGHT(par->u32LayerID))
    {
        var->yres_virtual = HIFB_MIN_HEIGHT(par->u32LayerID);
    }

    /**
     ** just needed to campare display resolution with virtual resolution, 
     ** because VO graphic layer can do scaler,
     ** display resolution >current standard resolution
     **/  
    u32MaxXRes = var->xres_virtual;
    if (var->xres > u32MaxXRes)
    {
        var->xres = u32MaxXRes;
    }
    else if (var->xres < HIFB_MIN_WIDTH(par->u32LayerID))
    {
        var->xres = HIFB_MIN_WIDTH(par->u32LayerID);
    }
    
    u32MaxYRes = var->yres_virtual;
    if (var->yres > u32MaxYRes)
    {
        var->yres = u32MaxYRes;
    }
    else if (var->yres < HIFB_MIN_HEIGHT(par->u32LayerID))
    {
        var->yres = HIFB_MIN_HEIGHT(par->u32LayerID);
    }

    HIFB_INFO("xres:%d, yres:%d, xres_virtual:%d, yres_virtual:%d\n",
        var->xres, var->yres, var->xres_virtual, var->yres_virtual);

    /*check if the offset is valid*/
    if (   (var->xoffset > var->xres_virtual)
        || (var->yoffset > var->yres_virtual)
        || (var->xoffset + var->xres > var->xres_virtual)
        || (var->yoffset + var->yres > var->yres_virtual))
    {
        HIFB_ERROR("offset is invalid!xoffset:%d, yoffset:%d\n", var->xoffset, var->yoffset);
        return -EINVAL;
    }

    //u32ExpectedLen = var->yres_virtual * ((((var->xres_virtual * var->bits_per_pixel) >> 3) + 0xf) & 0xfffffff0) ;

    return HI_SUCCESS;
	
}


/***************************************************************************************
* func          : hifb_check_var
* description   : CNcomment: 检查要配置的变量是否正确 CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
static HI_S32 hifb_check_var(struct fb_var_screeninfo *var, struct fb_info *info)
{
    HIFB_PAR_S *pstPar = (HIFB_PAR_S *)info->par;

    if (pstPar->u32LayerID == HIFB_LAYER_CURSOR)
    {
        HIFB_ERROR("cursor layer doesn't support this operation!\n");
        return HI_FAILURE;
    }

    return hifb_check_fmt(var, info);
}


/***************************************************************************************
* func          : hifb_buf_allocdispbuf
* description   : CNcomment: 分配display buffer CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
static HI_VOID hifb_buf_allocdispbuf(HI_U32 u32LayerId)
{

    struct fb_info *info = s_stLayer[u32LayerId].pstInfo;
    HIFB_PAR_S *pstPar = (HIFB_PAR_S *)(info->par);
    HI_U32 u32BufSize = 0;

#ifdef CFG_HIFB_STEREO3D_HW_SUPPORT
    if ((IS_STEREO_SW_HWHALF(pstPar)) && (pstPar->stBufInfo.enBufMode == HIFB_LAYER_BUF_BUTT))
    {       
        HI_U32 u32StartAddr = pstPar->stBufInfo.u32StereoMemStart;
        
        /**
         ** there's a limit from hardware that screen buf shoule 
         ** be 16 bytes aligned,maybe it's proper
         ** to get this info from drv adapter
         **/
        u32BufSize = ((pstPar->stBufInfo.stStereoSurface.u32Pitch * info->var.yres)+0xf)&0xfffffff0;

        if(   pstPar->stBufInfo.u32StereoMemStart == 0 
           || pstPar->stBufInfo.u32StereoMemLen == 0
           || pstPar->stBufInfo.u32BufNum == 0)
        {
            return;
        }
        else if (pstPar->stBufInfo.u32BufNum == 1)
        {
            pstPar->stBufInfo.u32DisplayAddr[0] = u32StartAddr;
            pstPar->stBufInfo.u32DisplayAddr[1] = u32StartAddr;
            pstPar->stBufInfo.u32DisplayAddr[2] = u32StartAddr;
        }
        else if (pstPar->stBufInfo.u32BufNum == 2)
        {
            pstPar->stBufInfo.u32DisplayAddr[0] = u32StartAddr;
            pstPar->stBufInfo.u32DisplayAddr[1] = u32StartAddr + u32BufSize;
            pstPar->stBufInfo.u32DisplayAddr[2] = u32StartAddr + u32BufSize;
        }
        else if  (pstPar->stBufInfo.u32BufNum == 3)
        {
            pstPar->stBufInfo.u32DisplayAddr[0] = u32StartAddr;
            pstPar->stBufInfo.u32DisplayAddr[1] = u32StartAddr + u32BufSize;
            pstPar->stBufInfo.u32DisplayAddr[2] = u32StartAddr + 2*u32BufSize;
        }
    }
    else
#endif		
    {
        /**
         ** there's a limit from hardware that screen buf 
         ** shoule be 16 bytes aligned,maybe it's proper
         ** to get this info from drv adapter
         **/
        u32BufSize = ((info->fix.line_length * info->var.yres)+0xf)&0xfffffff0;

        if (info->fix.smem_len == 0)
        {
            return;
        }
        else if ((info->fix.smem_len >= u32BufSize) && (info->fix.smem_len < u32BufSize * 2))
        {
            pstPar->stBufInfo.u32DisplayAddr[0] = info->fix.smem_start;
            pstPar->stBufInfo.u32DisplayAddr[1] = info->fix.smem_start;
        }
        else if (info->fix.smem_len >= u32BufSize * 2)
        {
            pstPar->stBufInfo.u32DisplayAddr[0] = info->fix.smem_start;
            pstPar->stBufInfo.u32DisplayAddr[1] = info->fix.smem_start + u32BufSize;
        }
    }

    return;
	
}


/*1buf refresh*/
static HI_S32 hifb_refresh_1buf(HI_U32 u32LayerId, HIFB_BUFFER_S *pstCanvasBuf)
{
    struct fb_info *info = s_stLayer[u32LayerId].pstInfo;
    HIFB_PAR_S *pstPar = (HIFB_PAR_S *)info->par;
    HIFB_OSD_DATA_S stOsdData;
    HI_S32 s32Ret;
    
    HIFB_BLIT_OPT_S stBlitOpt;
    HIFB_BUFFER_S stDst;
#ifdef CFG_HIFB_STEREO3D_HW_SUPPORT
    HIFB_BUFFER_S TBuf;
    HIFB_BLIT_OPT_S stBlitOptTmp;
#endif
    memset(&stBlitOpt, 0, sizeof(HIFB_BLIT_OPT_S));
    memset(&stDst, 0, sizeof(HIFB_BUFFER_S));

    stDst.stCanvas.enFmt = pstPar->enColFmt;
    stDst.stCanvas.u32Height = pstPar->stDisplayInfo.u32DisplayHeight;
    stDst.stCanvas.u32Width = pstPar->stDisplayInfo.u32DisplayWidth;
    stDst.stCanvas.u32Pitch = info->fix.line_length;
#if 0    
    stDst.stCanvas.u32PhyAddr = pstPar->stBufInfo.u32DisplayAddr[pstPar->stBufInfo.u32IndexForInt];
#else
    stDst.stCanvas.u32PhyAddr = pstPar->stBufInfo.u32DisplayAddr[0];
#endif
    s_stDrvHIFBOps.HIFB_DRV_GetOSDData(u32LayerId, &stOsdData);

    /*if display address is not the same as inital address, please config it use old address*/
    #if 0
    if (stOsdData.u32BufferPhyAddr != stDst.stCanvas.u32PhyAddr)
    {
        pstPar->bModifying = HI_TRUE;

        pstPar->u32ParamModifyMask |= HIFB_LAYER_PARAMODIFY_DISPLAYADDR;
        pstPar->stBufInfo.u32ScreenAddr = stDst.stCanvas.u32PhyAddr;

        pstPar->bModifying = HI_FALSE;
    }
    #else
    if (stOsdData.u32BufferPhyAddr != pstPar->stBufInfo.u32DisplayAddr[0] &&
        pstPar->stBufInfo.u32DisplayAddr[0]) 
    {
        pstPar->bModifying = HI_TRUE;

        pstPar->u32ParamModifyMask |= HIFB_LAYER_PARAMODIFY_DISPLAYADDR;
        pstPar->stBufInfo.u32ScreenAddr = pstPar->stBufInfo.u32DisplayAddr[0];
        memset(info->screen_base, 0x00, info->fix.smem_len);
        pstPar->bModifying = HI_FALSE;
    }        
    #endif
    

    if (pstPar->stDisplayInfo.enAntiflickerMode == HIFB_ANTIFLICKER_TDE)
    {
        stBlitOpt.enAntiflickerLevel = pstPar->stDisplayInfo.enAntiflickerLevel;
    }

    if (pstCanvasBuf->stCanvas.u32Height != pstPar->stDisplayInfo.u32DisplayHeight
        || pstCanvasBuf->stCanvas.u32Width != pstPar->stDisplayInfo.u32DisplayWidth)
    {
        stBlitOpt.bScale = HI_TRUE;
        
        stDst.UpdateRect.x = 0;
        stDst.UpdateRect.y = 0;
        stDst.UpdateRect.w = stDst.stCanvas.u32Width;
        stDst.UpdateRect.h = stDst.stCanvas.u32Height;
    }
    else
    {
        stDst.UpdateRect = pstCanvasBuf->UpdateRect;
    }

   
    stBlitOpt.bRegionDeflicker = HI_TRUE;
	if(HI_TRUE == pstPar->bBootLogoToApp){
		stBlitOpt.bBlock = HI_TRUE;
	}
	
#ifdef CFG_HIFB_STEREO3D_HW_SUPPORT
    if (IS_STEREO_ENCPICFRAMING(pstPar->stDisplayInfo.enEncPicFraming))
    {
        HI_U32 BitsPerPixel;
        stBlitOpt.bScale = HI_TRUE;       
        stBlitOptTmp = stBlitOpt;
        BitsPerPixel = hifb_getbppbyfmt(stDst.stCanvas.enFmt);
        
        /*Left eye region*/
        TBuf = stDst;
        TBuf.stCanvas.u32Width = pstPar->stDisplayInfo.u32DisplayWidth * SCALE_K1(pstPar);
        TBuf.stCanvas.u32Height = pstPar->stDisplayInfo.u32DisplayHeight  * SCALE_K2(pstPar);
        stBlitOptTmp.stClip.bClip = HI_TRUE;
        stBlitOptTmp.stClip.bInRegionClip = HI_TRUE;
        stBlitOptTmp.stClip.stClipRect.x = 0;
        stBlitOptTmp.stClip.stClipRect.y = 0;


        if ( HIFB_ENCPICFRM_STEREO_SIDEBYSIDE_HALF == pstPar->stDisplayInfo.enEncPicFraming)
        {
            stBlitOptTmp.stClip.stClipRect.w = (pstPar->stDisplayInfo.u32DisplayWidth >> 1) - pstPar->stDisplayInfo.stStereoPos.s32XPos;
            stBlitOptTmp.stClip.stClipRect.h = pstPar->stDisplayInfo.u32DisplayHeight - pstPar->stDisplayInfo.stStereoPos.s32YPos;
        
            TBuf.stCanvas.u32Width >>= 1;
            TBuf.UpdateRect.x =  0;     
            TBuf.UpdateRect.y =  0;             
            TBuf.UpdateRect.w = TBuf.stCanvas.u32Width;
            TBuf.UpdateRect.h = TBuf.stCanvas.u32Height;   
        }
        else if (HIFB_ENCPICFRM_STEREO_TOPANDBOTTOM == pstPar->stDisplayInfo.enEncPicFraming)
        {  
            stBlitOptTmp.stClip.stClipRect.w = pstPar->stDisplayInfo.u32DisplayWidth - pstPar->stDisplayInfo.stStereoPos.s32XPos;
            stBlitOptTmp.stClip.stClipRect.h = (pstPar->stDisplayInfo.u32DisplayHeight  >> 1)- pstPar->stDisplayInfo.stStereoPos.s32YPos;
        
            TBuf.stCanvas.u32Height >>= 1;
            TBuf.UpdateRect.x =  0;     
            TBuf.UpdateRect.y =  0;             
            TBuf.UpdateRect.w = TBuf.stCanvas.u32Width;
            TBuf.UpdateRect.h = TBuf.stCanvas.u32Height;   
        }

        if (BitsPerPixel >= 8)
        {
            TBuf.stCanvas.u32PhyAddr += pstPar->stDisplayInfo.stStereoPos.s32YPos * TBuf.stCanvas.u32Pitch 
                                                                                + pstPar->stDisplayInfo.stStereoPos.s32XPos * (BitsPerPixel >> 3);  
        }
        else
        {
            TBuf.stCanvas.u32PhyAddr +=  pstPar->stDisplayInfo.stStereoPos.s32YPos * TBuf.stCanvas.u32Pitch 
                                                                        + pstPar->stDisplayInfo.stStereoPos.s32XPos  * BitsPerPixel/8;     
        }
        
        if (HIFB_IsIntersectRect(&stBlitOptTmp.stClip.stClipRect, &TBuf.UpdateRect))
        {
            s32Ret = s_stDrvTdeOps.HIFB_DRV_Blit(pstCanvasBuf, &TBuf, &stBlitOptTmp, HI_TRUE);
            if (s32Ret <= 0)
            {
                HIFB_ERROR("hifb_refresh_1buf blit err 1!\n");
                return HI_FAILURE;
            }
        }

    }
    else //mono
#endif    
    {
        s32Ret = s_stDrvTdeOps.HIFB_DRV_Blit(pstCanvasBuf, &stDst, &stBlitOpt, HI_TRUE);
        if (s32Ret <= 0)
        {
            HIFB_ERROR("hifb_refresh_1buf blit err 5!\n");
            return HI_FAILURE;
        }
    }
    
    memcpy(&(pstPar->stBufInfo.stUserBuffer), pstCanvasBuf, sizeof(HIFB_BUFFER_S));

    return HI_SUCCESS;
}


/*accumulate rectangle from display buffer*/
/* 2 buf refresh */
static HI_S32 hifb_refresh_2buf(HI_U32 u32LayerId, HIFB_BUFFER_S *pstCanvasBuf)
{
    struct fb_info *info = s_stLayer[u32LayerId].pstInfo;
    HIFB_PAR_S *pstPar = (HIFB_PAR_S *)info->par;
    HIFB_BLIT_OPT_S stBlitOpt;
    HI_U32 u32Index = pstPar->stBufInfo.u32IndexForInt;
    HIFB_BUFFER_S stForeBuf;
    HIFB_BUFFER_S stBackBuf;
    HI_S32 s32Ret = 0;
    HIFB_RECT NewUionRect = {0};
    unsigned long lockflag;
    HIFB_OSD_DATA_S stOsdData;
    HIFB_BUFFER_S SBuf;
#ifdef CFG_HIFB_STEREO3D_HW_SUPPORT
    HIFB_BUFFER_S TBuf;
    HI_U32 BitsPerPixel;
    HIFB_BLIT_OPT_S stBlitOptTmp;
    HIFB_RECT NewStereoUionRect = {0};
#endif

    memset(&stBlitOpt, 0, sizeof(HIFB_BLIT_OPT_S));
    memset(&stForeBuf, 0, sizeof(HIFB_BUFFER_S));
    memset(&stBackBuf, 0, sizeof(HIFB_BUFFER_S));
    memset(&SBuf, 0, sizeof(HIFB_BUFFER_S));
    
    stBlitOpt.bCallBack = HI_TRUE;
	stBlitOpt.pfnCallBack = hifb_tde_callback;
    stBlitOpt.pParam = &(pstPar->u32LayerID);

    pstPar->stBufInfo.u32RefreshNum++;

    /* disable tde irq */
    //tde_osr_disableirq();
    local_irq_save(lockflag);
    pstPar->stBufInfo.bNeedFlip = HI_FALSE;
    pstPar->stBufInfo.bCompNeedUpdate = HI_FALSE;
    pstPar->stBufInfo.s32RefreshHandle = 0;
    local_irq_restore(lockflag);

    s_stDrvHIFBOps.HIFB_DRV_GetOSDData(u32LayerId, &stOsdData);
    
    stBackBuf.stCanvas.enFmt = pstPar->enColFmt;
    stBackBuf.stCanvas.u32Height = pstPar->stDisplayInfo.u32DisplayHeight;
    stBackBuf.stCanvas.u32Width = pstPar->stDisplayInfo.u32DisplayWidth;
    stBackBuf.stCanvas.u32Pitch = info->fix.line_length;
    stBackBuf.stCanvas.u32PhyAddr = pstPar->stBufInfo.u32DisplayAddr[1-u32Index];

    /* according to the hw arithemetic, calculate  source and Dst fresh rectangle */	
    if ((pstCanvasBuf->stCanvas.u32Height != pstPar->stDisplayInfo.u32DisplayHeight)
        || (pstCanvasBuf->stCanvas.u32Width != pstPar->stDisplayInfo.u32DisplayWidth))
    {
        TDE2_RECT_S SrcRect ={0}, DstRect={0}, InSrcRect ={0}, InDstRect ={0};

        memset(&InDstRect, 0, sizeof(TDE2_RECT_S));
            
        SrcRect.u32Width = pstCanvasBuf->stCanvas.u32Width;
        SrcRect.u32Height = pstCanvasBuf->stCanvas.u32Height;
        DstRect.u32Width = stBackBuf.stCanvas.u32Width;
        DstRect.u32Height = stBackBuf.stCanvas.u32Height;
        memcpy(&InSrcRect, &pstCanvasBuf->UpdateRect, sizeof(InSrcRect));
        s_stDrvTdeOps.HIFB_DRV_CalScaleRect(&SrcRect, &DstRect, &InSrcRect, &InDstRect);

        memcpy(&NewUionRect, &InDstRect, sizeof(HIFB_RECT));   
        stBlitOpt.bScale = HI_TRUE;
    }
    else
    {
       NewUionRect = pstCanvasBuf->UpdateRect;
    }

#ifdef CFG_HIFB_STEREO3D_HW_SUPPORT
    if (IS_STEREO_ENCPICFRAMING(pstPar->stDisplayInfo.enEncPicFraming))
    {
        TDE2_RECT_S SrcRect ={0}, DstRect={0}, InSrcRect ={0}, InDstRect ={0};
    
        SrcRect.u32Width = pstCanvasBuf->stCanvas.u32Width;
        SrcRect.u32Height = pstCanvasBuf->stCanvas.u32Height;

        if (HIFB_ENCPICFRM_STEREO_SIDEBYSIDE_HALF == pstPar->stDisplayInfo.enEncPicFraming)
        {
            DstRect.u32Width = (stBackBuf.stCanvas.u32Width * SCALE_K1(pstPar))>> 1;
            DstRect.u32Height = stBackBuf.stCanvas.u32Height  * SCALE_K2(pstPar);
        }
        else if (HIFB_ENCPICFRM_STEREO_TOPANDBOTTOM == pstPar->stDisplayInfo.enEncPicFraming)
        {
            DstRect.u32Width = stBackBuf.stCanvas.u32Width * SCALE_K1(pstPar);
            DstRect.u32Height = (stBackBuf.stCanvas.u32Height * SCALE_K2(pstPar))>> 1;
        }

        memcpy(&InSrcRect, &pstCanvasBuf->UpdateRect, sizeof(InSrcRect));
        s_stDrvTdeOps.HIFB_DRV_CalScaleRect(&SrcRect, &DstRect, &InSrcRect, &InDstRect);

        memcpy(&NewStereoUionRect, &InDstRect, sizeof(HIFB_RECT));   
        stBlitOpt.bScale = HI_TRUE;
    }
#endif

    /*We should check is address changed, for make sure that the address configed to the hw reigster is in effect*/	
    if (pstPar->stBufInfo.bFliped && 
            (stOsdData.u32BufferPhyAddr == pstPar->stBufInfo.u32DisplayAddr[u32Index]))
    { 
        HIFB_BLIT_OPT_S tmp;
            
        memcpy(&stForeBuf, &stBackBuf, sizeof(HIFB_BUFFER_S));
        stForeBuf.stCanvas.u32PhyAddr = pstPar->stBufInfo.u32DisplayAddr[u32Index];
#ifdef CFG_HIFB_STEREO3D_HW_SUPPORT
        if (IS_STEREO_ENCPICFRAMING(pstPar->stDisplayInfo.enEncPicFraming))
        {
            memcpy(&stForeBuf.UpdateRect, &pstPar->stBufInfo.stStereoUnionRect, sizeof(HIFB_RECT));
        }
        else
#endif			
        {
            memcpy(&stForeBuf.UpdateRect, &pstPar->stBufInfo.stUnionRect, sizeof(HIFB_RECT));
        }
        
        memcpy(&stBackBuf.UpdateRect, &stForeBuf.UpdateRect , sizeof(HIFB_RECT));

        memset(&tmp, 0x00, sizeof(tmp));
        
        /*blit with union rect*/
        if (!hifb_iscontain(NewUionRect, pstPar->stBufInfo.stUnionRect))
        {
#ifdef CFG_HIFB_STEREO3D_HW_SUPPORT
	        if (IS_STEREO_ENCPICFRAMING(pstPar->stDisplayInfo.enEncPicFraming))
            {
                SBuf = stForeBuf;

                if (HIFB_ENCPICFRM_STEREO_SIDEBYSIDE_HALF == pstPar->stDisplayInfo.enEncPicFraming)
                {
                    SBuf.stCanvas.u32Width >>= 1;
                }
                else if (HIFB_ENCPICFRM_STEREO_TOPANDBOTTOM == pstPar->stDisplayInfo.enEncPicFraming)
                {
                    SBuf.stCanvas.u32Height >>=  1;
                }

                BitsPerPixel = hifb_getbppbyfmt(SBuf.stCanvas.enFmt);
                if (BitsPerPixel >= 8)
                {
                    SBuf.stCanvas.u32PhyAddr += pstPar->stDisplayInfo.stStereoPos.s32YPos * SBuf.stCanvas.u32Pitch 
                                                                                        + pstPar->stDisplayInfo.stStereoPos.s32XPos * (BitsPerPixel >> 3);  
                }
                else
                {
                    SBuf.stCanvas.u32PhyAddr +=  pstPar->stDisplayInfo.stStereoPos.s32YPos * SBuf.stCanvas.u32Pitch 
                                                                                + pstPar->stDisplayInfo.stStereoPos.s32XPos  * BitsPerPixel/8;     
                }
                
                /*Left eye region*/                    
                TBuf = stBackBuf;
                TBuf.stCanvas.u32Width = pstPar->stDisplayInfo.u32DisplayWidth * SCALE_K1(pstPar);                
                TBuf.stCanvas.u32Height = pstPar->stDisplayInfo.u32DisplayHeight  * SCALE_K2(pstPar);
                
                tmp.stClip.bClip = HI_TRUE;
                tmp.stClip.bInRegionClip = HI_TRUE;
                tmp.stClip.stClipRect.x = 0;
                tmp.stClip.stClipRect.y = 0;  
                
                if (HIFB_ENCPICFRM_STEREO_SIDEBYSIDE_HALF == pstPar->stDisplayInfo.enEncPicFraming)
                {
                    tmp.stClip.stClipRect.w = (pstPar->stDisplayInfo.u32DisplayWidth >> 1) - pstPar->stDisplayInfo.stStereoPos.s32XPos;
                    tmp.stClip.stClipRect.h = pstPar->stDisplayInfo.u32DisplayHeight - pstPar->stDisplayInfo.stStereoPos.s32YPos;
                    
                    TBuf.stCanvas.u32Width >>= 1;
                }
                else if (HIFB_ENCPICFRM_STEREO_TOPANDBOTTOM == pstPar->stDisplayInfo.enEncPicFraming)
                {
                    tmp.stClip.stClipRect.w = pstPar->stDisplayInfo.u32DisplayWidth - pstPar->stDisplayInfo.stStereoPos.s32XPos;
                    tmp.stClip.stClipRect.h = (pstPar->stDisplayInfo.u32DisplayHeight >> 1) - pstPar->stDisplayInfo.stStereoPos.s32YPos;
                
                    TBuf.stCanvas.u32Height >>=  1;
                }
                
                if (BitsPerPixel >= 8)
                {
                    TBuf.stCanvas.u32PhyAddr += pstPar->stDisplayInfo.stStereoPos.s32YPos * TBuf.stCanvas.u32Pitch 
                                                                                        + pstPar->stDisplayInfo.stStereoPos.s32XPos * (BitsPerPixel >> 3);  
                }
                else
                {
                    TBuf.stCanvas.u32PhyAddr +=  pstPar->stDisplayInfo.stStereoPos.s32YPos * TBuf.stCanvas.u32Pitch 
                                                                                + pstPar->stDisplayInfo.stStereoPos.s32XPos  * BitsPerPixel/8;     
                }

                if (HIFB_IsIntersectRect(&tmp.stClip.stClipRect, &TBuf.UpdateRect))
                {
                    s32Ret = s_stDrvTdeOps.HIFB_DRV_Blit(&SBuf, &TBuf, &tmp, HI_TRUE);
                    if (s32Ret <= 0)
                    {
                        HIFB_ERROR("2buf blit err0!\n");
                        return HI_FAILURE;
                    }
                }

			}		
            else//mono
#endif	            
            {
                s32Ret = s_stDrvTdeOps.HIFB_DRV_Blit(&stForeBuf, &stBackBuf, &tmp, HI_TRUE);
                if (s32Ret <= 0)
                {
                    HIFB_ERROR("2buf  blit err 4!\n");
                    goto RET;;
                }
            }
        }

        /*clear union rect*/
        memset(&(pstPar->stBufInfo.stUnionRect), 0, sizeof(HIFB_RECT));
        memset(&(pstPar->stBufInfo.stStereoUnionRect), 0, sizeof(HIFB_RECT));
        pstPar->stBufInfo.bFliped = HI_FALSE; 
    }


    /* update union rect */
    if ((pstPar->stBufInfo.stUnionRect.w == 0) || (pstPar->stBufInfo.stUnionRect.h == 0))
    {
#ifdef CFG_HIFB_STEREO3D_HW_SUPPORT    
        if (IS_STEREO_ENCPICFRAMING(pstPar->stDisplayInfo.enEncPicFraming))
        {
            memcpy(&pstPar->stBufInfo.stStereoUnionRect, &NewStereoUionRect, sizeof(HIFB_RECT));
        }
#endif		
        memcpy(&pstPar->stBufInfo.stUnionRect, &NewUionRect, sizeof(HIFB_RECT));

    }
    else
    {
#ifdef CFG_HIFB_STEREO3D_HW_SUPPORT  
        if (IS_STEREO_ENCPICFRAMING(pstPar->stDisplayInfo.enEncPicFraming))
        {
            HIFB_UNITE_RECT(pstPar->stBufInfo.stStereoUnionRect, NewStereoUionRect);
        }
#endif		  
        HIFB_UNITE_RECT(pstPar->stBufInfo.stUnionRect, NewUionRect);
    }  

    if (pstPar->stDisplayInfo.enAntiflickerMode == HIFB_ANTIFLICKER_TDE)
    {
        stBlitOpt.enAntiflickerLevel = pstPar->stDisplayInfo.enAntiflickerLevel;
    }

    if (stBlitOpt.bScale == HI_TRUE)
    {
        /*actual area, calculate by TDE, here is just use for let pass the test */		
        stBackBuf.UpdateRect.x = 0;
        stBackBuf.UpdateRect.y = 0;
        stBackBuf.UpdateRect.w = stBackBuf.stCanvas.u32Width;
        stBackBuf.UpdateRect.h = stBackBuf.stCanvas.u32Height;
    }
    else
    {
        stBackBuf.UpdateRect = pstCanvasBuf->UpdateRect;
    }

    stBlitOpt.bRegionDeflicker = HI_TRUE;
    
    /* blit with refresh rect */
#ifdef CFG_HIFB_STEREO3D_HW_SUPPORT	
    if (IS_STEREO_ENCPICFRAMING(pstPar->stDisplayInfo.enEncPicFraming))
    {
        stBlitOpt.bScale = HI_TRUE;
        stBackBuf.stCanvas.u32Height = pstPar->stDisplayInfo.u32DisplayHeight  * SCALE_K2(pstPar);
        stBackBuf.stCanvas.u32Width = pstPar->stDisplayInfo.u32DisplayWidth * SCALE_K1(pstPar);
       
        /*Left eye region*/
        TBuf = stBackBuf;        
        if ( HIFB_ENCPICFRM_STEREO_SIDEBYSIDE_HALF == pstPar->stDisplayInfo.enEncPicFraming)
        {
            stBlitOptTmp = stBlitOpt;        
            TBuf.stCanvas.u32Width >>= 1;    

            TBuf.UpdateRect.x = 0;     
            TBuf.UpdateRect.y = 0;             
            TBuf.UpdateRect.w = TBuf.stCanvas.u32Width;
            TBuf.UpdateRect.h = TBuf.stCanvas.u32Height;   

            stBlitOptTmp.stClip.bClip = HI_TRUE;
            stBlitOptTmp.stClip.bInRegionClip = HI_TRUE;
            stBlitOptTmp.stClip.stClipRect.x = 0;
            stBlitOptTmp.stClip.stClipRect.y = 0;
            stBlitOptTmp.stClip.stClipRect.w = (pstPar->stDisplayInfo.u32DisplayWidth >> 1) - pstPar->stDisplayInfo.stStereoPos.s32XPos;
            stBlitOptTmp.stClip.stClipRect.h = pstPar->stDisplayInfo.u32DisplayHeight - pstPar->stDisplayInfo.stStereoPos.s32YPos;

            BitsPerPixel = hifb_getbppbyfmt(TBuf.stCanvas.enFmt);
            if (BitsPerPixel >= 8)
            {
                TBuf.stCanvas.u32PhyAddr += pstPar->stDisplayInfo.stStereoPos.s32YPos * TBuf.stCanvas.u32Pitch 
                                                                                    + pstPar->stDisplayInfo.stStereoPos.s32XPos * (BitsPerPixel >> 3);  
            }
            else
            {
                TBuf.stCanvas.u32PhyAddr +=  pstPar->stDisplayInfo.stStereoPos.s32YPos * TBuf.stCanvas.u32Pitch 
                                                                            + pstPar->stDisplayInfo.stStereoPos.s32XPos  * BitsPerPixel/8;     
            }
        }
        else if ( HIFB_ENCPICFRM_STEREO_TOPANDBOTTOM == pstPar->stDisplayInfo.enEncPicFraming)
        {
            stBlitOptTmp = stBlitOpt;
            TBuf.stCanvas.u32Height >>= 1;     

            TBuf.UpdateRect.x = 0;     
            TBuf.UpdateRect.y = 0;             
            TBuf.UpdateRect.w = TBuf.stCanvas.u32Width;
            TBuf.UpdateRect.h = TBuf.stCanvas.u32Height;   

            stBlitOptTmp.stClip.bClip = HI_TRUE;
            stBlitOptTmp.stClip.bInRegionClip = HI_TRUE;
            stBlitOptTmp.stClip.stClipRect.x = 0;
            stBlitOptTmp.stClip.stClipRect.y = 0;
            stBlitOptTmp.stClip.stClipRect.w = pstPar->stDisplayInfo.u32DisplayWidth - pstPar->stDisplayInfo.stStereoPos.s32XPos;
            stBlitOptTmp.stClip.stClipRect.h = (pstPar->stDisplayInfo.u32DisplayHeight >> 1) - pstPar->stDisplayInfo.stStereoPos.s32YPos;

            BitsPerPixel = hifb_getbppbyfmt(TBuf.stCanvas.enFmt);
            if (BitsPerPixel >= 8)
            {
                TBuf.stCanvas.u32PhyAddr += pstPar->stDisplayInfo.stStereoPos.s32YPos * TBuf.stCanvas.u32Pitch 
                                                                                    + pstPar->stDisplayInfo.stStereoPos.s32XPos * (BitsPerPixel >> 3);  
            }
            else
            {
                TBuf.stCanvas.u32PhyAddr +=  pstPar->stDisplayInfo.stStereoPos.s32YPos * TBuf.stCanvas.u32Pitch 
                                                                            + pstPar->stDisplayInfo.stStereoPos.s32XPos  * BitsPerPixel/8;     
            }
        }
        
        if (HIFB_IsIntersectRect(&stBlitOptTmp.stClip.stClipRect, &TBuf.UpdateRect))
        {
            s32Ret = s_stDrvTdeOps.HIFB_DRV_Blit(pstCanvasBuf, &TBuf, &stBlitOptTmp, HI_TRUE);
            if (s32Ret <= 0)
            {
                HIFB_ERROR("2buf blit err5!\n");
                return HI_FAILURE;
            }
        }

    }
    else//mono
#endif	    
    {
        s32Ret = s_stDrvTdeOps.HIFB_DRV_Blit(pstCanvasBuf, &stBackBuf,&stBlitOpt, HI_TRUE);
        if (s32Ret <= 0)
        {
            HIFB_ERROR("2buf blit err7!\n");
            goto RET;
        }
    }

    
    pstPar->stBufInfo.s32RefreshHandle = s32Ret;
 
    memcpy(&(pstPar->stBufInfo.stUserBuffer), pstCanvasBuf, sizeof(HIFB_BUFFER_S));

RET:
    /* enable tde irq */
    //tde_osr_enableirq();
    
    return HI_SUCCESS;
}

static HI_S32 hifb_wait_regconfig_work(HI_U32 u32LayerId)
{
    s_stDrvHIFBOps.HIFB_DRV_WaitVBlank(u32LayerId);
    return HI_SUCCESS;
}


/***************************************************************************************
* func          : hifb_refresh_2buf_immediate_display
* description   : CNcomment:  CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
static HI_S32 hifb_refresh_2buf_immediate_display(HI_U32 u32LayerId, HIFB_BUFFER_S *pstCanvasBuf)
{
    struct fb_info *info    = s_stLayer[u32LayerId].pstInfo;
	
#ifdef HIFB_INDIA_PROJECT_SUPPORT
	struct fb_info *infohd1 = s_stLayer[HIFB_LAYER_HD_1].pstInfo;
	HIFB_BUFFER_S stHD1Buf;
	HIFB_BLIT_OPT_S stBlitOptHD1;
	HIFB_PAR_S *pstHD1Par = (HIFB_PAR_S *)infohd1->par;
#endif

    HIFB_PAR_S *pstPar = (HIFB_PAR_S *)info->par;
    HIFB_BLIT_OPT_S stBlitOpt;
    HI_U32 u32Index = pstPar->stBufInfo.u32IndexForInt;
    HIFB_BUFFER_S stForeBuf;
    HIFB_BUFFER_S stBackBuf;
    HI_S32 s32Ret = 0;
    HIFB_RECT NewUionRect = {0};
    HIFB_BLIT_OPT_S tmp;
    unsigned long lockflag;

#ifdef CFG_HIFB_STEREO3D_HW_SUPPORT
    HIFB_BUFFER_S TBuf, SBuf;
    HI_U32 BitsPerPixel;
    HIFB_BLIT_OPT_S stBlitOptTmp;
    HIFB_RECT NewStereoUionRect = {0};
#endif

#ifdef TEST_HIFBMAIN_CAPA
	HIFBMAIN_TINIT();
#endif

    memset(&tmp, 0x00, sizeof(stBlitOpt));
    memset(&stBlitOpt, 0, sizeof(HIFB_BLIT_OPT_S));
    memset(&stForeBuf, 0, sizeof(HIFB_BUFFER_S));
    memset(&stBackBuf, 0, sizeof(HIFB_BUFFER_S));

#ifdef HIFB_INDIA_PROJECT_SUPPORT
	memset(&stBlitOptHD1, 0, sizeof(HIFB_BLIT_OPT_S));
    memset(&stHD1Buf, 0, sizeof(HIFB_BUFFER_S));
#endif

    /*TDE use the blocking mode*/
    stBlitOpt.bCallBack = HI_FALSE;
    stBlitOpt.pParam    = &(pstPar->u32LayerID);

    pstPar->stBufInfo.u32RefreshNum++;
	
    /*forbid changing display buffer  in interrupt handle*/
    local_irq_save(lockflag);
    pstPar->stBufInfo.bNeedFlip        = HI_FALSE;
    pstPar->stBufInfo.bCompNeedUpdate  = HI_FALSE;
    pstPar->stBufInfo.s32RefreshHandle = 0;
    local_irq_restore(lockflag);
       
    stBackBuf.stCanvas.enFmt      = pstPar->enColFmt;
    stBackBuf.stCanvas.u32Height  = pstPar->stDisplayInfo.u32DisplayHeight;
    stBackBuf.stCanvas.u32Width   = pstPar->stDisplayInfo.u32DisplayWidth;
    stBackBuf.stCanvas.u32Pitch   = info->fix.line_length;
    stBackBuf.stCanvas.u32PhyAddr = pstPar->stBufInfo.u32DisplayAddr[1-u32Index];

#ifdef HIFB_INDIA_PROJECT_SUPPORT
	stHD1Buf.stCanvas.enFmt      = pstHD1Par->CanvasSur.enFmt;
    stHD1Buf.stCanvas.u32Height  = pstHD1Par->CanvasSur.u32Height;
    stHD1Buf.stCanvas.u32Width   = pstHD1Par->CanvasSur.u32Width;
    stHD1Buf.stCanvas.u32Pitch   = pstHD1Par->CanvasSur.u32Pitch;
    stHD1Buf.stCanvas.u32PhyAddr = pstHD1Par->CanvasSur.u32PhyAddr;

	stHD1Buf.UpdateRect.x = 0;
    stHD1Buf.UpdateRect.y = 0;
    stHD1Buf.UpdateRect.w = stHD1Buf.stCanvas.u32Width;
    stHD1Buf.UpdateRect.h = stHD1Buf.stCanvas.u32Height;

	if(HI_TRUE == pstHD1Par->bHD1Open && HIFB_ZORDER_MOVEBOTTOM == pstHD1Par->eZorder)
	{
		stBackBuf.UpdateRect.x = pstHD1Par->stDisplayInfo.stPos.s32XPos;
		stBackBuf.UpdateRect.y = pstHD1Par->stDisplayInfo.stPos.s32YPos;
		stBackBuf.UpdateRect.w = stHD1Buf.stCanvas.u32Width;
		stBackBuf.UpdateRect.h = stHD1Buf.stCanvas.u32Height;

		stBlitOptHD1.stAlpha.bAlphaEnable  = pstHD1Par->stAlpha.bAlphaEnable;
		stBlitOptHD1.stAlpha.u8GlobalAlpha = pstHD1Par->stAlpha.u8GlobalAlpha;
		
		stBlitOptHD1.bScale    = HI_TRUE;
		s32Ret = s_stDrvTdeOps.HIFB_DRV_Blit(&stHD1Buf, &stBackBuf,&stBlitOptHD1, HI_TRUE);
		if (s32Ret <= 0)
		{
			HIFB_ERROR("blit err vir layer!\n");
			goto RET;;
		}
	}
#endif

    /* according to the hw arithemetic, calculate  source and Dst fresh rectangle */	
    if (   pstCanvasBuf->stCanvas.u32Height != pstPar->stDisplayInfo.u32DisplayHeight
        || pstCanvasBuf->stCanvas.u32Width  != pstPar->stDisplayInfo.u32DisplayWidth)
    {
    
        TDE2_RECT_S SrcRect ={0}, DstRect={0}, InSrcRect ={0}, InDstRect ={0};
        memset(&InDstRect, 0, sizeof(TDE2_RECT_S));
        SrcRect.u32Width  = pstCanvasBuf->stCanvas.u32Width;
        SrcRect.u32Height = pstCanvasBuf->stCanvas.u32Height;
        DstRect.u32Width  = stBackBuf.stCanvas.u32Width;
        DstRect.u32Height = stBackBuf.stCanvas.u32Height;
        memcpy(&InSrcRect, &pstCanvasBuf->UpdateRect, sizeof(InSrcRect));
        s_stDrvTdeOps.HIFB_DRV_CalScaleRect(&SrcRect, &DstRect, &InSrcRect, &InDstRect);

        memcpy(&NewUionRect, &InDstRect, sizeof(HIFB_RECT));   
        stBlitOpt.bScale = HI_TRUE;
    }
    else
    {
       NewUionRect = pstCanvasBuf->UpdateRect;
    }

#ifdef CFG_HIFB_STEREO3D_HW_SUPPORT
    if (IS_STEREO_ENCPICFRAMING(pstPar->stDisplayInfo.enEncPicFraming))
    {
        TDE2_RECT_S SrcRect ={0}, DstRect={0}, InSrcRect ={0}, InDstRect ={0};
        memset(&InDstRect, 0, sizeof(TDE2_RECT_S));
    
        SrcRect.u32Width = pstCanvasBuf->stCanvas.u32Width;
        SrcRect.u32Height = pstCanvasBuf->stCanvas.u32Height;
        
        if (HIFB_ENCPICFRM_STEREO_SIDEBYSIDE_HALF == pstPar->stDisplayInfo.enEncPicFraming)
        {
            DstRect.u32Width = (stBackBuf.stCanvas.u32Width * SCALE_K1(pstPar))>> 1;
            DstRect.u32Height = stBackBuf.stCanvas.u32Height  * SCALE_K2(pstPar);
        }
        else if (HIFB_ENCPICFRM_STEREO_TOPANDBOTTOM == pstPar->stDisplayInfo.enEncPicFraming)
        {
            DstRect.u32Width = stBackBuf.stCanvas.u32Width * SCALE_K1(pstPar);
            DstRect.u32Height = (stBackBuf.stCanvas.u32Height * SCALE_K2(pstPar))>> 1;
        }
        
        memcpy(&InSrcRect, &pstCanvasBuf->UpdateRect, sizeof(InSrcRect));
        s_stDrvTdeOps.HIFB_DRV_CalScaleRect(&SrcRect, &DstRect, &InSrcRect, &InDstRect);

        memcpy(&NewStereoUionRect, &InDstRect, sizeof(HIFB_RECT));   
        stBlitOpt.bScale = HI_TRUE;
    }
#endif

    /* because reverse, the 2 buffer needed to sync contain, if the fresh area has cover last fresh area, then no need to sync*/
    if (!hifb_iscontain(NewUionRect, pstPar->stBufInfo.stUnionRect) && pstPar->stBufInfo.stUnionRect.w && pstPar->stBufInfo.stUnionRect.h)
    {
        memcpy(&stForeBuf, &stBackBuf, sizeof(HIFB_BUFFER_S));
        stForeBuf.stCanvas.u32PhyAddr = pstPar->stBufInfo.u32DisplayAddr[u32Index];
#ifdef CFG_HIFB_STEREO3D_HW_SUPPORT
        if (IS_STEREO_ENCPICFRAMING(pstPar->stDisplayInfo.enEncPicFraming))
        {
            memcpy(&stForeBuf.UpdateRect, &pstPar->stBufInfo.stStereoUnionRect, sizeof(HIFB_RECT));
        }		
        else
#endif
        {
            memcpy(&stForeBuf.UpdateRect, &pstPar->stBufInfo.stUnionRect, sizeof(HIFB_RECT));
        }
        memcpy(&stBackBuf.UpdateRect, &stForeBuf.UpdateRect , sizeof(HIFB_RECT));
#ifdef CFG_HIFB_STEREO3D_HW_SUPPORT
        if (IS_STEREO_ENCPICFRAMING(pstPar->stDisplayInfo.enEncPicFraming))
        {
            memset(&tmp, 0x00, sizeof(tmp));

            SBuf = stForeBuf;

            if (HIFB_ENCPICFRM_STEREO_SIDEBYSIDE_HALF == pstPar->stDisplayInfo.enEncPicFraming)
            {
                SBuf.stCanvas.u32Width >>= 1;
            }
            else if (HIFB_ENCPICFRM_STEREO_TOPANDBOTTOM == pstPar->stDisplayInfo.enEncPicFraming)
            {
                SBuf.stCanvas.u32Height >>=  1;
            }

            BitsPerPixel = hifb_getbppbyfmt(SBuf.stCanvas.enFmt);
            if (BitsPerPixel >= 8)
            {
                SBuf.stCanvas.u32PhyAddr += pstPar->stDisplayInfo.stStereoPos.s32YPos * SBuf.stCanvas.u32Pitch 
                                                                                    + pstPar->stDisplayInfo.stStereoPos.s32XPos * (BitsPerPixel >> 3);  
            }
            else
            {
                SBuf.stCanvas.u32PhyAddr +=  pstPar->stDisplayInfo.stStereoPos.s32YPos * SBuf.stCanvas.u32Pitch 
                                                                            + pstPar->stDisplayInfo.stStereoPos.s32XPos  * BitsPerPixel/8;     
            }

            /*Left eye region*/                    
           TBuf = stBackBuf;
            TBuf.stCanvas.u32Height = pstPar->stDisplayInfo.u32DisplayHeight  * SCALE_K2(pstPar);
            TBuf.stCanvas.u32Width = pstPar->stDisplayInfo.u32DisplayWidth * SCALE_K1(pstPar);
            tmp.stClip.bClip = HI_TRUE;
            tmp.stClip.bInRegionClip = HI_TRUE;
            tmp.stClip.stClipRect.x = 0;
            tmp.stClip.stClipRect.y = 0;

            if (HIFB_ENCPICFRM_STEREO_SIDEBYSIDE_HALF == pstPar->stDisplayInfo.enEncPicFraming)
            {
                tmp.stClip.stClipRect.w = (pstPar->stDisplayInfo.u32DisplayWidth >> 1) - pstPar->stDisplayInfo.stStereoPos.s32XPos;
                tmp.stClip.stClipRect.h = pstPar->stDisplayInfo.u32DisplayHeight - pstPar->stDisplayInfo.stStereoPos.s32YPos;
            
                TBuf.stCanvas.u32Width >>= 1;
            }
            else if (HIFB_ENCPICFRM_STEREO_TOPANDBOTTOM == pstPar->stDisplayInfo.enEncPicFraming)
            {
                tmp.stClip.stClipRect.w = pstPar->stDisplayInfo.u32DisplayWidth - pstPar->stDisplayInfo.stStereoPos.s32XPos;
                tmp.stClip.stClipRect.h = (pstPar->stDisplayInfo.u32DisplayHeight >> 1) - pstPar->stDisplayInfo.stStereoPos.s32YPos;
            
                TBuf.stCanvas.u32Height >>=  1;
            }
            
            if (BitsPerPixel >= 8)
            {
                TBuf.stCanvas.u32PhyAddr += pstPar->stDisplayInfo.stStereoPos.s32YPos * TBuf.stCanvas.u32Pitch 
                                                                                    + pstPar->stDisplayInfo.stStereoPos.s32XPos * (BitsPerPixel >> 3);  
            }
            else
            {
                TBuf.stCanvas.u32PhyAddr +=  pstPar->stDisplayInfo.stStereoPos.s32YPos * TBuf.stCanvas.u32Pitch 
                                                                            + pstPar->stDisplayInfo.stStereoPos.s32XPos  * BitsPerPixel/8;     
            }
            
            if (HIFB_IsIntersectRect(&tmp.stClip.stClipRect, &TBuf.UpdateRect))
            {
                s32Ret = s_stDrvTdeOps.HIFB_DRV_Blit(&SBuf, &TBuf, &tmp, HI_TRUE);
                if (s32Ret <= 0)
                {
                    HIFB_ERROR("2buf blit err0!\n");
                    return HI_FAILURE;
                }
            }

            /*Right eye region*/
        }		
        else//mono
 #endif
        {
        	#ifdef TEST_HIFBMAIN_CAPA
				HIFBMAIN_TSTART();
			#endif
            s32Ret = s_stDrvTdeOps.HIFB_DRV_Blit(&stForeBuf, &stBackBuf, &tmp, HI_TRUE);
            if (s32Ret <= 0)
            {
                HIFB_ERROR("blit err 4!\n");
                goto RET;;
            }
			#ifdef TEST_HIFBMAIN_CAPA
				HIFBMAIN_TEND();
			#endif
        }
    }

    /*record the fresh area */
    memcpy(&pstPar->stBufInfo.stUnionRect, &NewUionRect, sizeof(HIFB_RECT));
#ifdef CFG_HIFB_STEREO3D_HW_SUPPORT	
    if (IS_STEREO_ENCPICFRAMING(pstPar->stDisplayInfo.enEncPicFraming))
    {
        memcpy(&pstPar->stBufInfo.stStereoUnionRect, &NewStereoUionRect, sizeof(HIFB_RECT));
    }
#endif

    if (pstPar->stDisplayInfo.enAntiflickerMode == HIFB_ANTIFLICKER_TDE)
    {
        stBlitOpt.enAntiflickerLevel = pstPar->stDisplayInfo.enAntiflickerLevel;
    }

    if (stBlitOpt.bScale == HI_TRUE)
    {
        /*actual ares is calculate by TDE, here just let is pass the test */
        stBackBuf.UpdateRect.x = 0;
        stBackBuf.UpdateRect.y = 0;
        stBackBuf.UpdateRect.w = stBackBuf.stCanvas.u32Width;
        stBackBuf.UpdateRect.h = stBackBuf.stCanvas.u32Height;
    }
    else
    {
        stBackBuf.UpdateRect = pstCanvasBuf->UpdateRect;
    }

    stBlitOpt.bRegionDeflicker = HI_TRUE; 
    
    /* blit with refresh rect */
#ifdef CFG_HIFB_STEREO3D_HW_SUPPORT	
    if (IS_STEREO_ENCPICFRAMING(pstPar->stDisplayInfo.enEncPicFraming))
    {
        stBlitOpt.bScale = HI_TRUE;
        stBackBuf.stCanvas.u32Height = pstPar->stDisplayInfo.u32DisplayHeight  * SCALE_K2(pstPar);
        stBackBuf.stCanvas.u32Width = pstPar->stDisplayInfo.u32DisplayWidth * SCALE_K1(pstPar);
        
        /*Left eye region*/
        TBuf = stBackBuf;
        if ( HIFB_ENCPICFRM_STEREO_SIDEBYSIDE_HALF == pstPar->stDisplayInfo.enEncPicFraming)
        {
            stBlitOptTmp = stBlitOpt;      
            TBuf.stCanvas.u32Width >>= 1;            
            TBuf.UpdateRect.x = 0;     
            TBuf.UpdateRect.y = 0;             
            TBuf.UpdateRect.w = TBuf.stCanvas.u32Width;
            TBuf.UpdateRect.h = TBuf.stCanvas.u32Height;   

            stBlitOptTmp.stClip.bClip = HI_TRUE;
            stBlitOptTmp.stClip.bInRegionClip = HI_TRUE;
            stBlitOptTmp.stClip.stClipRect.x = 0;
            stBlitOptTmp.stClip.stClipRect.y = 0;
            stBlitOptTmp.stClip.stClipRect.w = (pstPar->stDisplayInfo.u32DisplayWidth >> 1) - pstPar->stDisplayInfo.stStereoPos.s32XPos;
            stBlitOptTmp.stClip.stClipRect.h = pstPar->stDisplayInfo.u32DisplayHeight - pstPar->stDisplayInfo.stStereoPos.s32YPos;

            BitsPerPixel = hifb_getbppbyfmt(TBuf.stCanvas.enFmt);
            if (BitsPerPixel >= 8)
            {
                TBuf.stCanvas.u32PhyAddr += pstPar->stDisplayInfo.stStereoPos.s32YPos * TBuf.stCanvas.u32Pitch 
                                                                                    + pstPar->stDisplayInfo.stStereoPos.s32XPos * (BitsPerPixel >> 3);  
            }
            else
            {
                TBuf.stCanvas.u32PhyAddr +=  pstPar->stDisplayInfo.stStereoPos.s32YPos * TBuf.stCanvas.u32Pitch 
                                                                            + pstPar->stDisplayInfo.stStereoPos.s32XPos  * BitsPerPixel/8;     
            }
        }
        else if ( HIFB_ENCPICFRM_STEREO_TOPANDBOTTOM == pstPar->stDisplayInfo.enEncPicFraming)
        {
            stBlitOptTmp = stBlitOpt;
            TBuf.stCanvas.u32Height >>= 1;
            TBuf.UpdateRect.x = 0;     
            TBuf.UpdateRect.y = 0;             
            TBuf.UpdateRect.w = TBuf.stCanvas.u32Width;
            TBuf.UpdateRect.h = TBuf.stCanvas.u32Height;   

            stBlitOptTmp.stClip.bClip = HI_TRUE;
            stBlitOptTmp.stClip.bInRegionClip = HI_TRUE;
            stBlitOptTmp.stClip.stClipRect.x = 0;
            stBlitOptTmp.stClip.stClipRect.y = 0;
            stBlitOptTmp.stClip.stClipRect.w = pstPar->stDisplayInfo.u32DisplayWidth - pstPar->stDisplayInfo.stStereoPos.s32XPos;
            stBlitOptTmp.stClip.stClipRect.h = (pstPar->stDisplayInfo.u32DisplayHeight >> 1) - pstPar->stDisplayInfo.stStereoPos.s32YPos;

            BitsPerPixel = hifb_getbppbyfmt(TBuf.stCanvas.enFmt);
            if (BitsPerPixel >= 8)
            {
                TBuf.stCanvas.u32PhyAddr += pstPar->stDisplayInfo.stStereoPos.s32YPos * TBuf.stCanvas.u32Pitch 
                                                                                    + pstPar->stDisplayInfo.stStereoPos.s32XPos * (BitsPerPixel >> 3);  
            }
            else
            {
                TBuf.stCanvas.u32PhyAddr +=  pstPar->stDisplayInfo.stStereoPos.s32YPos * TBuf.stCanvas.u32Pitch 
                                                                            + pstPar->stDisplayInfo.stStereoPos.s32XPos  * BitsPerPixel/8;     
            }
        }

        if (HIFB_IsIntersectRect(&stBlitOptTmp.stClip.stClipRect, &TBuf.UpdateRect))
        {
            s32Ret = s_stDrvTdeOps.HIFB_DRV_Blit(pstCanvasBuf, &TBuf, &stBlitOptTmp, HI_TRUE);
            if (s32Ret <= 0)
            {
                HIFB_ERROR("2buf blit err5!\n");
                return HI_FAILURE;
            }
        }
        /*Right eye region*/
    }	
    else
#endif		
    {

		#ifdef TEST_HIFBMAIN_CAPA
			HIFBMAIN_TSTART();
		#endif
        s32Ret = s_stDrvTdeOps.HIFB_DRV_Blit(pstCanvasBuf, &stBackBuf, &stBlitOpt, HI_TRUE);
        if (s32Ret <= 0)
        {
            HIFB_ERROR("blit err!5\n");
            goto RET;
        }
		#ifdef TEST_HIFBMAIN_CAPA
			HIFBMAIN_TEND();
		#endif
    }



#ifdef HIFB_INDIA_PROJECT_SUPPORT
	if(HI_TRUE == pstHD1Par->bHD1Open && HIFB_ZORDER_MOVETOP == pstHD1Par->eZorder)
	{
		stBackBuf.UpdateRect.x = pstHD1Par->stDisplayInfo.stPos.s32XPos;
		stBackBuf.UpdateRect.y = pstHD1Par->stDisplayInfo.stPos.s32YPos;
		stBackBuf.UpdateRect.w = stHD1Buf.stCanvas.u32Width;
		stBackBuf.UpdateRect.h = stHD1Buf.stCanvas.u32Height;

		stBlitOptHD1.stAlpha.bAlphaEnable  = pstHD1Par->stAlpha.bAlphaEnable;
		stBlitOptHD1.stAlpha.u8GlobalAlpha = pstHD1Par->stAlpha.u8GlobalAlpha;
		stBlitOptHD1.bScale    = HI_TRUE;

		#if 0
		HIFB_TRACE("\n========================================================================\n");
		HIFB_TRACE("stHD1Buf.stCanvas.enFmt      = %d\n",stHD1Buf.stCanvas.enFmt);
		HIFB_TRACE("stHD1Buf.stCanvas.u32Height  = %d\n",stHD1Buf.stCanvas.u32Height);
		HIFB_TRACE("stHD1Buf.stCanvas.u32Width   = %d\n",stHD1Buf.stCanvas.u32Width);
		HIFB_TRACE("stHD1Buf.stCanvas.u32Pitch   = %d\n",stHD1Buf.stCanvas.u32Pitch);

		HIFB_TRACE("stHD1Buf.UpdateRect.x        = %d\n",stHD1Buf.UpdateRect.x);
		HIFB_TRACE("stHD1Buf.UpdateRect.y        = %d\n",stHD1Buf.UpdateRect.y);
		HIFB_TRACE("stHD1Buf.UpdateRect.w        = %d\n",stHD1Buf.UpdateRect.w);
		HIFB_TRACE("stHD1Buf.UpdateRect.h        = %d\n",stHD1Buf.UpdateRect.h);

		HIFB_TRACE("stHD1Buf.disp.x              = %d\n",pstHD1Par->stDisplayInfo.stPos.s32XPos);
		HIFB_TRACE("stHD1Buf.disp.y              = %d\n",pstHD1Par->stDisplayInfo.stPos.s32YPos);

		HIFB_TRACE("stBlitOptHD1.stAlpha.bAlphaEnable  = %d\n",stBlitOptHD1.stAlpha.bAlphaEnable);
		HIFB_TRACE("stBlitOptHD1.stAlpha.u8GlobalAlpha = 0x%x\n",stBlitOptHD1.stAlpha.u8GlobalAlpha);
		
		HIFB_TRACE("stHD1Buf.stCanvas.u32PhyAddr = 0x%x\n",stHD1Buf.stCanvas.u32PhyAddr);
		HIFB_TRACE("========================================================================\n");
		#endif
		
		s32Ret = s_stDrvTdeOps.HIFB_DRV_Blit(&stHD1Buf, &stBackBuf,&stBlitOptHD1, HI_TRUE);
        if (s32Ret <= 0)
        {
            HIFB_ERROR("blit err vir layer!\n");
            goto RET;;
        }
	}
#endif


    /*set the backup buffer to register and show it  */
    u32Index = 1 - u32Index;
    pstPar->stBufInfo.u32IndexForInt = u32Index;

    pstPar->bModifying = HI_TRUE;
    pstPar->u32ParamModifyMask |= HIFB_LAYER_PARAMODIFY_DISPLAYADDR;        
    pstPar->stBufInfo.u32ScreenAddr = pstPar->stBufInfo.u32DisplayAddr[u32Index];
    pstPar->bModifying = HI_FALSE;
    
    memcpy(&(pstPar->stBufInfo.stUserBuffer), pstCanvasBuf, sizeof(HIFB_BUFFER_S));

#ifdef TEST_HIFBMAIN_CAPA
	HIFBMAIN_TSTART();
#endif

    /*wait the address register's configuration take effect before return*/
    if(pstPar->bRefreshByDisp != HI_TRUE)
    {
        hifb_wait_regconfig_work(u32LayerId);
    }

#ifdef TEST_HIFBMAIN_CAPA
	HIFBMAIN_TEND();
#endif

RET:
    return HI_SUCCESS;
	
}


/***************************************************************************************
* func          : hifb_refresh_again
* description   : CNcomment: 重新刷新，设置layer信息以及制式发生变化的时候调用 CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
static HI_VOID hifb_refresh_again(HI_U32 u32LayerId)
{
    struct fb_info *info = s_stLayer[u32LayerId].pstInfo;
    HIFB_PAR_S *pstPar = (HIFB_PAR_S *)info->par;
    HIFB_BUFFER_S stCanvas;

    if (!(pstPar->u32ParamModifyMask & HIFB_LAYER_PARAMODIFY_INRECT))
    {/** 输入大小没有更新 **/
        return;
    }

    if (pstPar->stBufInfo.stUserBuffer.stCanvas.u32PhyAddr == 0)
    {/** buffer地址为空 **/
        return;
    }
    if (HIFB_LAYER_BUF_NONE == pstPar->stBufInfo.enBufMode && !IS_STEREO_SW_HWHALF(pstPar))
    {/** 3D单buffer模式 **/
        return ;
    }
	
    stCanvas              = pstPar->stBufInfo.stUserBuffer;
    stCanvas.UpdateRect.x = 0;
    stCanvas.UpdateRect.y = 0;
    stCanvas.UpdateRect.w = stCanvas.stCanvas.u32Width;
    stCanvas.UpdateRect.h = stCanvas.stCanvas.u32Height;
    
    hifb_refresh(u32LayerId, &stCanvas, pstPar->stBufInfo.enBufMode);
	
}

/***************************************************************************************
* func          : hifb_disp_confscnsize
* description   : CNcomment: 设置display screec size CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
static HI_S32 hifb_disp_confscnsize(HI_U32 u32LayerId, HI_U32 u32Width, HI_U32 u32Height)
{
    struct fb_info *info = s_stLayer[u32LayerId].pstInfo;
    HIFB_PAR_S *pstPar = (HIFB_PAR_S *)info->par;

   
    pstPar->stDisplayInfo.u32ScreenWidth = u32Width;
    pstPar->stDisplayInfo.u32ScreenHeight = u32Height;

#ifdef CFG_HIFB_STEREO3D_HW_SUPPORT
    if (IS_STEREO_ENCPICFRAMING(pstPar->stDisplayInfo.enEncPicFraming))
    {
        pstPar->stDisplayInfo.u32StereoScreenWidth = pstPar->stDisplayInfo.u32MaxScreenWidth;
        pstPar->stDisplayInfo.u32StereoScreenHeight = pstPar->stDisplayInfo.u32MaxScreenHeight;
    }	
    else
#endif		
    {
        pstPar->stDisplayInfo.u32StereoScreenWidth = u32Width;
        pstPar->stDisplayInfo.u32StereoScreenHeight = u32Height;
    }

    pstPar->stDisplayInfo.u32UserScreenWidth = u32Width;
    pstPar->stDisplayInfo.u32UserScreenHeight = u32Height;

    return HI_SUCCESS;
}

/***************************************************************************************
* func          : hifb_disp_setscreensize
* description   : CNcomment: we handle it by two case: 
                             case 1 : if VO support Zoom, we only change screeen size, display size keep not change
                             case 2: if VO can't support zoom, display size should keep the same as screen size
                             CNend\n
* param[in]     : HI_VOID
* param[in]     : if setpar xres yres, not change the osd outputrect,
				  if use set screen size, should change the osd outputrect
* retval        : NA
* others:       : NA
***************************************************************************************/
static HI_S32 hifb_disp_setscreensize(HI_U32 u32LayerId, HI_BOOL bSetPar,HI_U32 u32Width, HI_U32 u32Height)
{
    struct fb_info *info = s_stLayer[u32LayerId].pstInfo;
    HIFB_PAR_S *pstPar = (HIFB_PAR_S *)info->par;
    HI_U32 u32Pitch ;
    
      
	u32Width  = (u32Width > pstPar->stDisplayInfo.u32MaxScreenWidth) 
	            ? pstPar->stDisplayInfo.u32MaxScreenWidth : u32Width;
	u32Height = (u32Height > pstPar->stDisplayInfo.u32MaxScreenHeight) 
	            ? pstPar->stDisplayInfo.u32MaxScreenHeight : u32Height;

    if(0 == u32Width){
        HIFB_WARNING("screen widht is zero\n");
        return HI_FAILURE;
    }
    if(0 == u32Height){
        HIFB_WARNING("screen height is zero\n");
        return HI_FAILURE;
    }
    
	/**
	 ** the screen rect of AD0 should not overlay with AD1
	 **/
	if (HIFB_LAYER_AD_0 == u32LayerId)
	{
	    HI_U32   cnt;
        struct fb_info *infoHD;
        HIFB_PAR_S *pstParHD;
        /**
         ** if HD was open, AD using the scale rate of HD layer
         ** so, when the display size of AD not changed,the screen
         ** size of AD layer keep unchanged
         **/
        infoHD   = s_stLayer[HIFB_LAYER_HD_0].pstInfo;
        pstParHD = (HIFB_PAR_S *)infoHD->par;        
        cnt = atomic_read(&pstParHD->ref_count);
        if(0 == pstParHD->stDisplayInfo.u32DisplayWidth){
            HIFB_WARNING("display width is zero\n");
            return HI_FAILURE;
        }
        if(0 == pstParHD->stDisplayInfo.u32DisplayHeight){
            HIFB_WARNING("display height is zero\n");
            return HI_FAILURE;
        }
        if (cnt > 0)
        {
            u32Width  = pstParHD->stDisplayInfo.u32ScreenWidth * pstPar->stDisplayInfo.u32DisplayWidth / pstParHD->stDisplayInfo.u32DisplayWidth;
            u32Height = pstParHD->stDisplayInfo.u32ScreenHeight * pstPar->stDisplayInfo.u32DisplayHeight / pstParHD->stDisplayInfo.u32DisplayHeight;
        }
        if(0 == u32Height){
            HIFB_WARNING("screen height is zero\n");
            return HI_FAILURE;
        }
	}
	
    if (!s_stDrvHIFBOps.pstCapability[pstPar->u32LayerID].bVoScale)
    {       

        if ((pstPar->stDisplayInfo.u32DisplayWidth == u32Width) && (pstPar->stDisplayInfo.u32DisplayHeight == u32Height))
        {
            return HI_SUCCESS;
        }  
        u32Pitch = u32Width * info->var.bits_per_pixel >> 3;
        u32Pitch = (u32Pitch + 0xf) & 0xfffffff0;
        if(HI_FAILURE == hifb_checkmem_enough(info, u32Pitch, u32Height))
        {
           HIFB_ERROR("++ setscreensize .memory is not enough!\n");
           return HI_FAILURE;
        }
            
        pstPar->stDisplayInfo.u32DisplayWidth = u32Width;
        pstPar->stDisplayInfo.u32DisplayHeight = u32Height;

        info->var.yres_virtual = info->var.yres = pstPar->stDisplayInfo.u32DisplayHeight;
        info->var.xres_virtual = info->var.xres = pstPar->stDisplayInfo.u32DisplayWidth;
        info->fix.line_length  = u32Pitch; 
        pstPar->u32ParamModifyMask |= HIFB_LAYER_PARAMODIFY_STRIDE;

        hifb_buf_allocdispbuf(u32LayerId);       
        pstPar->u32ParamModifyMask |= HIFB_LAYER_PARAMODIFY_INRECT;
		
    }
    
    pstPar->u32Scaling = (pstPar->stDisplayInfo.u32DisplayHeight * 2) / u32Height;
    if((pstPar->u32Scaling >= 4) && (pstPar->stDisplayInfo.u32DisplayHeight >= 1080))
    {
        if(pstPar->u32Scaling&0x01)
        {
             pstPar->u32Scaling =  (pstPar->u32Scaling +1) / 2;
        }
        else
        {
             pstPar->u32Scaling /= 2;
        }
    
        pstPar->u32ParamModifyMask |= HIFB_LAYER_PARAMODIFY_STRIDE;
        pstPar->u32ParamModifyMask |= HIFB_LAYER_PARAMODIFY_INRECT;
    }
    else
    {
        pstPar->u32Scaling = 1;
    }

    if(HI_FALSE == bSetPar)
    {
    	hifb_disp_confscnsize(u32LayerId, u32Width, u32Height);
    }
    
    pstPar->u32ParamModifyMask |= HIFB_LAYER_PARAMODIFY_OUTRECT;
    
    /**
     ** HD0,AD0 using the same scale register
     ** keep them the same scale rate
     **/
	
    /**
     ** Here  we need to think about how to resist flicker again, 
     ** we use VO do flicker resist before , but now if the display H size is the 
     ** same as the screen, VO will not do flicker resist, so should choose TDE to do flicker resist
     **/
    hifb_select_antiflicker_mode(pstPar);
 
    return HI_SUCCESS;
	
}


/***************************************************************************************
* func          : hifb_disp_setdispsize
* description   : CNcomment: 设置display size CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
static HI_S32 hifb_disp_setdispsize(HI_U32 u32LayerId, HI_U32 u32Width, HI_U32 u32Height)
{

    struct fb_info *info = s_stLayer[u32LayerId].pstInfo;
    HIFB_PAR_S *pstPar    = (HIFB_PAR_S *)info->par;
    HI_U32 u32Pitch;
    if ((pstPar->stDisplayInfo.u32DisplayWidth == u32Width) && (pstPar->stDisplayInfo.u32DisplayHeight == u32Height))
    {
        return HI_SUCCESS;
    }    
    u32Pitch = u32Width * info->var.bits_per_pixel >> 3;
    u32Pitch = (u32Pitch + 0xf) & 0xfffffff0;
    if(HI_FAILURE == hifb_checkmem_enough(info, u32Pitch, u32Height))
    {
       HIFB_ERROR("++ setdispsize .memory is not enough!\n");
       return HI_FAILURE;
    }         

    pstPar->stDisplayInfo.u32DisplayWidth  = u32Width;
    pstPar->stDisplayInfo.u32DisplayHeight = u32Height;
    
    pstPar->u32ParamModifyMask |= HIFB_LAYER_PARAMODIFY_INRECT;

    if (!s_stDrvHIFBOps.pstCapability[pstPar->u32LayerID].bVoScale)
    { 
        hifb_disp_confscnsize(u32LayerId, u32Width, u32Height);
    
        pstPar->u32ParamModifyMask |= HIFB_LAYER_PARAMODIFY_OUTRECT;
    }

    /**
     ** here we need to think about how to resist flicker again, 
     ** we use VO do flicker resist before , but now if the display H size is the 
     ** same as the screen, VO will not do flicker resist, so should choose TDE to do flicker resist
     **/
    hifb_select_antiflicker_mode(pstPar);
    
    if (HIFB_LAYER_AD_0 == u32LayerId)
	{
        struct fb_info *infoHD;
        HIFB_PAR_S *pstParHD;    	

        /**
         ** if HD was open, AD using the scale rate of HD layer
         ** so, when the display size of AD changed,the screen
         ** size of AD layer also need change 
         **/
        infoHD   = s_stLayer[HIFB_LAYER_HD_0].pstInfo;
        pstParHD = (HIFB_PAR_S *)infoHD->par;        
        if (HI_SUCCESS == hifb_islayeropen(HIFB_LAYER_HD_0))
        {
            u32Width  = pstParHD->stDisplayInfo.u32ScreenWidth * pstPar->stDisplayInfo.u32DisplayWidth/pstParHD->stDisplayInfo.u32DisplayWidth;
            u32Height = pstParHD->stDisplayInfo.u32ScreenHeight * pstPar->stDisplayInfo.u32DisplayHeight/pstParHD->stDisplayInfo.u32DisplayHeight;
            hifb_disp_setscreensize(u32LayerId,HI_FALSE,u32Width, u32Height);
        }
    }
    return HI_SUCCESS;
	
}

#ifdef CFG_HIFB_STEREO3D_HW_SUPPORT
/***************************************************************************************
* func          : hifb_freestereobuf
* description   : CNcomment: 删除3Dbuffer CNend\n
* retval        : NA
* others:       : NA
***************************************************************************************/
HI_S32 hifb_freestereobuf(HIFB_PAR_S *par)
{
    if (par->stBufInfo.u32StereoMemStart != 0)
    {
        hifb_buf_freemem(par->stBufInfo.u32StereoMemStart);
    }
    par->stBufInfo.u32StereoMemStart = 0;
    par->stBufInfo.u32StereoMemLen = 0;
    
    par->stBufInfo.stStereoSurface.u32PhyAddr = 0;
    
    return HI_SUCCESS;
}
#endif

#ifdef CFG_HIFB_STEREO3D_HW_SUPPORT
/***************************************************************************************
* func          : hifb_clearstereobuf
* description   : CNcomment: 清楚3Dbuffer CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
static HI_VOID hifb_clearstereobuf(struct fb_info *info)
{
    HIFB_PAR_S *par = (HIFB_PAR_S *)info->par;
    
    if (par->stBufInfo.u32StereoMemStart && par->stBufInfo.u32StereoMemLen)
    {
        HIFB_BLIT_OPT_S stOpt;

        memset(&stOpt, 0x0, sizeof(stOpt));
        par->stBufInfo.stStereoSurface.u32PhyAddr = par->stBufInfo.u32StereoMemStart;
        s_stDrvTdeOps.HIFB_DRV_ClearRect(&(par->stBufInfo.stStereoSurface), &stOpt);
    }

    return;
}
#endif

HI_U32 hifb_buf_allocmem(HI_CHAR *pName, HI_U32 u32LayerSize);


#ifdef CFG_HIFB_STEREO3D_HW_SUPPORT

/***************************************************************************************
* func          : hifb_allocstereobuf
* description   : CNcomment: 分配3D buffer CNend\n
* retval        : NA
* others:       : NA
***************************************************************************************/
static HI_S32 hifb_allocstereobuf(struct fb_info *info, HI_U32 u32BufSize, HI_U32* u32StartAddr)
{

    HIFB_PAR_S *par = (HIFB_PAR_S *)info->par;
    HI_CHAR name[32] = "";

    if (0 == u32BufSize)
    {
        return HI_FAILURE;
    }

    if (u32BufSize == par->stBufInfo.u32StereoMemLen)
    {
        return HI_SUCCESS;
    }

    if (u32BufSize > info->fix.smem_len)
    {   
        HIFB_ERROR("u32BufSize:%d,  no enough mem(%d)\n", u32BufSize, info->fix.smem_len);
        return HI_FAILURE;
    }

    /** if  with old stereo buffer*/
    if (par->stBufInfo.u32StereoMemStart)
    {
        /** free old buffer*/
        HIFB_INFO("free old stereo buffer\n");        
        hifb_freestereobuf(par);
    }


    /** alloc new stereo buffer*/
	snprintf(name,sizeof(name),"hifb_stereobuf%d", par->u32LayerID);
	name[sizeof(name) - 1] = '\0';
    par->stBufInfo.u32StereoMemStart = hifb_buf_allocmem(name, u32BufSize);
    if (par->stBufInfo.u32StereoMemStart == 0)
    {   
        HIFB_ERROR("alloc stereo buffer no mem, u32BufSize:%d\n", u32BufSize);
        return HI_FAILURE;
    }
    
    par->stBufInfo.u32StereoMemLen = u32BufSize;    

    *u32StartAddr = par->stBufInfo.u32StereoMemStart;
   
    HIFB_INFO("alloc new memory for stereo buffer success\n"); 

    return HI_SUCCESS;
}
#endif


/***************************************************************************************
* func          : hifb_set_par
* description   : CNcomment: 设置参数 CNend\n
* retval        : NA
* others:       : NA
***************************************************************************************/
static HI_S32 hifb_set_par(struct fb_info *info)
{
    HIFB_PAR_S *pstPar = (HIFB_PAR_S *)info->par;
    HI_U32 u32DisplayAddr = 0;
    HI_U32 u32Stride;
    HIFB_COLOR_FMT_E enFmt;
    HI_U32 u32StartAddr = 0;

  	pstPar->bSetPar = HI_TRUE;


    if(info->var.xres > 1280 || info->var.yres > 720){
         HIFB_INFO("the hd input ui size is not support\n ");
         return HI_FAILURE;
    }
    
    enFmt = hifb_getfmtbyargb(&info->var.red, &info->var.green, &info->var.blue, &info->var.transp, info->var.bits_per_pixel);

#ifdef HIFB_INDIA_PROJECT_SUPPORT
	if(HI_TRUE == pstPar->bHD1Open)
	{
		return HI_SUCCESS;
	}
#endif

#ifdef CFG_HIFB_STEREO3D_HW_SUPPORT
    

    if(IS_STEREO_SW_HWHALF(pstPar) && pstPar->stBufInfo.enBufMode == HIFB_LAYER_BUF_BUTT)
    {
        HI_U32 u32VirBufSize     = 0;
		HI_U32 u32DisplayBufSize = 0;
		HI_U32 u32StBufSize      = 0;
        HI_U32 BufNum             = 0;

        u32VirBufSize     = info->var.yres_virtual * ((info->var.xres_virtual * info->var.bits_per_pixel) >> 3);
        u32DisplayBufSize = info->var.yres * ((info->var.xres * info->var.bits_per_pixel) >> 3) ;
        if (u32DisplayBufSize == 0)
        {
            return HI_FAILURE;
        }
        /**
         **计算buffer数
         **/
        BufNum = u32VirBufSize / u32DisplayBufSize;
        pstPar->stBufInfo.u32BufNum = BufNum;
        if (BufNum > HIFB_MAX_FLIPBUF_NUM)
        {
            pstPar->stBufInfo.u32BufNum = HIFB_MAX_FLIPBUF_NUM;
        }
        else if (BufNum == 0)
        {
            pstPar->stBufInfo.u32BufNum = 1;
        }

        /* set the stride if stride change, 16 byte aligned*/
        u32Stride    = ((info->var.xres * info->var.bits_per_pixel >> 3) + 0xf) & 0xfffffff0;
        u32StBufSize = info->var.yres* pstPar->stBufInfo.u32BufNum * ((((info->var.xres  * info->var.bits_per_pixel) >> 3) + 0xf) & 0xfffffff0);

        if ((u32StBufSize != pstPar->stBufInfo.u32StereoMemLen) || (pstPar->stBufInfo.stStereoSurface.u32Pitch != u32Stride))
        {
            HI_U32 Tmp = 0;
            HI_S32 s32Ret;
            s32Ret = hifb_allocstereobuf(info, u32StBufSize, &Tmp);
            if (s32Ret != HI_SUCCESS)
            {
                HIFB_ERROR("alloc stereo buf fail!!, size: %d\n", u32StBufSize);
                return s32Ret;
            }

            pstPar->stBufInfo.stStereoSurface.u32PhyAddr = Tmp;
            pstPar->stBufInfo.stStereoSurface.enFmt      = enFmt;
            pstPar->stBufInfo.stStereoSurface.u32Width   = info->var.xres;
            pstPar->stBufInfo.stStereoSurface.u32Height  = info->var.yres * pstPar->stBufInfo.u32BufNum;

            hifb_clearstereobuf(info);
            hifb_buf_allocdispbuf(pstPar->u32LayerID);

            hifb_disp_setdispsize(pstPar->u32LayerID, info->var.xres, info->var.yres);
            hifb_disp_setscreensize(pstPar->u32LayerID,HI_TRUE,info->var.xres, info->var.yres);
            
            pstPar->bModifying = HI_TRUE;
            u32StartAddr = pstPar->stBufInfo.u32StereoMemStart;
            pstPar->stBufInfo.u32ScreenAddr = u32StartAddr;
            pstPar->stBufInfo.u32IndexForInt = 0;

   
            pstPar->stBufInfo.stStereoSurface.u32Pitch = u32Stride;
            pstPar->u32ParamModifyMask |= HIFB_LAYER_PARAMODIFY_STRIDE;
  
            pstPar->u32ParamModifyMask |= HIFB_LAYER_PARAMODIFY_DISPLAYADDR;

            pstPar->bModifying = HI_FALSE;
        }
        

        u32Stride = info->var.xres_virtual * info->var.bits_per_pixel >> 3;
        u32Stride = (u32Stride + 0xf) & 0xfffffff0;
		
        info->fix.line_length = u32Stride;
		
    }	
    else	
#endif		
    {
        pstPar->bModifying = HI_TRUE;
    
        /* set the stride if stride change */
        u32Stride = info->var.xres_virtual * info->var.bits_per_pixel >> 3;

        /* 16 byte aligned */
        u32Stride = (u32Stride + 0xf) & 0xfffffff0;
        
        u32StartAddr = info->fix.smem_start ;
        
        if (u32Stride != info->fix.line_length  ||
           (info->var.yres != pstPar->stDisplayInfo.u32YRes))
        {
            info->fix.line_length = u32Stride;
            hifb_buf_allocdispbuf(pstPar->u32LayerID);
            pstPar->u32ParamModifyMask |= HIFB_LAYER_PARAMODIFY_STRIDE;
           
        }
        
        pstPar->bModifying = HI_FALSE;
    }

    pstPar->bModifying = HI_TRUE;
    
    if ((pstPar->enColFmt != enFmt))
    {
#ifdef CFG_HIFB_SCROLLTEXT_SUPPORT
		if (s_stTextLayer[pstPar->u32LayerID].bAvailable)
		{
			HI_U32 i;
			for (i = 0; i < SCROLLTEXT_NUM; i++)
			{
				if (s_stTextLayer[pstPar->u32LayerID].stScrollText[i].bAvailable)
				{
					hifb_freescrolltext_cachebuf(&(s_stTextLayer[pstPar->u32LayerID].stScrollText[i]));
					memset(&s_stTextLayer[pstPar->u32LayerID].stScrollText[i],0,sizeof(HIFB_SCROLLTEXT_S));
				}
			}
		
			s_stTextLayer[pstPar->u32LayerID].bAvailable      = HI_FALSE;
			s_stTextLayer[pstPar->u32LayerID].u32textnum      = 0;
			s_stTextLayer[pstPar->u32LayerID].u32ScrollTextId = 0;
		}
#endif        
        pstPar->enColFmt = enFmt;
        pstPar->u32ParamModifyMask |= HIFB_LAYER_PARAMODIFY_FMT;
    }
  
    if (! (IS_STEREO_SW_HWHALF(pstPar) && (pstPar->stBufInfo.enBufMode == HIFB_LAYER_BUF_BUTT)))
    {
        if (info->var.bits_per_pixel >= 8)
        {
            u32DisplayAddr = (u32StartAddr + u32Stride * info->var.yoffset
                           + info->var.xoffset * (info->var.bits_per_pixel >> 3)) & 0xfffffff0;
        }
        else
        {
            u32DisplayAddr = (u32StartAddr + u32Stride * info->var.yoffset
                           + info->var.xoffset * info->var.bits_per_pixel / 8) & 0xfffffff0;
        }

	    if((info->var.bits_per_pixel == 24)&&((info->var.xoffset !=0)||(info->var.yoffset !=0)))
	    {
	        HI_U32 TmpData;

	        TmpData = (info->fix.smem_start + u32Stride * info->var.yoffset
	                       + info->var.xoffset * (info->var.bits_per_pixel >> 3))/16/3;
	        u32DisplayAddr = TmpData*16*3;
	    }
        if (u32DisplayAddr != pstPar->stBufInfo.u32ScreenAddr)
        {
            pstPar->stBufInfo.u32ScreenAddr = u32DisplayAddr;
            pstPar->u32ParamModifyMask |= HIFB_LAYER_PARAMODIFY_DISPLAYADDR;
        }
    }

    
    /* If xres or yres change */
    if (info->var.xres != pstPar->stDisplayInfo.u32XRes
        || info->var.yres != pstPar->stDisplayInfo.u32YRes)
    {
        if ((info->var.xres == 0) || (info->var.yres == 0))
        {
            if (pstPar->bShow == HI_TRUE)
            {
                pstPar->bShow = HI_FALSE;
                pstPar->u32ParamModifyMask |= HIFB_LAYER_PARAMODIFY_SHOW;
            }
        }

        hifb_disp_setdispsize(pstPar->u32LayerID, info->var.xres, info->var.yres);
        hifb_disp_setscreensize(pstPar->u32LayerID,HI_TRUE,info->var.xres, info->var.yres);
    }

    pstPar->stDisplayInfo.u32XRes    = info->var.xres;
    pstPar->stDisplayInfo.u32YRes    = info->var.yres;
    pstPar->stDisplayInfo.u32VirXRes = info->var.xres_virtual;
    pstPar->stDisplayInfo.u32VirYRes = info->var.yres_virtual;
    if (pstPar->bBootLogoToApp)
    {
        HIFB_OSD_DATA_S stOsdData = {0};
        s_stDrvHIFBOps.HIFB_DRV_GetOSDData(pstPar->u32LayerID, &stOsdData);
        hifb_disp_setdispsize(pstPar->u32LayerID, stOsdData.u32InWidth, stOsdData.u32InHeight);
        hifb_disp_setscreensize(pstPar->u32LayerID,HI_FALSE,stOsdData.u32ScreenWidth, stOsdData.u32ScreenHeight);
    }
  
    pstPar->bModifying = HI_FALSE;


    return 0;
	
}


/***************************************************************************************
* func          : hifb_pan_display
* description   : CNcomment: 标准刷新 CNend\n
* param[in]     : 
* retval        : NA
* others:       : NA
***************************************************************************************/
static HI_S32 hifb_pan_display(struct fb_var_screeninfo *var, struct fb_info *info)
{

    HIFB_PAR_S *par = (HIFB_PAR_S *)info->par;
    HI_U32 u32DisplayAddr = 0;
    HI_U32 u32Stride       = 0;
    HI_U32 u32StartAddr    = info->fix.smem_start ;
    
#ifdef CFG_HIFB_STEREO3D_HW_SUPPORT
	/**
	 ** setero 3d  mode
	 **/
    HI_S32 s32Ret = 0;
    HI_U32 BitsPerPixel;
    if (IS_STEREO_SW_HWHALF(par) 
                && par->stBufInfo.enBufMode == HIFB_LAYER_BUF_BUTT)
    {
        HIFB_BUFFER_S stCanvasBuf, stDisplayBuf, TBuf;
        HIFB_BLIT_OPT_S stBlitOpt, stBlitOptTmp;
        HI_U32 u32TmpAddr;
        HI_U32 u32ExpectBufSize = 0;
        unsigned long lockflag;
        HI_U32 u32bufsz = 0, u32BufSize;
        HI_U32 BufNum = 0;
        
        local_irq_save(lockflag);
        par->stBufInfo.bNeedFlip = HI_FALSE;
        par->stBufInfo.bCompNeedUpdate = HI_FALSE;
        par->stBufInfo.s32RefreshHandle = 0;
        local_irq_restore(lockflag);

        u32BufSize = info->var.yres_virtual * ((info->var.xres_virtual * info->var.bits_per_pixel) >> 3);
        u32bufsz   = info->var.yres * ((info->var.xres * info->var.bits_per_pixel) >> 3);       
        if (0 == u32bufsz)
        {
            return HI_FAILURE;
        }
        
        BufNum = u32BufSize / u32bufsz;
        par->stBufInfo.u32BufNum = BufNum;   
        if (BufNum > HIFB_MAX_FLIPBUF_NUM)
        {
            par->stBufInfo.u32BufNum = HIFB_MAX_FLIPBUF_NUM;
        }
        else if (BufNum == 0)
        {
            par->stBufInfo.u32BufNum = 1;
        }
        
        u32Stride = (info->var.xres * (var->bits_per_pixel >> 3)  + 0xf) & 0xfffffff0;
        u32ExpectBufSize =  par->stBufInfo.u32BufNum * info->var.yres 
                                        * ((((info->var.xres * info->var.bits_per_pixel) >> 3) + 0xf) & 0xfffffff0);

 
        /*alloc stero buf*/
        if ((u32ExpectBufSize != par->stBufInfo.u32StereoMemLen) || (par->stBufInfo.stStereoSurface.u32Pitch != u32Stride))
        {        
            HIFB_COLOR_FMT_E enFmt;
            HI_U32 Tmp = 0;
                
            s32Ret = hifb_allocstereobuf(info, u32ExpectBufSize, &Tmp);
            if (s32Ret != HI_SUCCESS)
            {
                HIFB_ERROR("pandisplay alloc stereo buf error!\n");
                return s32Ret;
            }
            
            enFmt = hifb_getfmtbyargb(&info->var.red, &info->var.green, &info->var.blue, &info->var.transp, info->var.bits_per_pixel);

            par->stBufInfo.stStereoSurface.u32PhyAddr = Tmp;
            par->stBufInfo.stStereoSurface.u32Pitch = u32Stride;
            par->stBufInfo.stStereoSurface.enFmt = enFmt;
            par->stBufInfo.stStereoSurface.u32Width= info->var.xres;
            par->stBufInfo.stStereoSurface.u32Height = info->var.yres * par->stBufInfo.u32BufNum;

            hifb_clearstereobuf(info);
            hifb_buf_allocdispbuf(par->u32LayerID);


            par->bModifying = HI_TRUE;            
            u32StartAddr = par->stBufInfo.u32StereoMemStart;
            par->stBufInfo.u32ScreenAddr = u32StartAddr;
            par->stBufInfo.u32IndexForInt = 0;
            par->stDisplayInfo.u32DisplayWidth = info->var.xres;
            par->stDisplayInfo.u32DisplayHeight = info->var.yres;
            par->u32ParamModifyMask |= HIFB_LAYER_PARAMODIFY_INRECT;
            par->u32ParamModifyMask |= HIFB_LAYER_PARAMODIFY_STRIDE;
            par->bModifying = HI_FALSE;

        }


        //u32StartAddr = par->stBufInfo.u32StereoMemStart;

        memset(&stBlitOpt, 0, sizeof(HIFB_BLIT_OPT_S));
        stBlitOpt.bScale = HI_TRUE;
        if (par->stDisplayInfo.enAntiflickerMode == HIFB_ANTIFLICKER_TDE)
        {
            stBlitOpt.enAntiflickerLevel = par->stDisplayInfo.enAntiflickerLevel;
        }
        stBlitOpt.bCallBack = HI_TRUE;
		stBlitOpt.pfnCallBack = hifb_tde_callback;
        stBlitOpt.pParam = &(par->u32LayerID);

        if (var->bits_per_pixel >= 8)
        {
            u32TmpAddr = info->fix.smem_start + info->fix.line_length * var->yoffset
                           + var->xoffset* (var->bits_per_pixel >> 3);
        }
        else
        {
            u32TmpAddr = (info->fix.smem_start + info->fix.line_length * var->yoffset
                           + var->xoffset * var->bits_per_pixel / 8);
        }

        memset(&stCanvasBuf, 0x0, sizeof(stCanvasBuf));
        stCanvasBuf.stCanvas.enFmt = par->enColFmt;
        stCanvasBuf.stCanvas.u32Pitch = info->fix.line_length;
        stCanvasBuf.stCanvas.u32PhyAddr = u32TmpAddr;
        stCanvasBuf.stCanvas.u32Height = par->stDisplayInfo.u32DisplayHeight;
        stCanvasBuf.stCanvas.u32Width =  par->stDisplayInfo.u32DisplayWidth;
        stCanvasBuf.UpdateRect.x = 0;
        stCanvasBuf.UpdateRect.y = 0;
        stCanvasBuf.UpdateRect.w = stCanvasBuf.stCanvas.u32Width;
        stCanvasBuf.UpdateRect.h = stCanvasBuf.stCanvas.u32Height;

        u32TmpAddr = par->stBufInfo.u32DisplayAddr[par->stBufInfo.u32IndexForInt];

        memset(&stDisplayBuf, 0x0, sizeof(stDisplayBuf));
        stDisplayBuf.stCanvas.enFmt = par->enColFmt;
        stDisplayBuf.stCanvas.u32Pitch = par->stBufInfo.stStereoSurface.u32Pitch;
        stDisplayBuf.stCanvas.u32PhyAddr = u32TmpAddr;
        stDisplayBuf.stCanvas.u32Height = par->stDisplayInfo.u32DisplayHeight * SCALE_K2(par);
        stDisplayBuf.stCanvas.u32Width = par->stDisplayInfo.u32DisplayWidth * SCALE_K1(par);
        stDisplayBuf.UpdateRect.x = 0;
        stDisplayBuf.UpdateRect.y = 0;
        stDisplayBuf.UpdateRect.w = stDisplayBuf.stCanvas.u32Width;
        stDisplayBuf.UpdateRect.h = stDisplayBuf.stCanvas.u32Height;


        /*Left Eye Region*/    
        stBlitOptTmp = stBlitOpt;
        TBuf = stDisplayBuf;    
        stBlitOptTmp.stClip.bClip = HI_TRUE;
        stBlitOptTmp.stClip.bInRegionClip = HI_TRUE;
        stBlitOptTmp.stClip.stClipRect.x = 0;
        stBlitOptTmp.stClip.stClipRect.y = 0;
        
        if (HIFB_ENCPICFRM_STEREO_SIDEBYSIDE_HALF == par->stDisplayInfo.enEncPicFraming)
        {
            TBuf.stCanvas.u32Width >>= 1;

            stBlitOptTmp.stClip.stClipRect.w = (par->stDisplayInfo.u32DisplayWidth >> 1) - par->stDisplayInfo.stStereoPos.s32XPos;
            stBlitOptTmp.stClip.stClipRect.h = par->stDisplayInfo.u32DisplayHeight - par->stDisplayInfo.stStereoPos.s32YPos;
            
        }
        else if (HIFB_ENCPICFRM_STEREO_TOPANDBOTTOM == par->stDisplayInfo.enEncPicFraming)
        {
            TBuf.stCanvas.u32Height >>= 1;
            stBlitOptTmp.stClip.stClipRect.w = par->stDisplayInfo.u32DisplayWidth - par->stDisplayInfo.stStereoPos.s32XPos;
            stBlitOptTmp.stClip.stClipRect.h = (par->stDisplayInfo.u32DisplayHeight >> 1) - par->stDisplayInfo.stStereoPos.s32YPos;
        }
        TBuf.UpdateRect.x = 0;
        TBuf.UpdateRect.y = 0;
        TBuf.UpdateRect.w = TBuf.stCanvas.u32Width;
        TBuf.UpdateRect.h = TBuf.stCanvas.u32Height;


        BitsPerPixel = hifb_getbppbyfmt(TBuf.stCanvas.enFmt);
        if (BitsPerPixel >= 8)
        {
            TBuf.stCanvas.u32PhyAddr += par->stDisplayInfo.stStereoPos.s32YPos * TBuf.stCanvas.u32Pitch 
                                                                                + par->stDisplayInfo.stStereoPos.s32XPos * (BitsPerPixel >> 3);  
        }
        else
        {
            TBuf.stCanvas.u32PhyAddr +=  par->stDisplayInfo.stStereoPos.s32YPos * TBuf.stCanvas.u32Pitch 
                                                                        + par->stDisplayInfo.stStereoPos.s32XPos  * BitsPerPixel/8;     
        }
        
        if (HIFB_IsIntersectRect(&stBlitOptTmp.stClip.stClipRect, &TBuf.UpdateRect))
        {                
            s32Ret = s_stDrvTdeOps.HIFB_DRV_Blit(&stCanvasBuf, &TBuf, &stBlitOptTmp, HI_TRUE);
            if (s32Ret < 0)
            {
                HIFB_ERROR("pandisplay blit 0  err!\n");
                return HI_FAILURE;
            } 
        }

        par->stBufInfo.s32RefreshHandle = s32Ret;
    }	
    else//mono mode
 #endif
    {


        u32Stride = (var->xres_virtual * (var->bits_per_pixel >> 3) + 0xf) & 0xfffffff0;

        /*set the stride and display start address*/
        if (var->bits_per_pixel >= 8)
        {
            u32DisplayAddr = (u32StartAddr + u32Stride * var->yoffset
                           + var->xoffset * (var->bits_per_pixel >> 3))&0xfffffff0;
        }
        else
        {
            u32DisplayAddr = (u32StartAddr + u32Stride * var->yoffset
                           + var->xoffset * var->bits_per_pixel / 8) & 0xfffffff0;
        }

        if((info->var.bits_per_pixel == 24)&&((info->var.xoffset !=0)||(info->var.yoffset !=0)))
        {
            HI_U32 TmpData;
            TmpData = (u32StartAddr + u32Stride * var->yoffset
                           + var->xoffset * (var->bits_per_pixel >> 3))/16/3;
            u32DisplayAddr = TmpData*16*3;
    
        }
        
        par->bModifying = HI_TRUE;
        par->u32ParamModifyMask |= HIFB_LAYER_PARAMODIFY_DISPLAYADDR;
        par->stBufInfo.u32ScreenAddr = u32DisplayAddr;

        if(par->bBootLogoToApp && par->u32LayerID == HIFB_LAYER_AD_0)
        {
            HIFB_OSD_DATA_S stOsdData = {0};
            s_stDrvHIFBOps.HIFB_DRV_GetOSDData(par->u32LayerID, &stOsdData);
            par->stBufInfo.u32ScreenAddr = stOsdData.u32RegPhyAddr;
            par->u32ParamModifyMask |= HIFB_LAYER_PARAMODIFY_DISPLAYADDR;
        }

		par->bModifying = HI_FALSE;

        /**
         ** if the flag "FB_ACTIVATE_VBL" has been set, we should 
         ** wait forregister update finish
         **/
        if (var->activate & FB_ACTIVATE_VBL)
        {
            hifb_wait_regconfig_work(par->u32LayerID);
        }
    }

    /**
     **要是设置可变信息参数进来就不进行开机logo过渡
     **这个地方在有开机logo的情况下会影响fb标准使用方式
     **/
	if(HI_FALSE == par->bSetPar && HI_TRUE == par->bBootLogoToApp)
	{
		hifb_logo_app(par);
	}
	par->bSetPar = HI_FALSE;
	
    return 0;
	
}


/***************************************************************************************
* func          : hifb_tde_callback
* description   : CNcomment: TDE回调函数 CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
static HI_S32 hifb_tde_callback(HI_VOID *pParaml, HI_VOID *pParamr)
{
    HI_U32 u32LayerId = *(HI_U32 *)pParaml;
    HI_S32 s32TdeFinishHandle = *(HI_S32 *)pParamr;
    HIFB_PAR_S *pstPar = (HIFB_PAR_S *)(s_stLayer[u32LayerId].pstInfo->par);

    if (pstPar->stBufInfo.s32RefreshHandle == s32TdeFinishHandle)
    {/** 完成刷新数据，需要更新 **/
        pstPar->stBufInfo.bNeedFlip  = HI_TRUE;
    }
    return HI_SUCCESS;
	
}


/***************************************************************************************
* func          : hifb_disp_setlayerpos
* description   : CNcomment: 设置layer显示位置信息(outrect) CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
static HI_VOID hifb_disp_setlayerpos(HI_U32 u32LayerId, HI_S32 s32XPos, HI_S32 s32YPos)
{
    struct fb_info *info = s_stLayer[u32LayerId].pstInfo;
    HIFB_PAR_S *pstPar = (HIFB_PAR_S *)info->par;

	/**
	 ** the layer position of AD changed together with HD
	 **/
	pstPar->stDisplayInfo.stPos.s32XPos = s32XPos;
    pstPar->stDisplayInfo.stPos.s32YPos = s32YPos;

    pstPar->u32ParamModifyMask |= HIFB_LAYER_PARAMODIFY_OUTRECT;

    return;
}


/***************************************************************************************
* func          : hifb_buf_setbufmode
* description   : CNcomment: 设置buffer模式 CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
static HI_VOID hifb_buf_setbufmode(HI_U32 u32LayerId, HIFB_LAYER_BUF_E enLayerBufMode)
{
    struct fb_info *info = s_stLayer[u32LayerId].pstInfo;
    HIFB_PAR_S *pstPar = (HIFB_PAR_S *)info->par;

    /**
     ** in 0 buf mode ,maybe the stride or fmt will be changed! 
     **/
    if (  (pstPar->stBufInfo.enBufMode == HIFB_LAYER_BUF_NONE)
        &&(pstPar->stBufInfo.enBufMode != enLayerBufMode))
    {
        pstPar->bModifying = HI_TRUE;
        
        pstPar->u32ParamModifyMask |= HIFB_LAYER_PARAMODIFY_STRIDE;

        pstPar->u32ParamModifyMask |= HIFB_LAYER_PARAMODIFY_FMT;

        pstPar->bModifying = HI_FALSE;
    }

    pstPar->stBufInfo.enBufMode  = enLayerBufMode;	
}


/***************************************************************************************
* func          : hifb_select_antiflicker_mode
* description   : choose the module to do  flicker resiting, TDE or VOU ? the rule is 
                  as this ,the moudle should do flicker resisting who has do scaling
                  CNcomment: CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
static HI_VOID hifb_select_antiflicker_mode(HIFB_PAR_S *pstPar)
{
    /*if the usr's configuration is no needed to do flicker resisting, so no needed to do it  */
   if (pstPar->stDisplayInfo.enAntiflickerLevel == HIFB_LAYER_ANTIFLICKER_NONE)
   {
       pstPar->stDisplayInfo.enAntiflickerMode = HIFB_ANTIFLICKER_NONE;
   }
   else
   {
       /*current standard no needed to do flicker resisting */
       if (!pstPar->stDisplayInfo.bNeedAntiflicker)
       {
           pstPar->stDisplayInfo.enAntiflickerMode = HIFB_ANTIFLICKER_NONE;
       }
       else
       {
           /*VO has don scaling , so should do flicker resisting at the same time*/
           if(  (pstPar->stDisplayInfo.u32DisplayWidth != pstPar->stDisplayInfo.u32ScreenWidth)
              ||(pstPar->stDisplayInfo.u32DisplayHeight != pstPar->stDisplayInfo.u32ScreenHeight))
           {                
               pstPar->stDisplayInfo.enAntiflickerMode = HIFB_ANTIFLICKER_VO; 
           }
           else
           {
               pstPar->stDisplayInfo.enAntiflickerMode = HIFB_ANTIFLICKER_TDE; 
           }
       }
   }
    
}
   


/***************************************************************************************
* func          : hifb_disp_setantiflickerlevel
* description   : CNcomment: 设置抗闪级别 CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
static HI_VOID hifb_disp_setantiflickerlevel(HI_U32 u32LayerId, HIFB_LAYER_ANTIFLICKER_LEVEL_E enAntiflickerLevel)
{

    struct fb_info *info = s_stLayer[u32LayerId].pstInfo;
    HIFB_PAR_S *pstPar = (HIFB_PAR_S *)info->par;

    pstPar->stDisplayInfo.enAntiflickerLevel = enAntiflickerLevel;
    hifb_select_antiflicker_mode(pstPar);

    return;
}

#define HIFB_CHECK_LAYERID(u32LayerId) do\
{\
    if (!s_stDrvHIFBOps.pstCapability[u32LayerId].bLayerSupported)\
    {\
        HIFB_ERROR("not support layer %d\n", u32LayerId);\
        return HI_FAILURE;\
    }\
}while(0);





static HI_S32 hifb_clip_ADLayer(HIFB_PAR_S *pstPar, HIFB_RECT *pstInRect, HIFB_RECT *pstOutRect)
{
    HI_S32 s32Ret;
    struct fb_info *infoHD;
    HIFB_PAR_S *pstParHD;
	HIFB_RECT stHDInRect;

    infoHD   = s_stLayer[HIFB_LAYER_HD_0].pstInfo;
    pstParHD = (HIFB_PAR_S *)infoHD->par;

    s32Ret = atomic_read(&pstParHD->ref_count);
    if (s32Ret > 0)
    {
    	stHDInRect.w  = pstParHD->stBufInfo.stInRect.w;
		stHDInRect.h  = pstParHD->stBufInfo.stInRect.h;
        if ((pstOutRect->x + pstInRect->w) > stHDInRect.w)
        {
            pstInRect->w = stHDInRect.w - pstOutRect->x;
			if (pstInRect->w < 2)
			{
				pstInRect->w = 0; 
			}
			/*after cut off, the input rectangle keep rate with output rectangle */
	        if(pstPar->stDisplayInfo.u32DisplayWidth)
	        {
	        	pstOutRect->w = pstInRect->w * pstOutRect->w / (HI_S32)pstPar->stDisplayInfo.u32DisplayWidth;	        	
	        }
        }

		if ((pstOutRect->y + pstInRect->h) > stHDInRect.h)
	   {
		   pstInRect->h = stHDInRect.h - pstOutRect->y;           
		   if (pstInRect->h < 2)
		   {		       
			   pstInRect->h = 0; 
		   }
		   /*after cut off, the input rectangle keep rate with output rectangle */
		   if(pstPar->stDisplayInfo.u32DisplayHeight)
		   {
			   pstOutRect->h = pstInRect->h * pstOutRect->h / (HI_S32)pstPar->stDisplayInfo.u32DisplayHeight;			   
		   }
	   }

    }

    return HI_SUCCESS;
}


/***************************************************************************************
* func          : hifb_vo_callback
* description   : CNcomment: VO中断 CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
static HI_S32 hifb_vo_callback(HI_VOID *pParaml, HI_VOID *pParamr)
{

    HI_U32 *pu32LayerId  = (HI_U32 *)pParaml;
    struct fb_info *info = s_stLayer[*pu32LayerId].pstInfo;
    HIFB_PAR_S *pstPar   = (HIFB_PAR_S *)(info->par);
    HI_BOOL bChangeReg   = HI_FALSE;
    HI_U32 u32Index;
	
    if (!pstPar->bModifying)
    {   

        if ((pstPar->u32ParamModifyMask & HIFB_LAYER_PARAMODIFY_SHOW) && !pstPar->bBootLogoToApp)
        {
            s_stDrvHIFBOps.HIFB_DRV_EnableLayer(*pu32LayerId, pstPar->bShow);
        }
        
        if (pstPar->u32ParamModifyMask & HIFB_LAYER_PARAMODIFY_ALPHA)
        {
            s_stDrvHIFBOps.HIFB_DRV_SetLayerAlpha(*pu32LayerId, pstPar->stAlpha);
        }

        if (pstPar->u32ParamModifyMask & HIFB_LAYER_PARAMODIFY_COLORKEY)
        {
            s_stDrvHIFBOps.HIFB_DRV_SetLayerKeyMask(*pu32LayerId, &pstPar->stCkey);
        }

        if (pstPar->u32ParamModifyMask & HIFB_LAYER_PARAMODIFY_BMUL)
        {
            s_stDrvHIFBOps.HIFB_DRV_SetPreMul(*pu32LayerId, pstPar->stDisplayInfo.bPreMul);
        }

        if (pstPar->u32ParamModifyMask & HIFB_LAYER_PARAMODIFY_FMT)
        {
            if ((pstPar->stBufInfo.enBufMode == HIFB_LAYER_BUF_NONE)
                && pstPar->stBufInfo.stUserBuffer.stCanvas.u32PhyAddr)
            {
                s_stDrvHIFBOps.HIFB_DRV_SetLayerDataFmt(*pu32LayerId, pstPar->stBufInfo.stUserBuffer.stCanvas.enFmt);
            }
            else
            {
                s_stDrvHIFBOps.HIFB_DRV_SetLayerDataFmt(*pu32LayerId, pstPar->enColFmt);
            }
        }

        if (pstPar->u32ParamModifyMask & HIFB_LAYER_PARAMODIFY_STRIDE)
        {

            if (  (pstPar->stBufInfo.enBufMode == HIFB_LAYER_BUF_NONE)
                && pstPar->stBufInfo.stUserBuffer.stCanvas.u32PhyAddr)
            {
                s_stDrvHIFBOps.HIFB_DRV_SetLayerStride(*pu32LayerId, pstPar->u32Scaling*pstPar->stBufInfo.stUserBuffer.stCanvas.u32Pitch);
            }
			#ifdef CFG_HIFB_STEREO3D_HW_SUPPORT
	            else if (  (pstPar->stBufInfo.enBufMode == HIFB_LAYER_BUF_BUTT) 
	                     && IS_STEREO_SW_HWHALF(pstPar))
	            {
	                s_stDrvHIFBOps.HIFB_DRV_SetLayerStride(*pu32LayerId, pstPar->u32Scaling*pstPar->stBufInfo.stStereoSurface.u32Pitch);
	            }
			#endif            
            else
            {
                s_stDrvHIFBOps.HIFB_DRV_SetLayerStride(*pu32LayerId, pstPar->u32Scaling*info->fix.line_length);
            }
        }

        if (pstPar->u32ParamModifyMask & HIFB_LAYER_PARAMODIFY_ANTIFLICKERLEVEL)
        {
            HIFB_DEFLICKER_S stDeflicker;

            stDeflicker.pu8HDfCoef = pstPar->ucHDfcoef;
            stDeflicker.pu8VDfCoef = pstPar->ucVDfcoef;
            stDeflicker.u32HDfLevel = pstPar->u32HDflevel;
            stDeflicker.u32VDfLevel = pstPar->u32VDflevel;

            s_stDrvHIFBOps.HIFB_DRV_SetLayerDeFlicker(*pu32LayerId, stDeflicker);
        }

        if (  (pstPar->u32ParamModifyMask & HIFB_LAYER_PARAMODIFY_INRECT || pstPar->u32ParamModifyMask & HIFB_LAYER_PARAMODIFY_OUTRECT)
			&& !pstPar->bBootLogoToApp)
        {
            HIFB_RECT stInRect = {0};
            HIFB_RECT stOutRect = {0};
            HIFB_OSD_DATA_S stLayerData;
			
            /*if VO can't support scaling,  we set the screen's H/W as the same as display */
            if (!s_stDrvHIFBOps.pstCapability[*pu32LayerId].bVoScale)
            {
               pstPar->stDisplayInfo.u32ScreenWidth  = pstPar->stDisplayInfo.u32DisplayWidth;
               pstPar->stDisplayInfo.u32ScreenHeight = pstPar->stDisplayInfo.u32DisplayHeight;
            }
			
			#ifdef CFG_HIFB_STEREO3D_HW_SUPPORT
	            if (IS_STEREO_ENCPICFRAMING(pstPar->stDisplayInfo.enEncPicFraming))
	            {
	                if (HIFB_ENCPICFRM_STEREO_SIDEBYSIDE_HALF == pstPar->stDisplayInfo.enEncPicFraming)
	                {
	                    stInRect.w = (HI_S32)pstPar->stDisplayInfo.u32DisplayWidth >> 1;
	                    stInRect.h = (HI_S32)pstPar->stDisplayInfo.u32DisplayHeight;
	                }
	                else
	                {
	                    stInRect.w = (HI_S32)pstPar->stDisplayInfo.u32DisplayWidth;
	                    stInRect.h = (HI_S32)pstPar->stDisplayInfo.u32DisplayHeight >> 1;
	                }
	            }
            	else
			#endif
            {
                stInRect.w = (HI_S32)pstPar->stDisplayInfo.u32DisplayWidth;
                stInRect.h = (HI_S32)pstPar->stDisplayInfo.u32DisplayHeight;
            }
            
            stInRect.h = stInRect.h / pstPar->u32Scaling;

            /**
             ** for the case standard auto change can't be support, 
             ** we should read screen high, width size on curent standard
             **/
            s_stDrvHIFBOps.HIFB_DRV_GetOSDData(pstPar->u32LayerID, &stLayerData);
            
            pstPar->stDisplayInfo.u32MaxScreenWidth  = stLayerData.u32ScreenWidth;
            pstPar->stDisplayInfo.u32MaxScreenHeight = stLayerData.u32ScreenHeight;

			#ifdef CFG_HIFB_STEREO3D_HW_SUPPORT
            if (IS_STEREO_ENCPICFRAMING(pstPar->stDisplayInfo.enEncPicFraming))
            {
                HI_S32 MaxScnWidth  = 0;
				HI_S32 MaxScnHeight = 0;
				HI_S32 ScnWidth      = 0;
				HI_S32 ScnHeight     = 0;

                if (HIFB_ENCPICFRM_STEREO_SIDEBYSIDE_HALF == pstPar->stDisplayInfo.enEncPicFraming)
                {
                    
                    MaxScnWidth  = pstPar->stDisplayInfo.u32MaxScreenWidth >> 1;
                    MaxScnHeight = pstPar->stDisplayInfo.u32MaxScreenHeight;
                    ScnWidth     = pstPar->stDisplayInfo.u32ScreenWidth >> 1;
                    ScnHeight    = pstPar->stDisplayInfo.u32ScreenHeight;

                    stOutRect.x = (pstPar->stDisplayInfo.stPos.s32XPos >> 1);
                    stOutRect.y = pstPar->stDisplayInfo.stPos.s32YPos;
					stOutRect.w = (HI_S32)pstPar->stDisplayInfo.u32ScreenWidth >> 1;
                    stOutRect.h = (HI_S32)pstPar->stDisplayInfo.u32ScreenHeight;
					
                }
                else if (HIFB_ENCPICFRM_STEREO_TOPANDBOTTOM == pstPar->stDisplayInfo.enEncPicFraming)
                {
                    
                    MaxScnWidth  = pstPar->stDisplayInfo.u32MaxScreenWidth;
                    MaxScnHeight = (pstPar->stDisplayInfo.u32MaxScreenHeight >> 1);
                    ScnWidth     = pstPar->stDisplayInfo.u32ScreenWidth;
                    ScnHeight    = pstPar->stDisplayInfo.u32ScreenHeight >> 1;

                    stOutRect.x = pstPar->stDisplayInfo.stPos.s32XPos;
                    stOutRect.y = pstPar->stDisplayInfo.stPos.s32YPos  >> 1;
					stOutRect.w = (HI_S32)pstPar->stDisplayInfo.u32ScreenWidth;
                    stOutRect.h = (HI_S32)pstPar->stDisplayInfo.u32ScreenHeight >> 1;
					
                }
				
                if ((HI_U32)stOutRect.x + stOutRect.w > MaxScnWidth)
                {
                    stOutRect.w = (HI_S32)(MaxScnWidth - stOutRect.x);
                }

                if ((HI_U32)stOutRect.y + stOutRect.h > MaxScnHeight)
                {
                    stOutRect.h = (HI_S32)(MaxScnHeight - stOutRect.y);
                }
				
                stInRect.w = stInRect.w * stOutRect.w / ScnWidth;
                stInRect.h = stInRect.h * stOutRect.h / ScnHeight;
				
            }
            else
			#endif
            {
                stOutRect.x = pstPar->stDisplayInfo.stPos.s32XPos;
                stOutRect.y = pstPar->stDisplayInfo.stPos.s32YPos;
                stOutRect.w = pstPar->stDisplayInfo.u32ScreenWidth;
                stOutRect.h = pstPar->stDisplayInfo.u32ScreenHeight;

                if ((HI_U32)stOutRect.x + stOutRect.w > pstPar->stDisplayInfo.u32MaxScreenWidth)
                {
                    stOutRect.w = (HI_S32)(pstPar->stDisplayInfo.u32MaxScreenWidth - stOutRect.x);
                }

                if ((HI_U32)stOutRect.y + stOutRect.h > (HI_S32)pstPar->stDisplayInfo.u32MaxScreenHeight)
                {
                    stOutRect.h = (HI_S32)(pstPar->stDisplayInfo.u32MaxScreenHeight - stOutRect.y);
                }
				
                /**
                 ** after cut off, the input rectangle keep rate with output rectangle 
                 **/
                if((pstPar->stDisplayInfo.u32ScreenWidth)&&(pstPar->stDisplayInfo.u32ScreenHeight))
                {
                    stInRect.w = stInRect.w * stOutRect.w / (HI_S32)pstPar->stDisplayInfo.u32ScreenWidth;
                    stInRect.h = stInRect.h * stOutRect.h / (HI_S32)pstPar->stDisplayInfo.u32ScreenHeight;                
                }
				
            }
       
            if (IS_HD_LAYER(*pu32LayerId))
            {  
            	/**
            	 ** if the outrect of HD layer was clipped , we also need to clip the layer of AD
            	 **/
    			HIFB_PAR_S *pstPar = (HIFB_PAR_S *)(s_stLayer[HIFB_LAYER_AD_0].pstInfo->par);
				pstPar->u32ParamModifyMask |= HIFB_LAYER_PARAMODIFY_OUTRECT;             
            }
            
			if (IS_AD_LAYER(*pu32LayerId))
			{			
				hifb_clip_ADLayer(pstPar, &stInRect, &stOutRect);
                
                /**
                 ** when HD was closed,setting the register of HD 
                 **/
                if (HI_FAILURE == hifb_islayeropen(HIFB_LAYER_HD_0))
                {   
                    s_stDrvHIFBOps.HIFB_DRV_SetHDRect(*pu32LayerId, &stInRect, &stOutRect);
                    s_stDrvHIFBOps.HIFB_DRV_UpdataLayerReg(HIFB_LAYER_HD_0);
                }
			}
            pstPar->stBufInfo.stInRect = stInRect;
            s_stDrvHIFBOps.HIFB_DRV_SetLayerRect(*pu32LayerId, &stInRect, &stOutRect);			

		}
		
        if (pstPar->u32ParamModifyMask & HIFB_LAYER_PARAMODIFY_DISPLAYADDR)
        {
            s_stDrvHIFBOps.HIFB_DRV_SetLayerAddr(*pu32LayerId, pstPar->stBufInfo.u32ScreenAddr);
        }

        pstPar->u32ParamModifyMask = 0;

        bChangeReg = HI_TRUE;
		
    }
    
    if (   (pstPar->stBufInfo.enBufMode == HIFB_LAYER_BUF_DOUBLE)
        && (pstPar->stBufInfo.bNeedFlip == HI_TRUE))
    {/** 切换buffer **/
        u32Index = pstPar->stBufInfo.u32IndexForInt;

        u32Index = 1 - u32Index;
        pstPar->stBufInfo.u32IndexForInt = u32Index;

        s_stDrvHIFBOps.HIFB_DRV_SetLayerAddr(*pu32LayerId,pstPar->stBufInfo.u32DisplayAddr[u32Index]);
       
        pstPar->stBufInfo.u32ScreenAddr = pstPar->stBufInfo.u32DisplayAddr[u32Index];
        info->var.yoffset = (pstPar->stBufInfo.u32DisplayAddr[u32Index] - info->fix.smem_start) / info->fix.line_length;
        info->var.xoffset = (((pstPar->stBufInfo.u32DisplayAddr[u32Index] - info->fix.smem_start) % info->fix.line_length))/ (info->var.bits_per_pixel >> 3);
        pstPar->stBufInfo.bFliped   = HI_TRUE;
        pstPar->stBufInfo.bNeedFlip = HI_FALSE;
        pstPar->stBufInfo.u32IntPicNum++;
        pstPar->stBufInfo.bRefreshed = HI_TRUE;
    } 

#ifdef CFG_HIFB_STEREO3D_HW_SUPPORT
    if (  (pstPar->stBufInfo.enBufMode == HIFB_LAYER_BUF_BUTT)
        && pstPar->stBufInfo.u32StereoMemStart 
        && IS_STEREO_SW_HWHALF(pstPar)
        && (pstPar->stBufInfo.bNeedFlip == HI_TRUE))
    {
         u32Index = pstPar->stBufInfo.u32IndexForInt;
        
        s_stDrvHIFBOps.HIFB_DRV_SetLayerAddr(*pu32LayerId, pstPar->stBufInfo.u32DisplayAddr[u32Index]);

        pstPar->stBufInfo.u32ScreenAddr  = pstPar->stBufInfo.u32DisplayAddr[u32Index];
        pstPar->stBufInfo.u32IndexForInt = (++u32Index) % pstPar->stBufInfo.u32BufNum;
        
        pstPar->stBufInfo.bFliped   = HI_TRUE;
        pstPar->stBufInfo.bNeedFlip = HI_FALSE;
        pstPar->stBufInfo.u32IntPicNum++;
    }
#endif

    if(bChangeReg)
    {
        pstPar->vblflag = 1;
        wake_up_interruptible(&(pstPar->vblEvent));
    }

    s_stDrvHIFBOps.HIFB_DRV_UpdataLayerReg(*pu32LayerId);

#ifdef CFG_HIFB_SCROLLTEXT_SUPPORT
	hifb_scrolltext_blit(*pu32LayerId);
#endif
	
    return HI_SUCCESS;

}


/***************************************************************************************
* func          : hifb_disp_callback
* description   : CNcomment: 制式切换上报的中断 CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
static HI_S32 hifb_disp_callback(HI_VOID *pParaml, HI_VOID *pParamr)
{
    HI_U32 u32LayerId = 0;
    DISP_INFO_S *pstDisplayInfo = NULL;
    struct fb_info *info = NULL;
    HIFB_PAR_S *pstPar = NULL;
    HI_U32 u32ScreenWidth;
    HI_U32 u32ScreenHeight;
    HIFB_POINT_S stPos;

    u32LayerId = *(HI_U32*)pParaml;
    
    pstDisplayInfo = (DISP_INFO_S *)pParamr;
	
    if ((u32LayerId >= HIFB_MAX_LAYER_NUM) || !pstDisplayInfo)
    {
        HIFB_ERROR("param error! layer id:%d, pParamr:%p !\n", u32LayerId, pstDisplayInfo);
        return HI_FAILURE;
    }
    
    info   = s_stLayer[u32LayerId].pstInfo;
    pstPar = (HIFB_PAR_S *)(info->par);
    
    stPos.s32XPos = pstPar->stDisplayInfo.stPos.s32XPos;
    stPos.s32YPos = pstPar->stDisplayInfo.stPos.s32YPos;
    if (pstDisplayInfo->enScanMode == HIFB_SCANMODE_P)
    {
        pstPar->stDisplayInfo.bNeedAntiflicker = HI_FALSE;
    }
    else
    {
        pstPar->stDisplayInfo.bNeedAntiflicker = HI_TRUE;
    }

    hifb_select_antiflicker_mode(pstPar);
    
	u32ScreenWidth = pstDisplayInfo->u32ScreenWidth * pstPar->stDisplayInfo.u32ScreenWidth
	                 / pstPar->stDisplayInfo.u32MaxScreenWidth;
	u32ScreenHeight = pstDisplayInfo->u32ScreenHeight * pstPar->stDisplayInfo.u32ScreenHeight
	                  / pstPar->stDisplayInfo.u32MaxScreenHeight;


	stPos.s32XPos = (HI_U32)stPos.s32XPos * pstDisplayInfo->u32ScreenWidth / pstPar->stDisplayInfo.u32MaxScreenWidth;
	stPos.s32YPos = (HI_U32)stPos.s32YPos * pstDisplayInfo->u32ScreenHeight / pstPar->stDisplayInfo.u32MaxScreenHeight;

	pstPar->bModifying = HI_TRUE;
	pstPar->stDisplayInfo.u32MaxScreenWidth = pstDisplayInfo->u32ScreenWidth;
	pstPar->stDisplayInfo.u32MaxScreenHeight = pstDisplayInfo->u32ScreenHeight;

	hifb_disp_setscreensize(u32LayerId,HI_FALSE,u32ScreenWidth, u32ScreenHeight);
	hifb_disp_setlayerpos(u32LayerId, stPos.s32XPos, stPos.s32YPos);

   
	/** add for hal, config all the register*/
	pstPar->u32ParamModifyMask |= HIFB_LAYER_PARAMODIFY_STRIDE;
	pstPar->u32ParamModifyMask |= HIFB_LAYER_PARAMODIFY_FMT;
	pstPar->u32ParamModifyMask |= HIFB_LAYER_PARAMODIFY_ALPHA;
	pstPar->u32ParamModifyMask |= HIFB_LAYER_PARAMODIFY_COLORKEY;
	pstPar->u32ParamModifyMask |= HIFB_LAYER_PARAMODIFY_INRECT;
	pstPar->u32ParamModifyMask |= HIFB_LAYER_PARAMODIFY_OUTRECT;
	pstPar->u32ParamModifyMask |= HIFB_LAYER_PARAMODIFY_DISPLAYADDR;
	pstPar->u32ParamModifyMask |= HIFB_LAYER_PARAMODIFY_SHOW;
	pstPar->u32ParamModifyMask |= HIFB_LAYER_PARAMODIFY_BMUL;
	pstPar->u32ParamModifyMask |= HIFB_LAYER_PARAMODIFY_ANTIFLICKERLEVEL;
    pstPar->bModifying = HI_FALSE;

    pstPar->bRefreshByDisp = HI_TRUE;
    hifb_refresh_again(pstPar->u32LayerID);
    pstPar->bRefreshByDisp = HI_FALSE;
	
    return HI_SUCCESS;
	
}


/*****************************************************************************
* func         :  hifb_refresh_0buf
* description  :  HIGO单buffer刷新，也就是hifb直接使用HIGO得canvase数据
* retval       :  NA
* others:	   :  NA
*****************************************************************************/
static HI_S32 hifb_refresh_0buf(HI_U32 u32LayerId, HIFB_BUFFER_S *pstCanvasBuf)
{

    struct fb_info *info = s_stLayer[u32LayerId].pstInfo;
    HIFB_PAR_S *pstPar = (HIFB_PAR_S *)info->par;
    HI_U32 u32StartAddr = 0L;

#ifdef CFG_HIFB_STEREO3D_HW_SUPPORT
    HI_S32 s32Ret = 0;
    HI_U32 BitsPerPixel = 0;
	
    if (IS_STEREO_ENCPICFRAMING(pstPar->stDisplayInfo.enEncPicFraming))
    {/** 3D情况下才进来 **/
        HI_U32 u32BufSize;
        HIFB_RECT UpdateRect = pstCanvasBuf->UpdateRect;
        HIFB_BUFFER_S stCanvasBuf;
        HIFB_BUFFER_S stDisplayBuf;
        HIFB_BLIT_OPT_S stBlitOpt, stBlitOptTmp;

         if ( (UpdateRect.x >=  pstCanvasBuf->stCanvas.u32Width)
            || (UpdateRect.y >= pstCanvasBuf->stCanvas.u32Height)
            || (UpdateRect.w == 0) || (UpdateRect.h == 0))
        {
            HIFB_ERROR("hifb_refresh_0buf upate rect invalid\n");
            return HI_FAILURE;
        }       
        
        u32BufSize = pstCanvasBuf->stCanvas.u32Height * ((pstCanvasBuf->stCanvas.u32Pitch + 0xf) & 0xfffffff0);

		/**
		 ** alloc 3D buffer
		 **/
        if (   (u32BufSize != pstPar->stBufInfo.u32StereoMemLen) 
            || (pstPar->stBufInfo.stStereoSurface.u32Pitch != pstCanvasBuf->stCanvas.u32Pitch))
        {
            HI_U32 Tmp = 0;
            s32Ret = hifb_allocstereobuf(info, u32BufSize, &Tmp);
            if (s32Ret != HI_SUCCESS)
            {
                HIFB_ERROR("hifb_refresh_0buf alloc stero mem failed!\n");
                return s32Ret;
            }
            
            pstPar->stBufInfo.stStereoSurface.u32PhyAddr = Tmp;
            pstPar->stBufInfo.stStereoSurface.u32Pitch   = pstCanvasBuf->stCanvas.u32Pitch;
            pstPar->stBufInfo.stStereoSurface.enFmt      = pstCanvasBuf->stCanvas.enFmt;
            pstPar->stBufInfo.stStereoSurface.u32Width   = pstCanvasBuf->stCanvas.u32Width;
            pstPar->stBufInfo.stStereoSurface.u32Height  = pstCanvasBuf->stCanvas.u32Height;
            hifb_clearstereobuf(info);
            hifb_disp_setdispsize(pstPar->u32LayerID, pstCanvasBuf->stCanvas.u32Width, pstCanvasBuf->stCanvas.u32Height);
        }

        u32StartAddr = pstPar->stBufInfo.u32StereoMemStart;

        memset(&stBlitOpt,    0, sizeof(HIFB_BLIT_OPT_S));
        memset(&stCanvasBuf,  0, sizeof(HIFB_BUFFER_S));
        memset(&stDisplayBuf, 0, sizeof(HIFB_BUFFER_S));
        
        stBlitOpt.bScale = HI_TRUE;
        if (pstPar->stDisplayInfo.enAntiflickerMode == HIFB_ANTIFLICKER_TDE)
        {
            stBlitOpt.enAntiflickerLevel = pstPar->stDisplayInfo.enAntiflickerLevel;
        }
        stBlitOpt.bRegionDeflicker = HI_TRUE;
	
        stCanvasBuf = *pstCanvasBuf;

        /**
         ** Left Eye Region
         **/    
        stDisplayBuf = *pstCanvasBuf;     
        stDisplayBuf.stCanvas.u32PhyAddr = u32StartAddr;
        stDisplayBuf.stCanvas.u32Pitch   = pstPar->stBufInfo.stStereoSurface.u32Pitch;
        stDisplayBuf.stCanvas.u32Width   = pstPar->stDisplayInfo.u32DisplayWidth  * SCALE_K1(pstPar);         
        stDisplayBuf.stCanvas.u32Height  = pstPar->stDisplayInfo.u32DisplayHeight * SCALE_K2(pstPar);

        stBlitOptTmp = stBlitOpt;
        stBlitOptTmp.stClip.bClip         = HI_TRUE;
        stBlitOptTmp.stClip.bInRegionClip = HI_TRUE;
        stBlitOptTmp.stClip.stClipRect.x  = 0;
        stBlitOptTmp.stClip.stClipRect.y  = 0;

        if (HIFB_ENCPICFRM_STEREO_SIDEBYSIDE_HALF == pstPar->stDisplayInfo.enEncPicFraming)
        {
            stBlitOptTmp.stClip.stClipRect.w = (pstPar->stDisplayInfo.u32DisplayWidth >> 1) - pstPar->stDisplayInfo.stStereoPos.s32XPos;
            stBlitOptTmp.stClip.stClipRect.h = pstPar->stDisplayInfo.u32DisplayHeight - pstPar->stDisplayInfo.stStereoPos.s32YPos;
            
            stDisplayBuf.stCanvas.u32Width >>= 1;
            stDisplayBuf.UpdateRect.x = 0;     
            stDisplayBuf.UpdateRect.y = 0;             
            stDisplayBuf.UpdateRect.w = stDisplayBuf.stCanvas.u32Width;
            stDisplayBuf.UpdateRect.h = stDisplayBuf.stCanvas.u32Height;   
        }
        else if (HIFB_ENCPICFRM_STEREO_TOPANDBOTTOM == pstPar->stDisplayInfo.enEncPicFraming)
        {
            stBlitOptTmp.stClip.stClipRect.w = pstPar->stDisplayInfo.u32DisplayWidth - pstPar->stDisplayInfo.stStereoPos.s32XPos;
            stBlitOptTmp.stClip.stClipRect.h = (pstPar->stDisplayInfo.u32DisplayHeight >> 1) - pstPar->stDisplayInfo.stStereoPos.s32YPos;
        
            stDisplayBuf.stCanvas.u32Height >>= 1;

            stDisplayBuf.UpdateRect.x = 0;     
            stDisplayBuf.UpdateRect.y = 0;             
            stDisplayBuf.UpdateRect.w = stDisplayBuf.stCanvas.u32Width;
            stDisplayBuf.UpdateRect.h = stDisplayBuf.stCanvas.u32Height;   
        }


        BitsPerPixel = hifb_getbppbyfmt(stDisplayBuf.stCanvas.enFmt);
        if (BitsPerPixel >= 8)
        {
            stDisplayBuf.stCanvas.u32PhyAddr += pstPar->stDisplayInfo.stStereoPos.s32YPos * stDisplayBuf.stCanvas.u32Pitch 
                                                                                + pstPar->stDisplayInfo.stStereoPos.s32XPos * (BitsPerPixel >> 3);  
        }
        else
        {
            stDisplayBuf.stCanvas.u32PhyAddr +=  pstPar->stDisplayInfo.stStereoPos.s32YPos * stDisplayBuf.stCanvas.u32Pitch 
                                                                        + pstPar->stDisplayInfo.stStereoPos.s32XPos  * BitsPerPixel/8;     
        }

        
        if (HIFB_IsIntersectRect(&stBlitOptTmp.stClip.stClipRect, &stDisplayBuf.UpdateRect))
        {
            s32Ret = s_stDrvTdeOps.HIFB_DRV_Blit(&stCanvasBuf, &stDisplayBuf, &stBlitOptTmp, HI_TRUE);
            if (s32Ret < 0)
            {
                HIFB_ERROR("0buf blit 0  err!\n");
                return HI_FAILURE;
            } 
        }
       
        /*Right Eye Region*/
    }
    else
#endif	    
    {
        u32StartAddr = pstCanvasBuf->stCanvas.u32PhyAddr;
    }

	/**
	 **更新参数
	 **/
    pstPar->bModifying = HI_TRUE;
	
    pstPar->u32ParamModifyMask |= HIFB_LAYER_PARAMODIFY_DISPLAYADDR;        
    pstPar->stBufInfo.u32ScreenAddr = u32StartAddr;

    pstPar->u32ParamModifyMask |= HIFB_LAYER_PARAMODIFY_STRIDE;
    pstPar->stBufInfo.stUserBuffer.stCanvas.u32Pitch = pstCanvasBuf->stCanvas.u32Pitch;

    pstPar->u32ParamModifyMask |= HIFB_LAYER_PARAMODIFY_FMT;
    pstPar->stBufInfo.stUserBuffer.stCanvas.enFmt = pstCanvasBuf->stCanvas.enFmt;

	/**
	 **输入使用canvas信息，3D模式的话这里的宽高会发生变化
	 **/
    hifb_disp_setdispsize(u32LayerId,                         \
		                    pstCanvasBuf->stCanvas.u32Width,    \
                            pstCanvasBuf->stCanvas.u32Height);
    pstPar->bModifying = HI_FALSE;

    memcpy(&(pstPar->stBufInfo.stUserBuffer), pstCanvasBuf, sizeof(HIFB_BUFFER_S));


    if(pstPar->bRefreshByDisp != HI_TRUE)
    {
        hifb_wait_regconfig_work(u32LayerId);
    }

    return HI_SUCCESS;
	
}


/***************************************************************************************
* func          : hifb_refresh_panbuf
* description   : CNcomment: 3D刷新的其中一个分支 CNend\n
* param[in]     : 
* retval        : NA
* others:       : NA
***************************************************************************************/
static HI_S32 hifb_refresh_panbuf(HI_U32 u32LayerId, HIFB_BUFFER_S *pstCanvasBuf)
{

    struct fb_info *info = s_stLayer[u32LayerId].pstInfo;
    HIFB_PAR_S *par = (HIFB_PAR_S *)info->par;   
    HIFB_RECT UpdateRect = pstCanvasBuf->UpdateRect;
 
    if (   (UpdateRect.x >=  par->stDisplayInfo.u32DisplayWidth)
        || (UpdateRect.y >= par->stDisplayInfo.u32DisplayHeight)
        || (UpdateRect.w == 0) || (UpdateRect.h == 0))
    {
        HIFB_ERROR("hifb_refresh_panbuf upate rect invalid\n");
        return HI_FAILURE;
    }

#ifdef CFG_HIFB_STEREO3D_HW_SUPPORT
    
    if (IS_STEREO_SW_HWHALF(par))
    {
        HI_S32 s32Ret; 
        HI_U32 u32Stride = 0, BitsPerPixel;
        HIFB_BLIT_OPT_S stBlitOpt, stBlitOptTmp;
        HI_U32 u32TmpAddr;
        HIFB_BUFFER_S stCanvasBuf;
        HIFB_BUFFER_S stDisplayBuf, TBuf;
        struct fb_var_screeninfo *var = &(info->var);    
        if (par->stBufInfo.u32StereoMemStart == 0)
        {
            HIFB_ERROR("you should pan first\n");
            return HI_FAILURE;
        }

        u32Stride = par->stBufInfo.stStereoSurface.u32Pitch;
                
        memset(&stBlitOpt, 0, sizeof(HIFB_BLIT_OPT_S));
        stBlitOpt.bScale = HI_TRUE;
        if (par->stDisplayInfo.enAntiflickerMode == HIFB_ANTIFLICKER_TDE)
        {
            stBlitOpt.enAntiflickerLevel = par->stDisplayInfo.enAntiflickerLevel;
        }
        stBlitOpt.bBlock = HI_TRUE;
        stBlitOpt.bRegionDeflicker = HI_TRUE;

        if (var->bits_per_pixel >= 8)
        {
            u32TmpAddr = info->fix.smem_start + info->fix.line_length * var->yoffset
                           + var->xoffset* (var->bits_per_pixel >> 3);
        }
        else
        {
            u32TmpAddr = (info->fix.smem_start + info->fix.line_length * var->yoffset
                           + var->xoffset * var->bits_per_pixel / 8);
        }

        
        memset(&stCanvasBuf, 0, sizeof(HIFB_BUFFER_S));
        stCanvasBuf.stCanvas.enFmt = par->enColFmt;
        stCanvasBuf.stCanvas.u32Pitch = info->fix.line_length;
        stCanvasBuf.stCanvas.u32PhyAddr = u32TmpAddr;
        stCanvasBuf.stCanvas.u32Height = par->stDisplayInfo.u32DisplayHeight;
        stCanvasBuf.stCanvas.u32Width =  par->stDisplayInfo.u32DisplayWidth;
        stCanvasBuf.UpdateRect = UpdateRect;

        u32TmpAddr = par->stBufInfo.u32ScreenAddr;

        memset(&stDisplayBuf, 0, sizeof(HIFB_BUFFER_S));
        stDisplayBuf.stCanvas.enFmt = par->enColFmt;           
        stDisplayBuf.stCanvas.u32Pitch = par->stBufInfo.stStereoSurface.u32Pitch;
        stDisplayBuf.stCanvas.u32PhyAddr = u32TmpAddr;
        stDisplayBuf.stCanvas.u32Width = par->stDisplayInfo.u32DisplayWidth * SCALE_K1(par); 
        stDisplayBuf.stCanvas.u32Height = par->stDisplayInfo.u32DisplayHeight * SCALE_K2(par);

         /*Left Eye Region*/        
        TBuf = stDisplayBuf;
        stBlitOptTmp = stBlitOpt;
        stBlitOptTmp.stClip.bClip = HI_TRUE;
        stBlitOptTmp.stClip.bInRegionClip = HI_TRUE;
        stBlitOptTmp.stClip.stClipRect.x = 0;
        stBlitOptTmp.stClip.stClipRect.y = 0;
        
        if (HIFB_ENCPICFRM_STEREO_SIDEBYSIDE_HALF == par->stDisplayInfo.enEncPicFraming)
        {
            stBlitOptTmp.stClip.stClipRect.w = (par->stDisplayInfo.u32DisplayWidth >> 1) - par->stDisplayInfo.stStereoPos.s32XPos;
            stBlitOptTmp.stClip.stClipRect.h = par->stDisplayInfo.u32DisplayHeight - par->stDisplayInfo.stStereoPos.s32YPos;
        
            TBuf.stCanvas.u32Width >>= 1;

            TBuf.UpdateRect.x = 0;     
            TBuf.UpdateRect.y = 0;             
            TBuf.UpdateRect.w = TBuf.stCanvas.u32Width;
            TBuf.UpdateRect.h = TBuf.stCanvas.u32Height;   
        }
        else if (HIFB_ENCPICFRM_STEREO_TOPANDBOTTOM == par->stDisplayInfo.enEncPicFraming)
        {
            stBlitOptTmp.stClip.stClipRect.w = par->stDisplayInfo.u32DisplayWidth - par->stDisplayInfo.stStereoPos.s32XPos;
            stBlitOptTmp.stClip.stClipRect.h = (par->stDisplayInfo.u32DisplayHeight >> 1) - par->stDisplayInfo.stStereoPos.s32YPos;
        
            TBuf.stCanvas.u32Height >>= 1;
            TBuf.UpdateRect.x = 0;     
            TBuf.UpdateRect.y = 0;             
            TBuf.UpdateRect.w = TBuf.stCanvas.u32Width;
            TBuf.UpdateRect.h = TBuf.stCanvas.u32Height;   
        }


        BitsPerPixel = hifb_getbppbyfmt(TBuf.stCanvas.enFmt);
        if (BitsPerPixel >= 8)
        {
            TBuf.stCanvas.u32PhyAddr += par->stDisplayInfo.stStereoPos.s32YPos * TBuf.stCanvas.u32Pitch 
                                                                                + par->stDisplayInfo.stStereoPos.s32XPos * (BitsPerPixel >> 3);  
        }
        else
        {
            TBuf.stCanvas.u32PhyAddr +=  par->stDisplayInfo.stStereoPos.s32YPos * TBuf.stCanvas.u32Pitch 
                                                                        + par->stDisplayInfo.stStereoPos.s32XPos  * BitsPerPixel/8;     
        }

        if (HIFB_IsIntersectRect(&stBlitOptTmp.stClip.stClipRect, &TBuf.UpdateRect))
        {
       
            s32Ret = s_stDrvTdeOps.HIFB_DRV_Blit(&stCanvasBuf, &TBuf, &stBlitOptTmp, HI_TRUE);
            if (s32Ret < 0)
            {
                HIFB_ERROR("streo blit 0  err!\n");
                return HI_FAILURE;
            } 
        }
		
    }
#endif
  
    return HI_SUCCESS;

}


/***************************************************************************************
* func          : hifb_refresh
* description   : CNcomment: 刷新 CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
static HI_S32 hifb_refresh(HI_U32 u32LayerId, HIFB_BUFFER_S *pstCanvasBuf, HIFB_LAYER_BUF_E enBufMode)
{
    HI_S32 s32Ret = HI_FAILURE;

#ifdef TEST_HIFBMAIN_CAPA
	HIFBMAIN_TINIT();
	HIFBMAIN_TSTART();
#endif

    switch (enBufMode)
    {
        case HIFB_LAYER_BUF_DOUBLE:
            s32Ret = hifb_refresh_2buf(u32LayerId, pstCanvasBuf);
			#ifdef TEST_HIFBMAIN_CAPA
				HIFBMAIN_TEND();
			#endif
            break;

        case HIFB_LAYER_BUF_ONE:
            s32Ret = hifb_refresh_1buf(u32LayerId, pstCanvasBuf);
			#ifdef TEST_HIFBMAIN_CAPA
				HIFBMAIN_TEND();
			#endif
            break;

        case HIFB_LAYER_BUF_NONE:
           s32Ret = hifb_refresh_0buf(u32LayerId, pstCanvasBuf);
		   #ifdef TEST_HIFBMAIN_CAPA
				HIFBMAIN_TEND();
		   #endif
           break;
           
        case HIFB_LAYER_BUF_DOUBLE_IMMEDIATE:
            s32Ret = hifb_refresh_2buf_immediate_display(u32LayerId, pstCanvasBuf);
			#ifdef TEST_HIFBMAIN_CAPA
				HIFBMAIN_TEND();
		    #endif
            break;

        default:
            break;
    }

    return s32Ret;
	
}
/***************************************************************************************
* func          : hifb_set_canvasbufinfo
* description   : CNcomment: 设置canvas buffer 信息 CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
static HI_S32 hifb_set_canvasbufinfo(struct fb_info *info, HIFB_LAYER_INFO_S * pLayerInfo)
{
    HIFB_PAR_S *par = (HIFB_PAR_S *)info->par;
    
    if(!(pLayerInfo->u32Mask & HIFB_LAYERMASK_CANVASSIZE)){
        return HI_SUCCESS;
    }
    par->CanvasSur.u32Width  = pLayerInfo->u32CanvasWidth;
    par->CanvasSur.u32Height = pLayerInfo->u32CanvasHeight;
    par->CanvasSur.enFmt     =  hifb_getfmtbyargb(&info->var.red, &info->var.green, &info->var.blue, &info->var.transp, info->var.bits_per_pixel);
    par->CanvasSur.u32Pitch  = ((pLayerInfo->u32CanvasWidth * info->var.bits_per_pixel >> 3) + 15) >> 4;
    par->CanvasSur.u32Pitch  = par->CanvasSur.u32Pitch << 4;

	return HI_SUCCESS;
}

/***************************************************************************************
* func          : hifb_onrefresh
* description   : CNcomment: 刷新入口 CNend\n
* param[in]     : 
* retval        : NA
* others:       : NA
***************************************************************************************/
static HI_S32 hifb_onrefresh(HIFB_PAR_S* par, HI_VOID __user *argp)
{

    HI_S32 s32Ret;
    HIFB_BUFFER_S stCanvasBuf;

    if (copy_from_user(&stCanvasBuf, argp, sizeof(HIFB_BUFFER_S)))
    {
        return -EFAULT;
    }

#ifdef HIFB_INDIA_PROJECT_SUPPORT
	if(HI_TRUE == par->bHD1Open)
	{
		return HI_SUCCESS;
	}
#endif

    /**
     ** only support pandisplay mode
     **/    
    if ( (par->stBufInfo.enBufMode == HIFB_LAYER_BUF_BUTT) &&  
        ((par->stBufInfo.u32StereoMemStart != 0) && IS_STEREO_SW_HWHALF(par)))
    {
        return hifb_refresh_panbuf(par->u32LayerID, &stCanvasBuf);
    }

    if (par->stBufInfo.enBufMode == HIFB_LAYER_BUF_BUTT)
    {
        return HI_FAILURE;
    }

    
    if (   (stCanvasBuf.UpdateRect.x >=  stCanvasBuf.stCanvas.u32Width)
        || (stCanvasBuf.UpdateRect.y >= stCanvasBuf.stCanvas.u32Height)
        || (stCanvasBuf.UpdateRect.w == 0) || (stCanvasBuf.UpdateRect.h == 0))
    {
        HIFB_ERROR("rect error: update rect:(%d,%d,%d,%d), canvas range:(%d,%d)\n", 
                  stCanvasBuf.UpdateRect.x, stCanvasBuf.UpdateRect.y,
                  stCanvasBuf.UpdateRect.w, stCanvasBuf.UpdateRect.h,
                  stCanvasBuf.stCanvas.u32Width, stCanvasBuf.stCanvas.u32Height);
        return HI_FAILURE;
    }
	
    if (stCanvasBuf.UpdateRect.x + stCanvasBuf.UpdateRect.w > stCanvasBuf.stCanvas.u32Width)
    {
        stCanvasBuf.UpdateRect.w = stCanvasBuf.stCanvas.u32Width - stCanvasBuf.UpdateRect.x;
    }
    
    if (stCanvasBuf.UpdateRect.y + stCanvasBuf.UpdateRect.h > stCanvasBuf.stCanvas.u32Height)
    {
        stCanvasBuf.UpdateRect.h =  stCanvasBuf.stCanvas.u32Height - stCanvasBuf.UpdateRect.y;
    }
    
    if (par->stBufInfo.enBufMode == HIFB_LAYER_BUF_NONE)
    {
        /**
         ** there's a limit from hardware that the start address of screen buf 
         ** should be 16byte aligned! 
         **/
        if ((stCanvasBuf.stCanvas.u32PhyAddr & 0xf) || (stCanvasBuf.stCanvas.u32Pitch & 0xf))
        {
            HIFB_ERROR("addr 0x%x or pitch: 0x%x is not 16 bytes align !\n", 
                stCanvasBuf.stCanvas.u32PhyAddr,
                stCanvasBuf.stCanvas.u32Pitch);
            return HI_FAILURE;
        }
    }
    
    s32Ret = hifb_refresh(par->u32LayerID, &stCanvasBuf, par->stBufInfo.enBufMode);


	/**
	 **开机logo过渡,放太前内容可能没有更新完
	 **/
    if(par->bBootLogoToApp == HI_TRUE)
    {
        hifb_logo_app(par);		
    }

    return s32Ret;
	
}


/***************************************************************************************
* func          : hifb_onputlayerinfo
* description   : CNcomment: 设置layer信息 CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
static HI_S32 hifb_onputlayerinfo(struct fb_info *info, HIFB_PAR_S* par, HI_VOID __user *argp)
{

    HI_S32 s32Ret = HI_SUCCESS;
    HIFB_LAYER_INFO_S stLayerInfo;
    HI_U32 u32Pitch = 0;
    struct fb_info *pHD0Info = s_stLayer[2].pstInfo;
    HIFB_PAR_S *pstHD0Par = (HIFB_PAR_S *)pHD0Info->par;
    
    if (par->u32LayerID == HIFB_LAYER_CURSOR)
    {
       HIFB_WARNING("you shouldn't put cursor layer info!");
       return HI_SUCCESS;
    }
    
    if (copy_from_user(&stLayerInfo, argp, sizeof(HIFB_LAYER_INFO_S)))
    {
       return -EFAULT;
    }

    if (4 == par->u32LayerID){/** G0开预乘，解决双高清层叠加，CVBS视频层无法输出问题 **/
        pstHD0Par->stDisplayInfo.bPreMul = HI_TRUE;
        pstHD0Par->u32ParamModifyMask |= HIFB_LAYER_PARAMODIFY_BMUL;
    }
    
    s32Ret = hifb_set_canvasbufinfo(info, &stLayerInfo);    
    if (s32Ret != HI_SUCCESS)
    {
       HIFB_ERROR("alloc canvas buffer failed\n");
       return HI_FAILURE;
    }


#ifdef HIFB_INDIA_PROJECT_SUPPORT
	if(HI_TRUE == par->bHD1Open)
	{
		return HI_SUCCESS;
	}
#endif


    if (stLayerInfo.u32Mask & HIFB_LAYERMASK_DISPSIZE)
    { 
        u32Pitch = stLayerInfo.u32DisplayWidth* info->var.bits_per_pixel >> 3;
        u32Pitch = (u32Pitch + 0xf) & 0xfffffff0;
        if(HI_FAILURE == hifb_checkmem_enough(info, u32Pitch, stLayerInfo.u32DisplayHeight))
        {
           HIFB_ERROR("memory is not enough!\n");
           return HI_FAILURE;
        }
       if (stLayerInfo.u32DisplayWidth == 0 || stLayerInfo.u32DisplayHeight == 0)
       {
           HIFB_ERROR("display witdh/height shouldn't be 0!\n");
           return HI_FAILURE;
       }
    }
    
    if (stLayerInfo.u32Mask & HIFB_LAYERMASK_SCREENSIZE)
    {
       if ((stLayerInfo.u32ScreenWidth == 0) || (stLayerInfo.u32ScreenHeight == 0))
       {
           HIFB_ERROR("screen width/height shouldn't be 0\n");
           return HI_FAILURE;
       }
    }

#ifdef CFG_HIFB_STEREO3D_HW_SUPPORT
     if (((stLayerInfo.u32Mask & HIFB_LAYERMASK_DISPSIZE) && IS_STEREO_SW_HWHALF(par)))
     {
        hifb_clearallstereobuf(info);
     }
#endif	 
    
    if (stLayerInfo.u32Mask & HIFB_LAYERMASK_BUFMODE)
    {
    
	       HI_U32 u32LayerSize = 0;
	     
	       if (stLayerInfo.BufMode == HIFB_LAYER_BUF_ONE)
	       {
	           u32LayerSize = info->fix.line_length * info->var.yres;
	       }
	       else if (  (stLayerInfo.BufMode == HIFB_LAYER_BUF_DOUBLE) 
	                 ||(stLayerInfo.BufMode == HIFB_LAYER_BUF_DOUBLE_IMMEDIATE))
	       {
	           u32LayerSize = 2 * info->fix.line_length * info->var.yres;
	       }
	       else
	       {
	           u32LayerSize = 0;
	       }
	    
	       if (u32LayerSize > info->fix.smem_len)
	       {
	           HIFB_ERROR("No enough mem! layer real memory size:%d KBytes, expected:%d KBtyes\n",
	               info->fix.smem_len/1024, u32LayerSize/1024);
	           return HI_FAILURE;
	       }
	   
    }
    
    /**
     ** if x>width or y>height ,how to deal with: see nothing in screen or return failure
     **/
    if ((stLayerInfo.u32Mask & HIFB_LAYERMASK_POS) 
       && ((stLayerInfo.s32XPos < 0) || (stLayerInfo.s32YPos < 0)))
    {
       HIFB_ERROR("Pos err!\n");
       return HI_FAILURE;
    }
    
    if ((stLayerInfo.u32Mask & HIFB_LAYERMASK_BMUL) && par->stCkey.bKeyEnable)
    {
       HIFB_ERROR("Colorkey and premul couldn't take effect at same time!\n");
       return HI_FAILURE;
    }
    
    /**
     ** avoid modifying register in vo isr before all params has benn recorded! In vo irq,
     ** flag bModifying will be checked.
     **/
    par->bModifying = HI_TRUE;
    
    if (stLayerInfo.u32Mask & HIFB_LAYERMASK_BMUL)
    {
       par->stDisplayInfo.bPreMul = stLayerInfo.bPreMul;
       par->u32ParamModifyMask |= HIFB_LAYER_PARAMODIFY_BMUL;
    }
    
    
    if (stLayerInfo.u32Mask & HIFB_LAYERMASK_BUFMODE)
    {
       hifb_buf_setbufmode(par->u32LayerID, stLayerInfo.BufMode);
    }

    if (stLayerInfo.u32Mask & HIFB_LAYERMASK_POS)
    {
        hifb_disp_setlayerpos(par->u32LayerID, stLayerInfo.s32XPos, stLayerInfo.s32YPos);
        par->stDisplayInfo.stUserPos.s32XPos = stLayerInfo.s32XPos;
        par->stDisplayInfo.stUserPos.s32YPos = stLayerInfo.s32YPos;
    }
    
    if (stLayerInfo.u32Mask & HIFB_LAYERMASK_ANTIFLICKER_MODE)
    {
       hifb_disp_setantiflickerlevel(par->u32LayerID, stLayerInfo.eAntiflickerLevel);
    }


   /**  set screen size in the scaling mode*/
    if (s_stDrvHIFBOps.pstCapability[par->u32LayerID].bVoScale)
    {
         if (stLayerInfo.u32Mask & HIFB_LAYERMASK_SCREENSIZE)
         {
             s32Ret = hifb_disp_setscreensize(par->u32LayerID,HI_FALSE,stLayerInfo.u32ScreenWidth, stLayerInfo.u32ScreenHeight);
         }
         
         if (stLayerInfo.u32Mask & HIFB_LAYERMASK_DISPSIZE)
         {
            s32Ret = hifb_disp_setdispsize(par->u32LayerID, stLayerInfo.u32DisplayWidth, stLayerInfo.u32DisplayHeight);
         }
    }
    else
    {  
        /** no scaling mode, no buffer mode, screen size and display size can be set */
        if(par->stBufInfo.enBufMode != HIFB_LAYER_BUF_NONE)
        {
            if (stLayerInfo.u32Mask & HIFB_LAYERMASK_SCREENSIZE)
            {
                s32Ret = hifb_disp_setscreensize(par->u32LayerID,HI_FALSE,stLayerInfo.u32ScreenWidth, stLayerInfo.u32ScreenHeight);
            }
            if (stLayerInfo.u32Mask & HIFB_LAYERMASK_DISPSIZE)
            {
                s32Ret = hifb_disp_setdispsize(par->u32LayerID, stLayerInfo.u32DisplayWidth, stLayerInfo.u32DisplayHeight);
            }
        }
#ifdef CFG_HIFB_STEREO3D_HW_SUPPORT
        else if (IS_STEREO_ENCPICFRAMING(par->stDisplayInfo.enEncPicFraming))
        {
            s32Ret = hifb_disp_setscreensize(par->u32LayerID,HI_FALSE,stLayerInfo.u32ScreenWidth, stLayerInfo.u32ScreenHeight);
        }
#endif
    }
    if(HI_SUCCESS !=  s32Ret){
       HIFB_ERROR("set screen size failure\n");
       return HI_FAILURE;
    }
#ifdef CFG_HIFB_STEREO3D_HW_SUPPORT
    if (((stLayerInfo.u32Mask & HIFB_LAYERMASK_SCREENSIZE) || (stLayerInfo.u32Mask & HIFB_LAYERMASK_DISPSIZE))
                && IS_STEREO_SW_HWHALF(par))
    {
        hifb_refreshall(info);
    }
    else
#endif		
    {
        hifb_refresh_again(par->u32LayerID);  
    }
    
    par->bModifying = HI_FALSE;
	
    return s32Ret;
	
}



#ifdef CFG_HIFB_STEREO3D_HW_SUPPORT
/***************************************************************************************
* func          : hifb_clearallstereobuf
* description   : CNcomment: 清楚3Dbuffer CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
static HI_S32 hifb_clearallstereobuf(struct fb_info *info)
{
    HIFB_PAR_S *par = (HIFB_PAR_S *)info->par;

    if (par->stBufInfo.enBufMode == HIFB_LAYER_BUF_BUTT || par->stBufInfo.enBufMode == HIFB_LAYER_BUF_NONE) 
    {/**
      **单buffer模式
      **/
        hifb_clearstereobuf(info);
    }
    else
    {
        HIFB_BLIT_OPT_S stOpt;
        HIFB_SURFACE_S Surface;
        memset(&stOpt, 0x0, sizeof(stOpt));

        Surface.enFmt     = par->enColFmt;
        Surface.u32Height = par->stDisplayInfo.u32DisplayHeight;
        Surface.u32Width  = par->stDisplayInfo.u32DisplayWidth;
        Surface.u32Pitch  = info->fix.line_length;
        
        if(  par->stBufInfo.enBufMode  == HIFB_LAYER_BUF_DOUBLE 
            ||par->stBufInfo.enBufMode == HIFB_LAYER_BUF_DOUBLE_IMMEDIATE)
        {
            Surface.u32PhyAddr = par->stBufInfo.u32DisplayAddr[1-par->stBufInfo.u32IndexForInt];
        }
        else
        {
            Surface.u32PhyAddr = par->stBufInfo.u32ScreenAddr;
        }

        
        s_stDrvTdeOps.HIFB_DRV_ClearRect(&Surface, &stOpt);
		
    }

    return HI_SUCCESS;
	
}
#endif



/***************************************************************************************
* func          : hifb_refreshall
* description   : CNcomment: 全部刷新，3D模式下使用 CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
static HI_S32 hifb_refreshall(struct fb_info *info)
{
    HIFB_PAR_S *par = (HIFB_PAR_S *)info->par;
    
    /*refresh again*/
    if (par->stBufInfo.enBufMode == HIFB_LAYER_BUF_BUTT)
    {        
        hifb_pan_display(&info->var, info);
    }
    else if (par->stBufInfo.stUserBuffer.stCanvas.u32PhyAddr)
    {                       
        HIFB_BUFFER_S stCanvas;
        stCanvas = par->stBufInfo.stUserBuffer;
        stCanvas.UpdateRect.x = 0;
        stCanvas.UpdateRect.y = 0;
        stCanvas.UpdateRect.w = stCanvas.stCanvas.u32Width;
        stCanvas.UpdateRect.h = stCanvas.stCanvas.u32Height;
        
        hifb_refresh(par->u32LayerID, &stCanvas, par->stBufInfo.enBufMode);
    }

    return HI_SUCCESS;
}



/******************************************************************************
 Function        : hifb_ioctl
 Description     : set the colorkey or alpha for overlay
 Data Accessed   :
 Data Updated    :
 Output          : None
 Input           : struct inode *inode
                   struct file *file
                   unsigned HI_S32 cmd
                   unsigned long arg
                   struct fb_info *info
 Return          : return 0 if succeed, otherwise return error code
 Others          : 0
******************************************************************************/

static HI_S32 hifb_ioctl(struct fb_info *info, HI_U32 cmd, unsigned long arg)
{
    HIFB_PAR_S *par = (HIFB_PAR_S *)info->par;
    HI_VOID __user *argp = (HI_VOID __user *)arg;

    HI_S32 s32Ret = HI_SUCCESS;

    if ((argp == NULL) && (cmd != FBIOGET_VBLANK_HIFB) && (cmd != FBIO_WAITFOR_FREFRESH_DONE))
    {
        return -EINVAL;
    }

    if ((!s_stDrvHIFBOps.pstCapability[par->u32LayerID].bLayerSupported) 
        && par->u32LayerID != HIFB_LAYER_CURSOR)
    {
        HIFB_ERROR("not supprot layer %d!\n", par->u32LayerID);
        return HI_FAILURE;
    }

    switch (cmd)
    {
        case FBIO_REFRESH:
        {
            s32Ret = hifb_onrefresh(par, argp);
            break;
        }
        
        case FBIOGET_CANVAS_BUFFER:
        {
            if (copy_to_user(argp, &(par->CanvasSur), sizeof(HIFB_BUFFER_S)))
            {
                return -EFAULT;
            }
            return HI_SUCCESS;
        }
    	case FBIOPUT_LAYER_INFO:
    	{
            s32Ret= hifb_onputlayerinfo(info, par, argp);
            break;
    	}
    	case FBIOGET_LAYER_INFO:
    	{
            HIFB_LAYER_INFO_S stLayerInfo = {0};

            stLayerInfo.bPreMul           = par->stDisplayInfo.bPreMul;
            stLayerInfo.BufMode           = par->stBufInfo.enBufMode;
            stLayerInfo.eAntiflickerLevel = par->stDisplayInfo.enAntiflickerLevel;
            stLayerInfo.s32XPos           = par->stDisplayInfo.stPos.s32XPos;
            stLayerInfo.s32YPos           = par->stDisplayInfo.stPos.s32YPos;
            stLayerInfo.u32DisplayWidth   = par->stDisplayInfo.u32DisplayWidth;
            stLayerInfo.u32DisplayHeight  = par->stDisplayInfo.u32DisplayHeight;
            stLayerInfo.u32ScreenHeight   = par->stDisplayInfo.u32ScreenHeight;
            stLayerInfo.u32ScreenWidth    = par->stDisplayInfo.u32ScreenWidth;
            return copy_to_user(argp, &stLayerInfo, sizeof(HIFB_LAYER_INFO_S));
			
    	}
		
#ifdef CFG_HIFB_STEREO3D_HW_SUPPORT
        case FBIOGET_ENCODER_PICTURE_FRAMING:
        {
            if (copy_to_user(argp, &par->stDisplayInfo.enEncPicFraming, sizeof(HIFB_ENCODER_PICTURE_FRAMING_E)))
            {
                return -EFAULT;
            }

            break;
        }
        case FBIOPUT_ENCODER_PICTURE_FRAMING:
        {
			
            HIFB_ENCODER_PICTURE_FRAMING_E epftmp;
            if (copy_from_user(&epftmp, argp, sizeof(HIFB_ENCODER_PICTURE_FRAMING_E)))
            {
                return -EFAULT;
            }

            if (par->stDisplayInfo.enEncPicFraming != epftmp)
            {
	                if (  IS_STEREO_ENCPICFRAMING(par->stDisplayInfo.enEncPicFraming) 
	                   && !IS_STEREO_ENCPICFRAMING(epftmp))
	                {

	                    par->stDisplayInfo.stPos = par->stDisplayInfo.stUserPos;
	                    
	                    par->bModifying = HI_TRUE;    
	                    par->u32ParamModifyMask |= HIFB_LAYER_PARAMODIFY_STRIDE;
	                    par->bModifying = HI_FALSE;   
	                    
	                    par->stDisplayInfo.enEncPicFraming = epftmp;   
	                    
	                    hifb_disp_setscreensize(par->u32LayerID,HI_FALSE,par->stDisplayInfo.u32UserScreenWidth, par->stDisplayInfo.u32UserScreenHeight);


	                    hifb_buf_allocdispbuf(par->u32LayerID);     

	                    if (par->stBufInfo.u32StereoMemStart)
	                    {
	                        hifb_freestereobuf(par);
	                    }
	                    
	                }
	                else if (IS_STEREO_ENCPICFRAMING(epftmp))
	                {       
	                     par->stDisplayInfo.enEncPicFraming = epftmp;   
	                     par->stDisplayInfo.stStereoPos.s32XPos = 0;
	                     par->stDisplayInfo.stStereoPos.s32YPos = 0;

	                    hifb_disp_setscreensize(par->u32LayerID,HI_FALSE,par->stDisplayInfo.u32UserScreenWidth, par->stDisplayInfo.u32UserScreenHeight); 
	                }
                
	                par->stDisplayInfo.enEncPicFraming = epftmp;   

	                s_stDrvHIFBOps.HIFB_DRV_SetEncPicFraming(par->u32LayerID, epftmp); 
        
            }
			
            hifb_clearallstereobuf(info);
            hifb_refreshall(info);
     	    hifb_wait_regconfig_work(par->u32LayerID);
			
            break;
        }        

#endif

        case FBIOGET_ALPHA_HIFB:
        {
            if (copy_to_user(argp, &par->stAlpha, sizeof(HIFB_ALPHA_S)))
            {
                return -EFAULT;
            }

            break;
        }

        case FBIOPUT_ALPHA_HIFB:
        {
            HIFB_ALPHA_S stAlpha = {0};
            
            if (copy_from_user(&par->stAlpha, argp, sizeof(HIFB_ALPHA_S)))
            {
                return -EFAULT;
            }

            stAlpha = par->stAlpha;
            if (!par->stAlpha.bAlphaChannel)
            {
                stAlpha.u8GlobalAlpha      |= 0xff;
                par->stAlpha.u8GlobalAlpha |= 0xff;
            }
			
            #ifdef HIFB_INDIA_PROJECT_SUPPORT
			if(HI_TRUE == par->bHD1Open)
			{
				return HI_SUCCESS;
			}
			#endif
			
            s_stDrvHIFBOps.HIFB_DRV_SetLayerAlpha(par->u32LayerID, stAlpha);
            break;
        }

        case FBIOGET_DEFLICKER_HIFB:
        {
            HIFB_DEFLICKER_S deflicker;

            if (!s_stDrvHIFBOps.pstCapability[par->u32LayerID].u32HDefLevel
                && !s_stDrvHIFBOps.pstCapability[par->u32LayerID].u32VDefLevel)
            {
                HIFB_WARNING("deflicker is not supported!\n");
                return -EPERM;
            }

            if (copy_from_user(&deflicker, argp, sizeof(HIFB_DEFLICKER_S)))
            {
                return -EFAULT;
            }

            deflicker.u32HDfLevel = par->u32HDflevel;
            deflicker.u32VDfLevel = par->u32VDflevel;
            if (par->u32HDflevel > 1)
            {
                if (NULL == deflicker.pu8HDfCoef)
                {
                    return -EFAULT;
                }

                if (copy_to_user(deflicker.pu8HDfCoef, par->ucHDfcoef, par->u32HDflevel - 1))
                {
                    return -EFAULT;
                }
            }

            if (par->u32VDflevel > 1)
            {
                if (NULL == deflicker.pu8VDfCoef)
                {
                    return -EFAULT;
                }

                if (copy_to_user(deflicker.pu8VDfCoef, par->ucVDfcoef, par->u32VDflevel - 1))
                {
                    return -EFAULT;
                }
            }

            if (copy_to_user(argp, &deflicker, sizeof(deflicker)))
            {
                return -EFAULT;
            }

            break;
        }

        case FBIOPUT_DEFLICKER_HIFB:
        {
            HIFB_DEFLICKER_S deflicker;

            if (!s_stDrvHIFBOps.pstCapability[par->u32LayerID].u32HDefLevel
                && !s_stDrvHIFBOps.pstCapability[par->u32LayerID].u32VDefLevel)
            {
                HIFB_WARNING("deflicker is not supported!\n");
                return -EPERM;
            }

            par->bModifying = HI_TRUE;

            if (copy_from_user(&deflicker, argp, sizeof(HIFB_DEFLICKER_S)))
            {
                return -EFAULT;
            }

            par->u32HDflevel = HIFB_MIN(deflicker.u32HDfLevel, s_stDrvHIFBOps.pstCapability[par->u32LayerID].u32HDefLevel);
            if ((par->u32HDflevel > 1))
            {
                if (NULL == deflicker.pu8HDfCoef)
                {
                    return -EFAULT;
                }

                if (copy_from_user(par->ucHDfcoef, deflicker.pu8HDfCoef, par->u32HDflevel - 1))
                {
                    return -EFAULT;
                }
            }

            par->u32VDflevel = HIFB_MIN(deflicker.u32VDfLevel, s_stDrvHIFBOps.pstCapability[par->u32LayerID].u32VDefLevel);
            if (par->u32VDflevel > 1)
            {
                if (NULL == deflicker.pu8VDfCoef)
                {
                    return -EFAULT;
                }

                if (copy_from_user(par->ucVDfcoef, deflicker.pu8VDfCoef, par->u32VDflevel - 1))
                {
                    return -EFAULT;
                }
            }

            par->u32ParamModifyMask |= HIFB_LAYER_PARAMODIFY_ANTIFLICKERLEVEL;
            
            par->bModifying = HI_FALSE;

            break;
        }

        case FBIOGET_COLORKEY_HIFB:
        {
            HIFB_COLORKEY_S ck;
            ck.bKeyEnable = par->stCkey.bKeyEnable;
            ck.u32Key = par->stCkey.u32Key;
            if (copy_to_user(argp, &ck, sizeof(HIFB_COLORKEY_S)))
            {
                return -EFAULT;
            }

            break;
        }

        case FBIOPUT_COLORKEY_HIFB:
        {
            HIFB_COLORKEY_S ckey;

            if (copy_from_user(&ckey, argp, sizeof(HIFB_COLORKEY_S)))
            {
                return -EFAULT;
            }

            if (ckey.bKeyEnable && par->stDisplayInfo.bPreMul)
            {
                HIFB_ERROR("colorkey and premul couldn't take effect at the same time!\n");
                return HI_FAILURE;
            }

            par->bModifying = HI_TRUE;
            par->stCkey.u32Key = ckey.u32Key;
            par->stCkey.bKeyEnable = ckey.bKeyEnable;

            
            if (info->var.bits_per_pixel <= 8)
            {
                if (ckey.u32Key >= (2 << info->var.bits_per_pixel))
                {
                    HIFB_ERROR("The key :%d is out of range the palette: %d!\n",
                                ckey.u32Key, 2 << info->var.bits_per_pixel);
                    return HI_FAILURE;
                }

                par->stCkey.u8BlueMax = par->stCkey.u8BlueMin = info->cmap.blue[ckey.u32Key];
                par->stCkey.u8GreenMax = par->stCkey.u8GreenMin = info->cmap.green[ckey.u32Key];
                par->stCkey.u8RedMax = par->stCkey.u8RedMin = info->cmap.red[ckey.u32Key];
            }
            else
            {
                HI_U8 u8RMask, u8GMask, u8BMask;
                
                s_stDrvHIFBOps.HIFB_DRV_ColorConvert(&info->var, &par->stCkey);                
                u8BMask  = (0xff >> s_stArgbBitField[par->enColFmt].stBlue.length);  
                u8GMask= (0xff >> s_stArgbBitField[par->enColFmt].stGreen.length);    
                u8RMask = (0xff >> s_stArgbBitField[par->enColFmt].stRed.length);
                par->stCkey.u8BlueMin = (par->stCkey.u32Key & (~u8BMask));
                par->stCkey.u8GreenMin = ((par->stCkey.u32Key >> 8) & (~u8GMask));
                par->stCkey.u8RedMin = ((par->stCkey.u32Key >> 16) & (~u8RMask));
            
                par->stCkey.u8BlueMax = par->stCkey.u8BlueMin | u8BMask;
                par->stCkey.u8GreenMax = par->stCkey.u8GreenMin | u8BMask;
                par->stCkey.u8RedMax = par->stCkey.u8RedMin | u8BMask;   
            }

            par->u32ParamModifyMask |= HIFB_LAYER_PARAMODIFY_COLORKEY;
            par->bModifying = HI_FALSE;
            break;
        }

        case FBIOPUT_SCREENSIZE:
        {
            HIFB_SIZE_S stScreenSize;
            
            if (par->u32LayerID == HIFB_LAYER_CURSOR)
            {
                HIFB_WARNING("you shouldn't set cursor origion!");
                return HI_SUCCESS;
            }
        
            if (copy_from_user(&stScreenSize, argp, sizeof(HIFB_SIZE_S)))
            {
                return -EFAULT;
            }
       
            if (stScreenSize.u32Width > par->stDisplayInfo.u32MaxScreenWidth - par->stDisplayInfo.stPos.s32XPos)
            {
                stScreenSize.u32Width = par->stDisplayInfo.u32MaxScreenWidth - par->stDisplayInfo.stPos.s32XPos;
            }
        
            if (stScreenSize.u32Height > par->stDisplayInfo.u32MaxScreenHeight - par->stDisplayInfo.stPos.s32YPos)
            {
                stScreenSize.u32Height = par->stDisplayInfo.u32MaxScreenHeight - par->stDisplayInfo.stPos.s32YPos;
            }

            hifb_disp_setscreensize(par->u32LayerID,HI_FALSE,stScreenSize.u32Width, stScreenSize.u32Height);
            
            break;
        }
            
        case FBIOGET_SCREENSIZE:    
        {
            HIFB_SIZE_S stScreenSize;
   
            stScreenSize.u32Height = par->stDisplayInfo.u32ScreenHeight;
            stScreenSize.u32Width = par->stDisplayInfo.u32ScreenWidth;
 
            if (copy_to_user(argp, &stScreenSize, sizeof(HIFB_SIZE_S)))
            {
                return -EFAULT;
            }
            break;
        }
        
        case FBIOGET_SCREEN_ORIGIN_HIFB:
        {
            if (copy_to_user(argp, &par->stDisplayInfo.stPos, sizeof(HIFB_POINT_S)))
            {
                return -EFAULT;
            }
            
            break;
        }

        case FBIOPUT_SCREEN_ORIGIN_HIFB:
        {
            HIFB_POINT_S origin;
            HI_U32 u32LayerId = par->u32LayerID;
                
            if (par->u32LayerID == HIFB_LAYER_CURSOR)
            {
                HIFB_WARNING("you shouldn't set cursor origion!");
                return HI_SUCCESS;
            }

            if (copy_from_user(&origin, argp, sizeof(HIFB_POINT_S)))
            {
                return -EFAULT;
            }

            if (origin.s32XPos < 0 || origin.s32YPos < 0)
            {
                HIFB_ERROR("It's not supported to set start pos of layer to negative!\n");
                return HI_FAILURE;
            }
			
            {
                par->bModifying = HI_TRUE;

                par->stDisplayInfo.stPos.s32XPos = origin.s32XPos;
                par->stDisplayInfo.stPos.s32YPos = origin.s32YPos;
            
                /*
                if (origin.s32XPos > HIFB_MAX_WIDTH(u32LayerId) - HIFB_MIN_WIDTH(u32LayerId))
                {
                    par->stDisplayInfo.stPos.s32XPos = HIFB_MAX_WIDTH(par->u32LayerID) - HIFB_MIN_WIDTH(u32LayerId);
                }

                if (origin.s32YPos > HIFB_MAX_HEIGHT(u32LayerId) - HIFB_MIN_HEIGHT(u32LayerId))
                {
                    par->stDisplayInfo.stPos.s32YPos = HIFB_MAX_HEIGHT(u32LayerId) - HIFB_MIN_HEIGHT(u32LayerId);
                }
                */
                
                //adjust it according to the standard
                //par->stDisplayInfo.u32MaxScreenHeight);
                if (origin.s32XPos > par->stDisplayInfo.u32MaxScreenWidth - HIFB_MIN_WIDTH(u32LayerId))
                {
                    par->stDisplayInfo.stPos.s32XPos = par->stDisplayInfo.u32MaxScreenWidth - HIFB_MIN_WIDTH(u32LayerId);
                }

                if (origin.s32YPos > par->stDisplayInfo.u32MaxScreenHeight - HIFB_MIN_HEIGHT(u32LayerId))
                {
                    par->stDisplayInfo.stPos.s32YPos = par->stDisplayInfo.u32MaxScreenHeight - HIFB_MIN_HEIGHT(u32LayerId);
                }
                par->u32ParamModifyMask |= HIFB_LAYER_PARAMODIFY_OUTRECT;
                par->bModifying = HI_FALSE;
            }

            par->stDisplayInfo.stUserPos = par->stDisplayInfo.stPos;
            
            break;
        }

        case FBIOGET_VBLANK_HIFB:
        {
            if (s_stDrvHIFBOps.HIFB_DRV_WaitVBlank(par->u32LayerID) < 0)
            {
                HIFB_WARNING("It is not support VBL!\n");
                return -EPERM;
            }

            break;
        }

        case FBIOPUT_SHOW_HIFB:
        {
            HI_BOOL bShow;

            if (par->u32LayerID == HIFB_LAYER_CURSOR)
            {
                HIFB_WARNING("you shouldn't show cursor by this cmd!");
                return HI_SUCCESS;
            }

            if (copy_from_user(&bShow, argp, sizeof(HI_BOOL)))
            {
                return -EFAULT;
            }

            /* reset the same status */
            if (bShow == par->bShow)
            {
                HIFB_INFO("The layer is show(%d) now!\n", par->bShow);
                return 0;
            }

            par->bModifying = HI_TRUE;

            par->bShow = bShow;

            par->u32ParamModifyMask |= HIFB_LAYER_PARAMODIFY_SHOW;

            par->bModifying = HI_FALSE;

            break;
        }

        case FBIOGET_SHOW_HIFB:
        {
            if (copy_to_user(argp, &par->bShow, sizeof(HI_BOOL)))
            {
                return -EFAULT;
            }

            break;
        }

        case FBIO_WAITFOR_FREFRESH_DONE:
        {
            if (par->stBufInfo.s32RefreshHandle 
               && par->stBufInfo.enBufMode != HIFB_LAYER_BUF_ONE)
            {
                s32Ret = s_stDrvTdeOps.HIFB_DRV_WaitForDone(par->stBufInfo.s32RefreshHandle, 1000);
                if (s32Ret < 0)
                {
                    HIFB_ERROR("HIFB_DRV_WaitForDone failed!ret=%x\n", s32Ret);
                    return HI_FAILURE;
                }
            }

            break;
        }

        case FBIOGET_CAPABILITY_HIFB:
        {
            if (copy_to_user(argp, (HI_VOID *)&s_stDrvHIFBOps.pstCapability[par->u32LayerID], sizeof(HIFB_CAPABILITY_S)))
            {
                HIFB_ERROR("FBIOGET_CAPABILITY_HIFB error\n");
                return -EFAULT;
            }

            break;
        }
/**====================================================================================
 **				Begin ScrollText
 **==================================================================================**/
#ifdef CFG_HIFB_SCROLLTEXT_SUPPORT
        case FBIO_SCROLLTEXT_CREATE:
        {

            HIFB_SCROLLTEXT_CREATE_S stScrollText;
            if (copy_from_user(&stScrollText, (HIFB_SCROLLTEXT_CREATE_S*)argp, sizeof(HIFB_SCROLLTEXT_CREATE_S)))
            {
                return -EFAULT;
            }

			if (stScrollText.stAttr.ePixelFmt >= HIFB_FMT_BUTT)
			{
                return -EFAULT;
            }
			
			s32Ret = hifb_create_scrolltext(par->u32LayerID, &stScrollText);
            if (HI_SUCCESS != s32Ret)
            {
                return -EFAULT;
            }
            return copy_to_user(argp, &stScrollText, sizeof(HIFB_SCROLLTEXT_CREATE_S));
                     
        }
        case FBIO_SCROLLTEXT_FILL:
        {
            HIFB_SCROLLTEXT_DATA_S stScrollTextData;
            
            if (copy_from_user(&stScrollTextData, argp, sizeof(HIFB_SCROLLTEXT_DATA_S)))
            {
                return -EFAULT;
            }

            if (   HI_NULL == stScrollTextData.u32PhyAddr
                && HI_NULL == stScrollTextData.pu8VirAddr)
            {
                HIFB_ERROR("invalid usr data!\n");
                return -EFAULT;
            }


			s32Ret = hifb_fill_scrolltext(&stScrollTextData);
            if (HI_SUCCESS != s32Ret)
            {
                HIFB_ERROR("failed to fill data to scroll text !\n");
                return -EFAULT;
            }         
            
            break;
        }
		case FBIO_SCROLLTEXT_DESTORY:
        {
            HI_U32 u32LayerId, u32ScrollTextID, u32Handle;
            
            if (copy_from_user(&u32Handle, argp, sizeof(HI_U32)))
            {
                return -EFAULT;
            }

			s32Ret = hifb_parse_scrolltexthandle(u32Handle,&u32LayerId,&u32ScrollTextID);
			if (HI_SUCCESS != s32Ret)
			{
				HIFB_ERROR("invalid scrolltext handle!\n");
                return -EFAULT;
			}

			s32Ret = hifb_destroy_scrolltext(u32LayerId,u32ScrollTextID);
			if (HI_SUCCESS != s32Ret)
			{
				HIFB_ERROR("failed to destroy scrolltext!\n");
                return -EFAULT;	
			}
            
            break;
        } 
        case FBIO_SCROLLTEXT_PAUSE:
        {
            HI_U32 u32LayerId, u32ScrollTextID, u32Handle;
			HIFB_SCROLLTEXT_S  *pstScrollText;
            
            if (copy_from_user(&u32Handle, argp, sizeof(HI_U32)))
            {
                return -EFAULT;
            }
				
			s32Ret = hifb_parse_scrolltexthandle(u32Handle,&u32LayerId,&u32ScrollTextID);
			if (HI_SUCCESS != s32Ret)
			{
				HIFB_ERROR("invalid scrolltext handle!\n");
                return -EFAULT;
			}

			pstScrollText = &(s_stTextLayer[u32LayerId].stScrollText[u32ScrollTextID]);
			pstScrollText->bPause = HI_TRUE;			
            
            break;
        }
		case FBIO_SCROLLTEXT_RESUME:
        {
            HI_U32 u32LayerId, u32ScrollTextID, u32Handle;
			HIFB_SCROLLTEXT_S  *pstScrollText;
            
            if (copy_from_user(&u32Handle, argp, sizeof(HI_U32)))
            {
                return -EFAULT;
            }

			s32Ret = hifb_parse_scrolltexthandle(u32Handle,&u32LayerId,&u32ScrollTextID);
			if (HI_SUCCESS != s32Ret)
			{
				HIFB_ERROR("invalid scrolltext handle!\n");
                return -EFAULT;
			}

			pstScrollText = &(s_stTextLayer[u32LayerId].stScrollText[u32ScrollTextID]);
			pstScrollText->bPause = HI_FALSE;			
            
            break;
        }
#endif        
/**====================================================================================
 **				End ScrollText
 **==================================================================================**/
        case FBIOPUT_ZORDER:
        {
            HIFB_ZORDER_E eZorder;
            if (par->u32LayerID == HIFB_LAYER_CURSOR || par->u32LayerID == HIFB_LAYER_SD_0)
            {
                HIFB_ERROR("CURSOR and SD layer not support to set zorder !\n");
                return -EFAULT;
            }

            if (copy_from_user(&eZorder, argp, sizeof(HIFB_ZORDER_E)))
            {
                return -EFAULT;
            }
			
			#ifdef HIFB_INDIA_PROJECT_SUPPORT
			if(HI_TRUE == par->bHD1Open)
			{
				par->eZorder = eZorder;
				return HI_SUCCESS;
			}
			#endif
			
            s32Ret = s_stDrvHIFBOps.HIFB_DRV_SetLayerZorder(par->u32LayerID, eZorder);
            if (HI_SUCCESS != s32Ret)
            {
                HIFB_ERROR("failed to set layer Zorder!\n");                
                return HI_FAILURE;
            }
            break;
        }
        case FBIOGET_ZORDER:
        {
            HI_U32 u32Zorder;
            if (par->u32LayerID == HIFB_LAYER_CURSOR || par->u32LayerID == HIFB_LAYER_SD_0)
            {
                HIFB_ERROR("CURSOR and SD layer not support to get zorder !\n");
                return -EFAULT;
            }
   
            s32Ret = s_stDrvHIFBOps.HIFB_DRV_GetLayerZorder(par->u32LayerID, &u32Zorder);
            if (HI_SUCCESS != s32Ret)
            {
                HIFB_ERROR("failed to get layer Zorder!\n");                
                return HI_FAILURE;
            }
             
            if (copy_to_user(argp, &u32Zorder, sizeof(HI_U32)))
            {
                return -EFAULT;
            }            
            break;
        }        

        default:
        {
            HIFB_ERROR("the command:0x%x is unsupported!\n", cmd);
            return -EINVAL;
        }
    }

    return s32Ret;
}

/******************************************************************************
 Function        : hifb_set_outrect
 Description     : check and set the inRect and outRect for AD1 
 Data Accessed   :
 Data Updated    :
 Output          : None
 Input           : 
 Return          : 0, if success; otherwise, return error code
 Others          : 0
******************************************************************************/
HI_S32 hifb_set_outrect(HI_U32 u32LayerId, HIFB_RECT *pstOutRect)
{
    /*only check and modify the out rect of AD0 or AD1*/
	/*to ensure they have no covering*/
	HI_U32 u32Gap;
    HI_U32 u32OriginX, u32OriginY, u32ADX, u32ADY;
    HI_U32 u32MaxWidth, u32MaxHeight, u32ADWidth, u32ADHeight;
    HIFB_RECT stTempRect = {0};
    struct fb_info *infoHD0;
    struct fb_info *infoAD;
    //struct fb_info *info;
    HIFB_PAR_S *pstParHD0;
    HIFB_PAR_S *pstParAD;
    HIFB_PAR_S *pstPar;

	
    infoHD0    = s_stLayer[HIFB_LAYER_HD_0].pstInfo;
	infoAD     = s_stLayer[HIFB_LAYER_AD_0].pstInfo;
    pstParHD0  = (HIFB_PAR_S *)infoHD0->par;
	pstParAD   = (HIFB_PAR_S *)infoAD->par;

    if (HIFB_LAYER_AD_0 != u32LayerId)
    {
        return HI_SUCCESS;
    }

    if (!atomic_read(&pstParAD->ref_count))
    {
        return HI_SUCCESS;
    }

    u32OriginX   = 0;
	u32OriginY   = 0;

    if (atomic_read(&pstParHD0->ref_count))
    {
    	u32MaxWidth  = pstParHD0->stDisplayInfo.u32ScreenWidth;
    	u32MaxHeight = pstParHD0->stDisplayInfo.u32ScreenHeight;

		u32OriginX   = pstParHD0->stDisplayInfo.stPos.s32XPos;
		u32OriginY   = pstParHD0->stDisplayInfo.stPos.s32YPos;
    }
    else
    {
    	u32MaxWidth  = pstParAD->stDisplayInfo.u32MaxScreenWidth;
    	u32MaxHeight = pstParAD->stDisplayInfo.u32MaxScreenHeight;
    }
	
	u32ADX       = pstParAD->stDisplayInfo.stPos.s32XPos;
	u32ADY       = pstParAD->stDisplayInfo.stPos.s32YPos;
	u32ADWidth   = pstParAD->stDisplayInfo.u32ScreenWidth;
	u32ADHeight  = pstParAD->stDisplayInfo.u32ScreenHeight;


    if (0 > pstOutRect->x || 0 > pstOutRect->y)
	{
	    return HI_FAILURE;
	}

	if (pstOutRect->w > u32MaxWidth || pstOutRect->h > u32MaxHeight)
	{
	    return HI_FAILURE;
	}

	if ((pstOutRect->w + u32ADWidth) > u32MaxWidth
		&& (pstOutRect->h + u32ADHeight) > u32MaxHeight)
	{
	    return HI_FAILURE;
	}

	/*According to the position information of an AD layer, set the other position*/
	u32Gap = u32MaxHeight - (u32ADY-u32OriginY) - u32ADHeight;
	if (u32Gap >= pstOutRect->h)
	{
	    /*set the AD layer at the bottom*/
        stTempRect.x = 0;
        stTempRect.y = u32ADY + u32ADHeight;
        stTempRect.w = u32MaxWidth;
        stTempRect.h = u32Gap;      
	}

    u32Gap = u32ADY - u32OriginY ;
	if (u32Gap >= pstOutRect->h)
	{
	    /*set the AD layer on top*/
        if (u32Gap > stTempRect.h)
        {
            stTempRect.x = 0;
            stTempRect.y = 0;
            stTempRect.w = u32MaxWidth;
            stTempRect.h = u32Gap;
        }
	}

	if (0 == stTempRect.h)
	{
		u32Gap = u32MaxWidth - (u32ADX-u32OriginX) - u32ADWidth;
		if (u32Gap >= pstOutRect->w)
		{
		    /*set the AD layer  in the right*/
	        stTempRect.x = u32ADX + u32ADWidth;
	        stTempRect.y = 0;
	        stTempRect.w = u32Gap;
	        stTempRect.h = u32MaxHeight;
		}

		u32Gap = u32ADX - u32OriginX ;
		if (u32Gap >= pstOutRect->w)
		{
		    /*set the AD layer in the left*/
	        if (u32Gap > stTempRect.w)
	        {
	            stTempRect.x = 0;
	            stTempRect.y = 0;
	            stTempRect.w = u32Gap;
	            stTempRect.h = u32MaxHeight;
	        }
		}
	}
	

    if (0 == stTempRect.w
        || 0 == stTempRect.h)
    {
        return HI_FAILURE;
    }

    pstOutRect->x = stTempRect.x;
    pstOutRect->y = stTempRect.y;

    pstPar = (HIFB_PAR_S *)(s_stLayer[u32LayerId].pstInfo->par);
    pstPar->stDisplayInfo.stPos.s32XPos = pstOutRect->x;
    pstPar->stDisplayInfo.stPos.s32YPos = pstOutRect->y;
        
	return HI_SUCCESS;
	
}



/***************************************************************************************
* func          : hifb_open
* description   : CNcomment: 打开设备，这里会先调用fbmem.c中的open函数，保存info信息 CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
static HI_S32 hifb_open (struct fb_info *info, HI_S32 user)
{
    
    HI_S32 s32Ret = HI_FAILURE;
    HIFB_OSD_DATA_S stOsdData     = {0};
    HIFB_OSD_DATA_S stADOsdData   = {0};
    HI_BOOL bUserOpenBootPicture = HI_FALSE;
	HIFB_RECT stInRect            ={0};
	HIFB_RECT stOutRect           ={0};
	HI_U32 u32StartTimeMs        = 0; /** ms **/
	HI_U32 u32EndTimeMs          = 0;
	HI_U32 u32TimeMs             = 0;
	
	HIFB_PAR_S *par = (HIFB_PAR_S *)info->par;
    HI_S32 cnt = atomic_read(&par->ref_count);

	/* increase reference count,par->ref_count 加1*/
    atomic_inc(&par->ref_count);

	if(0 != cnt){
		return HI_SUCCESS;
	}
	
    s_stDrvTdeOps.HIFB_DRV_TdeOpen();

    if (par->u32LayerID == HIFB_LAYER_CURSOR)
    {
        return HI_SUCCESS;
    }


#ifdef HIFB_INDIA_PROJECT_SUPPORT
	if(HIFB_LAYER_HD_1 == par->u32LayerID)
	{
		par->eZorder       = HIFB_ZORDER_MOVETOP;
		par->bHD1Open      = HI_TRUE;
		par->u8GlobalAlpha = 0xff;
		return HI_SUCCESS;
	}
#endif

	/** get osd data
	 ** 获取当前要打开设备的OSD数据 
	 **/
    s32Ret = s_stDrvHIFBOps.HIFB_DRV_GetOSDData(par->u32LayerID, &stOsdData);
    if (HI_SUCCESS != s32Ret)
    {
        HIFB_ERROR("failed to get osd data! The display perhaps is not open!\n");                
        return HI_FAILURE;
    }
	/** get osd data,here to use logo -> app
	 ** 获取当前要打开设备的OSD数据
	 ** 这个地方要是制式发生变化的话获取的寄存器值为0，以为
	 ** display初始化中设置和MCE不同的fmt寄存器会复位清0
	 ** 所以这块内存释放不要用这个接口来决定，根据内存是否为空来决定是否释放
	 **/
    s32Ret = s_stDrvHIFBOps.HIFB_DRV_GetOSDData(HIFB_LAYER_AD_0, &stADOsdData);
    if (HI_SUCCESS != s32Ret)
    {
        HIFB_ERROR("failed to get osd data! The display perhaps is not open!\n");                
        return HI_FAILURE;
    }

	/**
	 **这里只是修改3D和压缩是否支持，其它已经初始化了
	 **/
    s32Ret = s_stDrvHIFBOps.HIFB_DRV_GetGFXCap(s_stDrvHIFBOps.pstCapability);
    if (HI_SUCCESS != s32Ret)
    {
        HIFB_ERROR("failed to get HIFB_DRV_GetGFXCap!\n");                
        return HI_FAILURE;
    }
    
    /*assure layer is ilegal*/
    if (!s_stDrvHIFBOps.pstCapability[par->u32LayerID].bLayerSupported)
    {
        HIFB_ERROR("layer %d is not supported!\n", par->u32LayerID);
        return HI_FAILURE;
    }

    /**
     ** check  AP had call display_init().  if not , return.
     ** this just for create graphic layer at the first time 
     **/
    if ((HIFB_LAYER_HD_0 == par->u32LayerID) || (HIFB_LAYER_SD_0 == par->u32LayerID))
    {
    	/**
    	 **判断这两个图层是否被打开过，主要看LOGO/MCE做在哪个图层上，要是AD0上
    	 **这两个图层是没有打开的
    	 **/
        s_stDrvHIFBOps.HIFB_DRV_GetHaltDispStatus(par->u32LayerID,&bUserOpenBootPicture);
        if(HI_FALSE == bUserOpenBootPicture)
        {
        	/**
    		 **没有打开，说明打开失败，display是加载ko的时候带入的
    	     **/
            if (strncmp("on", display,3))
            {
                HIFB_ERROR(" open fb%d failed! You should initialize display device first\n",par->u32LayerID);
                return HI_FAILURE;                  
            }          
        }
    }


	/** open layer **/
    s32Ret = s_stDrvHIFBOps.HIFB_DRV_OpenLayer(par->u32LayerID);
    if (s32Ret != HI_SUCCESS)
    {
        HIFB_ERROR("alread bind hd to sd, don't user sd layer\n");                
        return s32Ret;
    }
    
    par->vblflag = 0;
    init_waitqueue_head(&(par->vblEvent));
	
    memset(&(par->stBufInfo), 0, sizeof(HIFB_BUF_INFO_S));
    if (stOsdData.eScanMode == HIFB_SCANMODE_I)
    {/** 按场输出 **/
        par->stDisplayInfo.bNeedAntiflicker = HI_TRUE;
    }
    else
    {
        par->stDisplayInfo.bNeedAntiflicker = HI_FALSE;
    }

    hifb_disp_setantiflickerlevel(par->u32LayerID, HIFB_LAYER_ANTIFLICKER_AUTO);
    
    memset(&(par->CanvasSur), 0, sizeof(HIFB_SURFACE_S));
	
    par->bModifying         = HI_FALSE;
	
    par->u32ParamModifyMask = 0;
    par->u32Scaling         = 1;
    info->var.xoffset       = 0;
    info->var.yoffset       = 0;
    
    if (stADOsdData.eState == HIFB_LAYER_STATE_ENABLE)
    {/**
      ** 有开机logo存在，并且制式没有发生变化才会调用这里，否则寄存器会被清0
      ** 要实现平滑过渡，当前显示图形层需要的参数要从LOGO中获取，这样才能保证
      ** 寄存器配置保持一致。
      **/
		/**
		 **logo要向APP过渡
		 **/
        par->bBootLogoToApp       = HI_TRUE;
	    par->stBufInfo.bRefreshed = HI_FALSE;

	  	if(par->u32LayerID != HIFB_LAYER_AD_0)
    	{/**
    	  ** 打开AD0图层,这里打开的原因是因为后面过渡过程中
    	  ** 会调用AD0图层操作，这些操作过程中都会先判断图层是否
    	  ** 有打开，要是没有打开就不执行相关操作了
    	  **/
        	s32Ret = s_stDrvHIFBOps.HIFB_DRV_OpenLayer(HIFB_LAYER_AD_0);
			if (s32Ret != HI_SUCCESS)
        	{
            	HIFB_ERROR("don't user ad layer\n");
            	return s32Ret;
        	}
   	    }
        s_stDrvHIFBOps.HIFB_DRV_LayerDefaultSetting(par->u32LayerID);

		par->enColFmt = stADOsdData.eFmt;
		s_stDrvHIFBOps.HIFB_DRV_SetLayerDataFmt(par->u32LayerID, stADOsdData.eFmt); 
        
		memcpy(&(par->stAlpha),&(stADOsdData.stAlpha),sizeof(HIFB_ALPHA_S));
		s_stDrvHIFBOps.HIFB_DRV_SetLayerAlpha(par->u32LayerID, par->stAlpha);
     
		memcpy(&(par->stCkey), &(stADOsdData.stColorKey), sizeof(HIFB_COLORKEYEX_S));
		s_stDrvHIFBOps.HIFB_DRV_SetLayerKeyMask(par->u32LayerID, &par->stCkey);

		/**
		 **DTS2015010701222平滑过渡问题
		 **配置的是G0信息，所以获取到的也应该为G0信息，以及G2叠加在G0上需要的信息
		 **最终由G0输出送显
		 **configure G0 message，and G2 to G0 needed message
		 **/
		stInRect.x  =  stOsdData.s32XInPos;
		stInRect.y  =  stOsdData.s32YInPos;
		stInRect.w  =  stOsdData.u32InWidth;
		stInRect.h  =  stOsdData.u32InHeight;

		stOutRect.x =  stOsdData.s32XPos;
		stOutRect.y =  stOsdData.s32YPos;
		stOutRect.w =  stOsdData.u32Width;
		stOutRect.h =  stOsdData.u32Height;
        s_stDrvHIFBOps.HIFB_DRV_SetLayerRect(par->u32LayerID, &stInRect, &stOutRect);
        s_stDrvHIFBOps.HIFB_DRV_SetEncPicFraming(par->u32LayerID, HIFB_ENCPICFRM_MONO);
    }
    else
    {/*set default param*/
    
        if (IS_HD_LAYER(par->u32LayerID))
        {
            info->var = s_stDefVar[HIFB_LAYER_TYPE_HD];
            if((HD0_LAYER_SIZE) < 7200)
            #ifdef CFG_HI_SD_FB_VRAM_SIZE
				{/**
				  **DTS2015031002945
				  **初始化的时候要是内存不够大，而输出设置成1080P,就会内存不够而导致底部花屏
				  **/
				  info->var.xres		      = 720;
				  info->var.yres		      = 576;
				  info->var.xres_virtual      = 720;
				  info->var.yres_virtual      = 576;
				  info->fix.line_length       = (720 * 4);
				}
			#else
				{
	        		info->var.xres             = 1280;
	        		info->var.yres             = 720;
	        		info->var.xres_virtual     = 1280;
	        		info->var.yres_virtual     = 720;
	        		info->fix.line_length      = (1280 * 4);
				}
			#endif

        }
        else if (IS_AD_LAYER(par->u32LayerID))
        {
            info->var = s_stDefVar[HIFB_LAYER_TYPE_AD];
            if((AD0_LAYER_SIZE) < 7200)
            #ifdef CFG_HI_SD_FB_VRAM_SIZE
				{/**
				  **DTS2015031002945
				  **初始化的时候要是内存不够大，而输出设置成1080P,就会内存不够而导致底部花屏
				  **/
				  	info->var.xres		      = 720;
				  	info->var.yres		      = 576;
				  	info->var.xres_virtual    = 720;
				  	info->var.yres_virtual    = 576;
				  	info->fix.line_length     = (720 * 4);
				}
			#else
				{/**
				  **DTS2015031002945
				  **初始化的时候要是内存不够大，而输出设置成1080P,就会内存不够而导致底部花屏
				  **/
					info->var.xres		     = 1280;
					info->var.yres		     = 720;
					info->var.xres_virtual   = 1280;
					info->var.yres_virtual   = 720;
					info->fix.line_length    = (1280 * 4);
				}
			#endif
        }
        else if (IS_SD_LAYER(par->u32LayerID))
        {
            info->var = s_stDefVar[HIFB_LAYER_TYPE_SD];
        }
        else
        {
            HIFB_ERROR("error layer id:%d\n", par->u32LayerID);
        }

        s_stDrvHIFBOps.HIFB_DRV_LayerDefaultSetting(par->u32LayerID);
        
        par->stAlpha.bAlphaEnable  = HI_TRUE;
        par->stAlpha.bAlphaChannel = HI_FALSE;
        par->stAlpha.u8Alpha0      = HIFB_ALPHA_TRANSPARENT;
        par->stAlpha.u8Alpha1      = HIFB_ALPHA_OPAQUE;
        par->stAlpha.u8GlobalAlpha = HIFB_ALPHA_OPAQUE;
        s_stDrvHIFBOps.HIFB_DRV_SetLayerAlpha(par->u32LayerID, par->stAlpha);

        memset(&(par->stCkey), 0, sizeof(HIFB_COLORKEYEX_S));
        s_stDrvHIFBOps.HIFB_DRV_SetLayerKeyMask(par->u32LayerID, &par->stCkey);

        par->enColFmt = HIFB_DEF_PIXEL_FMT;
        s_stDrvHIFBOps.HIFB_DRV_SetLayerDataFmt(par->u32LayerID, par->enColFmt);
        
        memset(&par->stDisplayInfo.stPos, 0, sizeof(par->stDisplayInfo.stPos));
        memset(&par->stDisplayInfo.stStereoPos, 0, sizeof(par->stDisplayInfo.stStereoPos));
        memset(&par->stDisplayInfo.stUserPos, 0, sizeof(par->stDisplayInfo.stUserPos));
        
        par->stDisplayInfo.u32DisplayWidth       = info->var.xres;
        par->stDisplayInfo.u32DisplayHeight      = info->var.yres;
        par->stDisplayInfo.u32ScreenWidth        = info->var.xres;
        par->stDisplayInfo.u32ScreenHeight       = info->var.yres;
        par->stDisplayInfo.u32UserScreenWidth    = info->var.xres;
        par->stDisplayInfo.u32UserScreenHeight   = info->var.yres;
        par->stDisplayInfo.u32StereoScreenWidth  = info->var.xres;
        par->stDisplayInfo.u32StereoScreenHeight = info->var.yres;            
        par->stDisplayInfo.u32VirXRes            = info->var.xres_virtual;
        par->stDisplayInfo.u32VirYRes            = info->var.yres_virtual;
        par->stDisplayInfo.u32XRes               = info->var.xres;
        par->stDisplayInfo.u32YRes               = info->var.yres;
        par->stBufInfo.stStereoSurface.u32Pitch  = info->fix.line_length;
        par->stBufInfo.stStereoSurface.enFmt     = par->enColFmt;
            
        stInRect.x = 0;
        stInRect.y = 0;
        stInRect.w = info->var.xres;
        stInRect.h = info->var.yres;
		memcpy(&stOutRect, &stInRect, sizeof(HIFB_RECT));
	
        info->fix.line_length = info->var.xres_virtual*(info->var.bits_per_pixel >> 3);
		
        s_stDrvHIFBOps.HIFB_DRV_SetLayerRect(par->u32LayerID, &stInRect, &stOutRect);
        s_stDrvHIFBOps.HIFB_DRV_SetLayerStride(par->u32LayerID, info->fix.line_length);
		/**
		 **设置3D模式
		 **/
		s_stDrvHIFBOps.HIFB_DRV_SetEncPicFraming(par->u32LayerID, HIFB_ENCPICFRM_MONO); 
        
        par->bShow = HI_TRUE;
        s_stDrvHIFBOps.HIFB_DRV_EnableLayer(par->u32LayerID, par->bShow);
		
    }
	
    par->bRefreshByDisp      = HI_FALSE;
    par->stBufInfo.enBufMode = HIFB_LAYER_BUF_BUTT;
	
    if(info->fix.smem_len != 0)
    {
        par->stBufInfo.u32IndexForInt = 0;
        
        hifb_buf_allocdispbuf(par->u32LayerID);
        /**
         ** clear fb memory if it's the first time to open layer
         **/
        memset(info->screen_base, 0, info->fix.smem_len);
             
        if (!par->bBootLogoToApp)
        {
            s_stDrvHIFBOps.HIFB_DRV_SetLayerAddr(par->u32LayerID, info->fix.smem_start);
		    par->stBufInfo.u32ScreenAddr = info->fix.smem_start;             
        }

    }
    
    /**
     ** display must be turn on,  or the 
     ** calculated result of screen high and width was not right 
     **/
    par->stDisplayInfo.u32MaxScreenWidth  = stOsdData.u32ScreenWidth;
    par->stDisplayInfo.u32MaxScreenHeight = stOsdData.u32ScreenHeight;

    s_stDrvHIFBOps.HIFB_DRV_SetIntCallback(HIFB_INTTYPE_VO_DISP, hifb_disp_callback, par->u32LayerID);
    s_stDrvHIFBOps.HIFB_DRV_SetIntCallback(HIFB_INTTYPE_VO, hifb_vo_callback, par->u32LayerID);
	
    
	/**
	 **由于MV310 CPU由于MV300，为了保证注册的disp中断响应函数中刷新操作
	 **能够再用户刷新UI之前，延时一个中断的时间,见DTS2014120206247
	 **/
	HI_GFX_GetTimeStamp(&u32StartTimeMs,NULL);
	while(1)
	{
		HI_GFX_GetTimeStamp(&u32EndTimeMs,NULL);
		u32TimeMs = u32EndTimeMs - u32StartTimeMs;
		if(u32TimeMs > 20)
		{
			break;
		}
	}

    return HI_SUCCESS;
	
}

/***************************************************************************************
* func          : hifb_release
* description   : CNcomment: 关闭设备 CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
static HI_S32 hifb_release (struct fb_info *info, HI_S32 user)
{
    HIFB_PAR_S *par = (HIFB_PAR_S *)info->par;
    HI_U32 cnt = atomic_read(&par->ref_count);
    struct fb_info *pHD0Info = s_stLayer[2].pstInfo;
    HIFB_PAR_S *pstHD0Par = (HIFB_PAR_S *)pHD0Info->par;
    
    if (!cnt)
    {
        return -EINVAL;
    }

#ifdef HIFB_INDIA_PROJECT_SUPPORT
	if(HIFB_LAYER_HD_1 == par->u32LayerID)
	{
		par->eZorder       = HIFB_ZORDER_MOVETOP;
		par->bHD1Open      = HI_FALSE;
		par->u8GlobalAlpha = 0xff;
		
		memset(info->screen_base, 0, info->fix.smem_len);
		atomic_dec(&par->ref_count);
		return HI_SUCCESS;
	}
#endif

    /* only one user */
    if (cnt == 1 )
	{
	        par->bShow = HI_FALSE;
			
	        if (par->u32LayerID != HIFB_LAYER_CURSOR)
	        {
	            /**
	             ** disable the layer
	             **/
	            //s_stDrvHIFBOps.HIFB_DRV_EnableCompression(par->u32LayerID, 0);
	            
	            s_stDrvHIFBOps.HIFB_DRV_EnableLayer(par->u32LayerID, HI_FALSE);
	            s_stDrvHIFBOps.HIFB_DRV_UpdataLayerReg(par->u32LayerID);
	            s_stDrvHIFBOps.HIFB_DRV_SetIntCallback(HIFB_INTTYPE_VO, HI_NULL, par->u32LayerID);
	            s_stDrvHIFBOps.HIFB_DRV_SetIntCallback(HIFB_INTTYPE_VO_DISP, HI_NULL, par->u32LayerID);

	            memset(info->screen_base, 0, info->fix.smem_len);
                
				#ifdef CFG_HIFB_SCROLLTEXT_SUPPORT
					if (s_stTextLayer[par->u32LayerID].bAvailable)
					{
					    HI_U32 i;
						for (i = 0; i < SCROLLTEXT_NUM; i++)
						{
						    if (s_stTextLayer[par->u32LayerID].stScrollText[i].bAvailable)
						    {
						        hifb_freescrolltext_cachebuf(&(s_stTextLayer[par->u32LayerID].stScrollText[i]));
								memset(&s_stTextLayer[par->u32LayerID].stScrollText[i],0,sizeof(HIFB_SCROLLTEXT_S));
						    }
						}
						s_stTextLayer[par->u32LayerID].bAvailable = HI_FALSE;
						s_stTextLayer[par->u32LayerID].u32textnum = 0;
						s_stTextLayer[par->u32LayerID].u32ScrollTextId = 0;
						flush_work(&s_stTextLayer[par->u32LayerID].blitScrollTextWork);
					}
				#endif
				
				#ifdef CFG_HIFB_STEREO3D_HW_SUPPORT
	            	hifb_freestereobuf(par);
				#endif
				
	            par->stDisplayInfo.enEncPicFraming = HIFB_ENCPICFRM_MONO;

	            par->bSetStereoMode = HI_FALSE;
	            s_stDrvHIFBOps.HIFB_DRV_CloseLayer(par->u32LayerID);
				
	        }

	       s_stDrvTdeOps.HIFB_DRV_TdeClose();
	       par->bBootLogoToApp = HI_FALSE;
        pstHD0Par->stDisplayInfo.bPreMul = HI_FALSE;
	}

    /* decrease the reference count */
    atomic_dec(&par->ref_count);

    return 0;
	
}


static HI_S32 hifb_dosetcolreg(unsigned regno, unsigned red, unsigned green,
                          unsigned blue, unsigned transp, struct fb_info *info, HI_BOOL bUpdateReg)
{
    HIFB_PAR_S *par = (HIFB_PAR_S *)info->par;
    //HI_U32 *pCmap;

    HI_U32 argb = ((transp & 0xff) << 24) | ((red & 0xff) << 16) | ((green & 0xff) << 8) | (blue & 0xff);

    if (regno > 255)
    {
        HIFB_WARNING("regno: %d, larger than 255!\n", regno);
        return HI_FAILURE;
    }

    s_stDrvHIFBOps.HIFB_DRV_SetColorReg(par->u32LayerID, regno, argb, bUpdateReg);
    return HI_SUCCESS;
}

static HI_S32 hifb_setcolreg(unsigned regno, unsigned red, unsigned green,
                          unsigned blue, unsigned transp, struct fb_info *info)
{
    return hifb_dosetcolreg(regno, red, green, blue, transp, info, HI_TRUE);
}

static HI_S32 hifb_setcmap(struct fb_cmap *cmap, struct fb_info *info)
{
    HI_S32 i, start;
    unsigned short *red, *green, *blue, *transp;
    unsigned short hred, hgreen, hblue, htransp = 0xffff;
    HIFB_PAR_S *par = (HIFB_PAR_S *)info->par;

    if (par->u32LayerID == HIFB_LAYER_CURSOR)
    {
        return -EINVAL;
    }
  
    if (!s_stDrvHIFBOps.pstCapability[par->u32LayerID].bCmap)
    {
        /* AE6D03519, delete this color map warning! */
        //HIFB_ERROR("Layer%d is not support color map!\n", par->u32LayerID);
        return -EPERM;
    }
    if (cmap->len > 256)
	return -EINVAL;

    red    = cmap->red;
    green  = cmap->green;
    blue   = cmap->blue;
    transp = cmap->transp;
    start  = cmap->start;

    for (i = 0; i < cmap->len; i++)
    {
        hred   = *red++;
        hgreen = *green++;
        hblue  = *blue++;
        if (transp)
        {
            htransp = *transp++;
        }

        if (i < cmap->len - 1)
        {
            if (hifb_dosetcolreg(start++, hred, hgreen, hblue, htransp, info, HI_FALSE))
            {
                break;
            }
        }
        else
        {   /*the last time update register*/
            if (hifb_dosetcolreg(start++, hred, hgreen, hblue, htransp, info, HI_TRUE))
            {
                break;
            }
        }

    }

    return 0;
}



/***************************************************************************************
* func          : s_stfbops
* description   : CNcomment: fb设备表述符 CNend\n
* retval        : NA
* others:       : NA
***************************************************************************************/
static struct fb_ops s_stfbops =
{
    .owner			=   THIS_MODULE,
    .fb_open		=   hifb_open,
    .fb_release		=   hifb_release,
    .fb_check_var	=   hifb_check_var,
    .fb_set_par		=   hifb_set_par,
    .fb_pan_display =   hifb_pan_display,
    .fb_ioctl		=   hifb_ioctl,
    .fb_setcolreg	=   hifb_setcolreg,
    .fb_setcmap		=   hifb_setcmap,
};

/******************************************************************************
 Function        : hifb_overlay_cleanup
 Description     : releae the resource for certain framebuffer
 Data Accessed   :
 Data Updated    :
 Output          : None
 Input           : HI_S32 which_layer
                   HI_S32 need_unregister
 Return          : static
 Others          : 0
******************************************************************************/
static HI_VOID hifb_overlay_cleanup(HI_U32 u32LayerId, HI_BOOL bUnregister)
{
    struct fb_info* info = NULL;
    struct fb_cmap* cmap = NULL;
    HIFB_PAR_S *pstPar = NULL;

    /* get framebuffer info structure pointer */
    info = s_stLayer[u32LayerId].pstInfo;
    if (info != NULL)
    {
        cmap = &info->cmap;

        pstPar = (HIFB_PAR_S *)(info->par);

        if (cmap->len != 0)
        {
            /* free color map */
            fb_dealloc_cmap(cmap);
        }

        if (info->screen_base != HI_NULL)
        {
            hifb_buf_ummap(info->screen_base);
        }

        if (info->fix.smem_start != 0)
        {
            hifb_buf_freemem(info->fix.smem_start);
        }

        if (bUnregister)
        {
            unregister_framebuffer(info);
        }
        s_stLayer[u32LayerId].pstInfo = NULL;
        
#ifdef CFG_HIFB_SCROLLTEXT_SUPPORT
		if (s_stTextLayer[u32LayerId].bAvailable)
		{
		    HI_U32 i;
			for (i = 0; i < SCROLLTEXT_NUM; i++)
			{
			    if (s_stTextLayer[u32LayerId].stScrollText[i].bAvailable)
			    {
			        hifb_freescrolltext_cachebuf(&(s_stTextLayer[u32LayerId].stScrollText[i]));
					memset(&s_stTextLayer[u32LayerId].stScrollText[i],0,sizeof(HIFB_SCROLLTEXT_S));
			    }
			}

			s_stTextLayer[u32LayerId].bAvailable = HI_FALSE;
			s_stTextLayer[u32LayerId].u32textnum = 0;
			s_stTextLayer[u32LayerId].u32ScrollTextId = 0;
			flush_work(&s_stTextLayer[u32LayerId].blitScrollTextWork);
		}
#endif

    }
	
}


/***************************************************************************************
* func          : hifb_overlay_probe
* description   : CNcomment: 设备注册 CNend\n
* retval        : NA
* others:       : NA
***************************************************************************************/
static HI_S32 hifb_overlay_probe(HI_U32 u32LayerId, HI_U32 u32VramSize, HI_U32 u32CursorBufSize)
{

    HI_S32 s32Ret = 0;
    struct fb_info * info = NULL;
    HIFB_PAR_S *pstPar = NULL;       /** hifb管理数据结构体**/

    /**
     **这里面分配的内存包括fb_info + sizeof(HIFB_PAR_S)
     **/
    info = framebuffer_alloc(sizeof(HIFB_PAR_S), NULL);
    if (!info)
    {
        HIFB_ERROR("failed to malloc the fb_info!\n");
        return -ENOMEM;
    }
    /**
     **将hifb相关信息保存在全局变量中
     **/
    s_stLayer[u32LayerId].pstInfo = info;
    
	snprintf(info->fix.id,sizeof(info->fix.id),"ovl%d", u32LayerId);
	info->fix.id[sizeof(info->fix.id) - 1] = '\0';

	/**
	 ** FBINFO_HWACCEL_COPYAREA    - hardware moves
	 ** FBINFO_HWACCEL_FILLRECT    - hardware fills
	 ** FBINFO_HWACCEL_IMAGEBLIT   - hardware mono->color expansion
	 ** FBINFO_HWACCEL_YPAN        - hardware can pan display in y-axis
	 ** FBINFO_HWACCEL_YWRAP       - hardware can wrap display in y-axis
	 ** FBINFO_HWACCEL_DISABLED    - supports hardware accels, but disabled
	 ** FBINFO_READS_FAST          - if set, prefer moves over mono->color expansion
	 ** FBINFO_MISC_TILEBLITTING   - hardware can do tile blits
	 **/
    info->flags = FBINFO_FLAG_DEFAULT | FBINFO_HWACCEL_YPAN | FBINFO_HWACCEL_XPAN;

    /**
     **初始化文件描述符号，做为回调的时候使用
     **/
    info->fbops = &s_stfbops;
	
    pstPar = (HIFB_PAR_S *)(info->par);
	
    pstPar->u32LayerID = u32LayerId;
    pstPar->CanvasSur.u32PhyAddr = 0;

	/**
	 **初始化可变信息和固定信息
	 **/
    if (IS_HD_LAYER(u32LayerId))
    {
        info->fix = s_stDefFix[HIFB_LAYER_TYPE_HD];
        info->var = s_stDefVar[HIFB_LAYER_TYPE_HD];
        if((HD0_LAYER_SIZE) < 7200)
        #ifdef CFG_HI_SD_FB_VRAM_SIZE
			{/**
			  **DTS2015031002945
			  **初始化的时候要是内存不够大，而输出设置成1080P,就会内存不够而导致底部花屏
			  **/
			  	info->var.xres		      = 720;
			  	info->var.yres		      = 576;
			  	info->var.xres_virtual    = 720;
			  	info->var.yres_virtual    = 576;
			  	info->fix.line_length     = (720 * 4);
			}
		#else
			{/**
			  **DTS2015031002945
			  **初始化的时候要是内存不够大，而输出设置成1080P,就会内存不够而导致底部花屏
			  **/
				info->var.xres		     = 1280;
				info->var.yres		     = 720;
				info->var.xres_virtual   = 1280;
				info->var.yres_virtual   = 720;
				info->fix.line_length    = (1280 * 4);
			}
		#endif
    }
    else if (IS_SD_LAYER(u32LayerId))
    {
        info->fix = s_stDefFix[HIFB_LAYER_TYPE_SD];
        info->var = s_stDefVar[HIFB_LAYER_TYPE_SD];
    }
    else if (IS_AD_LAYER(u32LayerId))
    {
        info->fix = s_stDefFix[HIFB_LAYER_TYPE_AD];
        info->var = s_stDefVar[HIFB_LAYER_TYPE_AD];
        if((AD0_LAYER_SIZE) < 7200)
        #ifdef CFG_HI_SD_FB_VRAM_SIZE
			{/**
			  **DTS2015031002945
			  **初始化的时候要是内存不够大，而输出设置成1080P,就会内存不够而导致底部花屏
			  **/
			  	info->var.xres		      = 720;
			  	info->var.yres		      = 576;
			  	info->var.xres_virtual    = 720;
			  	info->var.yres_virtual    = 576;
			  	info->fix.line_length     = (720 * 4);
			}
		#else
			{/**
			  **DTS2015031002945
			  **初始化的时候要是内存不够大，而输出设置成1080P,就会内存不够而导致底部花屏
			  **/
				info->var.xres		     = 1280;
				info->var.yres		     = 720;
				info->var.xres_virtual   = 1280;
				info->var.yres_virtual   = 720;
				info->fix.line_length    = (1280 * 4);
			}
		#endif
    }
	
    /*it's not need to alloc mem for cursor layer*/
    if(0 != u32VramSize)
    {/** 该图层支持 **/
    
        /*Modify 16 to 32, preventing out of bound.*/
        HI_CHAR name[32];

		/* initialize the fix screen info */
        snprintf(name, sizeof(name),"hifb_layer%d", u32LayerId);
		name[sizeof(name)-1] = '\0';

		/** 分配支持的图层内存大小,显存地址 **/
        info->fix.smem_start = hifb_buf_allocmem(name, (u32VramSize+u32CursorBufSize) * 1024);
        if(0 == info->fix.smem_start)
        {
            HIFB_ERROR("%s:failed to malloc the video memory, size: %d KBtyes!\n", name, (u32VramSize+u32CursorBufSize));
            goto ERR;
        }

        /** 内存分配成功 **/
        if(s_stDrvHIFBOps.pstCapability[u32LayerId].bHasCmapReg)
        {/** 逻辑支持调色板 **/
            info->fix.smem_len = u32VramSize * 1024;
        }
        else
        {/** 逻辑不支持调色板，需要软件实现所以需要额外内存 **/
            info->fix.smem_len = (u32VramSize - HIFB_CMAP_SIZE) * 1024;
        }
		
        /* initialize the virtual address and clear memory */
        info->screen_base = hifb_buf_map(info->fix.smem_start);
        if (HI_NULL == info->screen_base)
        {
            HIFB_WARNING("Failed to call map video memory, ""size:0x%x, start: 0x%lx\n",info->fix.smem_len, info->fix.smem_start);
        }
        else
        {
            memset(info->screen_base, 0x00, info->fix.smem_len);
        }

        pstPar->enColFmt = HIFB_DEF_PIXEL_FMT;

        /* alloc color map */
        if(s_stDrvHIFBOps.pstCapability[u32LayerId].bCmap)
        {/** 支持调色板，高清图层支持调色板 **/
            if (fb_alloc_cmap(&info->cmap, 256, 1) < 0)
            {
                HIFB_WARNING("fb_alloc_cmap failed!\n");
            }
            else
            {
                info->cmap.len = 256;
            }
        }
    }

    /** 注册设备，这个时候hifb和fb就可以通过info来交付了 **/
    if ((s32Ret = register_framebuffer(info)) < 0)
    {
        HIFB_ERROR("failed to register_framebuffer!\n");
        goto ERR;
    }

    return HI_SUCCESS;
    
ERR:
    hifb_overlay_cleanup(u32LayerId, HI_FALSE);
    
    return HI_FAILURE;
	
}


/***************************************************************************************
* func          : hifb_get_vram_size
* description   : CNcomment:获取图层大小 CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
static HI_U32 hifb_get_vram_size(char* pstr)
{

    HI_S32 str_is_valid = HI_TRUE;
    unsigned long vram_size = 0;
    char* ptr = pstr;

    if ((ptr == NULL) || (*ptr == '\0'))
    {
        return 0;
    }

    /* check if the string is valid */
    while (*ptr != '\0')
    {
        if (*ptr == ',')
        {
            break;
        }
        else if ((!isdigit(*ptr)) && ('X' != *ptr) && ('x' != *ptr) && ((*ptr > 'f' && *ptr <= 'z') || (*ptr > 'F' && *ptr <= 'Z')))
        {
            str_is_valid = HI_FALSE;
            break;
        }
        ptr++;
    }

    if (str_is_valid)
    {
        vram_size = simple_strtoul(pstr, (char **)NULL, 0);
        /* make the size PAGE_SIZE = 4096 align */
        vram_size = ( (vram_size * 1024 + PAGE_SIZE - 1) & PAGE_MASK ) / 1024;
		
    }

    return vram_size;
	
}


/***************************************************************************************
* func          : hifb_parse_cfg
* description   : CNcomment: 参数解析 CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
static HI_S32 hifb_parse_cfg(HI_VOID)
{

    HI_CHAR *pscstr = NULL;
    HI_CHAR number[4] = {0};
    HI_U32 i = 0;
    HI_U32 u32LayerId   = 0;
    HI_U32 u32LayerSize = 0;

    /** wheter has video parameter
     ** 是否带video参数
	 **/
    if(NULL != video)
    {
        video += sizeof("hifb");
        /* get the string before next varm */
        pscstr = strstr(video, "vram");      
    }

	/** for every layer parse para **/
    while(u32LayerId < HIFB_MAX_LAYER_NUM)
    {
        if (video != NULL)
        {
        	if (NULL == pscstr)
    		{
    			break;
    		}
				
           /* parse the layer id and save it in a string */
            i = 0;
            pscstr += 4;  /*skip "vram"*/
			
            while (*pscstr != '_')
            {
                /* i>1 means layer id is bigger than 100, it's obviously out of range!*/
                if (i > 1)
                {
                    HIFB_ERROR("layer id is out of range!\n");
                    return -1;
                }
                number[i] = *pscstr;
                i++;
                pscstr++;
            }
            number[i] = '\0';

            /**
			 **获取图层ID
			 **/
            u32LayerId = simple_strtoul(number, (char **)NULL, 10);
            if (u32LayerId > HIFB_MAX_LAYER_ID)
            {
                HIFB_ERROR("layer id is out of range!\n");
                return HI_FAILURE;
            }
			
            if ( (!s_stDrvHIFBOps.pstCapability[u32LayerId].bLayerSupported) && (u32LayerId != HIFB_LAYER_CURSOR))
            {
                HIFB_ERROR("chip doesn't support layer %d!\n", u32LayerId);
                return HI_FAILURE;
            }
            pscstr += sizeof("size") + i;
            u32LayerSize = hifb_get_vram_size(pscstr);
			
        }
        else
        {
            u32LayerSize = u32LayerSizeArray[u32LayerId];
        }

		/** save layer size **/
        s_stLayer[u32LayerId].u32LayerSize = u32LayerSize;
        
        if(s_stDrvHIFBOps.pstCapability[u32LayerId].bLayerSupported && u32LayerSize)
        {
            if (!s_stDrvHIFBOps.pstCapability[u32LayerId].bHasCmapReg)
            {/** 如果不支持调色板，则还需要调色板的大小 **/
                s_stLayer[u32LayerId].u32LayerSize +=  HIFB_CMAP_SIZE;
            }
        }
        u32LayerId++;
        
        /* get next layer string */
        if (pscstr != NULL)
        {
            pscstr = strstr(pscstr, "vram");
        }
    }

    return HI_SUCCESS;
	
}


/***************************************************************************************
* func          : hifb_print_softcursor_proc
* description   : CNcomment: 软鼠标相关信息 CNend\n
* retval        : HI_SUCCESS
* retval        : HI_FAILURE
* others:       : NA
***************************************************************************************/
static HI_S32 hifb_print_softcursor_proc(struct fb_info * info, struct seq_file *p, HI_VOID *v)
{
    
    HIFB_PAR_S *par;
    const HI_CHAR* pLayerName = NULL;
    
    par = (HIFB_PAR_S *)info->par;    
    if (par->u32LayerID >= sizeof(s_pszLayerName)/sizeof(*s_pszLayerName))
    {
        pLayerName = "unkown layer";
    }
    else
    {
        pLayerName = s_pszLayerName[par->u32LayerID];
    }
    
    SEQ_Printf(p,  "layer name      \t: %s \n",      pLayerName);
    SEQ_Printf(p,  "Show   State    \t :%s\n",       par->bShow ? "ON" : "OFF");
    SEQ_Printf(p,  "referecce count \t :%d\n",       atomic_read(&par->ref_count));
    SEQ_Printf(p,  "position        \t :(%d, %d)\n", par->stDisplayInfo.stPos.s32XPos, par->stDisplayInfo.stPos.s32YPos);
    SEQ_Printf(p,  "ColorFormat:    \t :%s\n",       s_pszFmtName[par->enColFmt]);
    SEQ_Printf(p,  "Alpha  Enable   \t :%s\n",       par->stAlpha.bAlphaEnable ? "ON" : "OFF");
    SEQ_Printf(p,  "Alpha0, Alpha1  \t :%d, %d\n",   par->stAlpha.u8Alpha0, par->stAlpha.u8Alpha1);
    SEQ_Printf(p,  "Alpha Global    \t :%d\n",       par->stAlpha.u8GlobalAlpha);
    SEQ_Printf(p,  "Colorkey Enable \t :%s\n",       par->stCkey.bKeyEnable ? "ON" : "OFF");
    SEQ_Printf(p,  "Colorkey value  \t :0x%x\n",     par->stCkey.u32Key);

	return HI_SUCCESS;
	
}
/***************************************************************************************
* func          : hifb_print_layer_proc
* description   : CNcomment: layer相关信息 CNend\n
* retval        : HI_SUCCESS
* retval        : HI_FAILURE
* others:       : NA
***************************************************************************************/
static HI_S32 hifb_print_layer_proc(struct fb_info * info, struct seq_file *p, HI_VOID *v)
{
    HIFB_PAR_S *par;
#if HIFB_PROC_SUPPORT
    const HI_CHAR* pszBufMode[] = {"triple", "double ", "single", "triple( no dicard frame)", "unkown"};
    const HI_CHAR* pszAntiflicerLevel[] =  {"NONE", "LOW" , "MIDDLE", "HIGH", "AUTO" ,"ERROR"};
    const HI_CHAR* pszAntiMode[] =  {"NONE", "TDE" , "VOU"};
    const HI_CHAR* pszStereoEncPicFrm[] =  {"Mono", "Side-by-Side(Half)" , "Top-and-Bottom"};
#endif

    const HI_CHAR* pLayerName = NULL;

    par = (HIFB_PAR_S *)info->par;    
    if (par->u32LayerID >= sizeof(s_pszLayerName)/sizeof(*s_pszLayerName))
    {
        pLayerName = "unkown layer";
    }
    else
    {
        pLayerName = s_pszLayerName[par->u32LayerID];
    }

    if (par->stDisplayInfo.enAntiflickerMode > HIFB_ANTIFLICKER_VO)
    {
        par->stDisplayInfo.enAntiflickerMode = HIFB_ANTIFLICKER_BUTT;
    }

    if (par->stDisplayInfo.enAntiflickerLevel > HIFB_LAYER_ANTIFLICKER_AUTO)
    {
        par->stDisplayInfo.enAntiflickerLevel = HIFB_LAYER_ANTIFLICKER_BUTT;
    }
    
    SEQ_Printf(p,  "layer name                 \t : %s \n",        pLayerName);
    SEQ_Printf(p,  "Show   State               \t : %s\n",         par->bShow ? "ON" : "OFF");
    SEQ_Printf(p,  "referecce count            \t : %d\n",         atomic_read(&par->ref_count));
    SEQ_Printf(p,  "Start  Position            \t : (%d, %d)\n",   par->stDisplayInfo.stPos.s32XPos,par->stDisplayInfo.stPos.s32YPos);
    SEQ_Printf(p,  "xres, yres                 \t : (%d, %d)\n",   info->var.xres, info->var.yres);
    SEQ_Printf(p,  "xres_virtual, yres_virtual \t : (%d, %d)\n",   info->var.xres_virtual, info->var.yres_virtual);
    SEQ_Printf(p,  "xoffset, yoffset           \t : (%d, %d)\n",   info->var.xoffset, info->var.yoffset);
    SEQ_Printf(p,  "Stride                     \t : %d\n",         IS_STEREO_SW_HWHALF(par) ? par->stBufInfo.stStereoSurface.u32Pitch: info->fix.line_length);
    SEQ_Printf(p,  "Mem size:                  \t : %d KB\n",      info->fix.smem_len / 1024);
	if(par->u32LayerID < HIFB_LAYER_ID_BUTT)
	{
    	SEQ_Printf(p,  "Layer Scale (hw):          \t : %s \n",        s_stDrvHIFBOps.pstCapability[par->u32LayerID].bVoScale ? "YES" : "NO");
		SEQ_Printf(p,  "Layer buffer size:         \t : %d KB\n",      s_stLayer[par->u32LayerID].u32LayerSize);
	}
	SEQ_Printf(p,  "ColorFormat:               \t : %s\n",         s_pszFmtName[par->enColFmt]);
    SEQ_Printf(p,  "Alpha  Enable              \t : %s\n",         par->stAlpha.bAlphaEnable ? "ON" : "OFF");
    SEQ_Printf(p,  "Alpha0, Alpha1             \t : %d, %d\n",     par->stAlpha.u8Alpha0, par->stAlpha.u8Alpha1);
    SEQ_Printf(p,  "Alpha Global               \t : %d\n",         par->stAlpha.u8GlobalAlpha);
    SEQ_Printf(p,  "Colorkey Enable            \t : %s\n",         par->stCkey.bKeyEnable ? "ON" : "OFF");
    SEQ_Printf(p,  "Colorkey value             \t : 0x%x\n",       par->stCkey.u32Key);
	if(par->stDisplayInfo.enAntiflickerMode < HIFB_ANTIFLICKER_BUTT)
	{
    	SEQ_Printf(p,  "Deflicker Mode:            \t : %s\n",         pszAntiMode[par->stDisplayInfo.enAntiflickerMode]);
	}
	if(par->stDisplayInfo.enAntiflickerLevel < HIFB_LAYER_ANTIFLICKER_BUTT)
	{
		SEQ_Printf(p,  "Deflicker Level:           \t : %s\n",         pszAntiflicerLevel[par->stDisplayInfo.enAntiflickerLevel]);
	}
	SEQ_Printf(p,  "Display Buffer mode        \t : %s\n",         pszBufMode[par->stBufInfo.enBufMode]);
    SEQ_Printf(p,  "Display 3D Stereo EncPicFra\t : %s\n",         pszStereoEncPicFrm[par->stDisplayInfo.enEncPicFraming]);
    SEQ_Printf(p,  "Displaying addr (register) \t : 0x%x\n",       par->stBufInfo.u32ScreenAddr);
    SEQ_Printf(p,  "display buffer[0] addr     \t : 0x%x\n",       par->stBufInfo.u32DisplayAddr[0]);
    SEQ_Printf(p,  "display buffer[1] addr     \t : 0x%x\n",       par->stBufInfo.u32DisplayAddr[1]);
    SEQ_Printf(p,  "displayrect                \t : (%d, %d)\n",   par->stDisplayInfo.u32DisplayWidth, par->stDisplayInfo.u32DisplayHeight);
    SEQ_Printf(p,  "screenrect                 \t : (%d, %d)\n",   par->stDisplayInfo.u32ScreenWidth, par->stDisplayInfo.u32ScreenHeight);
    SEQ_Printf(p,  "device max resolution      \t : %d, %d\n",     par->stDisplayInfo.u32MaxScreenWidth, par->stDisplayInfo.u32MaxScreenHeight);
    SEQ_Printf(p,  "IsNeedFlip(2buf)           \t : %s\n",         par->stBufInfo.bNeedFlip? "YES" : "NO");
    SEQ_Printf(p,  "BufferIndexDisplaying(2buf)\t : %d\n",         par->stBufInfo.u32IndexForInt);
    SEQ_Printf(p,  "refresh request num(2buf)  \t : %d\n",         par->stBufInfo.u32RefreshNum);
    SEQ_Printf(p,  "switch buf num(2buf)       \t : %d\n",         par->stBufInfo.u32IntPicNum);
    SEQ_Printf(p,  "union rect (2buf)          \t : (%d,%d,%d,%d)\n",par->stBufInfo.stUnionRect.x, par->stBufInfo.stUnionRect.y, par->stBufInfo.stUnionRect.w, par->stBufInfo.stUnionRect.h);
    SEQ_Printf(p,  "canavas updated addr       \t : 0x%x\n",       par->stBufInfo.stUserBuffer.stCanvas.u32PhyAddr);
    SEQ_Printf(p,  "canavas updated (w, h)     \t : %d,%d \n",     par->stBufInfo.stUserBuffer.stCanvas.u32Width, par->stBufInfo.stUserBuffer.stCanvas.u32Height);
    SEQ_Printf(p,  "canvas width               \t : %d\n",         par->CanvasSur.u32Width);
    SEQ_Printf(p,  "canvas height              \t : %d\n",         par->CanvasSur.u32Height);
    SEQ_Printf(p,  "canvas pitch               \t : %d\n",         par->CanvasSur.u32Pitch);
    SEQ_Printf(p,  "canvas format              \t : %s\n",         s_pszFmtName[par->CanvasSur.enFmt]);

	return HI_SUCCESS;
	
}
/***************************************************************************************
* func          : hifb_read_proc
* description   : CNcomment: 读proc信息 CNend\n
* retval        : HI_SUCCESS
* retval        : HI_FAILURE
* others:       : NA
***************************************************************************************/
static HI_S32 hifb_read_proc(struct seq_file *p, HI_VOID *v)
{
    DRV_PROC_ITEM_S * item = (DRV_PROC_ITEM_S *)(p->private);
    struct fb_info* info    = (struct fb_info *)(item->data);
    HIFB_PAR_S *par         = (HIFB_PAR_S *)info->par;

    if (par->u32LayerID != HIFB_LAYER_CURSOR)
    {
        return hifb_print_layer_proc(info, p, v);
    }
    else
    {
        return hifb_print_softcursor_proc(info,  p, v);
    }
}


/***************************************************************************************
* func          : hifb_parse_proccmd
* description   : CNcomment: 解析proc命令 CNend\n
* retval        : HI_SUCCESS
* retval        : HI_FAILURE
* others:       : NA
***************************************************************************************/
static HI_VOID hifb_parse_proccmd(struct seq_file* p, HI_U32 u32LayerId, HI_CHAR *pCmd)
{

    struct fb_info *info = s_stLayer[u32LayerId].pstInfo;
    HIFB_PAR_S *pstPar = (HIFB_PAR_S *)info->par;
    HI_S32 cnt = atomic_read(&pstPar->ref_count);
    
    if (strncmp("show", pCmd, 4) == 0)
    {
        if (cnt == 0)
        {
            HIFB_INFO("err:device no open!\n");
            return;
        }
        if (pstPar->u32LayerID == HIFB_LAYER_CURSOR)
        {
            HIFB_INFO("cursor layer doesn't support this cmd!\n");
            return;
        }
        if (!pstPar->bShow)
        {
            pstPar->bModifying = HI_TRUE;
            pstPar->bShow      = HI_TRUE;
            pstPar->u32ParamModifyMask |= HIFB_LAYER_PARAMODIFY_SHOW;
            pstPar->bModifying = HI_FALSE;
        }
    }     
    else if (strncmp("hide", pCmd, 4) == 0)
    {
        if (cnt == 0)
        {
            HIFB_INFO("err:device no open!\n");
            return;
        }

        if (pstPar->u32LayerID == HIFB_LAYER_CURSOR)
        {
            SEQ_Printf(p, "cursor layer doesn't support this cmd!\n");
            return;
        }
        
        if (pstPar->bShow)
        {
            pstPar->bModifying = HI_TRUE;
            pstPar->bShow      = HI_FALSE;
            pstPar->u32ParamModifyMask |= HIFB_LAYER_PARAMODIFY_SHOW;
            pstPar->bModifying = HI_FALSE;
        }
    }
    else if (strncmp("help", pCmd, 4) == 0)
    {/** echo help > /proc/msp/hifb0/2/4 **/
        HIFB_TRACE("help info:\n");
        HIFB_TRACE("   echo cmd > proc file\n");
        HIFB_TRACE("   hifb support cmd:\n");
        HIFB_TRACE("   show:show layer\n");
        HIFB_TRACE("   hide:hide layer\n");
        HIFB_TRACE("For example, if you want to hide layer 2,you can input:\n");   
        HIFB_TRACE("echo hide > /proc/msp/hifb2\n");   
    }
    else
    {
        HIFB_TRACE("unsupported cmd:%s ", pCmd);
        HIFB_TRACE("you can use help cmd to show help info!\n");
    }
    return;
	
}


/***************************************************************************************
* func          : hifb_write_proc
* description   : CNcomment: 写proc信息 CNend\n
* retval        : HI_SUCCESS
* retval        : HI_FAILURE
* others:       : NA
***************************************************************************************/
static HI_S32 hifb_write_proc(struct file * file,const char __user * buf, size_t count, loff_t *ppos)
{
    struct fb_info *info;
    HIFB_PAR_S *pstPar;
    HI_CHAR buffer[128];
    
    struct seq_file *seq = file->private_data;
    DRV_PROC_ITEM_S *item = seq->private;
    info = (struct fb_info *)(item->data);
    pstPar = (HIFB_PAR_S *)(info->par);
    
    if (count > sizeof(buffer))
    {
        HIFB_ERROR("The command string is out of buf space :%d bytes !\n", sizeof(buffer));
        return HI_FAILURE;
    }

    if (copy_from_user(buffer, buf, count))
    {
        HIFB_ERROR("failed to call copy_from_user !\n");
        return HI_FAILURE;
    }
    
    hifb_parse_proccmd(seq, pstPar->u32LayerID, (HI_CHAR*)buffer);

    return count;
	
}



#ifdef HIFB_PM
/* save current hardware state */
static int hifb_save_state(struct fb_info *info)
{
    HIFB_PAR_S *par = NULL; 
    HI_S32  ret=0;
    par = (HIFB_PAR_S *)info->par;


    ret |= s_stDrvHIFBOps.HIFB_DRV_SetIntCallback(HIFB_INTTYPE_VO_DISP, NULL, par->u32LayerID);
    ret |= s_stDrvHIFBOps.HIFB_DRV_SetIntCallback(HIFB_INTTYPE_VO, NULL, par->u32LayerID);
    ret |= s_stDrvHIFBOps.HIFB_DRV_SetIntCallback(HIFB_INTTYPE_COMP_ERR, NULL, par->u32LayerID);
    ret |= s_stDrvHIFBOps.HIFB_DRV_CloseLayer(par->u32LayerID);
    return ret;
}


/* restore saved state */
static int hifb_restore_state(struct fb_info *info)
{
    HIFB_PAR_S *par = NULL; 
    HIFB_RECT stInRect = {0};
    HIFB_RECT stOutRect = {0};
    HIFB_OSD_DATA_S stLayerData;
    
    par = (HIFB_PAR_S *)info->par;

    HIFB_FATAL("hifb_restore_state %d  OK! \n", info->node);

    s_stDrvHIFBOps.HIFB_DRV_OpenLayer(par->u32LayerID);
    s_stDrvHIFBOps.HIFB_DRV_SetIntCallback(HIFB_INTTYPE_VO_DISP, hifb_disp_callback, par->u32LayerID);
    s_stDrvHIFBOps.HIFB_DRV_SetIntCallback(HIFB_INTTYPE_VO, hifb_vo_callback, par->u32LayerID);

    s_stDrvHIFBOps.HIFB_DRV_EnableLayer(par->u32LayerID, par->bShow);
    s_stDrvHIFBOps.HIFB_DRV_SetLayerAlpha(par->u32LayerID, par->stAlpha);
    s_stDrvHIFBOps.HIFB_DRV_SetLayerKeyMask(par->u32LayerID, &par->stCkey);
    s_stDrvHIFBOps.HIFB_DRV_SetPreMul(par->u32LayerID, par->stDisplayInfo.bPreMul);
    if ((par->stBufInfo.enBufMode == HIFB_LAYER_BUF_NONE)
        && par->stBufInfo.stUserBuffer.stCanvas.u32PhyAddr)
    {
        s_stDrvHIFBOps.HIFB_DRV_SetLayerDataFmt(par->u32LayerID, par->stBufInfo.stUserBuffer.stCanvas.enFmt);
        s_stDrvHIFBOps.HIFB_DRV_SetLayerStride(par->u32LayerID, par->stBufInfo.stUserBuffer.stCanvas.u32Pitch);
    }
    else
    {
        s_stDrvHIFBOps.HIFB_DRV_SetLayerDataFmt(par->u32LayerID, par->enColFmt);
        s_stDrvHIFBOps.HIFB_DRV_SetLayerStride(par->u32LayerID, info->fix.line_length);
    }


    /*If VO don't support scale function, we should set the screen size the same with the display size*/
    if (!s_stDrvHIFBOps.pstCapability[par->u32LayerID].bVoScale)
    {
       par->stDisplayInfo.u32ScreenWidth = par->stDisplayInfo.u32DisplayWidth;
       par->stDisplayInfo.u32ScreenHeight = par->stDisplayInfo.u32DisplayHeight;
    }

    /*if some platform don't support auto module, we should reconfig the  module using last config*/
    s_stDrvHIFBOps.HIFB_DRV_GetOSDData(par->u32LayerID, &stLayerData);
    par->stDisplayInfo.u32MaxScreenWidth = stLayerData.u32ScreenWidth;
    par->stDisplayInfo.u32MaxScreenHeight = stLayerData.u32ScreenHeight;

    stInRect.w = (HI_S32)par->stDisplayInfo.u32DisplayWidth;
    stInRect.h = (HI_S32)par->stDisplayInfo.u32DisplayHeight;

#ifdef CFG_HIFB_STEREO3D_HW_SUPPORT
    if (IS_STEREO_SW_HWHALF(par))
    {
        stOutRect.x = 0;
        stOutRect.y = 0;
        stOutRect.w = par->stDisplayInfo.u32MaxScreenWidth;
        stOutRect.h =par->stDisplayInfo.u32MaxScreenHeight;
        if (par->stBufInfo.enBufMode == HIFB_LAYER_BUF_BUTT)
        {
            HI_U32 u32Stride;
            u32Stride = ((info->var.xres * info->var.bits_per_pixel >> 3) + 0xf) & 0xfffffff0;
            s_stDrvHIFBOps.HIFB_DRV_SetLayerStride(par->u32LayerID, u32Stride);  
        }
    }
#endif  
#ifdef CFG_HIFB_STEREO3D_HW_SUPPORT
    if (IS_STEREO_ENCPICFRAMING(par->stDisplayInfo.enEncPicFraming))
    {
         if (HIFB_ENCPICFRM_STEREO_SIDEBYSIDE_HALF == par->stDisplayInfo.enEncPicFraming)
         {
               stInRect.w = (HI_S32)par->stDisplayInfo.u32DisplayWidth >> 1;
               stInRect.h = (HI_S32)par->stDisplayInfo.u32DisplayHeight;
         }
         else
         {
               stInRect.w = (HI_S32)par->stDisplayInfo.u32DisplayWidth;
               stInRect.h = (HI_S32)par->stDisplayInfo.u32DisplayHeight >> 1;
         }
   }
   else
#endif   	
   {
        stInRect.w = (HI_S32)par->stDisplayInfo.u32DisplayWidth;
        stInRect.h = (HI_S32)par->stDisplayInfo.u32DisplayHeight;
   }
   
#ifdef CFG_HIFB_STEREO3D_HW_SUPPORT
   if (IS_STEREO_ENCPICFRAMING(par->stDisplayInfo.enEncPicFraming))
            {
                HI_S32 MaxScnWidth  = 0;
				HI_S32 MaxScnHeight = 0;
				HI_S32 ScnWidth     = 0;
				HI_S32 ScnHeight    = 0;

                if (HIFB_ENCPICFRM_STEREO_SIDEBYSIDE_HALF == par->stDisplayInfo.enEncPicFraming)
                {
                    stOutRect.w = (HI_S32)par->stDisplayInfo.u32ScreenWidth >> 1;
                    stOutRect.h = (HI_S32)par->stDisplayInfo.u32ScreenHeight;

                    MaxScnWidth = par->stDisplayInfo.u32MaxScreenWidth >> 1;
                    MaxScnHeight = par->stDisplayInfo.u32MaxScreenHeight;

                    ScnWidth = par->stDisplayInfo.u32ScreenWidth >> 1;
                    ScnHeight = par->stDisplayInfo.u32ScreenHeight;

                    stOutRect.x = (par->stDisplayInfo.stPos.s32XPos >> 1);
                    stOutRect.y = par->stDisplayInfo.stPos.s32YPos ;             
                }
                else if (HIFB_ENCPICFRM_STEREO_TOPANDBOTTOM == par->stDisplayInfo.enEncPicFraming)
                {
                    stOutRect.w = (HI_S32)par->stDisplayInfo.u32ScreenWidth;
                    stOutRect.h = (HI_S32)par->stDisplayInfo.u32ScreenHeight >> 1;

                    MaxScnWidth = par->stDisplayInfo.u32MaxScreenWidth;
                    MaxScnHeight = (par->stDisplayInfo.u32MaxScreenHeight >> 1);
                    
                    ScnWidth = par->stDisplayInfo.u32ScreenWidth;
                    ScnHeight = par->stDisplayInfo.u32ScreenHeight >> 1;

                    stOutRect.x = par->stDisplayInfo.stPos.s32XPos;
                    stOutRect.y = par->stDisplayInfo.stPos.s32YPos  >> 1;             
                }

                if ((HI_U32)stOutRect.x + stOutRect.w > MaxScnWidth)
                {
                    stOutRect.w = (HI_S32)(MaxScnWidth - stOutRect.x);
                }

                if ((HI_U32)stOutRect.y + stOutRect.h > MaxScnHeight)
                {
                    stOutRect.h = (HI_S32)(MaxScnHeight - stOutRect.y);
                }

                stInRect.w = stInRect.w * stOutRect.w / ScnWidth;
                stInRect.h = stInRect.h * stOutRect.h / ScnHeight;          
    }
    else
#endif		
    {
        stOutRect.x = par->stDisplayInfo.stPos.s32XPos;
        stOutRect.y = par->stDisplayInfo.stPos.s32YPos;
        stOutRect.w = par->stDisplayInfo.u32ScreenWidth;
        stOutRect.h = par->stDisplayInfo.u32ScreenHeight;

            
        if ((HI_U32)stOutRect.x + stOutRect.w > par->stDisplayInfo.u32MaxScreenWidth)
        {
            stOutRect.w = (HI_S32)(par->stDisplayInfo.u32MaxScreenWidth - stOutRect.x);
        }

        if ((HI_U32)stOutRect.y + stOutRect.h > (HI_S32)par->stDisplayInfo.u32MaxScreenHeight)
        {
            stOutRect.h = (HI_S32)(par->stDisplayInfo.u32MaxScreenHeight - stOutRect.y);
        }
        
        /*after cut off, the input rectangle keep rate with output rectangle */
        stInRect.w = stInRect.w * stOutRect.w / (HI_S32)par->stDisplayInfo.u32ScreenWidth;
        stInRect.h = stInRect.h * stOutRect.h / (HI_S32)par->stDisplayInfo.u32ScreenHeight;
    }

#ifdef CFG_HIFB_STEREO3D_HW_SUPPORT
    if (s_stDrvHIFBOps.pstCapability[par->u32LayerID].bStereo)
    {
        s_stDrvHIFBOps.HIFB_DRV_SetEncPicFraming(par->u32LayerID, par->stDisplayInfo.enEncPicFraming); 
    }
    else
#endif		
    {
        s_stDrvHIFBOps.HIFB_DRV_SetEncPicFraming(par->u32LayerID, HIFB_ENCPICFRM_MONO); 
    }

    s_stDrvHIFBOps.HIFB_DRV_SetLayerRect(par->u32LayerID, &stInRect, &stOutRect);
    s_stDrvHIFBOps.HIFB_DRV_SetLayerAddr(par->u32LayerID, par->stBufInfo.u32ScreenAddr);
    s_stDrvHIFBOps.HIFB_DRV_UpdataLayerReg(par->u32LayerID);
    
    return HI_SUCCESS;
}


/***************************************************************************************
* func          : HIFB_SetResumeMask
* description   : CNcomment: 设置待机唤醒掩码 CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
HI_S32 HIFB_SetResumeMask(HI_BOOL bMask)
{
    gs_bHifbResumeMask = bMask;
    return HI_SUCCESS;
}

/***************************************************************************************
* func          : HIFB_SetResumeMask
* description   : CNcomment: 获取待机唤醒状态 CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
static HI_S32 DRV_HIFB_GetResumeMask(void)
{

    HI_S32 s32Ret = HI_SUCCESS;
    s32Ret =  readl((void*)IO_ADDRESS(WAKEUP_MODE_ADDR));
    if((s32Ret == TIMER_WAKEUP ) && (HI_TRUE == gs_bHifbResumeMask))
    {
        //HIFB_FATAL("Get::bHifbResumeMask = %d\n", gs_bHifbResumeMask);  
        return HI_TRUE;
    }

    //HIFB_FATAL("Get::bHifbResumeMask = %d\n", gs_bHifbResumeMask);  

    return HI_FALSE;

} 


/* suspend and resume support */
int hifb_suspend (PM_BASEDEV_S *pdev, pm_message_t state)
{
    int i, j;
    int ret;
    struct fb_info * info = NULL;
    
    HIFB_FATAL("=== hifb_suspend start ===\n");

	if(HI_TRUE == gs_bHifbSuspend)
	{
		return HI_SUCCESS;
	}
    for(i = 0; i <= HIFB_MAX_LAYER_ID; i++)
    {
       if(i == HIFB_LAYER_CURSOR)
       {continue;}
    	info = s_stLayer[i].pstInfo ;
    	if(info && info->par && atomic_read(&(((HIFB_PAR_S *)info->par)->ref_count)))
    	{
    		ret = hifb_save_state(info);
    		if(ret)
    		{
    			for(j=0; j<i; j++)
    			{
    				info = s_stLayer[j].pstInfo ;
    				hifb_restore_state(info);
    				fb_set_suspend(info, 0);
    			}
    			
    			HIFB_FATAL("=== hifb_suspend err ===\n");
    			return -1;				
    		}
    		else
    		{
    			fb_set_suspend(info, 1);
    		}
    	}
    }

    /* open vo */
    //s_stDrvHIFBOps.HIFB_DRV_CloseDisplay();
    
	gs_bHifbSuspend = HI_TRUE;

    HIFB_FATAL("=== hifb_suspend ok ===\n");
    
    return 0;
}

int hifb_resume  (PM_BASEDEV_S *pdev)
{
    int i;
    struct fb_info * info = NULL;    
    
    HIFB_FATAL("=====hifb resume start!====\n");
    /* open vo */
    //s_stDrvHIFBOps.HIFB_DRV_OpenDisplay();

    if((HI_TRUE == DRV_HIFB_GetResumeMask() ) || (HI_FALSE == gs_bHifbSuspend)) 
    {
        return HI_SUCCESS;
    }

    for(i = 0; i <= HIFB_MAX_LAYER_ID; i++)
    {
       if(i == HIFB_LAYER_CURSOR)
       {continue;}
    	info = s_stLayer[i].pstInfo ;
    	if(info && info->par && atomic_read(&(((HIFB_PAR_S *)info->par)->ref_count)))
    	{
    		hifb_restore_state(info);
    		fb_set_suspend(info, 0);
    	}
    }

    gs_bHifbSuspend = HI_FALSE;    

    HIFB_FATAL("=== hifb resume end ok ===\n");
    return 0;
}


// we use HiMedia device replace platform device, 
static struct file_operations hifb_fopts = {
	.owner   = THIS_MODULE,
	.open    = NULL,
	.release = NULL,
#if (LINUX_VERSION_CODE < KERNEL_VERSION(2, 6, 36))
    .ioctl =    NULL,
#else
    .unlocked_ioctl = NULL,
#endif	
};

static PM_BASEOPS_S hifb_baseOps = {
	.probe  = NULL,
	.remove = NULL,
	.shutdown = NULL,
	.prepare  = NULL,
	.complete = NULL,
	.suspend   = hifb_suspend,
	.suspend_late = NULL,
	.resume_early = NULL,
	.resume  = hifb_resume
};

static PM_DEVICE_S  hifbdev = {
	.minor = HIMEDIA_DYNAMIC_MINOR,
	.name  = "hifb",
	.owner = THIS_MODULE,
	.app_ops = &hifb_fopts,
	.base_ops = &hifb_baseOps
};

#endif



/***************************************************************************************
* func          : HIFB_DRV_ModExit
* description   : CNcomment: 加载KO的去初始化 CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
HI_VOID HIFB_DRV_ModExit(HI_VOID)
{
    HI_S32 i;
	HI_DRV_MODULE_UnRegister(HI_ID_FB);

	if (HI_SUCCESS != HI_DRV_MODULE_GetFunction(HI_ID_DISP, (HI_VOID**)&ps_DispExportFuncs))
    {
		HIFB_ERROR("Tde is not available!\n");
    	return;
    }
    if(HI_NULL == ps_DispExportFuncs)
	{
		HIFB_ERROR("Tde is not available!\n");
		return ;
	}
	
    ps_DispExportFuncs->pfnHifbGetOp(&s_stDrvHIFBOps);

#ifdef HIFB_PM
	HI_DRV_PM_UnRegister(&hifbdev);
#endif

#if HIGO_PROC_SUPPORT
    higo_proc_dinit();
#endif

    s_stDrvTdeOps.HIFB_DRV_SetTdeCallBack(NULL);

	if (!strncmp("on", display,3))
    {
        s_stDrvHIFBOps.HIFB_DRV_CloseDisplay();
    }


    for (i = 0; i < HIFB_LAYER_ID_BUTT; i++)
    {
		#ifdef HIFB_PROC_SUPPORT
	        HI_CHAR entry_name[16];
	        snprintf(entry_name,sizeof(entry_name),"hifb%d", i);
			entry_name[sizeof(entry_name) - 1] = '\0';
	        HI_DRV_PROC_RemoveModule(entry_name);
		#endif
        hifb_overlay_cleanup(i, HI_TRUE);
    }

}

/***************************************************************************************
* func          : HI_GFX_ShowVersionK
* description   : CNcomment: 显示版本号 CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
static HI_VOID HI_GFX_ShowVersionK(HIGFX_MODE_ID_E ModID)
{
#if !defined(CONFIG_GFX_COMM_VERSION_DISABLE) && !defined(CONFIG_GFX_COMM_DEBUG_DISABLE) && defined(MODULE)	
        GFX_Printk("Load hi_fb.ko success.\t\t(%s)\n", VERSION_STRING);
	return;
#endif
}

/***************************************************************************************
* func          : HIFB_DRV_ModInit
* description   : CNcomment: 加载KO的初始化 CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
HI_S32 HIFB_DRV_ModInit(HI_VOID)
{

    HI_U32 i = 0;
    HI_CHAR entry_name[16];
    HI_S32 s32Ret;
    HI_U32 u32CursorBufSize = 0;


	gs_bHifbResumeMask = HI_FALSE;
    gs_bHifbSuspend    = HI_FALSE;

	/** initial the struct layer
	 ** 初始化图层结构体变量 
	 **/
    memset(&s_stLayer, 0x00, sizeof(s_stLayer));

	/** get the pointer of display function
     ** 获取disp相关函数指针
     **/
    if (HI_SUCCESS != HI_DRV_MODULE_GetFunction(HI_ID_DISP, (HI_VOID**)&ps_DispExportFuncs))
    {
		HIFB_ERROR("Tde is not available!\n");
    	return -1;
    }
    if(HI_NULL == ps_DispExportFuncs)
	{
		HIFB_ERROR("Tde is not available!\n");
		return -1;
	}

	/**
	 ** call HIFB_DRV_GetOps 
	 **/
	ps_DispExportFuncs->pfnHifbGetOp(&s_stDrvHIFBOps);
	
	/** get tde function pointer
     ** 获取TDE相关函数指针
     **/
	HIFB_DRV_GetTdeOps(&s_stDrvTdeOps);
	
    /** parse the insmod parameter
     ** 参数解析
     **/
    if (hifb_parse_cfg() < 0)
    {
        HIFB_INFO("Usage:insmod hifb.ko video=\"hifb:vrami_size:xxx,vramj_size:xxx,...\"\n");
        HIFB_INFO("i,j means layer id, xxx means layer size in kbytes!\n");
        HIFB_INFO("example:insmod hi_fb.ko video=\"hifb:vram0_size:24300,vram2_size:24300,vram4_size:24300\"\n\n");
        return HI_FAILURE;
    }
	
    /** fb5/fb6 no support,so don't regist
     ** 根据硬件是否支持来初始化fb配置,不注册不支持的后面几个图层
     **/
    for(i = 0; i <= HIFB_LAYER_AD_0; i++)
    {
        if (!s_stDrvHIFBOps.pstCapability[i].bLayerSupported)
        {
            s_stLayer[i].u32LayerSize = 0;
        }

		/** regist the fb device
		 ** 通过标准fb注册fb设备
		 **/
        if (hifb_overlay_probe(i, s_stLayer[i].u32LayerSize, u32CursorBufSize) == HI_SUCCESS)
        {
			#ifdef HIFB_PROC_SUPPORT
			/** 默认支持的 **/
	            DRV_PROC_ITEM_S *item = NULL;
				snprintf(entry_name,sizeof(entry_name),"hifb%d", i);
				entry_name[sizeof(entry_name) - 1] = '\0';
	            item = HI_DRV_PROC_AddModule(entry_name, NULL, NULL);
				if(NULL == item)
				{
					return HI_FAILURE;
				}
				else
				{
		            item->write = hifb_write_proc;
					item->read  = hifb_read_proc;
		            item->data  = s_stLayer[i].pstInfo;
				}
 			#endif
        }
		else
		{
			return HI_FAILURE;
		}
		#ifdef CFG_HIFB_SCROLLTEXT_SUPPORT
			memset(&s_stTextLayer[i], 0, sizeof(HIFB_SCROLLTEXT_INFO_S));
		#endif
    }

    /** parse arg display，调试使用 **/
    if (!strncmp("on", display,3))
    {
        /* open vo */
        s_stDrvHIFBOps.HIFB_DRV_OpenDisplay();
    }
	
#if HIGO_PROC_SUPPORT
    higo_proc_Init();
#endif

    s_stDrvTdeOps.HIFB_DRV_SetTdeCallBack(hifb_tde_callback);

#ifdef HIFB_PM
	s32Ret = HI_DRV_PM_Register(&hifbdev);
	if(s32Ret){
        HIFB_ERROR("HI_DRV_PM_Register failed\n");
        goto ERR;
	}
#endif

	s32Ret = HI_DRV_MODULE_Register(HI_ID_FB, FBNAME, NULL); 
    if (HI_SUCCESS != s32Ret)
    {
	   HIFB_ERROR("HI_DRV_MODULE_Register HIFB failed\n");
       HIFB_DRV_ModExit();
	   goto ERR;
    }

	HI_GFX_ShowVersionK(HIGFX_FB_ID);
	
    return HI_SUCCESS;
    
ERR:
	
    /*to do:close vo*/
    s_stDrvHIFBOps.HIFB_DRV_CloseDisplay();
    
    for (i = 0; i < HIFB_LAYER_ID_BUTT; i++)
    {
        hifb_overlay_cleanup(i, HI_TRUE);
    }

    return HI_FAILURE;
	
}

/***************************************************************************************
		这两个函数要按此命名
***************************************************************************************/
#ifdef MODULE
module_init(HIFB_DRV_ModInit);
module_exit(HIFB_DRV_ModExit);
#endif

EXPORT_SYMBOL(HIFB_SetResumeMask);
EXPORT_SYMBOL(hifb_resume);
EXPORT_SYMBOL(hifb_suspend);

MODULE_DESCRIPTION("");
MODULE_AUTHOR("");
MODULE_LICENSE("GPL");
