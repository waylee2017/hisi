/******************************************************************************
 *
 * Copyright (C) 2014 Hisilicon Technologies Co., Ltd.  All rights reserved. 
 *
 * This program is confidential and proprietary to Hisilicon  Technologies Co., Ltd. (Hisilicon), 
 *  and may not be copied, reproduced, modified, disclosed to others, published or used, in
 * whole or in part, without the express prior written permission of Hisilicon.
 *

 ******************************************************************************
 File Name     :  drv_hdmi.c
 Version       : Initial Draft
 Author        : Hisilicon multimedia software group
 Created       : 2010/6/20
 Description   :
 History       :
 Date          : 2014/10/22
 Author        : l00271847
 Modification  :
 *******************************************************************************/
#include <linux/sched.h>
#include <linux/kthread.h>
#include <linux/vmalloc.h>
#include <linux/kernel.h>
#include <linux/version.h>
#include <linux/module.h>
#include <linux/types.h>
#include <linux/errno.h>
#include <linux/timer.h>
#include <linux/delay.h>
#include <asm/uaccess.h>
#include <asm/io.h>

#include <linux/device.h>
#include <linux/module.h>
#include <linux/moduleparam.h>
#include <linux/fs.h>
#include <asm/uaccess.h>
#include <asm/io.h>
#include <asm/delay.h>
#include <linux/poll.h>
#include <mach/hardware.h>
#include <linux/interrupt.h>
#include <linux/vmalloc.h>
#include <linux/slab.h>
#include <linux/string.h>

#include "drv_hdmi.h"

#include "hi_drv_hdmi.h"

#include "hi_unf_hdmi.h"

#include "si_audio.h"
#include "si_hdmitx.h"
#include "si_infofrm.h"
#include "si_txapidefs.h"
#include "si_defstx.h"
#include "si_hdcpdefs.h"
#include "si_eedefs.h"
#include "si_de.h"
#include "si_edid.h"
#include "si_txvidp.h"
#include "si_timer.h"
#include "si_eeprom.h"
#include "si_cec.h"
#include "si_phy.h"
#include "hdmi_hal_phy.h"

#include "hi_unf_disp.h"
#include "si_mpi_hdmi.h"
#include "drv_disp_ext.h"
#include "hi_kernel_adapt.h"
#include "drv_cipher_ext.h"
#include "hi_drv_sys.h"
#include "si_vmode.h"

#include "drv_global.h"
#include "drv_reg_proc.h"
#include "drv_compatibility.h"
#include "hi_drv_module.h"


#ifdef ANDROID_SUPPORT
#include <linux/switch.h>
extern HI_BOOL g_switchOk;
extern struct switch_dev hdmi_tx_sdev;
#endif

#define HDCP_KEY_CHECK_OK 0xa
typedef enum hiHDMI_VIDEO_TIMING_E
{
    VIDEO_TIMING_UNKNOWN,
    VIDEO_TIMING_640X480P_59940,        /* 1: 640x480p  @ 59.94Hz  No Repetition */
    VIDEO_TIMING_640X480P_60000,        /* 1: 640x480p  @ 60Hz     No Repetition */
#if defined (DVI_SUPPORT)
    VIDEO_TIMING_720X480P_59940,        /* 2: 720x480p @ 59.94Hz  No Repetition */
#endif
    VIDEO_TIMING_720X480P_60000,        /* 2: 720x480p  @ 60Hz     No Repetition */
#if defined (DVI_SUPPORT)
    VIDEO_TIMING_1280X720P_59940,       /* 4: 1280x720p @ 59.94Hz  No Repetition */
#endif
    VIDEO_TIMING_1280X720P_60000,       /* 4: 1280x720p @ 60Hz     No Repetition */
    VIDEO_TIMING_1920X1080I_60000,      /* 5: 1920x1080i@ 59.94Hz  No Repetition */
#if defined (DVI_SUPPORT)
    VIDEO_TIMING_1920X1080I_59940,      /* 5: 1920x1080i@ 60Hz     No Repetition */
    VIDEO_TIMING_720X480I_59940,        /* 6: 720x480i  @ 59.94Hz  pixel sent 2 times */
#endif
    VIDEO_TIMING_720X480I_60000,        /* 6: 720x480i  @ 60Hz     pixel sent 2 times */
#if defined (DVI_SUPPORT)
    VIDEO_TIMING_720X240P_59940,        /* 8: 720x240p  @ 59.94Hz  pixel sent 2 times */
    VIDEO_TIMING_720X240P_60000,        /* 8: 720x240p  @ 60Hz     pixel sent 2 times */
    VIDEO_TIMING_2880X480I_59940,       /* 10:2880x480i @ 59.94Hz  pixel sent 1 to 10 times */
    VIDEO_TIMING_2880X480I_60000,       /* 10:2880x480i @ 60Hz     pixel sent 1 to 10 times */
    VIDEO_TIMING_2880X240P_59940,       /* 12:2880x240p @ 59.94Hz  pixel sent 1 to 10 timesn */
    VIDEO_TIMING_2880X240P_60000,       /* 12:2880x240p @ 60Hz     pixel sent 1 to 10 times */
    VIDEO_TIMING_1440X480P_59940,       /* 14:1440x480p @ 59.94Hz  pixel sent 1 to 2 times */
    VIDEO_TIMING_1440X480P_60000,       /* 14:1440x480p @ 60Hz     pixel sent 1 to 2 times */
    VIDEO_TIMING_1920X1080P_59940,      /* 16:1920x1080p@ 59.94Hz  No Repetition */
#endif
    VIDEO_TIMING_1920X1080P_60000,      /* 16:1920x1080p@ 60Hz     No Repetition */
    VIDEO_TIMING_720X576P_50000,        /* 17:720x576p  @ 50Hz     No Repetition */
    VIDEO_TIMING_1280X720P_50000,       /* 19:1280x720p @ 50Hz     No Repetition */
    VIDEO_TIMING_1920X1080I_50000,      /* 20:1920x1080i@ 50Hz     No Repetition */
    VIDEO_TIMING_720X576I_50000,        /* 21:720x576i  @ 50Hz     pixel sent 2 times */
#if defined (DVI_SUPPORT)
    VIDEO_TIMING_720X288P_50000,        /* 23:720x288p @ 50Hz      pixel sent 2 times */
    VIDEO_TIMING_2880X576I_50000,       /* 25:2880x576i @ 50Hz     pixel sent 1 to 10 times */
    VIDEO_TIMING_2880X288P_50000,       /* 27:2880x288p @ 50Hz     pixel sent 1 to 10 times */
    VIDEO_TIMING_1440X576P_50000,       /* 29:1440x576p @ 50Hz     pixel sent 1 to 2 times */
#endif
    VIDEO_TIMING_1920X1080P_50000,      /* 31:1920x1080p @ 50Hz    No Repetition */
#if defined (DVI_SUPPORT)
    VIDEO_TIMING_1920X1080P_23980,      /* 32:1920x1080p @ 23.98Hz No Repetition */
#endif
    VIDEO_TIMING_1920X1080P_24000,      /* 32:1920x1080p @ 24Hz   No Repetition */
    VIDEO_TIMING_1920X1080P_25000,      /* 33:1920x1080p @ 25Hz    No Repetition */
#if defined (DVI_SUPPORT)
    VIDEO_TIMING_1920X1080P_29980,      /* 34:1920x1080p @ 29.98Hz No Repetition */
#endif
    VIDEO_TIMING_1920X1080P_30000,      /* 34:1920x1080p @ 30Hz    No Repetition */
#if defined (DVI_SUPPORT)
    VIDEO_TIMING_2880X480P_59940,       /* 35:2880x480p @ 59.94Hz  pixel sent 1, 2 or 4 times */
    VIDEO_TIMING_2880X480P_60000,       /* 35:2880x480p @ 60Hz     pixel sent 1, 2 or 4 times */
    VIDEO_TIMING_2880X576P_50000,       /* 37:2880x576p @ 50Hz     pixel sent 1, 2 or 4 times*/
#endif
    VIDEO_TIMING_MAX
}DRV_HDMI_VIDEO_TIMING_E;

enum
{
    HDMI_CALLBACK_NULL,
    HDMI_CALLBACK_USER,
    HDMI_CALLBACK_KERNEL
};

typedef struct
{
    HI_U32                      VidIdCode;
    DRV_HDMI_VIDEO_TIMING_E     Mode;
    HI_U32                      FrameRate;
    HI_U32                      Active_X;
    HI_U32                      Active_Y;
    HI_U32                      Active_W;
    HI_U32                      Active_H;
    VIDEO_SAMPLE_TYPE_E  ScanType;
    HI_UNF_ASPECT_RATIO_E       AspectRatio;
    HI_U32                      PixelRepetition;
}hdmi_VideoIdentification_t;


typedef struct {
    HI_U32 u32Index;
    HI_UNF_ENC_FMT_E  enUnfFmt;
    HI_UNF_HDMI_DEEP_COLOR_E enDeepColor;
    HI_U32 u32SscAmptd;
    HI_U32 u32SscFreq;
}HDMI_SSC_INFO_S;


static hdmi_VideoIdentification_t  VideoCodes[] =
{
    /* {Video Identification Code, Timing Mode, x, y, w, h, Frame Rate, Scan Type, Aspect Ratio, Pixel Repetition} */
    {0,  VIDEO_TIMING_UNKNOWN,              0, 0, 0,    0,    0, VIDEO_SAMPLE_TYPE_UNKNOWN,      HI_UNF_ASPECT_RATIO_UNKNOWN, 0},
    {1,  VIDEO_TIMING_640X480P_59940,   59940, 0, 0,  640,  480, VIDEO_SAMPLE_TYPE_PROGRESSIVE,  HI_UNF_ASPECT_RATIO_4TO3,  0},
    {1,  VIDEO_TIMING_640X480P_60000,   60000, 0, 0,  640,  480, VIDEO_SAMPLE_TYPE_PROGRESSIVE,  HI_UNF_ASPECT_RATIO_4TO3,  0},
#if defined (DVI_SUPPORT)
    {2,  VIDEO_TIMING_720X480P_59940,   59940, 0, 0,  720,  480, VIDEO_SAMPLE_TYPE_PROGRESSIVE,  HI_UNF_ASPECT_RATIO_4TO3,  0},
#endif
    {2,  VIDEO_TIMING_720X480P_60000,   60000, 0, 0,  720,  480, VIDEO_SAMPLE_TYPE_PROGRESSIVE,  HI_UNF_ASPECT_RATIO_4TO3,  0},
#if defined (DVI_SUPPORT)
    {4,  VIDEO_TIMING_1280X720P_59940,  59940, 0, 0, 1280,  720, VIDEO_SAMPLE_TYPE_PROGRESSIVE,  HI_UNF_ASPECT_RATIO_16TO9,  0},
#endif
    {4,  VIDEO_TIMING_1280X720P_60000,  60000, 0, 0, 1280,  720, VIDEO_SAMPLE_TYPE_PROGRESSIVE,  HI_UNF_ASPECT_RATIO_16TO9, 0},
    {5,  VIDEO_TIMING_1920X1080I_60000, 60000, 0, 0, 1920, 1080, VIDEO_SAMPLE_TYPE_INTERLACE,    HI_UNF_ASPECT_RATIO_16TO9, 0},
#if defined (DVI_SUPPORT)
    {5,  VIDEO_TIMING_1920X1080I_59940, 59940, 0, 0, 1920, 1080, VIDEO_SAMPLE_TYPE_INTERLACE,    HI_UNF_ASPECT_RATIO_16TO9, 0},
    {6,  VIDEO_TIMING_720X480I_59940,   59940, 0, 0,  720,  480, VIDEO_SAMPLE_TYPE_INTERLACE,    HI_UNF_ASPECT_RATIO_4TO3, 1},
#endif
    {6,  VIDEO_TIMING_720X480I_60000,   60000, 0, 0,  720,  480, VIDEO_SAMPLE_TYPE_INTERLACE,    HI_UNF_ASPECT_RATIO_4TO3, 1},
#if defined (DVI_SUPPORT)
    {8,  VIDEO_TIMING_720X240P_59940,   59940, 0, 0,  720,  240, VIDEO_SAMPLE_TYPE_PROGRESSIVE,  HI_UNF_ASPECT_RATIO_UNKNOWN/*?*/, 1},
    {8,  VIDEO_TIMING_720X240P_60000,   60000, 0, 0,  720,  240, VIDEO_SAMPLE_TYPE_PROGRESSIVE,  HI_UNF_ASPECT_RATIO_UNKNOWN/*?*/,  1},
    {10, VIDEO_TIMING_2880X480I_59940,  59940, 0, 0, 2280,  480, VIDEO_SAMPLE_TYPE_INTERLACE,    HI_UNF_ASPECT_RATIO_UNKNOWN/*?*/,  1/*1 to 10 times*/},
    {10, VIDEO_TIMING_2880X480I_60000,  60000, 0, 0, 2280,  480, VIDEO_SAMPLE_TYPE_INTERLACE,    HI_UNF_ASPECT_RATIO_UNKNOWN/*?*/, 1/*1 to 10 times*/},
    {12, VIDEO_TIMING_2880X240P_59940,  59940, 0, 0, 2280,  240, VIDEO_SAMPLE_TYPE_PROGRESSIVE,  HI_UNF_ASPECT_RATIO_UNKNOWN/*?*/, 1/*1 to 10 times*/},
    {12, VIDEO_TIMING_2880X240P_60000,  60000, 0, 0, 2280,  240, VIDEO_SAMPLE_TYPE_PROGRESSIVE,  HI_UNF_ASPECT_RATIO_UNKNOWN/*?*/, 1/*1 to 10 times*/},
    {14, VIDEO_TIMING_1440X480P_59940,  59940, 0, 0, 1440,  480, VIDEO_SAMPLE_TYPE_PROGRESSIVE,  HI_UNF_ASPECT_RATIO_UNKNOWN/*?*/, 1/*1 to 2 times*/},
    {14, VIDEO_TIMING_1440X480P_60000,  60000, 0, 0, 1440,  480, VIDEO_SAMPLE_TYPE_PROGRESSIVE,  HI_UNF_ASPECT_RATIO_UNKNOWN/*?*/,  1/*1 to 2 times*/},
    {16, VIDEO_TIMING_1920X1080P_59940, 59940, 0, 0, 1920, 1080, VIDEO_SAMPLE_TYPE_PROGRESSIVE,  HI_UNF_ASPECT_RATIO_16TO9, 0},
#endif
    {16, VIDEO_TIMING_1920X1080P_60000, 60000, 0, 0, 1920, 1080, VIDEO_SAMPLE_TYPE_PROGRESSIVE,  HI_UNF_ASPECT_RATIO_16TO9, 0},
    {17, VIDEO_TIMING_720X576P_50000,   50000, 0, 0,  720,  576, VIDEO_SAMPLE_TYPE_PROGRESSIVE,  HI_UNF_ASPECT_RATIO_4TO3, 0},
    {19, VIDEO_TIMING_1280X720P_50000,  50000, 0, 0, 1280,  720, VIDEO_SAMPLE_TYPE_PROGRESSIVE,  HI_UNF_ASPECT_RATIO_16TO9, 0},
    {20, VIDEO_TIMING_1920X1080I_50000, 50000, 0, 0, 1920, 1080, VIDEO_SAMPLE_TYPE_INTERLACE,    HI_UNF_ASPECT_RATIO_16TO9, 0},
    {21, VIDEO_TIMING_720X576I_50000,   50000, 0, 0,  720,  576, VIDEO_SAMPLE_TYPE_INTERLACE,    HI_UNF_ASPECT_RATIO_4TO3,  1},
#if defined (DVI_SUPPORT)
    {23, VIDEO_TIMING_720X288P_50000,   50000, 0, 0,  720,  288, VIDEO_SAMPLE_TYPE_PROGRESSIVE,  HI_UNF_ASPECT_RATIO_UNKNOWN/*?*/, 1},
    {25, VIDEO_TIMING_2880X576I_50000,  50000, 0, 0, 2880,  576, VIDEO_SAMPLE_TYPE_INTERLACE,    HI_UNF_ASPECT_RATIO_UNKNOWN/*?*/, 1/*1 to 10 times*/},
    {27, VIDEO_TIMING_2880X288P_50000,  50000, 0, 0, 2880,  288, VIDEO_SAMPLE_TYPE_PROGRESSIVE,  HI_UNF_ASPECT_RATIO_UNKNOWN/*?*/, 1/*1 to 10 times*/},
    {29, VIDEO_TIMING_1440X576P_50000,  50000, 0, 0, 1440,  576, VIDEO_SAMPLE_TYPE_PROGRESSIVE,  HI_UNF_ASPECT_RATIO_UNKNOWN/*?*/, 1/*1 to 2 times*/},
#endif
    {31, VIDEO_TIMING_1920X1080P_50000, 50000, 0, 0, 1920, 1080, VIDEO_SAMPLE_TYPE_PROGRESSIVE,  HI_UNF_ASPECT_RATIO_16TO9, 0},
#if defined (DVI_SUPPORT)
    {32, VIDEO_TIMING_1920X1080P_23980, 23980, 0, 0, 1920, 1080, VIDEO_SAMPLE_TYPE_PROGRESSIVE,  HI_UNF_ASPECT_RATIO_16TO9, 0},
#endif
    {32, VIDEO_TIMING_1920X1080P_24000, 24000, 0, 0, 1920, 1080, VIDEO_SAMPLE_TYPE_PROGRESSIVE,  HI_UNF_ASPECT_RATIO_16TO9, 0},
    {33, VIDEO_TIMING_1920X1080P_25000, 25000, 0, 0, 1920, 1080, VIDEO_SAMPLE_TYPE_PROGRESSIVE,  HI_UNF_ASPECT_RATIO_16TO9, 0},
#if defined (DVI_SUPPORT)
    {34, VIDEO_TIMING_1920X1080P_29980, 29980, 0, 0, 1920, 1080, VIDEO_SAMPLE_TYPE_PROGRESSIVE,  HI_UNF_ASPECT_RATIO_16TO9, 0},
#endif
    {34, VIDEO_TIMING_1920X1080P_30000, 30000, 0, 0, 1920, 1080, VIDEO_SAMPLE_TYPE_PROGRESSIVE,  HI_UNF_ASPECT_RATIO_16TO9, 0},
#if defined (DVI_SUPPORT)
    {35, VIDEO_TIMING_2880X480P_59940,  59940, 0, 0, 2280,  480, VIDEO_SAMPLE_TYPE_PROGRESSIVE,  HI_UNF_ASPECT_RATIO_UNKNOWN/*?*/, 0/*1, 2 or 4 times*/},
    {35, VIDEO_TIMING_2880X480P_60000,  60000, 0, 0, 2280,  480, VIDEO_SAMPLE_TYPE_PROGRESSIVE,  HI_UNF_ASPECT_RATIO_UNKNOWN/*?*/, 0/*1, 2 or 4 times*/},
    {37, VIDEO_TIMING_2880X576P_50000,  50000, 0, 0, 2280,  576, VIDEO_SAMPLE_TYPE_PROGRESSIVE,  HI_UNF_ASPECT_RATIO_UNKNOWN/*?*/, 0/*1, 2 or 4 times*/},
#endif
};


static HDMI_SSC_INFO_S s_SSCInfoTables[] = 
{
    /* index, format, deepcolor, sscAmtpd, sscFreq(k) */
    {0,  HI_UNF_ENC_FMT_BUTT,     HI_UNF_HDMI_DEEP_COLOR_BUTT,  800,  45},  
    {1,  HI_UNF_ENC_FMT_720P_50,  HI_UNF_HDMI_DEEP_COLOR_24BIT, 3500, 45},
    {2,  HI_UNF_ENC_FMT_720P_60,  HI_UNF_HDMI_DEEP_COLOR_24BIT, 3500, 45},
    {3,  HI_UNF_ENC_FMT_1080i_50, HI_UNF_HDMI_DEEP_COLOR_24BIT, 3500, 45},
    {4,  HI_UNF_ENC_FMT_1080i_60, HI_UNF_HDMI_DEEP_COLOR_24BIT, 3500, 45},
    {5,  HI_UNF_ENC_FMT_1080P_24, HI_UNF_HDMI_DEEP_COLOR_24BIT, 3500, 45},
    {6,  HI_UNF_ENC_FMT_1080P_25, HI_UNF_HDMI_DEEP_COLOR_24BIT, 3500, 45},
    {7,  HI_UNF_ENC_FMT_1080P_30, HI_UNF_HDMI_DEEP_COLOR_24BIT, 3500, 45},
    {8,  HI_UNF_ENC_FMT_1080P_50, HI_UNF_HDMI_DEEP_COLOR_24BIT, 1500, 45},
    {9,  HI_UNF_ENC_FMT_1080P_60, HI_UNF_HDMI_DEEP_COLOR_24BIT, 1500, 45},

    {10, HI_UNF_ENC_FMT_720P_50,  HI_UNF_HDMI_DEEP_COLOR_30BIT, 2500, 45},
    {11, HI_UNF_ENC_FMT_720P_60,  HI_UNF_HDMI_DEEP_COLOR_30BIT, 2500, 45},
    {12, HI_UNF_ENC_FMT_1080i_50, HI_UNF_HDMI_DEEP_COLOR_30BIT, 2500, 45},
    {13, HI_UNF_ENC_FMT_1080i_60, HI_UNF_HDMI_DEEP_COLOR_30BIT, 2500, 45},
    {14, HI_UNF_ENC_FMT_1080P_24, HI_UNF_HDMI_DEEP_COLOR_30BIT, 2500, 45},
    {15, HI_UNF_ENC_FMT_1080P_25, HI_UNF_HDMI_DEEP_COLOR_30BIT, 2500, 45},
    {16, HI_UNF_ENC_FMT_1080P_30, HI_UNF_HDMI_DEEP_COLOR_30BIT, 2500, 45},
    {17, HI_UNF_ENC_FMT_1080P_50, HI_UNF_HDMI_DEEP_COLOR_30BIT, 1000, 45},
    {18, HI_UNF_ENC_FMT_1080P_60, HI_UNF_HDMI_DEEP_COLOR_30BIT, 1000, 45},
 
    {19, HI_UNF_ENC_FMT_720P_50,  HI_UNF_HDMI_DEEP_COLOR_36BIT, 2000, 45},
    {20, HI_UNF_ENC_FMT_720P_60,  HI_UNF_HDMI_DEEP_COLOR_36BIT, 2000, 45},
    {21, HI_UNF_ENC_FMT_1080i_50, HI_UNF_HDMI_DEEP_COLOR_36BIT, 2000, 45},
    {22, HI_UNF_ENC_FMT_1080i_60, HI_UNF_HDMI_DEEP_COLOR_36BIT, 2000, 45},
    {23, HI_UNF_ENC_FMT_1080P_24, HI_UNF_HDMI_DEEP_COLOR_36BIT, 2000, 45},
    {24, HI_UNF_ENC_FMT_1080P_25, HI_UNF_HDMI_DEEP_COLOR_36BIT, 2000, 45},
    {25, HI_UNF_ENC_FMT_1080P_30, HI_UNF_HDMI_DEEP_COLOR_36BIT, 2000, 45},
    {26, HI_UNF_ENC_FMT_1080P_50, HI_UNF_HDMI_DEEP_COLOR_36BIT, 800,  45},
    {27, HI_UNF_ENC_FMT_1080P_60, HI_UNF_HDMI_DEEP_COLOR_36BIT, 800,  45},
};


#define HDMI_CHECK_NULL_PTR(ptr)  do{                         \
    if (NULL == (ptr))                                    \
    {                                                     \
        return HI_ERR_HDMI_NUL_PTR;                       \
    }                                                     \
}while(0)

#define HDMI_CHECK_ID(l_enHdmi)  do{                          \
    if ((l_enHdmi) >= HI_UNF_HDMI_ID_BUTT)                \
    {                                                     \
        COM_INFO("enHdmi %d is invalid.\n", l_enHdmi); \
        return HI_ERR_HDMI_INVALID_PARA;                  \
    }                                                     \
}while(0)

#define HDMI_CheckChnOpen(l_HdmiID) do{                       \
    if (!DRV_Get_IsChnOpened(l_HdmiID))      \
    {                                                     \
        COM_INFO("enHdmi %d is NOT open.\n", l_HdmiID);\
        return HI_ERR_HDMI_DEV_NOT_OPEN;                  \
    }                                                     \
}while(0)

static HI_U32 hdmi_Mutex_Event_Count = 0;
HI_DECLARE_MUTEX(g_HDMIEventMutex);
#define HDMI_EVENT_LOCK()                                     \
    do{                                                           \
        hdmi_Mutex_Event_Count ++;                                \
        /*HI_INFO_HDMI("hdmi_Mutex_Event_Count:%d\n", hdmi_Mutex_Count);*/  \
        if (down_interruptible(&g_HDMIEventMutex))                \
        {}                                                         \
    }while(0)                                                     \

#define HDMI_EVENT_UNLOCK()                                   \
    do{                                                           \
        hdmi_Mutex_Event_Count --;                                \
        /*HI_INFO_HDMI("hdmi_Mutex_Event_Count:%d\n", hdmi_Mutex_Count); */ \
        up(&g_HDMIEventMutex);                                    \
    }while(0)                                                     \


HI_DECLARE_MUTEX(g_HDMIAttrMutex);
#define HDMI_ATTR_LOCK()                                     \
    do{                                                           \
        if (down_interruptible(&g_HDMIAttrMutex))                \
        ;                                                         \
    }while(0)                                                     \

#define HDMI_ATTR_UNLOCK()                                   \
    do{                                                           \
        up(&g_HDMIAttrMutex);                                     \
    }while(0)                                                     \


static HI_U32 hdmi_Create_AVI_Infoframe(HI_UNF_HDMI_AVI_INFOFRAME_VER2_S *punAVIInfoFrame, HI_U8 *pu8AviInfoFrame);
static HI_U32 hdmi_Create_Audio_Infoframe(HI_UNF_HDMI_AUD_INFOFRAME_VER1_S *punAUDInfoFrame, HI_U8 *pu8AudioInfoFrame);
//static HI_U32 hdmi_SetAttr(HI_UNF_HDMI_ID_E enHdmi, HDMI_ATTR_S *pstHDMIAttr, HI_BOOL UpdateFlag);
static HI_U32 hdmi_SetInfoFrame(HI_UNF_HDMI_ID_E enHdmi, HI_UNF_HDMI_INFOFRAME_S *pstInfoFrame);
static HI_U32 hdmi_GetInfoFrame(HI_UNF_HDMI_ID_E enHdmi, HI_UNF_HDMI_INFOFRAME_TYPE_E enInfoFrameType, HI_UNF_HDMI_INFOFRAME_S *pstInfoFrame);
static HI_U32 hdmi_AdjustAVIInfoFrame(HI_UNF_HDMI_ID_E enHdmi);
static HI_U32 hdmi_AdjustVSDBInfoFrame(HI_UNF_HDMI_ID_E enHdmi);
static HI_U32 hdmi_AdjustAUDInfoFrame(HI_UNF_HDMI_ID_E enHdmi);
static HI_VOID hdmi_SetAndroidState(HI_S32 PlugState);



static void hdmi_ProcEvent(HI_UNF_HDMI_EVENT_TYPE_E event,HI_U32 procID);

static HI_U32 g_HDMIWaitFlag[MAX_PROCESS_NUM];
static wait_queue_head_t g_astHDMIWait;

//One Proccess can only init/open one HDMI Instance!
HI_U32 g_HDMIKernelInitNum = 0; //Kernel HDMI Init Num
static HI_U32 g_HDMIUserInitNum   = 0; //User HDMI Init Num
static HI_U32 g_HDMIOpenNum       = 0; //HDMI Open Num
static HI_U32 g_UserCallbackFlag  = HDMI_CALLBACK_NULL;
//static HI_U32 g_UCallbackAddr     = 0; //save callback pointer Address

#ifdef HDMI_WORKQUEUE_SUPPORT
struct workqueue_struct *hdmi_event_queue;
DRV_HDMI_work_event hdmi_event_struct;
#endif

HI_U32 unStableTimes = 0;

extern unsigned int suspend_flag;

HI_S32 Hdmi_KThread_Timer(void* pParm)
{

    pParm = pParm;//ignore compire warnning

    while ( 1 )
    {
        if (kthread_should_stop())
        {
            break;
        }

        if(!siiIsTClockStable() && (!DRV_Get_IsThreadStoped()) && !SI_IsHDMIResetting())
        {
            unStableTimes++;
        }

        if (!DRV_Get_IsChnOpened(HI_UNF_HDMI_ID_0) || DRV_Get_IsThreadStoped() || SI_IsHDMIResetting() || suspend_flag)
        {
            //msleep(50);
            msleep(10);
            continue;
        }

#ifndef __HDMI_INTERRUPT__
        (HI_VOID)SI_TimerHandler();
#endif

        msleep(90);
    }

    return HI_SUCCESS;
}

#if defined (CEC_SUPPORT)
HI_S32 Hdmi_KThread_CEC(void* pParm)
{
    pParm = pParm;

    while ( 1 )
    {
        if (kthread_should_stop())
            break;

        /* HDMI do not start, Just sleep */
        if (!DRV_Get_IsCECEnable(HI_UNF_HDMI_ID_0))
        {
            msleep(100);
            continue;
        }

        if (!DRV_Get_IsCECStart(HI_UNF_HDMI_ID_0))
        {
            HI_U32 u32Status = 0, index;
            HI_UNF_HDMI_SINK_CAPABILITY_S *pSinkCap = DRV_Get_SinkCap(HI_UNF_HDMI_ID_0);
            HI_UNF_HDMI_CEC_STATUS_S     *pstCECStatus;
            HDMI_CHN_ATTR_S *pstChnAttr = DRV_Get_ChnAttr();

            /* Only Check CEC 5 time */
            if(pstChnAttr[HI_UNF_HDMI_ID_0].u8CECCheckCount < 10)
            {
                pstChnAttr[HI_UNF_HDMI_ID_0].u8CECCheckCount ++;
            }
            else
            {
                /* NO CEC Response, Just sleep */
                msleep(100);
                continue;
            }

            /*We need to do AutoPing */
            SI_CEC_AudioPing(&u32Status);

            if(0x01 == (u32Status & 0x01))
            {
                //Build up CEC Status!
                if(!DRV_Get_IsValidSinkCap(HI_UNF_HDMI_ID_0))
                    continue;

                //Physical Address
                pstCECStatus = DRV_Get_CecStatus(HI_UNF_HDMI_ID_0);

                if(!pSinkCap->u8PhyAddr_A)
                {
                    continue; //Bad CEC Phaycail Address
                }

                pstCECStatus->u8PhysicalAddr[0] = pSinkCap->u8PhyAddr_A;
                pstCECStatus->u8PhysicalAddr[1] = pSinkCap->u8PhyAddr_B;
                pstCECStatus->u8PhysicalAddr[2] = pSinkCap->u8PhyAddr_C;
                pstCECStatus->u8PhysicalAddr[3] = pSinkCap->u8PhyAddr_D;

                //CEC Network
                for(index = 0; index < HI_UNF_CEC_LOGICALADD_BUTT; index ++)
                {
                    if((u32Status & (1 << index)) != 0)
                    {
                        pstCECStatus->u8Network[index] = HI_TRUE;
                        CEC_INFO("cec ping logAddr[0x%02x] Ack \n",index);
                    }
                    else
                    {
                        CEC_INFO("cec ping logAddr[0x%02x] No Ack \n",index);
                    }
                }

                //Logical Address
                if(pstCECStatus->u8Network[HI_UNF_CEC_LOGICALADD_TUNER_1] == HI_TRUE)            //bit3
                {
                    if(pstCECStatus->u8Network[HI_UNF_CEC_LOGICALADD_TUNER_2] == HI_TRUE)        //bit6
                    {
                        if(pstCECStatus->u8Network[HI_UNF_CEC_LOGICALADD_TUNER_3] == HI_TRUE)    //bit7
                        {
                            if(pstCECStatus->u8Network[HI_UNF_CEC_LOGICALADD_TUNER_4] == HI_TRUE)//bit10
                                pstCECStatus->u8LogicalAddr = 0x0f;//Brocast Address!
                            else
                                pstCECStatus->u8LogicalAddr = HI_UNF_CEC_LOGICALADD_TUNER_4;
                        }
                        else
                        {
                            pstCECStatus->u8LogicalAddr = HI_UNF_CEC_LOGICALADD_TUNER_3;
                        }
                    }
                    else
                    {
                        pstCECStatus->u8LogicalAddr = HI_UNF_CEC_LOGICALADD_TUNER_2;
                    }
                }
                else
                {
                    pstCECStatus->u8LogicalAddr = HI_UNF_CEC_LOGICALADD_TUNER_1;
                }

                pstCECStatus->bEnable =  HI_TRUE;
                CEC_INFO("CEC is build up *****\n");

                SI_CEC_Open(pstCECStatus->u8LogicalAddr);
                //Should send out Brocast messsage of <Report Physical Address> !
                {
                    HI_UNF_HDMI_CEC_CMD_S CECCmd = {0};

                    CECCmd.u8Opcode = CEC_OPCODE_REPORT_PHYSICAL_ADDRESS;
                    CECCmd.enSrcAdd = pstCECStatus->u8LogicalAddr;
                    CECCmd.enDstAdd = HI_UNF_CEC_LOGICALADD_BROADCAST;
                    CECCmd.unOperand.stRawData.u8Length  = 3;
                    CECCmd.unOperand.stRawData.u8Data[0] = ((pstCECStatus->u8PhysicalAddr[0] << 4) & 0xf0) | (pstCECStatus->u8PhysicalAddr[1] & 0x0f); // [Physical Address(A.B.C.D):A B]
                    CECCmd.unOperand.stRawData.u8Data[1] = ((pstCECStatus->u8PhysicalAddr[2] << 4) & 0xf0) | (pstCECStatus->u8PhysicalAddr[3] & 0x0f) ; // [Physical Address(A.B.C.D):C D]
                    CECCmd.unOperand.stRawData.u8Data[2] = pstCECStatus->u8LogicalAddr; // [Physical Address(A.B.C.D):C D]
                    SI_CEC_SendCommand(&CECCmd);
                }
                //Should send out Brocast message of <Vendor Device ID>!
                DRV_Set_CECStart(HI_UNF_HDMI_ID_0,HI_TRUE);
                CEC_INFO("\n-------CEC Started-------\n");
            }

            msleep(100);
            continue;
        }
        else
        {
            SI_CEC_Event_Handler();
            msleep(50);
        }

        msleep(100);
    }
    return HI_SUCCESS;
}

#endif

static hdmi_VideoIdentification_t * hdmi_GetVideoCode(HI_UNF_ENC_FMT_E enTimingMode)
{
    HI_U32 Index, VideoTimingMode;

    
    enTimingMode = DRV_N_Pa_Adjust(enTimingMode);

    switch (enTimingMode)
    {
        case HI_UNF_ENC_FMT_1080P_60:
            VideoTimingMode = VIDEO_TIMING_1920X1080P_60000;
            break;
        case HI_UNF_ENC_FMT_1080P_50:
            VideoTimingMode = VIDEO_TIMING_1920X1080P_50000;
            break;
        case HI_UNF_ENC_FMT_1080P_30:
            VideoTimingMode = VIDEO_TIMING_1920X1080P_30000;
            break;
        case HI_UNF_ENC_FMT_1080P_25:
            VideoTimingMode = VIDEO_TIMING_1920X1080P_25000;
            break;
        case HI_UNF_ENC_FMT_1080P_24:
            VideoTimingMode = VIDEO_TIMING_1920X1080P_24000;
            break;
        case HI_UNF_ENC_FMT_1080i_60:
            VideoTimingMode = VIDEO_TIMING_1920X1080I_60000;
            break;
        case HI_UNF_ENC_FMT_1080i_50:
            VideoTimingMode = VIDEO_TIMING_1920X1080I_50000;
            break;
        case HI_UNF_ENC_FMT_720P_60:
            VideoTimingMode = VIDEO_TIMING_1280X720P_60000;
            break;
        case HI_UNF_ENC_FMT_720P_50:
            VideoTimingMode = VIDEO_TIMING_1280X720P_50000;
            break;
        case HI_UNF_ENC_FMT_576P_50:
            VideoTimingMode = VIDEO_TIMING_720X576P_50000;
            break;
        case HI_UNF_ENC_FMT_480P_60:
            VideoTimingMode = VIDEO_TIMING_720X480P_60000;
            break;
        case HI_UNF_ENC_FMT_PAL:               
            VideoTimingMode = VIDEO_TIMING_720X576I_50000;
            break;
        case HI_UNF_ENC_FMT_NTSC:
            VideoTimingMode = VIDEO_TIMING_720X480I_60000;
            break;
        case HI_UNF_ENC_FMT_861D_640X480_60:
            VideoTimingMode = VIDEO_TIMING_640X480P_60000;
            break;
        default:
            COM_INFO("Non CEA video timing:%d\n", enTimingMode);
            // 4k2k && vesa
            VideoTimingMode = VIDEO_TIMING_UNKNOWN;
            break;
    }

    for (Index=0; Index < VIDEO_TIMING_MAX; Index ++)
    {
        if (VideoCodes[Index].Mode == VideoTimingMode)
            break;
    }

    if (Index >= VIDEO_TIMING_MAX)
    {
        Index = 0;
    }

    COM_INFO("Get Video Code index:%d, Mode:0x%x, VidIdCode:0x%x\n", Index, VideoCodes[Index].Mode, VideoCodes[Index].VidIdCode);
    return(&(VideoCodes[Index]));
}

static HI_VOID hdmi_SetAndroidState(HI_S32 PlugState)
{
#ifdef ANDROID_SUPPORT
    if(g_switchOk == HI_TRUE)
    {
        switch_set_state(&hdmi_tx_sdev, PlugState);
    }
#endif
}

/*we may delete this func , because all the complex-use  is controlled by excel table in uboot-stage.*/
HI_VOID HDMI_PinConfig(HI_VOID)
{
    return ;
}


static HI_U32 hdmi_Get_FmtVIC(HI_UNF_ENC_FMT_E enEncFmt)
{
    HI_U32 u32VIC = 0;
    
    enEncFmt =  DRV_N_Pa_Adjust(enEncFmt);
    
    switch(enEncFmt)
    {
        case HI_UNF_ENC_FMT_1080P_60:
            u32VIC = 0x10;
            break;
        case HI_UNF_ENC_FMT_1080P_50:
            u32VIC = 0x1f;
            break;
        case HI_UNF_ENC_FMT_1080P_30:
            u32VIC = 0x22;
            break;
        case HI_UNF_ENC_FMT_1080P_25:
            u32VIC = 0x21;
            break;
        case HI_UNF_ENC_FMT_1080P_24:
            u32VIC = 0x20;
            break;
        case HI_UNF_ENC_FMT_1080i_60:
            u32VIC = 0x05;
            break;
        case HI_UNF_ENC_FMT_1080i_50:
            u32VIC = 0x14;
            break;
        case HI_UNF_ENC_FMT_720P_60:
            u32VIC = 0x04;
            break;
        case HI_UNF_ENC_FMT_720P_50:
            u32VIC = 0x13;
            break;
        case HI_UNF_ENC_FMT_576P_50:
            u32VIC = 0x11;
            break;
        case HI_UNF_ENC_FMT_480P_60:
            u32VIC = 0x02;
            break;
        case HI_UNF_ENC_FMT_PAL:              
        case HI_UNF_ENC_FMT_PAL_N:              
        case HI_UNF_ENC_FMT_PAL_Nc:              
        case HI_UNF_ENC_FMT_SECAM_SIN:              
        case HI_UNF_ENC_FMT_SECAM_COS:              
             u32VIC = 0x15;
            break;
        case HI_UNF_ENC_FMT_NTSC:
        case HI_UNF_ENC_FMT_NTSC_J:              
        case HI_UNF_ENC_FMT_NTSC_PAL_M:              
            u32VIC = 0x06;
            break;
        default:
            u32VIC = 0x00;
            break;
    }
    COM_INFO("hdmi vic:0x%x\n",u32VIC);
    return u32VIC;
}

static HI_U8 hdmi_GetEmiInfoIndex(HI_UNF_ENC_FMT_E fmt, HI_UNF_HDMI_DEEP_COLOR_E enDeepColorMode)
{
    HI_U8 i = 0;
    HI_U8 u8Size = 0;
    HI_U8 u8Index = 0;
    HI_UNF_HDMI_DEEP_COLOR_E enDeepclr = HI_UNF_HDMI_DEEP_COLOR_24BIT;

    if (HI_UNF_HDMI_DEEP_COLOR_OFF == enDeepColorMode)
    {
        enDeepclr = HI_UNF_HDMI_DEEP_COLOR_24BIT;
    }
    else
    {
        enDeepclr = enDeepColorMode;
    }

    u8Size = sizeof(s_SSCInfoTables) / sizeof(HDMI_SSC_INFO_S);
    for (i = 0; i < u8Size; i++)
    {
        if ((fmt == s_SSCInfoTables[i].enUnfFmt) && (enDeepclr == s_SSCInfoTables[i].enDeepColor))
        {
            u8Index = i;
        }
    }

    return u8Index;
}


static HI_U32 g_Event_Count[MAX_PROCESS_NUM];
#define MIX_EVENT_COUNT  1

static HI_U32 hdmi_AppAttrChanged(HI_UNF_HDMI_ID_E enHdmi, HDMI_APP_ATTR_S *pstAttr1, HDMI_APP_ATTR_S *pstAttr2, HI_BOOL *pUpdate);

//#ifdef TAILOR_330    /*libo@201509*/

extern HI_U32 g_u32ProcHandle ;


HI_U32 DRV_HDMI_Init(HI_U32 FromUserSpace)
{
    HI_U8                ucChipInf[3] = {0};
    HI_U32               u32Vic = 0;
    HI_BOOL              bOpenAlready = HI_FALSE;          //Judge whether HDMI is setup already
    HI_U32               u32Ret = HI_SUCCESS;
    HDMI_COMM_ATTR_S    *pstCommAttr = DRV_Get_CommAttr();
    HDMI_CHN_ATTR_S     *pstChnAttr = DRV_Get_ChnAttr();
    DISP_EXPORT_FUNC_S  *disp_func_ops = HI_NULL;
    HI_BOOL              bValidSinkCap = HI_FALSE;

    //reg = ReadByteHDMITXP0(TX_SYS_CTRL1_ADDR);
    COM_INFO("-->%s\n",__FUNCTION__);

    if(DRV_HDMI_GetInitNum(HI_UNF_HDMI_ID_0) == 0)
    {
        /* Need to reset this  param */
        DRV_Set_Mce2App(HI_FALSE);
        DRV_Set_OpenedInBoot(HI_FALSE);
    }

    //HDMI_PinConfig();

    u32Ret = HI_DRV_MODULE_GetFunction(HI_ID_DISP, (HI_VOID**)&disp_func_ops);
     /*if func ops and func ptr is null, then return ;*/
    if((u32Ret != HI_SUCCESS)
       || (NULL == disp_func_ops) 
       || (NULL == disp_func_ops->pfnDispGetFormat))
    {
        COM_INFO("No disp, hdmi init err\n");
        return HI_FAILURE;
    }


    if (0 == (g_HDMIUserInitNum + g_HDMIKernelInitNum))
    {
        DRV_Set_OpenedInBoot(HI_TRUE);
        //Open Already in FastBoot!
    }
    
    if (HI_TRUE == FromUserSpace)
    {
        g_HDMIUserInitNum ++;
    }
    else
    {
        g_HDMIKernelInitNum ++;
    }
    
    COM_INFO("HDMI init(User+Kernel):%d+%d\n",g_HDMIUserInitNum, g_HDMIKernelInitNum);

    if ((2 <= g_HDMIKernelInitNum)||(2 <= g_HDMIUserInitNum))
    {
        COM_WARN("From:HDMI has been inited!<--\n");
        return HI_ERR_HDMI_INIT_ALREADY;
    }

    g_UserCallbackFlag = HDMI_CALLBACK_NULL;

      /* Judge whether it has opened already */
    bOpenAlready = SI_HDMI_Setup_INBoot(&u32Vic);
    COM_INFO("bOpenAlready:%d\n", bOpenAlready);

    if (bOpenAlready == HI_TRUE)
    {
        HI_UNF_ENC_FMT_E enEncFmt = HI_UNF_ENC_FMT_BUTT;

        bValidSinkCap = pstChnAttr->bValidSinkCap;
        if(disp_func_ops && disp_func_ops->pfnDispGetFormat)
        {
            disp_func_ops->pfnDispGetFormat(HI_UNF_DISP_HD0, &enEncFmt);
        }
        else
        {
            COM_WARN("Can't Get disp_func_ops \n");
        }

        if((hdmi_Get_FmtVIC(enEncFmt) == u32Vic) && (enEncFmt < HI_UNF_ENC_FMT_BUTT))
        {
            COM_INFO("Open Already in MCE: %d <--\n",DRV_Get_IsMce2App());
            DRV_Set_Mce2App(HI_TRUE);
            if (2 <= (g_HDMIKernelInitNum + g_HDMIUserInitNum))
            {
                return HI_SUCCESS;   //Open Already in MCE!
            }
        }
    }
    else /* Normal Setup */
    {
        COM_INFO("->HW_ResetHDMI\n");
        SI_HW_ResetHDMITX();
        SI_SW_ResetHDMITX();
#ifdef HDMI_PHY_POWERDOWN_SUPPORT        
        SI_TX_PHY_PowerDown(HI_TRUE);
#endif
    }

#if defined (CEC_SUPPORT)
        /* Enable CEC_SETUP */
    SI_CEC_SetUp();
#endif
    SI_ReadChipInfo(ucChipInf);
    COM_INFO("HDMI Chip Info: Id 0x%02x.0x%02x. Rev %02x\n",
        (int)ucChipInf[0],(int)ucChipInf[1],(int)ucChipInf[2]);

    memset((void *)pstChnAttr, 0, sizeof(HDMI_CHN_ATTR_S) * HI_UNF_HDMI_ID_BUTT);

    //g_HDMIWaitFlag = HI_FALSE;

    //need move to channel Attr??
    memset(g_HDMIWaitFlag,0,sizeof(HI_U32) * MAX_PROCESS_NUM);
    memset(g_Event_Count,0,sizeof(HI_U32) * MAX_PROCESS_NUM);
    DRV_Set_ThreadStop(HI_FALSE);

    COM_INFO("SetDefaultAttr \n");
    DRV_HDMI_SetDefaultAttr();

    init_waitqueue_head(&g_astHDMIWait);
    /* create hdmi task */
    if (pstCommAttr->kThreadTimer == NULL)
    {
        COM_INFO("create Timer task kThreadTimer \n");
        pstCommAttr->kThreadTimer = kthread_create(Hdmi_KThread_Timer, NULL, "HI_HDMI_kThread");
        if (IS_ERR(pstCommAttr->kThreadTimer))
        {
            COM_ERR("start hdmi kernel thread failed.\n");
        }
        else
        {
            wake_up_process(pstCommAttr->kThreadTimer);
        }
    }

#if defined (CEC_SUPPORT)
    if (pstCommAttr->kCECRouter == NULL)
    {
        /* create CEC task */
        pstCommAttr->kCECRouter = kthread_create(Hdmi_KThread_CEC, NULL, "HI_HDMI_kCEC");
        if (IS_ERR(pstCommAttr->kCECRouter))
        {
            COM_ERR("Unable to start hdmi kernel thread.\n");
        }
        else
        {
            wake_up_process(pstCommAttr->kCECRouter);
        }
    }
#endif

    /* Normal init HDMI */
    SI_WriteDefaultConfigToEEPROM();

#ifdef __HDMI_INTERRUPT__
    HDMI_IRQ_Setup();
#endif

    hdmi_SetAndroidState(STATE_PLUG_UNKNOWN);

#ifdef SSC_SUPPORT
    DRV_Set_SSCEnable(HI_UNF_HDMI_ID_0, HI_TRUE);
#else
    DRV_Set_SSCEnable(HI_UNF_HDMI_ID_0, HI_FALSE);
#endif

    DRV_Set_SinkCapValid(HI_UNF_HDMI_ID_0, bValidSinkCap);
    COM_INFO("%s<--\n",__FUNCTION__);
    
    return HI_SUCCESS;
}

HI_U32 DRV_HDMI_DeInit(HI_U32 FromUserSpace)
{
    int ret = 0;
    HI_S32 i;
    HDMI_COMM_ATTR_S *pstCommAttr = DRV_Get_CommAttr();
    
    COM_INFO("-->%s\n",__FUNCTION__);

#ifdef __HDMI_INTERRUPT__
    HDMI_IRQ_Exit();
#endif

    COM_INFO("HDMI Init (User+Kernel):%d+%d\n",g_HDMIUserInitNum, g_HDMIKernelInitNum);
    if (DRV_HDMI_GetInitNum(HI_UNF_HDMI_ID_0) == 0)
    {
        COM_INFO("HDMI has been deInited!\n");
        return HI_SUCCESS;
    }

    if(FromUserSpace == HI_TRUE)
    {
        g_HDMIUserInitNum ? (g_HDMIUserInitNum--) : g_HDMIUserInitNum;
    }
    else
    {
        g_HDMIKernelInitNum ? (g_HDMIKernelInitNum--) : g_HDMIKernelInitNum;
    }

    if(g_HDMIUserInitNum == 0)
    {
        g_UserCallbackFlag = HDMI_CALLBACK_KERNEL;
    }
    //We only do HDMI Deinit when UserLevel Count is 0.
    COM_INFO("init(User+Kernel):%d+%d\n",g_HDMIUserInitNum, g_HDMIKernelInitNum);

    if(DRV_HDMI_GetInitNum(HI_UNF_HDMI_ID_0) != 0)
    {
        COM_INFO("\n ignore DeInit \n");
        return HI_SUCCESS;
    }

    COM_INFO("stop hdmi task\n");

    if (pstCommAttr->kThreadTimer)
    {
        ret = kthread_stop(pstCommAttr->kThreadTimer);
        COM_INFO("end Timer thread. ret = %d\n" , ret);
        pstCommAttr->kThreadTimer = NULL;
    }
#if defined (CEC_SUPPORT)
    if (pstCommAttr->kCECRouter)
    {
        ret = kthread_stop(pstCommAttr->kCECRouter);
        COM_INFO("end CEC thread. ret = %d\n" , ret);
        pstCommAttr->kCECRouter = NULL;
    }
#endif
    for (i = 0; i < HI_UNF_HDMI_ID_BUTT; i++)
    {
        (HI_VOID)DRV_HDMI_Close(i);
    }
    //Disable HDMI IP
    SI_DisableHdmiDevice();
    SI_CloseHdmiDevice();
    //It will power down the whole HDMI IP.
    SI_PoweDownHdmiDevice();

    COM_INFO("s<--%\n",__FUNCTION__);
    return HI_SUCCESS;
}

HI_VOID hdmi_OpenNotify(HI_U32 u32ProcID,HI_UNF_HDMI_EVENT_TYPE_E event)
{
#if defined (CEC_SUPPORT)
    HDMI_CHN_ATTR_S *pstChnAttr = DRV_Get_ChnAttr();
#endif
    COM_INFO("-->%s\n",__FUNCTION__);

    COM_INFO("u32ProcID:%d,event:0x%x\n",u32ProcID,event);
    if (!(DRV_Get_IsChnOpened(HI_UNF_HDMI_ID_0)))
    {
        COM_INFO("HDMI not open<--\n");
        return;
    }

    if ((event == HI_UNF_HDMI_EVENT_HOTPLUG))
    {
        // Enable Interrupts: VSync, Ri check, HotPlug
        SI_EnableInterrupts();
        SI_HPD_SetHPDUserCallbackCount();

        hdmi_SetAndroidState(STATE_HOTPLUGIN);

#if defined (CEC_SUPPORT)
        /* Enable CEC_SETUP */
        SI_CEC_SetUp();
        pstChnAttr[HI_UNF_HDMI_ID_0].u8CECCheckCount = 0;
#endif

    }
    else if (event == HI_UNF_HDMI_EVENT_NO_PLUG)
    {
        if (g_HDMIUserInitNum)
        {
            SI_DisableHdmiDevice();
            DRV_Set_ChnStart(HI_UNF_HDMI_ID_0,HI_FALSE);
#if defined (HDCP_SUPPORT)
            /*Set HDCP Off */
            SI_WriteByteEEPROM(EE_TX_HDCP, 0x00);
#endif
#if defined (CEC_SUPPORT)
            //Close CEC
            SI_CEC_Close();
            DRV_Set_CECStart(HI_UNF_HDMI_ID_0,HI_FALSE);
            memset(&(pstChnAttr[HI_UNF_HDMI_ID_0].stCECStatus), 0, sizeof(HI_UNF_HDMI_CEC_STATUS_S));
#endif
        }
        hdmi_SetAndroidState(STATE_HOTPLUGOUT);
    }
    else
    {
        COM_ERR("Unknow Event:0x%x\n", event);
    }

    hdmi_ProcEvent(event, u32ProcID);

    COM_INFO("%s<--\n",__FUNCTION__);
}

HI_U32 DRV_HDMI_Open(HI_UNF_HDMI_ID_E enHdmi, HDMI_OPEN_S *pOpen, HI_U32 FromUserSpace,HI_U32 u32ProcID)
{
    //HI_U32 Ret;
    HI_BOOL bOpenLastTime = DRV_Get_IsChnOpened(enHdmi);
    HDMI_APP_ATTR_S     *pstAppAttr = DRV_Get_AppAttr(enHdmi);

    COM_INFO("-->%s\n",__FUNCTION__);
    HDMI_CHECK_ID(enHdmi);

    g_HDMIOpenNum ++; //record open num

    /* Need to set this  param */
    DRV_Set_DefaultOutputMode(enHdmi,pOpen->enDefaultMode);

    //set output mode
     COM_INFO("enForceMode:%d\n", DRV_Get_DefaultOutputMode(enHdmi));

    //In Mce or Boot,we setted hdmi mode.so we use Hdmi in reg.
    if(DRV_Get_IsMce2App() || DRV_Get_IsOpenedInBoot())
    {
        if(ReadByteHDMITXP1(AUDP_TXCTRL_ADDR) & BIT_TXHDMI_MODE)
        {
            pstAppAttr->bEnableHdmi = HI_TRUE;
        }
        else
        {
            pstAppAttr->bEnableHdmi = HI_FALSE;
        }
    }
    //In None Mce mode, we use User setting defalut mode defaut mode
    else
    {
        if(HI_UNF_HDMI_FORCE_DVI != DRV_Get_DefaultOutputMode(enHdmi))
        {
            pstAppAttr->bEnableHdmi = HI_TRUE;
        }
        else
        {
            pstAppAttr->bEnableHdmi = HI_FALSE;
        }
    }

    DRV_Set_ChnOpen(enHdmi,HI_TRUE);
    
    COM_INFO("init(User+Kernel):%d+%d\n",g_HDMIUserInitNum, g_HDMIKernelInitNum);

    if (g_HDMIUserInitNum)
    {
        g_UserCallbackFlag = HDMI_CALLBACK_USER;
        
        /* It means we have initalized in Kernel and user */
        //We need to Reset a HotPlug Event to User
        if (HI_TRUE == SI_HPD_Status())
        {            
            COM_INFO("tempOutputState:%d\n", SI_GetHDMIOutputStatus());
           	DelayMS(200);
		    SI_TX_PHY_PowerDown(HI_FALSE);            
            hdmi_OpenNotify(u32ProcID,HI_UNF_HDMI_EVENT_HOTPLUG);
        }
        else if (g_HDMIKernelInitNum > 0)
        {            
		    SI_TX_PHY_PowerDown(HI_TRUE);
            hdmi_OpenNotify(u32ProcID,HI_UNF_HDMI_EVENT_NO_PLUG);
        }
    }
    else if (g_HDMIKernelInitNum)
    {
        g_UserCallbackFlag = HDMI_CALLBACK_KERNEL;
    }

    if((DRV_Get_IsMce2App())
        ||(!bOpenLastTime))
    {
        //// only do it in first time////
        // Enable Interrupts: VSync, Ri check, HotPlug
        WriteByteHDMITXP0( HDMI_INT_ADDR, CLR_MASK);
        WriteByteHDMITXP0( HDMI_INT_MASK_ADDR, CLR_MASK);
    }
    COM_INFO("g_HDMIOpenNum:%d\n",g_HDMIOpenNum);

    COM_INFO("%s<--\n",__FUNCTION__);
    return HI_SUCCESS;
}

HI_U32 DRV_HDMI_Close(HI_UNF_HDMI_ID_E enHdmi)
{    
    COM_INFO("-->%s\n",__FUNCTION__);
    HDMI_CHECK_ID(enHdmi);

    //Stop HDMI IP
    
    g_HDMIOpenNum ? (g_HDMIOpenNum--) : g_HDMIOpenNum;
    
    COM_INFO("g_HDMIOpenNum:%d\n",g_HDMIOpenNum);
    
    if(g_HDMIOpenNum >= 1)
    {
        return HI_SUCCESS;
    }

    if(DRV_Get_IsChnStart(enHdmi))
    {
        SI_SetHdmiVideo(HI_FALSE);
        SI_SetHdmiAudio(HI_FALSE);
        SI_PowerDownHdmiTx();
#if defined (HDCP_SUPPORT)
        /*Set HDCP Off */
        SI_WriteByteEEPROM(EE_TX_HDCP, 0x00);
        msleep(50);
#endif
        DRV_Set_ChnStart(enHdmi,HI_FALSE);
    }
    //Close HDMI
    if (DRV_Get_IsChnOpened(enHdmi))
    {
        DRV_Set_ChnOpen(enHdmi,HI_FALSE);
    }
    //No callback
    g_UserCallbackFlag = HDMI_CALLBACK_NULL;
    //Disable HDMI IP
    SI_DisableHdmiDevice();
    SI_CloseHdmiDevice();

    COM_INFO("%s<--\n",__FUNCTION__);
    return HI_SUCCESS;
}

HI_U32 DRV_HDMI_GetSinkCapability(HI_UNF_HDMI_ID_E enHdmi, HI_UNF_HDMI_SINK_CAPABILITY_S *pstSinkAttr)
{
    COM_INFO("-->%s\n",__FUNCTION__);
    HDMI_CHECK_NULL_PTR(pstSinkAttr);
    HDMI_CHECK_ID(enHdmi);
    HDMI_CheckChnOpen(enHdmi);

    if (HI_SUCCESS != SI_GetHdmiSinkCaps(pstSinkAttr))
    {
        COM_WARN("GetHdmiSinkCaps error.\n");
        return HI_FAILURE;
    }

    COM_INFO("%s<--\n",__FUNCTION__);
    return HI_SUCCESS;
}
static HI_BOOL hdmi_VideoAttrChanged(HI_UNF_HDMI_ID_E enHdmi, HDMI_VIDEO_ATTR_S *pstAttr1, HDMI_VIDEO_ATTR_S *pstAttr2)
{
    HI_BOOL bVUpdate = HI_FALSE;

    /* HDMI has not started, we set this value */
    if (!DRV_Get_IsChnStart(enHdmi))
    {
        bVUpdate = HI_TRUE;
    }
    else if ((pstAttr1->enVideoFmt != pstAttr2->enVideoFmt)
            || (pstAttr1->b3DEnable != pstAttr2->b3DEnable)
            || (pstAttr1->u83DParam != pstAttr2->u83DParam))
    {
        bVUpdate = HI_TRUE;
    }
    else
    {
        bVUpdate = HI_FALSE;
    }

    return bVUpdate;
}


HI_S32 DRV_HDMI_SetVOAttr(HI_UNF_HDMI_ID_E enHdmi,HDMI_VIDEO_ATTR_S *pstHDMIVOAttr,HI_BOOL UpdateFlag)
{
    HI_U32 Ret = HI_SUCCESS;
    HI_U8 ucData       = 0;
    HI_U8 bRxVideoMode = 0;
    HI_U8 bTxVideoMode = 0;
    HI_U8 bVideoMode   = 0;               /* Hdmi Video mode index define in vmtables.c */
    HI_U8 u8Index      = 0;
    HI_U32 u32TmdsClk  = 0;
    HDMI_VIDEO_ATTR_S   *pstVidAttr = DRV_Get_VideoAttr(enHdmi);
    HDMI_APP_ATTR_S     *pstAppAttr = DRV_Get_AppAttr(enHdmi);
    HDMI_PHY_TMDS_CFG_S stPhyTmdsCfg;

    COM_INFO("-->%s\n",__FUNCTION__);

    HDMI_CHECK_ID(enHdmi);
    HDMI_CheckChnOpen(enHdmi);
    HDMI_CHECK_NULL_PTR(pstHDMIVOAttr);

    memset(&stPhyTmdsCfg, 0x0, sizeof(HDMI_PHY_TMDS_CFG_S));

    if (pstAppAttr->bEnableVideo != HI_TRUE)
    {
        COM_ERR("bEnableVideo Must be set to HI_TRUE!\n");
        pstAppAttr->bEnableVideo = HI_TRUE;
    }

    if ((UpdateFlag != HI_TRUE)
        && (HI_TRUE != hdmi_VideoAttrChanged(enHdmi, pstHDMIVOAttr, pstVidAttr)))
    {
        COM_INFO("vo attr no change return <--\n");
        return HI_SUCCESS;
    }
    

    COM_INFO("VUpdate %d \n",UpdateFlag);
    /* Set HDMI InfoFrame Enable flag */
    SI_WriteByteEEPROM(EE_AVIINFO_ENABLE, pstAppAttr->bEnableAviInfoFrame);
    SI_WriteByteEEPROM(EE_SPDINFO_ENABLE, pstAppAttr->bEnableSpdInfoFrame);
    
    pstHDMIVOAttr->enVideoFmt = DRV_N_Pa_Adjust(pstHDMIVOAttr->enVideoFmt);

    memcpy(pstVidAttr, pstHDMIVOAttr, sizeof(HDMI_VIDEO_ATTR_S));

    ucData = 0x00;    // DE(Data Enable generator) disable

    SI_WriteByteEEPROM(EE_TX_DE_ENABLED_ADDR, ucData);
    COM_INFO("IsMce2App = %d, IsOpenedInBoot = %d\n", DRV_Get_IsMce2App(), DRV_Get_IsOpenedInBoot());

    /* Adjust Video Path Param */
    if(!(DRV_Get_IsOpenedInBoot()&&(DRV_Get_IsMce2App())))
    {
        HI_U8 u8VideoPath[4];

        SI_GetVideoPath(u8VideoPath); /* hdmi/txvidp.c, default setting DefaultTXVPath[4] in txvptbl.c  */
        /* inMode[] is defined in hdmi/txvptbl.c */
        COM_INFO("SI_GetVideoPath :0x%02x,0x%02x,0x%02x,0x%02x\n", u8VideoPath[0], u8VideoPath[1], u8VideoPath[2], u8VideoPath[3]);


        if (DRV_Get_IsLCDFmt(pstHDMIVOAttr->enVideoFmt))
        {
            COM_INFO("LCD Format, force to RGB444 into hdmi ip\n");
            DRV_Set_VIDMode(HI_UNF_HDMI_VIDEO_MODE_RGB444);
        }
        else
        {
            COM_INFO("DTV Format, force to YCbCr444 into hdmi ip\n");
            DRV_Set_VIDMode(HI_UNF_HDMI_VIDEO_MODE_YCBCR444);
        }
        
        if(HI_UNF_HDMI_VIDEO_MODE_RGB444 == DRV_Get_VIDMode())
        {
            COM_INFO("HDMI Input: RGB444\n");
            bRxVideoMode = 0;  /* inRGB24[] */
        }
        else if(HI_UNF_HDMI_VIDEO_MODE_YCBCR444 == DRV_Get_VIDMode())
        {
            COM_INFO("HDMI Input: YCBCR444\n");
            bRxVideoMode = 2; /* inYCbCr24[] */
        }
        else //if(HI_UNF_HDMI_VIDEO_MODE_YCBCR422 == DRV_Get_VIDMode())
        {
            COM_INFO("HDMI Input: YCBCR422\n");
            bRxVideoMode = 3; /* inYC24[] */
        }
        
        if(HI_UNF_HDMI_VIDEO_MODE_RGB444 == pstAppAttr->enVidOutMode)
        {
            COM_INFO("\tOutput: RGB444\n");
            bTxVideoMode = 0;
        }
        else if(HI_UNF_HDMI_VIDEO_MODE_YCBCR444 == pstAppAttr->enVidOutMode)
        {
            COM_INFO("\tOutput: YCBCR444\n");
            bTxVideoMode = 1;
        }
        else
        {
            COM_ERR("\toutput: YCbCr444 no support\n");
            bTxVideoMode = 0;
        }
        
        
        u8VideoPath[0] = bRxVideoMode;
        u8VideoPath[1] = bTxVideoMode;
        //u8VideoPath[2]; can use default value form getfunction.
        u8VideoPath[3] =  (HI_U8) pstAppAttr->enDeepColorMode;
   
        SI_BlockWriteEEPROM( 4, EE_TX_VIDEOPATH_ADDR , u8VideoPath);
      //  if(!(DRV_Get_IsOpenedInBoot())&&(DRV_Get_IsMce2App()))
            //  SI_SetHdmiVideo(HI_FALSE);

        /* Write VIDEO MODE INDEX */
        /* Transfer_VideoTimingFromat_to_VModeIndex() is get g_s32VmodeOfUNFFormat[] */
        bVideoMode = Transfer_VideoTimingFromat_to_VModeTablesIndex(DRV_HDMI_Disp2UnfFmt  (pstHDMIVOAttr->enVideoFmt));
        COM_INFO("pstHDMIVOAttr->enVideoFmt%d,bVideoMode:%d\n", pstHDMIVOAttr->enVideoFmt, bVideoMode);
        //bVideoMode = (0 == bVideoMode)? 2 : bVideoMode;
        SI_UpdateTX_656(bVideoMode);
        
        SI_SetIClk( SI_ReadByteEEPROM(EE_TX_ICLK_ADDR) );

        COM_INFO("setting video path u8VideoPath :0x%02x,0x%02x,0x%02x,0x%02x\n", u8VideoPath[0], u8VideoPath[1], u8VideoPath[2], u8VideoPath[3]);
        SI_SetVideoPath(bVideoMode, u8VideoPath);


        /* Hsync/Vsync polarity:Video DE Control Register:VS_POL#, HS_POL# */
        if ((pstHDMIVOAttr->enVideoFmt == HI_UNF_ENC_FMT_576P_50)   ||
            (pstHDMIVOAttr->enVideoFmt == HI_UNF_ENC_FMT_480P_60)   ||
            (pstHDMIVOAttr->enVideoFmt == HI_UNF_ENC_FMT_PAL)       ||                
            (pstHDMIVOAttr->enVideoFmt == HI_UNF_ENC_FMT_NTSC)      ||
            (pstHDMIVOAttr->enVideoFmt == HI_UNF_ENC_FMT_861D_640X480_60))
        {
            SI_TX_InvertSyncPol(HI_TRUE);

            // sd with bt 601 colorspace
            SI_TX_CSC709Select(HI_FALSE);
        }
        else
        {
            SI_TX_InvertSyncPol(HI_FALSE);

            // TV hd & LCD format with bt 709 colorspace
            SI_TX_CSC709Select(HI_TRUE);
        }

        /* Adjust AVI Path Param */
        if ((HI_TRUE != pstAppAttr->bEnableHdmi)
            ||(HI_TRUE != pstAppAttr->bEnableAviInfoFrame))
        {
            COM_INFO("AviInfoFrame = HI_FALSE <--\n");
            SI_DisableInfoFrame(AVI_TYPE);
        }
        
        u32TmdsClk = DRV_Calculate_TMDSCLK(pstHDMIVOAttr->enVideoFmt, pstAppAttr->enDeepColorMode);
        Ret |= SI_TX_PHY_TmdsSet(u32TmdsClk, (HI_U32)pstAppAttr->enDeepColorMode);

        u8Index = Transfer_VideoTimingFromat_to_VModeTablesIndex(pstHDMIVOAttr->enVideoFmt);
        stPhyTmdsCfg.stSSCInfo.u32PixelClk = VModeTables[u8Index].PixClk * 10 ;  //kHz

        u8Index = hdmi_GetEmiInfoIndex(pstHDMIVOAttr->enVideoFmt, pstAppAttr->enDeepColorMode);
        stPhyTmdsCfg.stSSCInfo.bEnable     = (0 == u8Index)? HI_FALSE: DRV_Get_IsSSCEnable(HI_UNF_HDMI_ID_0);
        stPhyTmdsCfg.stSSCInfo.u32SscAmptd = s_SSCInfoTables[u8Index].u32SscAmptd;
        stPhyTmdsCfg.stSSCInfo.u32SscFreq  = s_SSCInfoTables[u8Index].u32SscFreq;
        stPhyTmdsCfg.u32DeepColor          = (HI_U32)pstAppAttr->enDeepColorMode;
        stPhyTmdsCfg.u32TmdsClk            = u32TmdsClk;
        #ifdef CHIP_TYPE_hi3716mv330
        Ret |= SI_TX_PHY_SSCSet(&stPhyTmdsCfg);
        #endif
    }
    COM_INFO("%s<--\n",__FUNCTION__);

    return Ret;
}
static HI_BOOL hdmi_AudioAttrChanged(HI_UNF_HDMI_ID_E enHdmi, HDMI_AUDIO_ATTR_S *pstAttr1, HDMI_AUDIO_ATTR_S *pstAttr2)
{
    HI_BOOL bAUpdate = HI_TRUE;

    /* HDMI Has not started, we set this value */
    if (!DRV_Get_IsChnStart(enHdmi))
    {
       bAUpdate = HI_TRUE;
    }
    /* Same setting, return directly */
    else if ( (pstAttr1->enSoundIntf      == pstAttr2->enSoundIntf)
        && (pstAttr1->bIsMultiChannel     == pstAttr2->bIsMultiChannel)
        && (pstAttr1->enSampleRate        == pstAttr2->enSampleRate)
        && (pstAttr1->u8DownSampleParm    == pstAttr2->u8DownSampleParm)
        && (pstAttr1->enBitDepth          == pstAttr2->enBitDepth)
        && (pstAttr1->u8I2SCtlVbit        == pstAttr2->u8I2SCtlVbit)
        )
    {
        bAUpdate = HI_FALSE;
    }

    return bAUpdate;
}


HI_S32 DRV_HDMI_SetAOAttr(HI_UNF_HDMI_ID_E enHdmi,HDMI_AUDIO_ATTR_S *pstHDMIAOAttr,HI_BOOL UpdateFlag)
{
    HI_U32 Ret = HI_SUCCESS;
    HI_U8 u8AudioPath[4];
    HI_U32 audioSampleRate = 0;

    HDMI_AUDIO_ATTR_S *pstAudAttr = DRV_Get_AudioAttr(enHdmi);
    HDMI_VIDEO_ATTR_S   *pstVidAttr = DRV_Get_VideoAttr(enHdmi);
    HDMI_APP_ATTR_S *pstAppAttr = DRV_Get_AppAttr(enHdmi);

    COM_INFO("-->%s\n",__FUNCTION__);
    HDMI_CHECK_ID(enHdmi);
    HDMI_CheckChnOpen(enHdmi);
    HDMI_CHECK_NULL_PTR(pstHDMIAOAttr);

    /* If open the ssc, need to enable the cts average funtion */
    if (HI_TRUE == DRV_Get_IsSSCEnable(HI_UNF_HDMI_ID_0))
    {
        WriteByteHDMITXP1(ARC_CTS_CONFIG, BIT_CTS_AVE_EN | BIT_AVE_MAX);
    }
    else
    {
        WriteByteHDMITXP1(ARC_CTS_CONFIG, ~BIT_CTS_AVE_EN);
    }

    if ((UpdateFlag != HI_TRUE)
        &&(HI_TRUE != hdmi_AudioAttrChanged(enHdmi, pstHDMIAOAttr, pstAudAttr)))
    {
        COM_INFO("Ao attr no change return <--\n");
        return HI_SUCCESS;
    }

    /* Set HDMI InfoFrame Enable flag */
    SI_WriteByteEEPROM(EE_AUDINFO_ENABLE, pstAppAttr->bEnableAudInfoFrame);

    memcpy(pstAudAttr, pstHDMIAOAttr, sizeof(HDMI_AUDIO_ATTR_S));


    /* Adjust Audio Path Param */
    if ((HI_TRUE != pstAppAttr->bEnableAudio)
        ||(HI_TRUE != pstAppAttr->bEnableAudInfoFrame))
    {
        COM_INFO("bEnableAudio = HI_FALSE <--\n");
        SI_DisableInfoFrame(AUD_TYPE);
        return HI_SUCCESS;
    }

    //SI_SetHdmiAudio(HI_FALSE);

    /* downsample audio freqency */
    if( 1 == pstHDMIAOAttr->u8DownSampleParm)
    {
        WriteByteHDMITXP1(SAMPLE_RATE_CONVERSION, 0x01);
    }
    else if( 2 == pstHDMIAOAttr->u8DownSampleParm)
    {
        WriteByteHDMITXP1(SAMPLE_RATE_CONVERSION, 0x03);
    }
    else
    {
        /* Remove Downsample flag */
        WriteByteHDMITXP1(SAMPLE_RATE_CONVERSION, 0x00);
    }

    /* Use default setting before write Audio Path */
    SI_GetAudioPath(u8AudioPath);   /* hdmi/audio.c, default setting DefaultTXDVDAudio[4] in txvptbl.c */
    COM_INFO("default audio path: 0x%02x,0x%02x,0x%02x,0x%02x\n", u8AudioPath[0], u8AudioPath[1], u8AudioPath[2], u8AudioPath[3]);
    memset(u8AudioPath, 0, 4);

    /* abAudioPath[0] set Audio format & Bit 7 */
    if (HDMI_AUDIO_INTERFACE_SPDIF == pstHDMIAOAttr->enSoundIntf)
    {
        u8AudioPath[0] = 0x0;
    }
    else if (HDMI_AUDIO_INTERFACE_HBR == pstHDMIAOAttr->enSoundIntf)
    {
        u8AudioPath[0] = SiI_HBAudio;
    }
    else
    {
        u8AudioPath[0] = 0x1; //I2S format
    }
    
    /* Bit[7] of abAudioPath[0] */
    if (HI_TRUE == pstHDMIAOAttr->bIsMultiChannel)
    {
        u8AudioPath[0] |= 0x80;
    }
    else
    {
        u8AudioPath[0] &= ~0x80;
    }
    /* abAudioPath[1] set Sampling Freq Fs */
    /*
       CH_ST4          Fs Sampling Frequency
       3   2   1   0  <--- bit
       0   0   0   0   44.1 kHz
       1   0   0   0   88.2 kHz
       1   1   0   0   176.4 kHz
       0   0   1   0   48 kHz
       1   0   1   0   96 kHz
       1   1   1   0   192 kHz
       0   0   1   1   32 kHz
       0   0   0   1   not indicated
       */
       
    audioSampleRate = pstHDMIAOAttr->enSampleRate;
    
    if(HI_UNF_SAMPLE_RATE_44K == audioSampleRate)
    {
        u8AudioPath[1] = 0x00;
    }
    else if (HI_UNF_SAMPLE_RATE_88K == audioSampleRate)
    {
        u8AudioPath[1] = 0x08;
    }
    else if (176400 == audioSampleRate)
    {
        u8AudioPath[1] = 0x0c;
    }
    else if (HI_UNF_SAMPLE_RATE_48K == audioSampleRate)
    {
        u8AudioPath[1] = 0x02;
    }
    else if (HI_UNF_SAMPLE_RATE_96K == audioSampleRate)
    {
        u8AudioPath[1] = 0x0a;
    }
    else if (HI_UNF_SAMPLE_RATE_192K == audioSampleRate)
    {
        u8AudioPath[1] = 0x0e;
    }
    else if (HI_UNF_SAMPLE_RATE_32K == audioSampleRate)
    {
        u8AudioPath[1] = 0x03;
    }
    else
    {
        u8AudioPath[1] = 0x00;
    }
    /* abAudioPath[2] set Sample length */
    /*
       IN_LENGTH 3:0 <--- sample length
       (0xff)0b1111 - 0b1110 = N/A
       (0x0d)0b1101 = 21 bit
       (0x0c)0b1100 = 17 bit
       (0x0b)0b1011 = 24 bit
       (0x0a)0b1010 = 20 bit
       (0x09)0b1001 = 23 bit
       (0x08)0b1000 = 19 bit
       (0x07)0b0111 - 0b0110 = N/A
       (0x05)0b0101 = 22 bit
       (0x04)0b0100 = 18 bit
       0b0011 = N/A
       (0x02)0b0010 = 16 bit
       0b0001 - 0b0000 = N/A
       */
    if (HI_UNF_BIT_DEPTH_16 == pstHDMIAOAttr->enBitDepth)
    {
        u8AudioPath[2] = 0x02;
    }
    else if (HI_UNF_BIT_DEPTH_18 == pstHDMIAOAttr->enBitDepth)
    {
        u8AudioPath[2] = 0x04;
    }
    else if (22 == pstHDMIAOAttr->enBitDepth)
    {
        u8AudioPath[2] = 0x05;
    }
    else if (19 == pstHDMIAOAttr->enBitDepth)
    {
        u8AudioPath[2] = 0x08;
    }
    else if (23 == pstHDMIAOAttr->enBitDepth)
    {
        u8AudioPath[2] = 0x09;
    }
    else if (20 == pstHDMIAOAttr->enBitDepth)
    {
        u8AudioPath[2] = 0x0a;
    }
    else if (HI_UNF_BIT_DEPTH_24 == pstHDMIAOAttr->enBitDepth)
    {
        u8AudioPath[2] = 0x0b;
    }
    else if (17 == pstHDMIAOAttr->enBitDepth)
    {
        u8AudioPath[2] = 0x0c;
    }
    else if (21 == pstHDMIAOAttr->enBitDepth)
    {
        u8AudioPath[2] = 0x0d;
    }
    else
    {
        u8AudioPath[2] = 0x0f;
    }
    /* abAudioPath[3] I2S control bits (for 0x7A:0x1D) */
    if(HI_TRUE == pstHDMIAOAttr->u8I2SCtlVbit)
    {
        u8AudioPath[3] |= 0x10; /* 1 = Compressed */
    }
    else
    {
        u8AudioPath[3] &= (HI_U8)(~0x10); /* 0 = Uncompressed */
    }
    u8AudioPath[3] |= 0x40; /* SCK sample edge Must use "Sample clock is rising" */
    //COM_INFO("set audio path: 0x%02x,0x%02x,0x%02x,0x%02x\n", u8AudioPath[0], u8AudioPath[1], u8AudioPath[2], u8AudioPath[3]);
    SI_SetAudioPath(u8AudioPath, pstVidAttr->enVideoFmt);  /* hdmi/audio.c */
    /* Set HDMI Audio Enable flag */
    //SI_SetHdmiAudio(pstAppAttr->bEnableAudio);

    COM_INFO("%s<--\n",__FUNCTION__);

    return Ret;
}

HI_S32 DRV_HDMI_SetAPPAttr(HI_UNF_HDMI_ID_E enHdmi,HDMI_APP_ATTR_S *pstHDMIAppAttr,HI_BOOL UpdateFlag)
{
    HI_BOOL AppForceUpdate = HI_FALSE;
    HDMI_APP_ATTR_S *pstAppAttr = DRV_Get_AppAttr(enHdmi);
    HDMI_ATTR_S *pstHDMIAttr = container_of(pstHDMIAppAttr, struct hiHDMI_ATTR_S, stAppAttr);
    
    COM_INFO("-->%s\n",__FUNCTION__);

    if(pstHDMIAppAttr->enVidOutMode == HI_UNF_HDMI_VIDEO_MODE_YCBCR422)
    {
        COM_ERR("Not support output YCBCR422 <-- \n");
        return HI_ERR_HDMI_INVALID_PARA;    \
    }
    
    pstAppAttr->b3DEnable = pstHDMIAttr->stVideoAttr.b3DEnable;
    pstAppAttr->u83DParam = pstHDMIAttr->stVideoAttr.u83DParam;

    if (UpdateFlag == HI_TRUE)
    {
        AppForceUpdate = HI_TRUE;
    }
    else if (HI_SUCCESS != hdmi_AppAttrChanged(enHdmi,pstAppAttr,pstHDMIAppAttr,&AppForceUpdate))
    {
        COM_INFO("Set APPAttr With No video update <-- \n");
        return HI_SUCCESS;
    }
    else
    {
        COM_INFO("app attr has change \n");
    }

    COM_INFO("HDMI: %d , Aud: %d , Vid: %d \n",pstHDMIAppAttr->bEnableHdmi,pstHDMIAppAttr->bEnableAudio,pstHDMIAppAttr->bEnableVideo);

    if(pstHDMIAppAttr->bEnableHdmi == HI_FALSE)
    {
        pstHDMIAppAttr->bEnableAudio = HI_FALSE;
        pstHDMIAppAttr->bEnableAudInfoFrame = HI_FALSE;
        pstHDMIAppAttr->bEnableAviInfoFrame = HI_FALSE;
        pstHDMIAppAttr->enVidOutMode = HI_UNF_HDMI_VIDEO_MODE_RGB444;
    }

    if((pstHDMIAppAttr->b3DEnable != pstAppAttr->b3DEnable)
    || ((pstHDMIAppAttr->u83DParam != pstAppAttr->u83DParam) 
        && ((pstHDMIAppAttr->u83DParam == HI_UNF_3D_TOP_AND_BOTTOM)
        || (pstHDMIAppAttr->u83DParam == HI_UNF_3D_SIDE_BY_SIDE_HALF))))
    {
        HDMI_ATTR_S *pstHDMIAttr = container_of(pstHDMIAppAttr, struct hiHDMI_ATTR_S, stAppAttr);

        /* we keep the AppAttr 3D new state, and will be setted in the DRV_HDMI_SetVOAttr*/
        pstHDMIAttr->stVideoAttr.b3DEnable = pstHDMIAppAttr->b3DEnable;
        pstHDMIAttr->stVideoAttr.u83DParam = pstHDMIAppAttr->u83DParam;
        COM_INFO("b3DEnable-u83DParam new:%d-%d, old:%d-%d\n", 
                    pstHDMIAttr->stVideoAttr.b3DEnable, pstHDMIAttr->stVideoAttr.u83DParam, 
                    pstAppAttr->b3DEnable, pstAppAttr->u83DParam);
    }    
    else
    {
        COM_INFO("3D mode has no change, Enable:%d-Mode%d\n", 
                        pstAppAttr->b3DEnable, pstHDMIAppAttr->u83DParam);
        /* we keep the AppAttr 3D old state, and not set in the DRV_HDMI_SetVOAttr*/
        pstHDMIAppAttr->b3DEnable = pstAppAttr->b3DEnable;
        pstHDMIAppAttr->u83DParam = pstAppAttr->u83DParam;
    }
    
    memcpy(pstAppAttr, pstHDMIAppAttr, sizeof(HDMI_APP_ATTR_S));

    if(HI_TRUE == pstAppAttr->bEnableSpdInfoFrame)
    {
        SI_EnableInfoFrame(SPD_TYPE);
    }
    else
    {
        SI_DisableInfoFrame(SPD_TYPE);
    }

#ifdef HDCP_SUPPORT
    //msleep(10);
    /* Set HDMI HDCP Enable flag */
    HDCP_INFO("bHDCPEnable:0x%x, bDebugFlag:0x%x\n", pstAppAttr->bHDCPEnable, pstAppAttr->bDebugFlag);
    if((pstAppAttr->bHDCPEnable == HI_TRUE)
        || (HI_FALSE == DRV_Get_IsChnOpened(HI_UNF_HDMI_ID_0)))
    {
        SI_WriteByteEEPROM(EE_TX_HDCP, 0xFF);
    }
    else
    {
        SI_WriteByteEEPROM(EE_TX_HDCP, 0x00);
    }

    msleep(60);
#endif

    COM_INFO("AppForceUpdate %d \n",AppForceUpdate);
    if(AppForceUpdate == HI_TRUE)
    {
        DRV_Set_ForceUpdateFlag(enHdmi,HI_TRUE);
    }
    else
    {
        DRV_Set_PartUpdateFlag(enHdmi,HI_TRUE);
    }
    COM_INFO("%s<--\n",__FUNCTION__);
    
    return HI_SUCCESS;
}


HI_U32 DRV_HDMI_SetAttr(HI_UNF_HDMI_ID_E enHdmi, HDMI_ATTR_S *pstAttr)
{
    HI_U32 Ret = HI_SUCCESS;
    HI_U32 ForceUpdateFlag = HI_FALSE;
    HI_U32 PartUpdateFlag = HI_FALSE;

    COM_INFO("-->%s\n",__FUNCTION__);

    HDMI_CHECK_ID(enHdmi);
    HDMI_CheckChnOpen(enHdmi);
    HDMI_CHECK_NULL_PTR(pstAttr);

    // SetAppAttr only cfg hdcp,
    // the other attr will be config in DRV_HDMI_SetVO/AOAttr && hdmi_AdjustAVI/AUDInfoFrame
    DRV_HDMI_SetAPPAttr(enHdmi, &pstAttr->stAppAttr,HI_FALSE);

    //Force update flag can changed in set format && DRV_HDMI_SetAPPAttr
    ForceUpdateFlag = DRV_Get_IsNeedForceUpdate(enHdmi);
    if(ForceUpdateFlag == HI_TRUE)
    {
        PartUpdateFlag = HI_TRUE;
    }
    else
    {
        PartUpdateFlag = DRV_Get_IsNeedPartUpdate(enHdmi);
    }
    COM_INFO("ForceUpdateFlag %d, PartUpdateFlag %d \n",ForceUpdateFlag,PartUpdateFlag);

    DRV_Set_ForceUpdateFlag(enHdmi,HI_FALSE);
    DRV_Set_PartUpdateFlag(enHdmi,HI_FALSE);
    if(DRV_Get_IsOpenedInBoot())
    {

        //when opend in boot,then audio not be configed.
        DRV_HDMI_SetAOAttr(enHdmi, &pstAttr->stAudioAttr,PartUpdateFlag);
        hdmi_AdjustAUDInfoFrame(enHdmi);
        COM_INFO("boot in First Time <--\n");
        return HI_SUCCESS;
    }
    else if(DRV_Get_IsMce2App())
    {
        COM_INFO(" Mce2App <--\n");
        return HI_SUCCESS;
    }

    DRV_HDMI_SetVOAttr(enHdmi, &pstAttr->stVideoAttr,ForceUpdateFlag);
    DRV_HDMI_SetAOAttr(enHdmi, &pstAttr->stAudioAttr,PartUpdateFlag);

    hdmi_AdjustAVIInfoFrame(enHdmi);
    hdmi_AdjustVSDBInfoFrame(enHdmi);
    hdmi_AdjustAUDInfoFrame(enHdmi);


    COM_INFO("%s<--\n",__FUNCTION__);
    return Ret;
}

HI_U32 DRV_HDMI_GetAttr(HI_UNF_HDMI_ID_E enHdmi, HDMI_ATTR_S *pstAttr)
{
    HDMI_ATTR_S *pstHDMIAttr = DRV_Get_HDMIAttr(enHdmi);
    COM_INFO("-->%s\n",__FUNCTION__);
    HDMI_CHECK_ID(enHdmi);
    HDMI_CheckChnOpen(enHdmi);
    HDMI_CHECK_NULL_PTR(pstAttr);

    pstHDMIAttr->stAppAttr.bEnableVideo = HI_TRUE;
    memcpy(pstAttr, pstHDMIAttr, sizeof(HDMI_ATTR_S));

    COM_INFO("%s<--\n",__FUNCTION__);
    return HI_SUCCESS;
}

static HI_U32 hdmi_Create_AVI_Infoframe(HI_UNF_HDMI_AVI_INFOFRAME_VER2_S *punAVIInfoFrame, HI_U8 *pu8AviInfoFrame)
{
    HI_U8  u8AviInfoFrameByte = 0;
    hdmi_VideoIdentification_t *pstVidCode;
    HI_U32 retval = HI_SUCCESS;
    HI_U32 VidIdCode;

    HI_UNF_ENC_FMT_E encFmt;
    COM_INFO("-->%s\n",__FUNCTION__);

    /* HDMI AVI Infoframe is use Version = 0x02 in HDMI1.3 */

    /* Fill Data Byte 1 */
    u8AviInfoFrameByte=0;
    /* Scan information bits 0-1:S0,S1 */
    /*
       S1 S0 Scan Information
       0   0    No Data
       0   1   overscanned
       1   0   underscanned
       1   1   Future
       */
    COM_INFO("enScanInfo:%d\n", punAVIInfoFrame->enScanInfo);
    switch(punAVIInfoFrame->enScanInfo)
    {
        case HDMI_SCAN_INFO_NO_DATA :
            u8AviInfoFrameByte |= (HI_U8)HDMI_SCAN_INFO_NO_DATA;
            break;
        case HDMI_SCAN_INFO_OVERSCANNED :
            u8AviInfoFrameByte |= (HI_U8)HDMI_SCAN_INFO_OVERSCANNED;
            break;
        case HDMI_SCAN_INFO_UNDERSCANNED :
            u8AviInfoFrameByte |= (HI_U8)HDMI_SCAN_INFO_UNDERSCANNED;
            break;
        default :
            retval = HI_FAILURE;
            break;
    }
    /* Bar Information bits 2-3:B0,B1 */
    /*
       B1 B0  Bar Info
       0   0  not valid
       0   1  Vert. Bar Info valid
       1   0  Horiz.Bar Info Valid
       1   1  Vert. and Horiz. Bar Info valid
       */
    COM_INFO("enBarInfo:%d\n", punAVIInfoFrame->enBarInfo);
    switch (punAVIInfoFrame->enBarInfo)
    {
        case HDMI_BAR_INFO_NOT_VALID :
            u8AviInfoFrameByte |= (HI_U8) 0x00;
            break;
        case HDMI_BAR_INFO_V :
            u8AviInfoFrameByte |= (HI_U8) 0x04;
            break;
        case HDMI_BAR_INFO_H :
            u8AviInfoFrameByte |= (HI_U8) 0x08;
            break;
        case HDMI_BAR_INFO_VH :
            u8AviInfoFrameByte |= (HI_U8) 0x0C;
            break;
        default :
            retval = HI_FAILURE;
            break;
    }
    /* Active information bit 4:A0 */
    /*
       A0 Active Format Information Present
       0        No Data
       1      Active Format(R0…R3) Information valid
       */
    COM_INFO("bActive_Infor_Present:%d\n", punAVIInfoFrame->bActive_Infor_Present);
    if (punAVIInfoFrame->bActive_Infor_Present)
    {
        u8AviInfoFrameByte |= (HI_U8)0x10;  /* Active Format Information Valid */
    }
    else
    {
        u8AviInfoFrameByte &= ~(HI_U8)0x10;  /* Active Format Information Valid */
    }
    /* Output Type bits 5-6:Y0,Y1 */
    /*
       Y1 Y0  RGB orYCbCr
       0  0   RGB (default)
       0  1   YCbCr 4:2:2
       1  0   YCbCr 4:4:4
       1  1    Future
       */
    COM_INFO("enOutputType:%d\n", punAVIInfoFrame->enOutputType);
    switch (punAVIInfoFrame->enOutputType)
    {
        case HI_UNF_HDMI_VIDEO_MODE_RGB444 :
            u8AviInfoFrameByte |= (HI_U8)0x00;
            break;
        case HI_UNF_HDMI_VIDEO_MODE_YCBCR422 :
            u8AviInfoFrameByte |= (HI_U8)0x20;
            break;
        case HI_UNF_HDMI_VIDEO_MODE_YCBCR444 :
            u8AviInfoFrameByte |= (HI_U8)0x40;
            break;
        default :
            COM_INFO("Error Output format *******\n");
            retval = HI_FAILURE;
            break;
    }
    pu8AviInfoFrame[0]= (HI_U8)(u8AviInfoFrameByte&0x7F);

    /* Fill Data byte 2 */
    u8AviInfoFrameByte=0;
    /* Active Format aspect ratio bits 0-3:R0...R3 */
    /*
       R3 R2 R1 R0  Active Format Aspect Ratio
       1  0  0  0   Same as picture aspect ratio
       1  0  0  1   4:3 (Center)
       1  0  1  0   16:9 (Center)
       1  0  1  1   14:9 (Center)
       */

    u8AviInfoFrameByte |= (HI_U8) 0x08;
    COM_INFO("enAspectRatio:%d\n", punAVIInfoFrame->enAspectRatio);
    switch (punAVIInfoFrame->enAspectRatio)
    {
        case HI_UNF_ASPECT_RATIO_4TO3 :
            u8AviInfoFrameByte |= (HI_U8) 0x10;
            break;
        case HI_UNF_ASPECT_RATIO_16TO9 :
            u8AviInfoFrameByte |= (HI_U8) 0x20;
            break;
        default :
            u8AviInfoFrameByte |=  (HI_U8) 0x00;
            break;
    }

    /* Colorimetry bits 6-7 of data byte2:C0,C1 */
    /*
       C1 C0    Colorim
       0   0    No Data
       0   1    SMPTE 170M[1] ITU601 [5]
       1   0    ITU709 [6] 1 0 16:9
       1   1    Extended Colorimetry Information Valid (colorimetry indicated in bits EC0, EC1,
       EC2. See Table 11)
       */
    COM_INFO("enColorimetry:%d\n", punAVIInfoFrame->enColorimetry);
    switch (punAVIInfoFrame->enColorimetry)
    {
        case HDMI_COLORIMETRY_ITU601 :
            u8AviInfoFrameByte |= (HI_U8)0x40;
            break;
        case HDMI_COLORIMETRY_ITU709 :
            u8AviInfoFrameByte |= (HI_U8)0x80;
            break;
        case HDMI_COLORIMETRY_XVYCC_601 :
        case HDMI_COLORIMETRY_XVYCC_709 :
        case HDMI_COLORIMETRY_EXTENDED :
            u8AviInfoFrameByte |= (HI_U8)0xC0;
            break;
        default :
            u8AviInfoFrameByte |= (HI_U8)0x00;
            break;
    }
    pu8AviInfoFrame[1] = (HI_U8)(u8AviInfoFrameByte&0XFF);

    /* Fill data Byte 3: Picture Scaling bits 0-1:SC0,SC1 */
    u8AviInfoFrameByte=0;
    /*
       SC1  SC0   Non-Uniform Picture Scaling
       0     0    No Known non-uniform Scaling
       0     1    Picture has been scaled horizontally
       1     0    Picture has been scaled vertically
       1     1    Picture has been scaled horizontally and vertically
       */
    COM_INFO("enPictureScaling:%d\n", punAVIInfoFrame->enPictureScaling);
    switch (punAVIInfoFrame->enPictureScaling)
    {
        case HDMI_PICTURE_NON_UNIFORM_SCALING :
            u8AviInfoFrameByte |= (HI_U8)0x00;
            break;
        case HDMI_PICTURE_SCALING_H :
            u8AviInfoFrameByte |= (HI_U8)0x01;
            break;
        case HDMI_PICTURE_SCALING_V :
            u8AviInfoFrameByte |= (HI_U8)0x02;
            break;
        case HDMI_PICTURE_SCALING_HV :
            u8AviInfoFrameByte |= (HI_U8)0x03;
            break;
        default :
            retval = HI_FAILURE;
            break;
    }
    /* Fill data Byte 3: RGB quantization range bits 2-3:Q0,Q1 */
    /*
       Q1  Q0  RGB Quantization Range
       0   0   Default (depends on video format)
       0   1   Limited Range
       1   0   Full Range
       1   1   Reserved
       */
    COM_INFO("enRGBQuantization:%d\n", punAVIInfoFrame->enRGBQuantization);
    switch (punAVIInfoFrame->enRGBQuantization)
    {
        case HDMI_RGB_QUANTIZATION_DEFAULT_RANGE :
            u8AviInfoFrameByte |= (HI_U8)0x00;
            break;
        case HDMI_RGB_QUANTIZATION_LIMITED_RANGE :
            u8AviInfoFrameByte |= (HI_U8)0x04;
            break;
        case HDMI_RGB_QUANTIZATION_FULL_RANGE :
            u8AviInfoFrameByte |= (HI_U8)0x08;
            break;
        default :
            retval = HI_FAILURE;
            break;
    }
    /* Fill data Byte 3: Extended colorimtery range bits 4-6:EC0,EC1,EC2 */
    /*
       EC2 EC1 EC0   Extended Colorimetry
       0   0   0      xvYCC601
       0   0   1      xvYCC709
       -   -   -      All other values reserved
       */
    /*
       xvYCC601 is based on the colorimetry defined in ITU-R BT.601.
       xvYCC709 is based on the colorimetry defined in ITU-R BT.709.
       */
    COM_INFO("enColorimetry:%d\n", punAVIInfoFrame->enColorimetry);
    switch (punAVIInfoFrame->enColorimetry)
    {
        case HDMI_COLORIMETRY_XVYCC_601 :
            u8AviInfoFrameByte |= (HI_U8)0x00;
            break;
        case HDMI_COLORIMETRY_XVYCC_709 :
            u8AviInfoFrameByte |= (HI_U8)0x10;
            break;
        default:
            break;
    }

    /* Fill data Byte 3: IT content bit 7:ITC
       ITC  IT content
       0    No data
       1    IT content
       */
    if (punAVIInfoFrame->bIsITContent)
        u8AviInfoFrameByte |= 0x80;
    else
        u8AviInfoFrameByte &= ~0x80;

    pu8AviInfoFrame[2] = (HI_U8)(u8AviInfoFrameByte&0XFF);

    /* Fill Data byte 4: Video indentification data Code, Bit0~7:VIC0 ~ VIC6 */
    //u8AviInfoFrameByte=0;
    encFmt = DRV_HDMI_Unf2DispFmt(punAVIInfoFrame->enTimingMode);
    pstVidCode = hdmi_GetVideoCode(encFmt);


    VidIdCode = pstVidCode->VidIdCode;
    if (HI_UNF_ASPECT_RATIO_16TO9 == punAVIInfoFrame->enAspectRatio)
    {
        if (encFmt == HI_UNF_ENC_FMT_480P_60)
        {
            VidIdCode = 3;
            COM_INFO("VidCode(480p_60 16:9):%d-->%d\n", pstVidCode->VidIdCode, VidIdCode);
        }
        else if (encFmt == HI_UNF_ENC_FMT_576P_50)
        {
            VidIdCode = 18;
            COM_INFO("VidCode(576p_50 16:9):%d-->%d\n", pstVidCode->VidIdCode, VidIdCode);
        }
        else if (DRV_N_Pa_Adjust(encFmt) == HI_UNF_ENC_FMT_PAL)
        {
            VidIdCode = 22;
            COM_INFO("VidCode(576i_50 16:9):%d-->%d\n", pstVidCode->VidIdCode, VidIdCode);
        }        
        else if (DRV_N_Pa_Adjust(encFmt) == HI_UNF_ENC_FMT_NTSC)
        {
            VidIdCode = 7;
            COM_INFO("VidCode(480i_60 16:9):%d-->%d\n", pstVidCode->VidIdCode, VidIdCode);
        }
        else
        {
            COM_INFO("do not need to change VIC\n");
        }
    }

    pu8AviInfoFrame[3] = (HI_U8)(VidIdCode & 0x7F);
    /* Fill Data byte 5: Pixel repetition, Bit0~3:PR0~PR3 */
    /*
       PR3 PR2 PR1 PR0 Pixel Repetition Factor
       0   0   0    0   No Repetition (i.e., pixel sent once)
       0   0   0    1   pixel sent 2 times (i.e., repeated once)
       0   0   1    0   pixel sent 3 times
       0   0   1    1   pixel sent 4 times
       0   1   0    0   pixel sent 5 times
       0   1   0    1   pixel sent 6 times
       0   1   1    0   pixel sent 7 times
       0   1   1    1   pixel sent 8 times
       1   0   0    0   pixel sent 9 times
       1   0   0    1   pixel sent 10 times
       0Ah-0Fh          Reserved
       */
    u8AviInfoFrameByte = (HI_U8)(punAVIInfoFrame->u32PixelRepetition& 0x0F);

    /* Fill Data byte 5: Content Type, Bit4~5:CN0~CN1 */
    /*
       ITC  CN1 CN0 Pixel Repetition Factor
       (1)   0    0   Graphics
       (1)   0    1   Photo
       (1)   1    0   Cinema
       (1)   1    1   Game
       */
    COM_INFO("enContentType:%d\n", punAVIInfoFrame->enContentType);
    switch (punAVIInfoFrame->enContentType)
    {
        case HDMI_CONTNET_GRAPHIC:
            u8AviInfoFrameByte |= (HI_U8)0x00;
            break;
        case HDMI_CONTNET_PHOTO:
            u8AviInfoFrameByte |= (HI_U8)0x10;
            break;
        case HDMI_CONTNET_CINEMA:
            u8AviInfoFrameByte |= (HI_U8)0x20;
            break;
        case HDMI_CONTNET_GAME:
            u8AviInfoFrameByte |= (HI_U8)0x30;
            break;
        default:
            u8AviInfoFrameByte |= (HI_U8)0x00;
            break;
    }
    /* Fill Data byte 5: YCC Full Range, Bit6~7:YQ0~YQ1 */
    /*
       YQ1 YQ0 Pixel Repetition Factor
       0    0   Limitation Range
       0    1   Full Range
       */
    COM_INFO("enYCCQuantization:%d\n", punAVIInfoFrame->enYCCQuantization);
    switch (punAVIInfoFrame->enYCCQuantization)
    {
        case HDMI_YCC_QUANTIZATION_LIMITED_RANGE:
            u8AviInfoFrameByte |= (HI_U8)0x00;
            break;
        case HDMI_YCC_QUANTIZATION_FULL_RANGE:
            u8AviInfoFrameByte |= (HI_U8)0x40;
            break;
        default:
            u8AviInfoFrameByte |= (HI_U8)0x00;
            break;
    }
    pu8AviInfoFrame[4]= (HI_U8)(u8AviInfoFrameByte&0XFF);

    if ( (0 == punAVIInfoFrame->u32LineNEndofTopBar) && (0 == punAVIInfoFrame->u32LineNStartofBotBar)
        && (0 == punAVIInfoFrame->u32PixelNEndofLeftBar) && (0 == punAVIInfoFrame->u32PixelNStartofRightBar) )
    {
        punAVIInfoFrame->u32LineNEndofTopBar      = pstVidCode->Active_X;
        punAVIInfoFrame->u32LineNStartofBotBar    = pstVidCode->Active_H;
        punAVIInfoFrame->u32PixelNEndofLeftBar    = pstVidCode->Active_Y;
        punAVIInfoFrame->u32PixelNStartofRightBar = pstVidCode->Active_W;
    }
    if(punAVIInfoFrame->enBarInfo == HDMI_BAR_INFO_NOT_VALID)
    {
        punAVIInfoFrame->u32LineNEndofTopBar      = 0;
        punAVIInfoFrame->u32LineNStartofBotBar    = 0;
        punAVIInfoFrame->u32PixelNEndofLeftBar    = 0;
        punAVIInfoFrame->u32PixelNStartofRightBar = 0;
    }
    /* Fill Data byte 6  */
    pu8AviInfoFrame[5] = (HI_U8)(punAVIInfoFrame->u32LineNEndofTopBar & 0XFF);

    /* Fill Data byte 7  */
    pu8AviInfoFrame[6] = (HI_U8)((punAVIInfoFrame->u32LineNEndofTopBar>>8) & 0XFF);

    /* Fill Data byte 8  */
    pu8AviInfoFrame[7] = (HI_U8)(punAVIInfoFrame->u32LineNStartofBotBar & 0XFF);

    /* Fill Data byte 9  */
    pu8AviInfoFrame[8] = (HI_U8)((punAVIInfoFrame->u32LineNStartofBotBar>>8) & 0XFF);

    /* Fill Data byte 10  */
    pu8AviInfoFrame[9] = (HI_U8)(punAVIInfoFrame->u32PixelNEndofLeftBar &0XFF);

    /* Fill Data byte 11  */
    pu8AviInfoFrame[10] = (HI_U8)((punAVIInfoFrame->u32PixelNEndofLeftBar>>8) &0XFF);

    /* Fill Data byte 12  */
    pu8AviInfoFrame[11] = (HI_U8)(punAVIInfoFrame->u32PixelNStartofRightBar &0XFF);

    /* Fill Data byte 13  */
    pu8AviInfoFrame[12] = (HI_U8)((punAVIInfoFrame->u32PixelNStartofRightBar>>8) &0XFF);

    return retval;
}

static HI_U32 hdmi_Create_Audio_Infoframe(HI_UNF_HDMI_AUD_INFOFRAME_VER1_S *punAUDInfoFrame, HI_U8 *pu8AudioInfoFrame)
{
    HI_U8 u8AudioInfoFrameByte=0;
    HI_U32 retval = HI_SUCCESS;
    u8AudioInfoFrameByte=0;
    COM_INFO("-->%s\n",__FUNCTION__);

    switch (punAUDInfoFrame->u32ChannelCount)
    {
        case 2 :
            u8AudioInfoFrameByte |= 0x01;
            break;
        case 3 :
            u8AudioInfoFrameByte |= 0x02;
            break;
        case 4 :
            u8AudioInfoFrameByte |= 0x03;
            break;
        case 5 :
            u8AudioInfoFrameByte |= 0x04;
            break;
        case 6 :
            u8AudioInfoFrameByte |= 0x05;
            break;
        case 7 :
            u8AudioInfoFrameByte |= 0x06;
            break;
        case 8 :
            u8AudioInfoFrameByte |= 0x07;
            break;
        default :
            u8AudioInfoFrameByte |= 0x00;
            break;
    }

    /*
     *      assign the value according to enCodingType 
     *  (eg. HDMI_AUDIO_CODING_PCM) in Protocol, isn't the numerical 
     *  order in enumeration( HI_UNF_HDMI_CODING_TYPE_E )
     *      reference X5HD's Code, keep the same value     
     */
    switch (punAUDInfoFrame->enCodingType)
    {
        case HDMI_AUDIO_CODING_PCM :
            u8AudioInfoFrameByte |= 0x10;
            break;
        case HDMI_AUDIO_CODING_AC3 :
            u8AudioInfoFrameByte |= 0x20;
            break;
        case HDMI_AUDIO_CODING_MPEG1 :
            u8AudioInfoFrameByte |= 0x30;
            break;
        case HDMI_AUDIO_CODING_MP3 :
            u8AudioInfoFrameByte|= 0x40;
            break;
        case HDMI_AUDIO_CODING_MPEG2 :
            u8AudioInfoFrameByte |= 0x50;
            break;
        case HDMI_AUDIO_CODING_AAC :
            u8AudioInfoFrameByte |= 0x60;
            break;
        case HDMI_AUDIO_CODING_DTS :
            u8AudioInfoFrameByte |= 0x70;
            break;
        case HDMI_AUDIO_CODING_DDPLUS :
            u8AudioInfoFrameByte |= 0xA0;
            break;
        case HDMI_AUDIO_CODING_MLP :
            u8AudioInfoFrameByte |= 0xC0;
            break;
        case HDMI_AUDIO_CODING_WMA :
            u8AudioInfoFrameByte |= 0xE0;
            break;
        default :
            u8AudioInfoFrameByte |= 0x00;
            break;
    }
    pu8AudioInfoFrame[0] = (HI_U8)(u8AudioInfoFrameByte& 0xF7);

    u8AudioInfoFrameByte=0;
    /* Fill Sample Size (Data Byte 2) bits2: 0~1*/
    /*
       SS1 SS0    Sample Size
       0   0      Refer to Stream header
       0   1      16 bit
       1   0      20 bit
       1   1      24 bit
       */
    switch (punAUDInfoFrame->u32SampleSize)
    {
        case 16 :
            u8AudioInfoFrameByte |= 0x01;
            break;
        case 20 :
            u8AudioInfoFrameByte |= 0x02;
            break;
        case 24 :
            u8AudioInfoFrameByte |= 0x03;
            break;
        default :
            u8AudioInfoFrameByte |= 0x00;
            break;
    }

    /* Fill Sample Frequency (Data Byte 2)bits3: 2~4*/
    /*
       SF2 SF1 SF0 Sampling Frequency
       0   0   0   Refer to Stream Header
       0   0   1   32 kHz
       0   1   0   44.1 kHz (CD)
       0   1   1   48 kHz
       1   0   0   88.2 kHz
       1   0   1   96 kHz
       1   1   0   176.4 kHz
       1   1   1   192 kHz
       */
    switch (punAUDInfoFrame->u32SamplingFrequency)
    {
        case 32000 :
            u8AudioInfoFrameByte |= 0x04;
            break;
        case 44100 :
            u8AudioInfoFrameByte |= 0x08;
            break;
        case 48000 :
            u8AudioInfoFrameByte |= 0x0C;
            break;
        case 88200 :
            u8AudioInfoFrameByte |= 0x10;
            break;
        case 96000 :
            u8AudioInfoFrameByte |= 0x14;
            break;
        case 176400 :
            u8AudioInfoFrameByte |= 0x18;
            break;
        case 192000 :
            u8AudioInfoFrameByte |= 0x1C;
            break;
        default :
            u8AudioInfoFrameByte |= 0x00;
            break;
    }
    pu8AudioInfoFrame[1] = (HI_U8)(u8AudioInfoFrameByte& 0x1F);

    u8AudioInfoFrameByte=0;
    /* Fill the Bit rate coefficient for the compressed audio format (Data byte 3)*/
    switch (punAUDInfoFrame->enCodingType)
    {
        case HDMI_AUDIO_CODING_AC3 :
        case HDMI_AUDIO_CODING_DTS :
        case HDMI_AUDIO_CODING_MPEG1 :
        case HDMI_AUDIO_CODING_MPEG2 :
        case HDMI_AUDIO_CODING_MP3 :
        case HDMI_AUDIO_CODING_AAC :
            pu8AudioInfoFrame[2] = (HI_U8)0XFF;//? Data Byte 3 is reserved and shall be zero.
            break;
        case HDMI_AUDIO_CODING_PCM :
        default :
            pu8AudioInfoFrame[2] = 0X00;
            break;
    }

    /* Data Bytes 4 and 5 apply only to multi-channel (i.e., more than two channels) uncompressed audio. */
    /* Fill Channel allocation (Data Byte 4) */
    /*
       CA(binary)       CA(hex)  Channel Number
       7 6 5 4 3 2 1 0          8 7 6 5 4 3 2 1
       0 0 0 0 0 0 0 0  00      - - - - - - FR FL
       0 0 0 0 0 0 0 1  01      - - - - - LFE FR FL
       0 0 0 0 0 0 1 0  02      - - - - FC - FR FL
       0 0 0 0 0 0 1 1  03      - - - - FC LFE FR FL
       0 0 0 0 0 1 0 0  04      - - - RC - - FR FL
       0 0 0 0 0 1 0 1  05      - - - RC - LFE FR FL
       0 0 0 0 0 1 1 0  06      - - - RC FC - FR FL
       0 0 0 0 0 1 1 1  07      - - - RC FC LFE FR FL
       0 0 0 0 1 0 0 0  08      - - RR RL - - FR FL
       0 0 0 0 1 0 0 1  09      - - RR RL - LFE FR FL
       0 0 0 0 1 0 1 0  0A      - - RR RL FC - FR FL
       0 0 0 0 1 0 1 1  0B      - - RR RL FC LFE FR FL
       0 0 0 0 1 1 0 0  0C      - RC RR RL - - FR FL
       0 0 0 0 1 1 0 1  0D      - RC RR RL - LFE FR FL
       0 0 0 0 1 1 1 0  0E      - RC RR RL FC - FR FL
       0 0 0 0 1 1 1 1  0F      - RC RR RL FC LFE FR FL
       0 0 0 1 0 0 0 0  10      RRC RLC RR RL - - FR FL
       0 0 0 1 0 0 0 1  11      RRC RLC RR RL - LFE FR FL
       0 0 0 1 0 0 1 0  12      RRC RLC RR RL FC - FR FL
       0 0 0 1 0 0 1 1  13      RRC RLC RR RL FC LFE FR FL
       0 0 0 1 0 1 0 0  14      FRC FLC - - - - FR FL
       0 0 0 1 0 1 0 1  15      FRC FLC - - - LFE FR FL
       0 0 0 1 0 1 1 0  16      FRC FLC - - FC - FR FL
       0 0 0 1 0 1 1 1  17      FRC FLC - - FC LFE FR FL
       0 0 0 1 1 0 0 0  18      FRC FLC - RC - - FR FL
       0 0 0 1 1 0 0 1  19      FRC FLC - RC - LFE FR FL
       0 0 0 1 1 0 1 0  1A      FRC FLC - RC FC - FR FL
       0 0 0 1 1 0 1 1  1B      FRC FLC - RC FC LFE FR FL
       0 0 0 1 1 1 0 0  1C      FRC FLC RR RL - - FR FL
       0 0 0 1 1 1 0 1  1D      FRC FLC RR RL - LFE FR FL
       0 0 0 1 1 1 1 0  1E      FRC FLC RR RL FC - FR FL
       0 0 0 1 1 1 1 1  1F      FRC FLC RR RL FC LFE FR FL
       */
    pu8AudioInfoFrame[3] = (HI_U8)(punAUDInfoFrame->u32ChannelAlloc &0XFF);

    /* Fill Level Shift (Data Byte 5) bits4:3~7 */
    /*
       LSV3 LSV2 LSV1 LSV0 Level Shift Value
       0     0    0    0     0dB
       0     0    0    1     1dB
       0     0    1    0     2dB
       0     0    1    1     3dB
       0     1    0    0     4dB
       0     1    0    1     5dB
       0     1    1    0     6dB
       0     1    1    1     7dB
       1     0    0    0     8dB
       1     0    0    1     9dB
       1     0    1    0    10dB
       1     0    1    1    11dB
       1     1    0    0    12dB
       1     1    0    1    13dB
       1     1    1    0    14dB
       1     1    1    1    15dB
       */
    switch (punAUDInfoFrame->u32LevelShift)
    {
        case 0 :
            u8AudioInfoFrameByte |= 0x00;
            break;
        case 1 :
            u8AudioInfoFrameByte |= 0x08;
            break;
        case 2 :
            u8AudioInfoFrameByte |= 0x10;
            break;
        case 3 :
            u8AudioInfoFrameByte |= 0x18;
            break;
        case 4 :
            u8AudioInfoFrameByte |= 0x20;
            break;
        case 5 :
            u8AudioInfoFrameByte |= 0x28;
            break;
        case 6 :
            u8AudioInfoFrameByte |= 0x30;
            break;
        case 7 :
            u8AudioInfoFrameByte |= 0x38;
            break;
        case 8 :
            u8AudioInfoFrameByte |= 0x40;
            break;
        case 9 :
            u8AudioInfoFrameByte |= 0x48;
            break;
        case 10 :
            u8AudioInfoFrameByte |= 0x50;
            break;
        case 11 :
            u8AudioInfoFrameByte |= 0x58;
            break;
        case 12 :
            u8AudioInfoFrameByte |= 0x60;
            break;
        case 13 :
            u8AudioInfoFrameByte |= 0x68;
            break;
        case 14 :
            u8AudioInfoFrameByte |= 0x70;
            break;
        case 15 :
            u8AudioInfoFrameByte |= 0x78;
            break;
        default :
            retval = HI_FAILURE;
            break;
    }
    /* Fill Down mix inhibit flag bit7 */
    if (punAUDInfoFrame->u32DownmixInhibit)
    {
        u8AudioInfoFrameByte |= 0x80;
    }
    else
    {
        u8AudioInfoFrameByte &= ~0x80;
    }
    pu8AudioInfoFrame[4] = (HI_U8)(u8AudioInfoFrameByte&0xF8);
    COM_INFO("%s<--\n",__FUNCTION__);

    return retval;
}

static HI_U32 hdmi_SetInfoFrame(HI_UNF_HDMI_ID_E enHdmi, HI_UNF_HDMI_INFOFRAME_S *pstInfoFrame)
{
    HI_S32 siRet = HI_SUCCESS;

    HDMI_CHECK_NULL_PTR(pstInfoFrame);

    COM_INFO("-->%s,enInfoFrameType %d \n",__FUNCTION__,pstInfoFrame->enInfoFrameType);
    HDMI_CHECK_ID(enHdmi);
    HDMI_CheckChnOpen(enHdmi);

    switch(pstInfoFrame->enInfoFrameType)
    {
        case HI_INFOFRAME_TYPE_AVI:
        {
            /*The InfoFrame provided by HDMI is limited to 30 bytes plus a checksum byte.*/
            HI_U8 pu8AviInfoFrame[32];
            HI_UNF_HDMI_AVI_INFOFRAME_VER2_S *pstAviInfoFrm = DRV_Get_AviInfoFrm(enHdmi);

            memset(pu8AviInfoFrame, 0, 32);
            siRet = hdmi_Create_AVI_Infoframe((HI_UNF_HDMI_AVI_INFOFRAME_VER2_S *)&(pstInfoFrame->unInforUnit.stAVIInfoFrame), pu8AviInfoFrame);
            memcpy(pstAviInfoFrm, &(pstInfoFrame->unInforUnit.stAVIInfoFrame), sizeof(HI_UNF_HDMI_AVI_INFOFRAME_VER2_S));

            if (DRV_Get_IsMce2App())
            {
                //printk("%s.%d \n",__FUNCTION__,__LINE__);
                //return HI_SUCCESS;
            }

            /* Set relative Register in HDMI IP */
            SI_DisableInfoFrame(AVI_TYPE);
            /* default AVI Infoframe: DefaultAVIInfoFrame[0xd] in eeprom.c*/
            SI_BlockWriteEEPROM( 13, EE_TXAVIINFO_ADDR, pu8AviInfoFrame);
            SI_SendAVIInfoFrame();
            SI_EnableInfoFrame(AVI_TYPE);
            siRet = HI_SUCCESS;
            break;
        }
        case HI_INFOFRAME_TYPE_SPD:
        {
            HI_U8 pu8spdInfoFrame[25]={0};
            HI_UNF_HDMI_SPD_INFOFRAME_S *pstSpdInfoFrame = DRV_Get_SpdInfoFrm(enHdmi);
            
            memcpy(&pu8spdInfoFrame[0], (pstInfoFrame->unInforUnit.stSPDInfoFrame.u8VendorName), sizeof(HI_U8)*8);
            memcpy(&pu8spdInfoFrame[8], (pstInfoFrame->unInforUnit.stSPDInfoFrame.u8ProductDescription), sizeof(HI_U8)*16);
            pu8spdInfoFrame[24]= 0x01;      /*Source Information 0X01:Digital STB*/
            SI_DisableInfoFrame(SPD_TYPE);
			SI_TX_SendInfoFrame( SPD_TYPE, pu8spdInfoFrame );
            SI_EnableInfoFrame(SPD_TYPE);

            memcpy(pstSpdInfoFrame, &(pstInfoFrame->unInforUnit.stSPDInfoFrame),sizeof(HI_UNF_HDMI_SPD_INFOFRAME_S));
            break;
        }
        case HI_INFOFRAME_TYPE_AUDIO:
        {
            HI_U8 pu8AudioInfoFrame[32];
            HI_UNF_HDMI_AUD_INFOFRAME_VER1_S *pstAudInfoFrm = DRV_Get_AudInfoFrm(enHdmi);

            memset(pu8AudioInfoFrame, 0, 32);
            hdmi_Create_Audio_Infoframe((HI_UNF_HDMI_AUD_INFOFRAME_VER1_S *)&(pstInfoFrame->unInforUnit.stAUDInfoFrame), pu8AudioInfoFrame);
            memcpy(pstAudInfoFrm, &(pstInfoFrame->unInforUnit.stAUDInfoFrame), sizeof(HI_UNF_HDMI_AUD_INFOFRAME_VER1_S));

            //SI_SetHdmiAudio(HI_FALSE);
            SI_DisableInfoFrame(AUD_TYPE);
            SI_Set_AudioInfoFramePacket (pu8AudioInfoFrame, 0,  0);
            SI_EnableInfoFrame(AUD_TYPE);
            //SI_SetHdmiAudio(HI_TRUE);

            break;
        }
        case HI_INFOFRAME_TYPE_MPEG:
            break;
        case HI_INFOFRAME_TYPE_VENDORSPEC:
            break;
        default:
            break;
    }
    COM_INFO("%s<--\n",__FUNCTION__);
    return siRet;
}


static HI_U32 hdmi_GetInfoFrame(HI_UNF_HDMI_ID_E enHdmi, HI_UNF_HDMI_INFOFRAME_TYPE_E enInfoFrameType, HI_UNF_HDMI_INFOFRAME_S *pstInfoFrame)
{
    HI_U32 siRet = HI_SUCCESS;

    HDMI_CHECK_NULL_PTR(pstInfoFrame);
    COM_INFO("-->%s\n",__FUNCTION__);

    HDMI_CHECK_ID(enHdmi);
    HDMI_CheckChnOpen(enHdmi);

    memset(pstInfoFrame, 0, sizeof(HI_UNF_HDMI_INFOFRAME_S));
    switch(enInfoFrameType)
    {
        case HI_INFOFRAME_TYPE_AVI:
        {
            HI_UNF_HDMI_AVI_INFOFRAME_VER2_S *pstAviInfoFrm = DRV_Get_AviInfoFrm(enHdmi);

            pstInfoFrame->enInfoFrameType = HI_INFOFRAME_TYPE_AVI;
            memcpy(&(pstInfoFrame->unInforUnit.stAVIInfoFrame), pstAviInfoFrm, sizeof(HI_UNF_HDMI_AVI_INFOFRAME_VER2_S));
            break;
        }
        case HI_INFOFRAME_TYPE_AUDIO:
        {
            HI_UNF_HDMI_AUD_INFOFRAME_VER1_S *pstAudInfoFrm = DRV_Get_AudInfoFrm(enHdmi);

            pstInfoFrame->enInfoFrameType = HI_INFOFRAME_TYPE_AUDIO;
            memcpy(&(pstInfoFrame->unInforUnit.stAUDInfoFrame), pstAudInfoFrm, sizeof(HI_UNF_HDMI_AUD_INFOFRAME_VER1_S));
            break;
        }
        case HI_INFOFRAME_TYPE_SPD:
        {
            HI_UNF_HDMI_SPD_INFOFRAME_S *pstSpdInfoFrame = DRV_Get_SpdInfoFrm(enHdmi);

            pstInfoFrame->enInfoFrameType = HI_INFOFRAME_TYPE_SPD;
            memcpy(&(pstInfoFrame->unInforUnit.stSPDInfoFrame), pstSpdInfoFrame, sizeof(HI_UNF_HDMI_SPD_INFOFRAME_S));
            break;
        }
        default:
            siRet = HI_FAILURE;
            break;
    }
    COM_INFO("%s<--\n",__FUNCTION__);

    return siRet;
}

HI_U32 DRV_HDMI_SetInfoFrame(HI_UNF_HDMI_ID_E enHdmi, HI_UNF_HDMI_INFOFRAME_S *pstInfoFrame)
{
    HI_U32 Ret;
    COM_INFO("-->%s\n",__FUNCTION__);
    HDMI_CHECK_ID(enHdmi);
    HDMI_CheckChnOpen(enHdmi);
    HDMI_CHECK_NULL_PTR(pstInfoFrame);


    if(pstInfoFrame->unInforUnit.stAVIInfoFrame.enOutputType == HI_UNF_HDMI_VIDEO_MODE_YCBCR422)
    {
        COM_WARN("no support : YCBCR422 <--\n",__FUNCTION__);
        return HI_ERR_HDMI_INVALID_PARA;
    }

    Ret = hdmi_SetInfoFrame(enHdmi, pstInfoFrame);
    COM_INFO("%s<--\n",__FUNCTION__);
    return Ret;
}

HI_U32 DRV_HDMI_GetInfoFrame(HI_UNF_HDMI_ID_E enHdmi, HI_UNF_HDMI_INFOFRAME_TYPE_E enInfoFrameType, HI_UNF_HDMI_INFOFRAME_S *pstInfoFrame)
{
    HI_U32 Ret;
    COM_INFO("-->%s\n",__FUNCTION__);
    HDMI_CHECK_ID(enHdmi);
    HDMI_CheckChnOpen(enHdmi);
    HDMI_CHECK_NULL_PTR(pstInfoFrame);

    Ret = hdmi_GetInfoFrame(enHdmi, enInfoFrameType, pstInfoFrame);

    COM_INFO("%s<--\n",__FUNCTION__);
    return Ret;
}


#ifdef DEBUG_NOTIFY_COUNT
HI_U32 hpd_changeCount = 0;
HI_U32 NotifyCount = 0;
#endif
HI_U32 DRV_HDMI_ReadEvent(HI_UNF_HDMI_ID_E enHdmi,HI_U32 procID)
{
    HI_S32 s32Ret=-1;
    HI_U32 index, event = 0;

    HDMI_PROC_EVENT_S *pEventList = DRV_Get_EventList(enHdmi);
    
   // COM_INFO("-->%s,procID:%d\n",__FUNCTION__,procID);

    //We deal with HDMI Event only after HDMI opened!
    if(procID >= MAX_PROCESS_NUM)
    {
        COM_ERR("Invalid procID:%d <--\n",procID);
        return HI_UNF_HDMI_EVENT_BUTT;
    }

    if(DRV_Get_IsChnOpened(enHdmi))
    {
        s32Ret = wait_event_interruptible_timeout(g_astHDMIWait, g_HDMIWaitFlag[procID], (HI_U32)msecs_to_jiffies(100));
        g_HDMIWaitFlag[procID] = (g_Event_Count[procID] > MIX_EVENT_COUNT) ? g_Event_Count[procID]-- : 0;
        if (s32Ret <= 0)
        {
            //COM_ERR("wait_event_interruptible_timeout s32Ret:%d,%d <--\n",s32Ret,g_HDMIWaitFlag[procID]);
            return 0;
        }



#ifdef DEBUG_EVENTLIST
        COM_WARN("\n procID %d CurEventNo %d ,event list: \n",procID,pEventList[procID].CurEventNo);
        for(index = 0;index < PROC_EVENT_NUM;index++)
        {
            COM_WARN("[%d]: 0x%x\n",index, pEventList[procID].Event[index]);
        }
#endif

        HDMI_EVENT_LOCK();
        for(index = 0; index < PROC_EVENT_NUM; index ++)
        {

            if ((pEventList[procID].Event[index] >= HI_UNF_HDMI_EVENT_HOTPLUG)
                && (pEventList[procID].Event[index] <=HI_UNF_HDMI_EVENT_RSEN_DISCONNECT))
            {
                event = pEventList[procID].Event[index];
                pEventList[procID].Event[index] = 0;
                break;
            }
#ifdef DEBUG_EVENTLIST
            COM_WARN("u32EventNo : %d \n",u32EventNo);
#endif
        }
        HDMI_EVENT_UNLOCK();
        
        if((event == HI_UNF_HDMI_EVENT_HOTPLUG)
        &&(HI_TRUE == SI_Is_HPDKernelCallback_DetectHPD()))
        {
#ifdef DEBUG_NOTIFY_COUNT
            hpd_changeCount++;
            HPD_ERR("Hotplug change count! %d \n",hpd_changeCount);
#endif
            event = 0;
        }
    }
    COM_INFO("%s,event:0x%x<--\n",__FUNCTION__,event);
    return event;
}

extern void hdmi_MCE_ProcHotPlug(HI_HANDLE hHdmi);

static void hdmi_ProcEvent(HI_UNF_HDMI_EVENT_TYPE_E event,HI_U32 procID)
{
    HDMI_PROC_EVENT_S *pEventList = DRV_Get_EventList(HI_UNF_HDMI_ID_0);
    
    COM_INFO("-->%s,event:0x%x\n",__FUNCTION__,event);
    
    /*
    //for avoid Silicon image 40Pll phy oe problem
      when hotplug occured,we need stop open oe in any time.
      but in boot,we can not detect hotplug changed,so display blank in some tv
      we need close & open oe first time in these TV
    */
    if(HI_TRUE == DRV_Get_IsChnStart(HI_UNF_HDMI_ID_0))
    {   
        Check1stOE(HI_UNF_HDMI_ID_0);
    }

    if(procID >= MAX_PROCESS_NUM)
    {
        COM_ERR("Invalid procID:%d <--\n",procID);
        return;
    }

    if(g_UserCallbackFlag == HDMI_CALLBACK_USER) //app
    {
        HI_U32 u32CurEvent = pEventList[procID].CurEventNo;
        HDMI_EVENT_LOCK();
        g_Event_Count[procID]++;

        pEventList[procID].Event[u32CurEvent] = event;
        pEventList[procID].CurEventNo = (u32CurEvent + 1) % PROC_EVENT_NUM;

        HDMI_EVENT_UNLOCK();
        g_HDMIWaitFlag[procID]++;
        wake_up(&g_astHDMIWait);
        COM_INFO("g_Event_Count:%d,Wait:%d\n",g_Event_Count[procID], g_HDMIWaitFlag[procID]);
    }
    else if((g_UserCallbackFlag == HDMI_CALLBACK_KERNEL)//mce
         &&(HI_UNF_HDMI_EVENT_HOTPLUG == event))
    {
    //when unf_init after load ko too fast, maybe two hotplug will be trigered in the same time.
                HDMI_EVENT_LOCK();
                hdmi_MCE_ProcHotPlug(HI_UNF_HDMI_ID_0);
                HDMI_EVENT_UNLOCK();
    }

    return;
}

void DRV_HDMI_NotifyEvent(HI_UNF_HDMI_EVENT_TYPE_E event)
{
    HI_U32 u32ProcIndex = 0;
    HDMI_PROC_EVENT_S *pEventList = DRV_Get_EventList(HI_UNF_HDMI_ID_0);
#if defined (CEC_SUPPORT)
    HDMI_CHN_ATTR_S *pstChnAttr = DRV_Get_ChnAttr();
#endif

    COM_INFO("-->%s\n",__FUNCTION__);

#ifdef DEBUG_NOTIFY_COUNT
    if(event != HI_UNF_HDMI_EVENT_HDCP_USERSETTING)
    {
        NotifyCount++;
        HI_PRINT("\n **** Notify:%d event 0x%x **** \n",NotifyCount,event);
    }
#endif

    COM_INFO("HDMI EVENT TYPE:0x%x\n", event);
    if (HI_FALSE == DRV_Get_IsChnOpened(HI_UNF_HDMI_ID_0))
    {
        COM_INFO("HDMI not open<--\n");
        return;
    }
    
    if (event == HI_UNF_HDMI_EVENT_HOTPLUG)
    {
        SI_EnableInterrupts();
        SI_HPD_SetHPDUserCallbackCount();

        //hdmi_AdjustAVIInfoFrame(HI_UNF_HDMI_ID_0);
        hdmi_SetAndroidState(STATE_HOTPLUGIN);
        
#if defined (CEC_SUPPORT)
        SI_CEC_SetUp();
        pstChnAttr[HI_UNF_HDMI_ID_0].u8CECCheckCount = 0;
#endif
    }
    else if (event == HI_UNF_HDMI_EVENT_NO_PLUG)
    {
        if (g_HDMIUserInitNum)
        {
            //0x72:0x08 powerdown is only needed in isr && cec
            /* Close HDMI Output */
            //SI_PowerDownHdmiTx();
            SI_SetHdmiVideo(HI_FALSE);
            SI_SetHdmiAudio(HI_FALSE);
            SI_DisableHdmiDevice();
            DRV_Set_ChnStart(HI_UNF_HDMI_ID_0,HI_FALSE);
#if defined (HDCP_SUPPORT)
            /*Set HDCP Off */
            SI_WriteByteEEPROM(EE_TX_HDCP, 0x00);
#endif

#if defined (CEC_SUPPORT)
            //Close CEC
            SI_CEC_Close();
            DRV_Set_CECStart(HI_UNF_HDMI_ID_0,HI_FALSE);
            pstChnAttr[HI_UNF_HDMI_ID_0].u8CECCheckCount = 0;
            memset(&(pstChnAttr[HI_UNF_HDMI_ID_0].stCECStatus), 0, sizeof(HI_UNF_HDMI_CEC_STATUS_S));
#endif
        }
        else if(g_HDMIKernelInitNum)
        {
            //if oe not matching hotplug,some err will occured in phy

            //0x72:0x08 powerdown is only needed in isr && cec
            /* Close HDMI Output */
            //SI_PowerDownHdmiTx();
            SI_SetHdmiVideo(HI_FALSE);
            SI_SetHdmiAudio(HI_FALSE);
            SI_DisableHdmiDevice();
        }

        hdmi_SetAndroidState(STATE_HOTPLUGOUT);
    }
#if 0 /*--NO MODIFY : COMMENT BY CODINGPARTNER--*/
    else if (event == HI_UNF_HDMI_EVENT_EDID_FAIL)
    {

    }
#endif /*--NO MODIFY : COMMENT BY CODINGPARTNER--*/
#if defined (HDCP_SUPPORT)
#if 0 /*--NO MODIFY : COMMENT BY CODINGPARTNER--*/
    else if (event == HI_UNF_HDMI_EVENT_HDCP_FAIL)
    {

    }
#endif /*--NO MODIFY : COMMENT BY CODINGPARTNER--*/
    else if (event == HI_UNF_HDMI_EVENT_HDCP_SUCCESS)
    {
        SI_timer_stop();
    }
#endif
#if 0 /*--NO MODIFY : COMMENT BY CODINGPARTNER--*/
    else if (event == HI_UNF_HDMI_EVENT_RSEN_CONNECT)
    {
        COM_INFO("CONNECT Event:0x%x\n", event);
    }
    else if (event == HI_UNF_HDMI_EVENT_RSEN_DISCONNECT)
    {
        COM_INFO("DISCONNECT Event:0x%x\n", event);
    }
    else
    {
        COM_INFO("Unknow Event:0x%x\n", event);
    }
    
#endif /*--NO MODIFY : COMMENT BY CODINGPARTNER--*/

    for(u32ProcIndex = 0; u32ProcIndex < MAX_PROCESS_NUM; u32ProcIndex++)
    {
        if(HI_TRUE == pEventList[u32ProcIndex].bUsed)
        {
            COM_INFO("proc id %d bUsed %d\n",u32ProcIndex,pEventList[u32ProcIndex].bUsed);
            hdmi_ProcEvent(event, u32ProcIndex);
        }
    }

    COM_INFO("%s<--\n",__FUNCTION__);
}

HI_U32 DRV_HDMI_Start(HI_UNF_HDMI_ID_E enHdmi)
{
    HDMI_APP_ATTR_S     *pstAppAttr = DRV_Get_AppAttr(enHdmi);

    COM_INFO("-->%s\n",__FUNCTION__);
    HDMI_CHECK_ID(enHdmi);
    HDMI_CheckChnOpen(enHdmi);

    if(DRV_Get_IsMce2App() || DRV_Get_IsOpenedInBoot())
    {
        COM_INFO("IsMce2App = %d, IsOpenedInBoot = %d\n", DRV_Get_IsMce2App(), DRV_Get_IsOpenedInBoot());
        DRV_Set_Mce2App(HI_FALSE);
        DRV_Set_OpenedInBoot(HI_FALSE);
        SI_WaitForPixelClkStable();
        SI_EnableHdmiDevice();
        SI_SendCP_Packet(HI_FALSE);//maybe avmute on while start,so set avmute off first
    }
    else
    {
        /* Enable HDMI Ouptut */
        if (HI_TRUE == pstAppAttr->bEnableHdmi)
        {
            COM_INFO("start: HDMI\n");
            if(!SI_TX_IsHDMImode())
            {
                SI_Start_HDMITX();
                //SI_TX_SetHDMIMode(ON);    //for hdmi
            }
        }
#if defined (DVI_SUPPORT)
        else
        {
            HI_PRINT("start: DVI\n");
            if(SI_TX_IsHDMImode())
            {
                SI_Init_DVITX();
                //SI_TX_SetHDMIMode(OFF);    //for dvi
            }
        }
#endif

        /* Now we wake up HDMI Output */
        SI_WakeUpHDMITX();

        /*leo in order to sync Audio  on hotplug*/
        SI_SetHdmiAudio(pstAppAttr->bEnableAudio);
        SI_SetHdmiVideo(pstAppAttr->bEnableVideo);

        SI_WaitForPixelClkStable();
        SI_EnableHdmiDevice();
        SI_SendCP_Packet(HI_FALSE);

    }
    
    DRV_Set_ChnStart(enHdmi,HI_TRUE);
    
#if defined (HDCP_SUPPORT)
    if (HI_TRUE == pstAppAttr->bHDCPEnable)
    {
        if (HI_TRUE == SI_Is_HPDKernelCallback_DetectHPD())
        {
            /* HPD again before we try to open Auth 1*/
            HDCP_ERR("HPD Callback detect new HPD\n");
        }
        else if(HI_TRUE == SI_Is_HPDUserCallback_DetectHPD())
        {
            /* HPD again before we try to open Auth 2*/
            HDCP_ERR("HPD Callback with Auth detect new HPD\n");
        }
        else
        {
            HDCP_INFO("try to open HDCP Auth\n");
            SI_WriteByteEEPROM(EE_TX_HDCP, 0xFF);
        }
    }
    else
    {
        SI_WriteByteEEPROM(EE_TX_HDCP, 0x00);
    }

#endif
    COM_INFO("%s<--\n",__FUNCTION__);
    return HI_SUCCESS;
}

HI_U32 DRV_HDMI_Stop(HI_UNF_HDMI_ID_E enHdmi)
{
    COM_INFO("-->%s\n",__FUNCTION__);
    HDMI_CHECK_ID(enHdmi);

    //only in (init num == 1) case ,we can close output hdmi
    if((DRV_HDMI_GetInitNum(enHdmi) != 1)
        ||(!DRV_Get_IsChnStart(enHdmi)))
    {
        COM_INFO("HDMI Init Num != 1,or not open <--\n");
        return HI_SUCCESS;
    }

    SI_SendCP_Packet(ON);
    //msleep(40);
    SI_SetHdmiVideo(HI_FALSE);
    SI_SetHdmiAudio(HI_FALSE);
    SI_DisableHdmiDevice();
    //disable oe not need 10ms
    //msleep(10);
    SI_PowerDownHdmiTx();

    DRV_Set_ChnStart(enHdmi,HI_FALSE);
#if defined (HDCP_SUPPORT)
    /*Set HDCP Off */
    SI_WriteByteEEPROM(EE_TX_HDCP, 0x00);
#endif

    COM_INFO("%s<--\n",__FUNCTION__);
    return HI_SUCCESS;
}


HI_U32 DRV_HDMI_SetDeepColor(HI_UNF_HDMI_ID_E enHdmi, HI_UNF_HDMI_DEEP_COLOR_E enDeepColor)
{
    HDMI_VIDEO_ATTR_S   *pstVidAttr = DRV_Get_VideoAttr(enHdmi);
    HDMI_AUDIO_ATTR_S   *pstAudAttr = DRV_Get_AudioAttr(enHdmi);
    HDMI_APP_ATTR_S     *pstAppAttr = DRV_Get_AppAttr(enHdmi);

    HI_U8                SiDeepColor;

    COM_INFO("-->%s\n",__FUNCTION__);
    pstAppAttr->enDeepColorMode = enDeepColor;

    if (HI_UNF_HDMI_DEEP_COLOR_24BIT == enDeepColor)
    {
        SiDeepColor = (HI_U8)SiI_DeepColor_Off;
    }
    else if (HI_UNF_HDMI_DEEP_COLOR_30BIT == enDeepColor)
    {
        SiDeepColor = (HI_U8)SiI_DeepColor_30bit;
    }
    else if (HI_UNF_HDMI_DEEP_COLOR_36BIT == enDeepColor)
    {
        SiDeepColor = (HI_U8)SiI_DeepColor_36bit;
    }
    else
    {
        SiDeepColor = (HI_U8)SiI_DeepColor_Off;
    }
    
    (void) DRV_HDMI_SetAVMute(HI_UNF_HDMI_ID_0, HI_TRUE);

    SI_SetDeepColor(SiDeepColor);

    (void) DRV_HDMI_SetVOAttr(HI_UNF_HDMI_ID_0, pstVidAttr,HI_TRUE);
    (void) DRV_HDMI_SetAOAttr(HI_UNF_HDMI_ID_0, pstAudAttr,HI_TRUE);
    
    (void) DRV_HDMI_SetAVMute(HI_UNF_HDMI_ID_0, HI_FALSE);

    //DeepColor is setting by HDMI PHY, but it will effect
    //HDMI CONTROLLER Video frequency, it need to do software reset, before reset.
    if ((SiDeepColor == SiI_DeepColor_Off) || (SiDeepColor == SiI_DeepColor_24bit))
    {
        SI_SW_ResetHDMITX();   //force to reset the whole CTRL+PHY!
    }
    COM_INFO("%s<--\n",__FUNCTION__);

    return HI_SUCCESS;
}

HI_U32 DRV_HDMI_GetDeepColor(HI_UNF_HDMI_ID_E enHdmi, HI_UNF_HDMI_DEEP_COLOR_E *penDeepColor)
{
    return HI_SUCCESS;
}

HI_U32 DRV_HDMI_SetxvYCCMode(HI_UNF_HDMI_ID_E enHdmi, HI_BOOL bEnable)
{

    HI_U8 u8Data;
    HI_U8 InfCtrl2;
    HDMI_VIDEO_ATTR_S   *pstVidAttr  = DRV_Get_VideoAttr(enHdmi);
    HDMI_ATTR_S         *pstHDMIAttr = DRV_Get_HDMIAttr(enHdmi);

    COM_WARN("%s,no support <--\n",__FUNCTION__);
    InfCtrl2 = ReadByteHDMITXP1(INF_CTRL2);
    if (HI_TRUE == bEnable)
    {
        COM_INFO("enable xvYCC\n");
        /* enable Gamut Metadata InfoFrame transmission */
        InfCtrl2 |= 0xc0;
        COM_INFO("INF_CTRL2(0x%02x) is 0x%02x\n", INF_CTRL2, InfCtrl2);
        WriteByteHDMITXP1(INF_CTRL2, InfCtrl2);  //Packet Buffer Control #2 Register 0x7A   0x3F

        /* Gamut boundary descriptions (GBD) and other gamut-related metadata
           are carried using the Gamut Metadata Packet.*/
        if ( pstVidAttr->enVideoFmt <= HI_UNF_ENC_FMT_720P_50)
        {
            (HI_VOID)SI_SendGamutMeta_Packet(HI_TRUE);
        }
        else
        {
            (HI_VOID)SI_SendGamutMeta_Packet(HI_FALSE);
        }

        //u8Data = ReadByteHDMITXP0(RGB2XVYCC_CT);  //hdmi/hmitx.h  TX_SLV0:0x72
        u8Data = 0x07;
        COM_INFO("RGB2XVYCC_CT (0x%02x) data is 0x%02x\n", RGB2XVYCC_CT, u8Data);
        WriteByteHDMITXP0(RGB2XVYCC_CT, u8Data);
    }
    else
    {
        COM_INFO("Disable xvYCC\n");
        /* disable Gamut Metadata InfoFrame transmission */
        InfCtrl2 &= ~0xc0;
        COM_INFO("INF_CTRL2(0x%02x) is 0x%02x\n", INF_CTRL2, InfCtrl2);
        WriteByteHDMITXP1(INF_CTRL2, InfCtrl2);  //Packet Buffer Control #2 Register 0x7A   0x3F

        //u8Data = ReadByteHDMITXP0(RGB2XVYCC_CT);  //hdmi/hmitx.h  TX_SLV0:0x72
        u8Data = 0x00;
        COM_INFO("RGB2XVYCC_CT (0x%02x) data is 0x%02x\n", RGB2XVYCC_CT, u8Data);
        WriteByteHDMITXP0(RGB2XVYCC_CT, u8Data);
    }
    COM_INFO("%s<--\n",__FUNCTION__);
    pstHDMIAttr->stAppAttr.bxvYCCMode = bEnable;

    return HI_SUCCESS;
}

HI_U32 DRV_HDMI_SetAVMute(HI_UNF_HDMI_ID_E enHdmi, HI_BOOL bAvMute)
{
    HI_U32 Delay = 0;
    COM_INFO("-->%s, bAvMute:%d\n", __FUNCTION__, bAvMute);
    HDMI_CHECK_ID(enHdmi);
    HDMI_CheckChnOpen(enHdmi);

    if (bAvMute)
    {
        //Disable HDMI Output!!
        SI_SendCP_Packet(HI_TRUE);
        (void)GetmuteDelay(enHdmi, &Delay);
        DelayMS(Delay); //HDMI compatibility requirement for Suddenly Close.
        //DelayMS(200);
    }
    else
    {
        SI_SendCP_Packet(HI_FALSE);
    }

    COM_INFO("%s<--\n",__FUNCTION__);
    return HI_SUCCESS;
}

// The Procedures for SetFormat
// Set AV mute
// HW Reset controller
// Hw Reset Phy
// delay 50us
// Release Hw reset Phy
// cfg Phy
// Release HW reset for controller
// Delay 5ms for pll stable
HI_U32 DRV_HDMI_SetFormat(HI_UNF_HDMI_ID_E enHdmi, HI_UNF_ENC_FMT_E enFmt, HI_UNF_HDMI_3D_FORMAT_E enStereo)
{
    HDMI_VIDEO_ATTR_S   *pstVidAttr = DRV_Get_VideoAttr(enHdmi);
    HDMI_AUDIO_ATTR_S   *pstAudAttr = DRV_Get_AudioAttr(enHdmi);
    HDMI_APP_ATTR_S     *pstAppAttr = DRV_Get_AppAttr(enHdmi);

    HI_UNF_HDMI_SINK_CAPABILITY_S    *pSinkCap = DRV_Get_SinkCap(HI_UNF_HDMI_ID_0);
    HI_UNF_HDMI_VIDEO_MODE_E          enVidOutMode;
	HI_UNF_ENC_FMT_E                 enEncodingFormat = enFmt;
    HI_U32 delayTime = 0;

    COM_INFO("-->%s\n",__FUNCTION__);    

    HDMI_CHECK_ID(enHdmi);
    HDMI_CheckChnOpen(enHdmi);

    //if the format change when mce to app,clear some flags,fix DTS2014082207534,add by h00180450
    if (pstVidAttr->enVideoFmt != enEncodingFormat)
    {
        DRV_Set_Mce2App(HI_FALSE);
        DRV_Set_OpenedInBoot(HI_FALSE);
        DRV_Set_ForceUpdateFlag(enHdmi,HI_TRUE);
    }

    enEncodingFormat =  DRV_N_Pa_Adjust(enEncodingFormat);

    pstVidAttr->b3DEnable =(HI_UNF_3D_MAX_BUTT > enStereo)? HI_TRUE : HI_FALSE;
    pstVidAttr->u83DParam = enStereo;
        
    pstAppAttr->b3DEnable = pstVidAttr->b3DEnable;
    pstAppAttr->u83DParam = pstVidAttr->u83DParam;
    
    COM_INFO("FMT:%d,3DFlag:%d, 3dParm:%d\n",enEncodingFormat,pstVidAttr->b3DEnable,pstVidAttr->u83DParam);

    if(DRV_Get_IsValidSinkCap(HI_UNF_HDMI_ID_0))
    {
        if (HI_TRUE != pSinkCap->bVideoFmtSupported[DRV_HDMI_Disp2UnfFmt(enEncodingFormat)])
        {
            COM_ERR("Warring: Sink no support Timing!!!\n");
        }
    }
    else
    {
        COM_INFO("EDID error! Invalid capability\n");
    }

    enVidOutMode = pstAppAttr->enVidOutMode;
    
    if (DRV_Get_IsLCDFmt(enEncodingFormat))
    {
          COM_INFO("DVI timing \n");
          enVidOutMode = HI_UNF_HDMI_VIDEO_MODE_RGB444;
    }
    else if(enVidOutMode >= HI_UNF_HDMI_VIDEO_MODE_BUTT)
    {
        if((DRV_Get_IsValidSinkCap(HI_UNF_HDMI_ID_0))
            &&(HI_TRUE == pSinkCap->bSupportYCbCr))
        {
            enVidOutMode = HI_UNF_HDMI_VIDEO_MODE_YCBCR444;
        }
        else
        {
            COM_INFO("EDID error! change to rgb!\n");
            enVidOutMode = HI_UNF_HDMI_VIDEO_MODE_RGB444;
        }
    }
  
    COM_INFO("enVidOutMode:%d\n", enVidOutMode);
    pstAppAttr->enVidOutMode = enVidOutMode;
    pstVidAttr->enVideoFmt = enEncodingFormat;

    if(HI_TRUE != SI_HPD_Status())
    {
        //setting format in unplug means, video did not configed.so we need config video,in next hotplug callbackfunc
        DRV_Set_ForceUpdateFlag(enHdmi,HI_TRUE);
        //when undetect hotplug,don't need to set fmt,we process it in hotplug callbackfunc
        COM_INFO("Hotplug not detected!<--");

        return HI_SUCCESS;
    }
    else
    {
        DRV_Set_ForceUpdateFlag(enHdmi,HI_FALSE);
        SI_TX_PHY_PowerDown(HI_FALSE);
        DelayMS(1);
    }

    DRV_HDMI_SetVOAttr(enHdmi, pstVidAttr,HI_TRUE);
    DRV_HDMI_SetAOAttr(enHdmi, pstAudAttr,HI_TRUE);

    COM_INFO("bEnableHdmi:%d\n", pstAppAttr->bEnableHdmi);

    hdmi_AdjustAVIInfoFrame(enHdmi);
    hdmi_AdjustVSDBInfoFrame(enHdmi);
    hdmi_AdjustAUDInfoFrame(enHdmi);

    //DelayMS(100);
    DelayMS(10);
    
    SI_EnableHdmiDevice();
    GetFormatDelay(enHdmi,&delayTime);
    DelayMS(delayTime);
    DRV_HDMI_SetAVMute(HI_UNF_HDMI_ID_0, HI_FALSE);


#if defined (HDCP_SUPPORT)
    if((pstAppAttr->bHDCPEnable == HI_TRUE)
       || (HI_FALSE == DRV_Get_IsChnOpened(HI_UNF_HDMI_ID_0)))
    {
        SI_WriteByteEEPROM(EE_TX_HDCP, 0xFF);
    }
    else
    {
        SI_WriteByteEEPROM(EE_TX_HDCP, 0x00);
    }
   // msleep(60);
#endif

    COM_INFO("%s<--\n",__FUNCTION__);

    return HI_SUCCESS;
}

HI_U32 DRV_HDMI_PreFormat(HI_UNF_HDMI_ID_E enHdmi, HI_UNF_ENC_FMT_E enEncodingFormat)
{

    COM_INFO("-->%s\n",__FUNCTION__);

#if defined (HDCP_SUPPORT)
    //Disable HDCP
    if(SI_ReadByteEEPROM(EE_TX_HDCP))
    {
        /* First to close HDCP Key */
        SI_WriteByteEEPROM(EE_TX_HDCP, 0x00);
        SI_SetEncryption(OFF);
        //need so long?
        //DelayMS(200);
        DelayMS(50);
    }
#endif
    DRV_HDMI_SetAVMute(enHdmi, HI_TRUE);
    SI_DisableHdmiDevice();
    DelayMS(1);
    SI_TX_PHY_PowerDown(HI_TRUE);

    COM_INFO("%s<--\n",__FUNCTION__);
    return 0;
}

HI_U32 DRV_HDMI_Force_GetEDID(HDMI_EDID_S *pEDID)
{
    HI_U32  u32Ret= HI_FAILURE;

    COM_INFO("-->%s\n",__FUNCTION__);
    HDMI_CHECK_ID(pEDID->enHdmi);
    HDMI_CheckChnOpen(pEDID->enHdmi);

    u32Ret = SI_Force_GetEDID(pEDID->u8Edid, &pEDID->u32Edidlength);
    if((u32Ret == HI_SUCCESS)
       && (pEDID->u32Edidlength > 0)
       && (pEDID->u32Edidlength <= 512))
    {
        pEDID->u8EdidValid   = HI_TRUE;
    }
    else
    {
        pEDID->u8EdidValid   = HI_FALSE;
        pEDID->u32Edidlength = 0;
        u32Ret = HI_FAILURE;
    }
    EDID_INFO("Read EDID %s!!! len:%d\n",((pEDID->u32Edidlength)? "sucess" : "failure"), pEDID->u32Edidlength);
    
    COM_INFO("%s<--\n",__FUNCTION__);
    return u32Ret;
}

HI_U32 DRV_HDMI_Read_EDID(HDMI_EDID_S *pEDID)
{
    HI_U32 u32Ret = HI_FAILURE;
    
    COM_INFO("-->%s\n",__FUNCTION__);
    
    u32Ret = SI_Proc_ReadEDIDBlock(pEDID->u8Edid, &pEDID->u32Edidlength);
    if (u32Ret == HI_SUCCESS)
    {          
        pEDID->u8EdidValid   = HI_TRUE;            
    }        
    else
    {        
        pEDID->u8EdidValid   = HI_FALSE;
        pEDID->u32Edidlength = 0;
        u32Ret = HI_FAILURE;
    }
    EDID_INFO("Read EDID %s!!! len:%d\n",((pEDID->u32Edidlength)? "sucess" : "failure"), pEDID->u32Edidlength);
    
    COM_INFO("%s<--\n",__FUNCTION__);
    
    return u32Ret;
}

HI_S32 DRV_HDMI_GetProcID(HI_UNF_HDMI_ID_E enHdmi, HI_U32 *pu32ProcID)
{
    HI_U32 u32ProcIndex = 0;
    HDMI_PROC_EVENT_S *pEventList = DRV_Get_EventList(HI_UNF_HDMI_ID_0);


    if(pu32ProcID == NULL)
    {
        COM_WARN("Null ProcID pointer!<-- \n");
        return HI_FAILURE;
    }

    for(u32ProcIndex = 0; u32ProcIndex < MAX_PROCESS_NUM; u32ProcIndex++)
    {
        if(HI_TRUE != pEventList[u32ProcIndex].bUsed)
        {
            *pu32ProcID = u32ProcIndex;
            pEventList[u32ProcIndex].bUsed = HI_TRUE;
            pEventList[u32ProcIndex].u32ProcHandle =  g_u32ProcHandle;
            break;
        }
    }

    COM_INFO("%s,ProcID:%d <--\n",__FUNCTION__,*pu32ProcID);
    return HI_SUCCESS;
}

HI_S32 DRV_HDMI_ReleaseProcID(HI_UNF_HDMI_ID_E enHdmi, HI_U32 u32ProcID)
{
    HDMI_PROC_EVENT_S *pEventList = DRV_Get_EventList(HI_UNF_HDMI_ID_0);

    COM_INFO("%s,ProcID:%d <--\n",__FUNCTION__, u32ProcID);

    //待测试
    //HDMI_CHECK_ID(enHdmi);

    if(u32ProcID >= MAX_PROCESS_NUM)
    {
        return HI_FAILURE;
    }

    memset(&pEventList[u32ProcID], 0, sizeof(HDMI_PROC_EVENT_S));

    return HI_SUCCESS;
}

HI_S32 DRV_HDMI_AudioChange(HI_UNF_HDMI_ID_E enHdmi, HDMI_AUDIO_ATTR_S *pstHDMIAOAttr)
{
    HI_S32                            Ret = HI_FAILURE;
    HI_UNF_HDMI_AUD_INFOFRAME_VER1_S *pstAUDInfoframe = DRV_Get_AudInfoFrm(enHdmi);
    HDMI_AUDIO_ATTR_S                *pstAudAttr = DRV_Get_AudioAttr(enHdmi);
    //    HDMI_APP_ATTR_S                  *pstAppAttr = DRV_Get_AppAttr(enHdmi);
    COM_INFO("-->%s\n",__FUNCTION__);

    COM_INFO(" enSoundIntf:%d,\n enSampleRate:%d,\n u32Channels:%d,\n enBitDepth:%d,\n u8DownSampleParm:%d,\n u8I2SCtlVbit:%d\n",
        pstHDMIAOAttr->enSoundIntf,pstHDMIAOAttr->enSampleRate,pstHDMIAOAttr->u32Channels,pstHDMIAOAttr->enBitDepth,pstHDMIAOAttr->u8DownSampleParm,pstHDMIAOAttr->u8I2SCtlVbit);

    HDMI_CHECK_ID(enHdmi);
    HDMI_CheckChnOpen(enHdmi);

    //we force set bit depth to 16bit
    pstHDMIAOAttr->enBitDepth = HI_UNF_BIT_DEPTH_16;

    if((pstHDMIAOAttr->enSoundIntf == pstAudAttr->enSoundIntf)
        && (pstHDMIAOAttr->enSampleRate == pstAudAttr->enSampleRate)
        && (pstHDMIAOAttr->u32Channels == pstAUDInfoframe->u32ChannelCount)
        && (pstHDMIAOAttr->enBitDepth == pstAudAttr->enBitDepth)
        && (pstHDMIAOAttr->enAudioCode == pstAUDInfoframe->enCodingType))
    {
        COM_INFO("Audio no change <--\n");
        return HI_SUCCESS;
    }

    if ((HDMI_AUDIO_INTERFACE_I2S == pstHDMIAOAttr->enSoundIntf)
       || (HDMI_AUDIO_INTERFACE_SPDIF == pstHDMIAOAttr->enSoundIntf)
       || (HDMI_AUDIO_INTERFACE_HBR == pstHDMIAOAttr->enSoundIntf))
    {
        pstAudAttr->enSoundIntf = pstHDMIAOAttr->enSoundIntf;
    }
    else
    {
        goto _EXIT;
    }

    switch (pstHDMIAOAttr->enSampleRate)
    {
        case HI_UNF_SAMPLE_RATE_32K:
        case HI_UNF_SAMPLE_RATE_44K:
        case HI_UNF_SAMPLE_RATE_48K:
        case HI_UNF_SAMPLE_RATE_88K:
        case HI_UNF_SAMPLE_RATE_96K:
        case HI_UNF_SAMPLE_RATE_176K:
        case HI_UNF_SAMPLE_RATE_192K:
            pstAudAttr->enSampleRate = pstHDMIAOAttr->enSampleRate;
            break;
        default:
            goto _EXIT;
    }


    if(pstHDMIAOAttr->enSoundIntf == HDMI_AUDIO_INTERFACE_SPDIF
        || pstHDMIAOAttr->enSoundIntf == HDMI_AUDIO_INTERFACE_HBR)
    {
        pstAUDInfoframe->u32ChannelCount = 0;// refer from stream head
    }
    else
    {
        pstAUDInfoframe->u32ChannelCount = pstHDMIAOAttr->u32Channels; //PCM maybe 2 or 8;
    }

    if(pstHDMIAOAttr->enAudioCode == HDMI_AUDIO_CODING_AC3
       || pstHDMIAOAttr->enAudioCode == HDMI_AUDIO_CODING_DTS
       || pstHDMIAOAttr->enAudioCode == HDMI_AUDIO_CODING_DDPLUS)
    {
        pstAUDInfoframe->enCodingType = pstHDMIAOAttr->enAudioCode;
    }
    else
    {
        pstAUDInfoframe->enCodingType = HDMI_AUDIO_CODING_REFER_STREAM_HEAD;
    }

    //Refer to Stream Header
    pstAUDInfoframe->u32SampleSize  = HI_UNF_HDMI_DEFAULT_SETTING;
    //Refer to Stream Header
    pstAUDInfoframe->u32SamplingFrequency = HI_UNF_HDMI_DEFAULT_SETTING;

    switch(pstHDMIAOAttr->u32Channels)     //HDMI channel map
    {
        case 3:
            pstAUDInfoframe->u32ChannelAlloc = 0x01;
            break;
        case 6:
            pstAUDInfoframe->u32ChannelAlloc = 0x0b;
            break;
        case 8:
            pstAUDInfoframe->u32ChannelAlloc = 0x13;
            break;
        default:
            pstAUDInfoframe->u32ChannelAlloc = 0x00;
            break;
    }
    pstAUDInfoframe->u32LevelShift        = 0;
    pstAUDInfoframe->u32DownmixInhibit    = HI_FALSE;

    if((pstHDMIAOAttr->u32Channels > 2)
    &&(HDMI_AUDIO_INTERFACE_I2S == pstHDMIAOAttr->enSoundIntf))
    {
        pstAudAttr->bIsMultiChannel = HI_TRUE;
    }
    else
    {
        pstAudAttr->bIsMultiChannel = HI_FALSE;
    }


    pstAudAttr->u32Channels = pstHDMIAOAttr->u32Channels;
    pstAudAttr->enBitDepth = HI_UNF_BIT_DEPTH_16;

    Ret = DRV_HDMI_SetAOAttr(enHdmi, pstAudAttr, HI_TRUE);

    hdmi_AdjustAUDInfoFrame(enHdmi);

_EXIT:
    COM_INFO(" enSoundIntf:%d,\n enSampleRate:%d,\n u32Channels:%d,\n enBitDepth:%d,\n u8DownSampleParm:%d,\n u8I2SCtlVbit:%d\n",
        pstAudAttr->enSoundIntf,pstAudAttr->enSampleRate,pstAudAttr->u32Channels,pstAudAttr->enBitDepth,pstAudAttr->u8DownSampleParm,pstAudAttr->u8I2SCtlVbit);

    if(Ret != HI_SUCCESS)
    {
        COM_ERR("Set HDMI Audio Attr failed!!!\n");
    }
    COM_INFO("%s<--\n",__FUNCTION__);

    return Ret;
}

//需要根据edid补充完善
static HI_U32 hdmi_AdjustAVIInfoFrame(HI_UNF_HDMI_ID_E enHdmi)
{
    HI_U32 Ret = HI_SUCCESS; 
    //HDMI_ATTR_S stHDMIAttr;
    HDMI_VIDEO_ATTR_S   *pstVidAttr = DRV_Get_VideoAttr(enHdmi);
    HI_UNF_HDMI_INFOFRAME_S           stInfoFrame;
    HI_UNF_HDMI_AVI_INFOFRAME_VER2_S  *pstVIDInfoframe;
    //HI_UNF_HDMI_SINK_CAPABILITY_S *pSinkCap = DRV_Get_SinkCap(HI_UNF_HDMI_ID_0);
    HDMI_APP_ATTR_S *pstAppAttr = DRV_Get_AppAttr(enHdmi);
    HI_U8 u8Index = 0; 


    COM_INFO("-->%s\n",__FUNCTION__);

    if(SI_IsHDMIResetting() || HI_FALSE == pstAppAttr->bEnableHdmi)
    {
        COM_INFO("no need cfg AVIInfoFrame <--\n");
        return HI_SUCCESS;
    }

    /* New function to set AVI Infoframe */
    (void) hdmi_GetInfoFrame(enHdmi, HI_INFOFRAME_TYPE_AVI, &stInfoFrame);

    pstVIDInfoframe = (HI_UNF_HDMI_AVI_INFOFRAME_VER2_S *)&(stInfoFrame.unInforUnit.stAVIInfoFrame);

    if (DRV_Get_IsLCDFmt( pstVidAttr->enVideoFmt))
    {
        COM_INFO("PC(VESA) timing:\n");
        pstVIDInfoframe->enTimingMode = HI_UNF_ENC_FMT_861D_640X480_60;
        pstVIDInfoframe->enRGBQuantization  = HDMI_RGB_QUANTIZATION_FULL_RANGE;

    }
    else
    {
        COM_INFO("TV(861) timing:\n");
        pstVIDInfoframe->enTimingMode = pstVidAttr->enVideoFmt;
        pstVIDInfoframe->enRGBQuantization  = HDMI_RGB_QUANTIZATION_DEFAULT_RANGE;
    }
    u8Index = Transfer_VideoTimingFromat_to_VModeTablesIndex(pstVidAttr->enVideoFmt);
    
    COM_INFO("\t\t%dx%d@%d%s -> fmt:%d\n",
        VModeTables[u8Index].Res.H, VModeTables[u8Index].Res.V, (VModeTables[u8Index].Tag.VFreq + 50)/100,((InterlaceVNegHNeg <= VModeTables[u8Index].Tag.RefrTypeVHPol)? "(I)" : ""), pstVidAttr->enVideoFmt);

    pstVIDInfoframe->enOutputType = pstAppAttr->enVidOutMode;
    pstVIDInfoframe->u32PixelRepetition = HI_FALSE;
    pstVIDInfoframe->bActive_Infor_Present = HI_TRUE;
    pstVIDInfoframe->enBarInfo = HDMI_BAR_INFO_NOT_VALID;
    pstVIDInfoframe->enActiveAspectRatio = pstVIDInfoframe->enAspectRatio;
    pstVIDInfoframe->enPictureScaling = HDMI_PICTURE_NON_UNIFORM_SCALING;
    pstVIDInfoframe->bIsITContent = HI_FALSE;
    pstVIDInfoframe->enYCCQuantization = HDMI_YCC_QUANTIZATION_LIMITED_RANGE;

    switch(pstVidAttr->enVideoFmt)
    {
        case HI_UNF_ENC_FMT_PAL:
        case HI_UNF_ENC_FMT_NTSC:
        {
            pstVIDInfoframe->u32PixelRepetition = HI_TRUE;
            pstVIDInfoframe->enColorimetry = HDMI_COLORIMETRY_ITU601;
            pstVIDInfoframe->enAspectRatio = HI_UNF_ASPECT_RATIO_4TO3;
            break;
        }
        case HI_UNF_ENC_FMT_576P_50:
        case HI_UNF_ENC_FMT_480P_60:
        case HI_UNF_ENC_FMT_861D_640X480_60:
        {
            pstVIDInfoframe->enColorimetry = HDMI_COLORIMETRY_ITU601;
            pstVIDInfoframe->enAspectRatio = HI_UNF_ASPECT_RATIO_4TO3;
            break;
        }
        default:
        {
            pstVIDInfoframe->enColorimetry  = HDMI_COLORIMETRY_ITU709;
            pstVIDInfoframe->enAspectRatio = HI_UNF_ASPECT_RATIO_16TO9;
            break;
        }
    }       

#if 0 
    if(DRV_Get_IsValidSinkCap(HI_UNF_HDMI_ID_0))
    {
        HDMI_PRIVATE_EDID_S *pPriSinkCap = DRV_Get_PriSinkCap(HI_UNF_HDMI_ID_0);
        if(pPriSinkCap->bUnderScanDev)
        {
            pstVIDInfoframe->enScanInfo =  HDMI_SCAN_INFO_UNDERSCANNED;
        }
        else
        {
            pstVIDInfoframe->enScanInfo =  HDMI_SCAN_INFO_OVER SCANNED;
        }
    }
    else
    {
        pstVIDInfoframe->enScanInfo = HDMI_SCAN_INFO_NO_DATA;
    }
#else
    pstVIDInfoframe->enScanInfo = HDMI_SCAN_INFO_NO_DATA;
#endif 


    pstVIDInfoframe->u32LineNEndofTopBar = 0;
    pstVIDInfoframe->u32LineNStartofBotBar = 0;
    pstVIDInfoframe->u32PixelNEndofLeftBar = 0;
    pstVIDInfoframe->u32PixelNStartofRightBar = 0;

    Ret = DRV_HDMI_SetInfoFrame(enHdmi, &stInfoFrame);

    COM_INFO("%s<--\n",__FUNCTION__);

    return Ret;
}

static HI_U32 hdmi_AdjustAUDInfoFrame(HI_UNF_HDMI_ID_E enHdmi)
{
    HI_UNF_HDMI_INFOFRAME_S           stInfoFrame;
    HDMI_APP_ATTR_S     *pstAppAttr = DRV_Get_AppAttr(enHdmi);
    //HI_UNF_HDMI_SINK_CAPABILITY_S *pSinkCap = DRV_Get_SinkCap(HI_UNF_HDMI_ID_0);

    COM_INFO("-->%s\n",__FUNCTION__);

    if(SI_IsHDMIResetting() || HI_FALSE == pstAppAttr->bEnableHdmi || HI_FALSE == pstAppAttr->bEnableAudio)
    {
        COM_INFO("no need cfg AudInfoFrame <--\n");
        return HI_SUCCESS;
    }

    hdmi_GetInfoFrame(enHdmi, HI_INFOFRAME_TYPE_AUDIO, &stInfoFrame);

    DRV_HDMI_SetInfoFrame(enHdmi, &stInfoFrame);
    COM_INFO("%s<--\n",__FUNCTION__);

    return HI_SUCCESS;
}

#ifdef HDMI_HPD_THREAD_SUPPORT
HI_S32 DRV_HDMI_HPD_Thread(HI_VOID *data)
{ 
    while ( 1 )
    {
        if (g_UserCallbackFlag != HDMI_CALLBACK_NULL)
        {
            COM_INFO("HPD detect%d \n", 
                                                                    g_UserCallbackFlag);        
            break;
        }
        
        if(!SI_HPD_Status())
        {
        
            COM_INFO("HPD detect Thread quit : RSEN = 0x%02X,  HPD = 0x%02X\n", 
                                                    SI_RSEN_Status(), SI_HPD_Status());
            SI_TX_PHY_DisableHdmiOutput();
            SI_TX_PHY_PowerDown(HI_TRUE); 
            break;
        }

        msleep(90);
    }

    return HI_SUCCESS;
}
#else
HI_S32 DRV_HDMI_HPD_Thread(HI_VOID *data)
{
    return HI_SUCCESS;
}
#endif



//when need update audio or hdcpflag,but did not need update video,then return update flag false
//when change video,we need recfg all
//return HI_FAILUR need not update anyone
//return HI_SUCCESS && pUpdate == TRUE  need recfg all
//return HI_SUCCESS && pUpdate == FALSE only update audio && hdcp
static HI_U32 hdmi_AppAttrChanged(HI_UNF_HDMI_ID_E enHdmi, HDMI_APP_ATTR_S *pstAttr1, HDMI_APP_ATTR_S *pstAttr2,
    HI_BOOL *pUpdate)
{
    *pUpdate = HI_FALSE;

    if (!DRV_Get_IsChnStart(enHdmi))
    {
        if(DRV_Get_IsMce2App() || DRV_Get_IsOpenedInBoot())
        {
            if((pstAttr1->bEnableHdmi != pstAttr2->bEnableHdmi)
                || (pstAttr1->enVidOutMode != pstAttr2->enVidOutMode))
            {
                *pUpdate = HI_TRUE;
                DRV_Set_Mce2App(HI_FALSE);
                DRV_Set_OpenedInBoot(HI_FALSE);
            }
            else
            {
                *pUpdate = HI_FALSE;
            }
        }
        else
        {
            *pUpdate = HI_TRUE;
        }
        return HI_SUCCESS;
    }

    if ((pstAttr1->bEnableHdmi            != pstAttr2->bEnableHdmi)
        || (pstAttr1->bEnableVideo        != pstAttr2->bEnableVideo)
        || (pstAttr1->enVidOutMode        != pstAttr2->enVidOutMode)
        || (pstAttr1->enDeepColorMode     != pstAttr2->enDeepColorMode)
        || (pstAttr1->bxvYCCMode          != pstAttr2->bxvYCCMode)
        || (pstAttr1->b3DEnable           != pstAttr2->b3DEnable)   /* refer to hdmi_VideoAttrChanged*/
        || (pstAttr1->u83DParam           != pstAttr2->u83DParam)   /* refer to hdmi_VideoAttrChanged*/
       )
    {
        COM_INFO("App Attr need update video!\n");
        *pUpdate = HI_TRUE;
    }
    else if((pstAttr1->bEnableAudio        != pstAttr2->bEnableAudio)
        || (pstAttr1->bEnableAviInfoFrame != pstAttr2->bEnableAviInfoFrame)
        || (pstAttr1->bEnableAudInfoFrame != pstAttr2->bEnableAudInfoFrame)
        || (pstAttr1->bEnableSpdInfoFrame != pstAttr2->bEnableSpdInfoFrame)
        || (pstAttr1->bEnableMpegInfoFrame!= pstAttr2->bEnableMpegInfoFrame)
        || (pstAttr1->bDebugFlag          != pstAttr2->bDebugFlag)
        || (pstAttr1->bHDCPEnable         != pstAttr2->bHDCPEnable))
    {
        COM_INFO("App Attr need not update video!\n");
    }
    else
    {
        COM_INFO("App Attr need not update anything!\n");
        return HI_FAILURE;
    }

    return HI_SUCCESS;
}




HI_BOOL get_current_rgb_mode(HI_UNF_HDMI_ID_E enHdmi)
{
    HDMI_APP_ATTR_S *pstAppAttr = DRV_Get_AppAttr(enHdmi);
    return (HI_BOOL)((HI_UNF_HDMI_VIDEO_MODE_RGB444 == pstAppAttr->enVidOutMode )?HI_TRUE:HI_FALSE);
}

#if defined (CEC_SUPPORT)
HI_U32 DRV_HDMI_CECStatus(HI_UNF_HDMI_ID_E enHdmi, HI_UNF_HDMI_CEC_STATUS_S  *pStatus)
{
    HI_UNF_HDMI_CEC_STATUS_S *pstCecStatus = DRV_Get_CecStatus(enHdmi);
    memset(pStatus, 0, sizeof(HI_UNF_HDMI_CEC_STATUS_S));
    memcpy(pStatus, pstCecStatus, sizeof(HI_UNF_HDMI_CEC_STATUS_S));

    return HI_SUCCESS;
}

HI_U32 DRV_HDMI_GetCECAddress(HI_U8 *pPhyAddr, HI_U8 *pLogicalAddr)
{
    HI_UNF_HDMI_CEC_STATUS_S *pstCecStatus = DRV_Get_CecStatus(HI_UNF_HDMI_ID_0);
    //Only invoke in private mode
    if (!DRV_Get_IsCECStart(HI_UNF_HDMI_ID_0))
    {
        return HI_ERR_HDMI_DEV_NOT_OPEN;
    }

    memcpy(pPhyAddr, pstCecStatus->u8PhysicalAddr, 4);
    *pLogicalAddr = pstCecStatus->u8LogicalAddr;

    return HI_SUCCESS;
}

HI_U32 DRV_HDMI_SetCECCommand(HI_UNF_HDMI_ID_E enHdmi, const HI_UNF_HDMI_CEC_CMD_S  *pCECCmd)
{
    HI_UNF_HDMI_CEC_STATUS_S *pstCecStatus = DRV_Get_CecStatus(enHdmi);
    HI_U32 Ret = HI_SUCCESS;

    COM_INFO("Enter DRV_HDMI_SetCECCommand\n");
    HDMI_CHECK_ID(enHdmi);
    HDMI_CheckChnOpen(enHdmi);
    HDMI_CHECK_NULL_PTR(pCECCmd);

    if(!DRV_Get_IsCECStart(enHdmi))
    {
        CEC_ERR("CEC do not start\n");
        return HI_ERR_HDMI_DEV_NOT_OPEN;
    }

    if(pCECCmd->enSrcAdd != pstCecStatus->u8LogicalAddr)
    {
        COM_INFO("Invalid enSrcAdd:0x%x\n", pCECCmd->enSrcAdd);
        return HI_ERR_HDMI_INVALID_PARA;
    }
    Ret = SI_CEC_SendCommand((HI_UNF_HDMI_CEC_CMD_S *)pCECCmd);

    CEC_INFO("Leave DRV_HDMI_SetCECCommand\n");
    return Ret;
}

extern unsigned int  get_cec_msg(HI_UNF_HDMI_CEC_CMD_S *rx_cmd, unsigned int num, HI_U32 timeout);
HI_U32 DRV_HDMI_GetCECCommand(HI_UNF_HDMI_ID_E enHdmi, HI_UNF_HDMI_CEC_CMD_S  *pCECCmd, HI_U32 timeout)
{
    return get_cec_msg(pCECCmd, 1, timeout);
}
#endif


HI_U32 DRV_HDMI_GetPlayStatus(HI_UNF_HDMI_ID_E enHdmi, HI_U32 *pu32Stutus)
{
    HDMI_CHECK_ID(enHdmi);
    HDMI_CheckChnOpen(enHdmi);

    *pu32Stutus = DRV_Get_IsChnStart(enHdmi);
    return 0;
}


HI_S32 DRV_HDMI_GetAOAttr(HI_UNF_HDMI_ID_E enHdmi, HDMI_AUDIO_ATTR_S *pstHDMIAOAttr)
{
    HI_S32  Ret = HI_SUCCESS;
    //HDMI_ATTR_S stHDMIAttr;
    HDMI_AUDIO_ATTR_S  *pstAudAttr = DRV_Get_AudioAttr(enHdmi);
    //HDMI_AUDIO_ATTR_S stAudAttr;
    //HI_UNF_HDMI_INFOFRAME_S     InfoFrame;
    HI_UNF_HDMI_AUD_INFOFRAME_VER1_S *pstAUDInfoframe = DRV_Get_AudInfoFrm(enHdmi);

    HDMI_CHECK_ID(enHdmi);
    HDMI_CheckChnOpen(enHdmi);

    memcpy(pstHDMIAOAttr,pstAudAttr,sizeof(HDMI_AUDIO_ATTR_S));
    pstHDMIAOAttr->u32Channels = pstAUDInfoframe->u32ChannelCount;

    return Ret;
}

static HI_U32 hdmi_AdjustVSDBInfoFrame(HI_UNF_HDMI_ID_E enHdmi)
{
    HDMI_VIDEO_ATTR_S   *pstVidAttr = DRV_Get_VideoAttr(enHdmi);
    if(pstVidAttr->b3DEnable)
    {
        SI_VSDB_Setting(VSDB_MODE_3D,pstVidAttr->u83DParam);
    }
    else
    {
        SI_VSDB_Setting(VSDB_MODE_NONE,0xff);
    }

    return HI_SUCCESS;
}

HI_S32 DRV_HDMI_GetInitNum(HI_UNF_HDMI_ID_E enHdmi)
{
    return (g_HDMIKernelInitNum + g_HDMIUserInitNum);
}

HI_S32 DRV_HDMI_GetProcNum(HI_UNF_HDMI_ID_E enHdmi)
{
    HI_S32 u32ProcCount = 0;
    HI_S32 index;
    HDMI_PROC_EVENT_S *pEventList = DRV_Get_EventList(HI_UNF_HDMI_ID_0);

    for(index = 0; index < MAX_PROCESS_NUM; index++)
    {
        if(HI_TRUE == pEventList[index].bUsed)
        {
            u32ProcCount++;
        }
    }

    return u32ProcCount;
}

HI_S32 DRV_HDMI_GetStatus(HI_UNF_HDMI_ID_E enHdmi, HI_DRV_HDMI_STATUS_S *pHdmiStatus)
{
    HDMI_CHECK_ID(enHdmi);
    HDMI_CheckChnOpen(enHdmi);
    HDMI_CHECK_NULL_PTR(pHdmiStatus);

    pHdmiStatus->bConnected = SI_HPD_Status();
    pHdmiStatus->bSinkPowerOn = SI_RSEN_Status();

    return HI_SUCCESS;
}

HI_S32 DRV_HDMI_GetDelay(HI_UNF_HDMI_ID_E enHdmi, HI_DRV_HDMI_DELAY_S *pHdmiDelay)
{
    HDMI_CHECK_ID(enHdmi);
    //HDMI_CheckChnOpen(enHdmi);
    HDMI_CHECK_NULL_PTR(pHdmiDelay);

    pHdmiDelay->bForceFmtDelay = IsForceFmtDelay();
    pHdmiDelay->bForceMuteDelay = IsForceMuteDelay();
    pHdmiDelay->u32FmtDelay = GetGlobalFmtDelay();
    pHdmiDelay->u32MuteDelay = GetGlobalsMuteDelay();
    return HI_SUCCESS;
}

HI_S32 DRV_HDMI_SetDelay(HI_UNF_HDMI_ID_E enHdmi, HI_DRV_HDMI_DELAY_S *pHdmiDelay)
{
    HDMI_CHECK_ID(enHdmi);
    //HDMI_CheckChnOpen(enHdmi);
    HDMI_CHECK_NULL_PTR(pHdmiDelay);

    SetForceDelayMode(pHdmiDelay->bForceFmtDelay,pHdmiDelay->bForceMuteDelay);
    SetGlobalFmtDelay(pHdmiDelay->u32FmtDelay);
    SetGlobalMuteDelay(pHdmiDelay->u32MuteDelay);

    return HI_SUCCESS;
}
HI_U8 g_avi_info[13] = {0};
HI_U8 g_audio_info[13] = {0};

HI_VOID DRV_O5_HDMI_PutBinInfoFrame(HI_UNF_HDMI_INFOFRAME_TYPE_E enInfoFrameType,HI_VOID* infor_ptr)
{
    if(enInfoFrameType == HI_INFOFRAME_TYPE_AVI)
        memcpy(g_avi_info, infor_ptr,13);
    else if(enInfoFrameType == HI_INFOFRAME_TYPE_AUDIO)
        memcpy(g_audio_info, infor_ptr,5);
    return ;
}

HI_VOID DRV_O5_HDMI_GetBinInfoFrame(HI_UNF_HDMI_INFOFRAME_TYPE_E enInfoFrameType, HI_VOID *infor_ptr)
{
    if (enInfoFrameType == HI_INFOFRAME_TYPE_AVI)
        memcpy(infor_ptr, g_avi_info,13);
    else if (enInfoFrameType == HI_INFOFRAME_TYPE_AUDIO)
        memcpy(infor_ptr, g_audio_info,5);
}

#ifdef HDMI_WORKQUEUE_SUPPORT
HI_VOID DRV_HDMI_NotifyEvent_Work_Thread(struct work_struct *work)
{
    DRV_HDMI_work_event *work_event = container_of(work, DRV_HDMI_work_event, hdmi_event_work.work);

    if(!(DRV_Get_IsMce2App() || DRV_Get_IsOpenedInBoot()))
    {
        SI_TX_PHY_DisableHdmiOutput();
        SI_TX_PHY_PowerDown(HI_FALSE);  
    }
    
    DRV_HDMI_NotifyEvent(work_event->event);
    COM_INFO("finished work : 0x%0X\n", work_event->event);
    
    return ;
}

/*-----------------------------------------------------------------
 * Work scheduling
 *-----------------------------------------------------------------
 */
HI_VOID DRV_HDMI_schedule_work(struct delayed_work *delayed_work, HI_U32 delay)
{        
	if(queue_delayed_work(hdmi_event_queue, delayed_work, delay) != 1)
    {   
		COM_ERR(" - queue_work failed, event %s\n", 
		        DRV_Event2String((container_of(delayed_work, DRV_HDMI_work_event, hdmi_event_work))->event));        
    }
    return ;
}
#endif


