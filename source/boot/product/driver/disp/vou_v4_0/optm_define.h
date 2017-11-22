
/**********************************************************************     
 *                                                                          
 * Copyright(c)2008,Huawei Technologies Co.,Ltd                            
 * All rights reserved.                                                     
 *                                                                          
 * File Name   :    vou_define.h                                                   
 * Author      :    l67259                                         
 * Email       :    l67259@huawei.com                                    
 * Data        :    2009/05/04                                              
 * Version     :    v1.0                                                    
 * Abstract    :    head of vou define                
 *                                                                         
 * Modification history                                                    
 *----------------------------------------------------------------------  
 * Version       Data(yyyy/mm/dd)      name                                  
 * Description                                                              
 *                                                                          
 * $Log: vou_define.h,v $
 * Revision 1.72  2010/07/24 08:56:13  l67259
 * no message
 *
 * Revision 1.71  2010/07/23 01:24:47  y52779
 * no message
 *
 * Revision 1.70  2010/07/21 12:18:39  l67259
 * no message
 *
 * Revision 1.69  2010/07/20 07:05:39  l67259
 * no message
 *
 * Revision 1.68  2010/07/16 10:52:04  l67259
 * no message
 *
 * Revision 1.67  2010/07/16 06:30:58  l67259
 * for pd detect
 *
 * Revision 1.66  2010/07/12 01:49:45  l67259
 * no message
 *
 * Revision 1.65  2010/07/10 03:17:33  l67259
 * no message
 *
 * Revision 1.64  2010/07/07 07:05:02  l67259
 * for new die
 *
 * Revision 1.63  2010/07/06 07:03:51  l67259
 * for new die
 *
 * Revision 1.62  2010/06/09 10:21:45  l67259
 * no message
 *
 * Revision 1.61  2010/06/04 03:18:14  z39183
 * Modify: satisfy with FPGA HAL.
 *
 *
 ***********************************************************************/

#ifndef __OPTM_DEFINE_H__
#define __OPTM_DEFINE_H__

/* test switch */
#define PC_TEST   0
#define EDA_TEST  0
#define FPGA_TEST 1
#define  LEO_DEBUG  1


//#define  OPTM_DEBUG_VZME_FILTER_DISABLE

//#define leo_printk printk
#define leo_printk 

/*++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
          This is defined for FPGA test and SDK
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/
#if FPGA_TEST
#define MyAssert(x) 
#endif

/*++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
          This is defined for EDA or PC test
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/
#if (EDA_TEST | PC_TEST)
#define LINK_NUM 4
#define LINK_WB_LENGTH 13*4
#define ACC_CNT_NUM 16

#define HDDATE_EN  1
#define SDDATE_EN  1
#define IN_FILE_W   

#ifdef RUN_COV

#else
/*  open it just at PC for UT test. */
/*  #define UT_TEST */
/*  #define LAYER_UT */

/*  for DDD debug in EDA */
/*  #define DDD_DEBUG 0 */

/*  for bfm output debug  */
#define ENV_DEBUG 1

/*  vou_sti.cpp */
/*  for byte  algin */
/* #define BYTE_DEBUG 0 */

/*  for data format */
/* #define OUT_FILE  0 */

/*  for DIE debug  */
/* #define DIE_DEBUG  */
/* #define PD_INFO */

#endif

#ifndef HI_ADVCA_FUNCTION_RELEASE
#define MyAssert(x) { if (!(x)) { printf("\nErr @ (%s, %d)\n", __FILE__, __LINE__); \
                                                         exit(-__LINE__); } }
#else
#define MyAssert(x) 
#endif
#define _SOURCE_PATH_ "./golden/"

#define MAX_PICTURE_WIDTH 1920
#define MAX_PICTURE_HEIGHT 1080

#define COEF_FILTER_LV (17*4)
#define COEF_FILTER_CV (17*4)
#define COEF_FILTER_LH (17*8)
#define COEF_FILTER_CH (17*4)

/* #define GFX_COEF_FILTER (32*2) */
#define GFX_COEF_FILTER_LV (16*4)
#define GFX_COEF_FILTER_CV (16*4)
#define GFX_COEF_FILTER_LH (8*8)
#define GFX_COEF_FILTER_CH (8*8)


#define   HI_SUCCESS          0
#define   HI_FAILURE          (-1)
#define   HI_POINT_NULL       (-2)
#define   HI_PARAM_ERRO       (-3)

#define   VOU_LAYER_DDR_ADDR 0x10000000
#define   VOU_LNKLST_DDR_ADDR 0x40000000
#define   ADDR_NUM 40
#define   LNKLST_NUM 16  /* max linklist number */
#define   LNKLST_ADDR_NUM 20

#define  ACK_REQ_ACCEPT   0
#define  ACK_MASTER_FULL  1
#define  ACK_SLAVE_FULL   2

/*
typedef   unsigned char    HI_U8;
typedef            char    HI_S8;
typedef   unsigned short   HI_U16;
typedef            short   HI_S16;
typedef   unsigned int     HI_U32;
typedef   signed   int     HI_S32;

typedef   float            HI_FLOAT;
typedef   double           HI_DOUBLE;

typedef   void             HI_VOID;

typedef   HI_VOID*         HAL_VIDEO_HANDLE_S;
typedef   HI_VOID*         HAL_DISP_HANDLE_S;


const int SinTable[61] = {

    -500,    -485,    -469,    -454,    -438,    -422,    -407,    -391,    -374,    -358,    -342,    -325,    -309,
    -292,    -276,    -259,    -242,    -225,    -208,    -191,    -174,    -156,    -139,    -122,    -104,    -87 ,
    -70 ,    -52 ,    -35 ,    -17 ,   
    0,      17,     35,     52,     70,     87,     104,    122,    139,    156,    174,    191,    208,    225,    242,    259,
    276,    292,    309,    325,    342,    358,    374,    391,    407,    422,    438,    454,    469,    485,    500
};

const int CosTable[61] = {

    866 ,     875 ,    883 ,    891 ,    899 ,    906 ,    914 ,    921 ,    927 ,    934 ,    940 ,    946 ,    951 ,    956 ,
    961 ,    966 ,    970 ,    974 ,    978 ,    982 ,    985 ,    988 ,    990 ,    993 ,    995 ,    996 ,    998 ,    999 ,
    999 ,    1000,    1000,    1000,    999 ,    999 ,    998 ,    996 ,    995 ,    993 ,    990 ,    988 ,    985 ,    982 ,
    978 ,    974 ,    970 ,    966 ,    961 ,    956 ,    951 ,    946 ,    940 ,    934 ,    927 ,    921 ,    914 ,    906 ,
    899 ,    891 ,    883 ,    875 ,    866 
};
*/
#endif

/*++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
          There are common functions for both EDA and FPGA, SDK
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/
#define   VO_BASE_ADDR  0x10110000
#define   INT_REG_ADDR  (VO_BASE_ADDR + 0x8)
#define   SDDATE_BASE_ADDR  (VO_BASE_ADDR + 0x1600)
#define   HDDATE_BASE_ADDR  (VO_BASE_ADDR + 0x1400)
#define   NODE_REG_NUM 64*3+11  /* offset: 0x100~0x400~0x428 */

/* 
 * add 4 regs: ParaUp(0x40)/VHDHCOEFAD(0x44)/VHDVCOEFAD(0x48)/ACCAD(0x54),
 * add 1 regs:for vou regupdate. 
 */
#define   NODE_REG_NUM_ADD (4+1)  

typedef enum
{
    HD_INT = 1,
    SD_INT,
    WBC0_INT,
    WBC1_INT,
    WBC2_INT,
    WBC3_INT,
    UT_INT
} INT_VECTOR;

/* VOU version enumerators */
typedef enum tagHAL_OPTM_VERSION 
{
    HAL_OPTM_VERSION_V101, 
    HAL_OPTM_VERSION_V200,
    HAL_OPTM_VERSION_V300,

    HAL_OPTM_VERSION_BUTT
}HAL_OPTM_VERSION;

    
/*
typedef enum
{
    HI_FALSE = 0,
    HI_TRUE  = 1,
} HI_BOOL;
*/

/* display of output channel number */
typedef enum tagHAL_DISP_OUTPUTCHANNEL_E
{
    HAL_DISP_CHANNEL_NONE  = 0x0000,
    HAL_DISP_CHANNEL_DHD,       
    HAL_DISP_CHANNEL_DAD,
    HAL_DISP_CHANNEL_DSD,
    HAL_DISP_CHANNEL_WBC0,
    HAL_DISP_CHANNEL_WBC1,
    HAL_DISP_CHANNEL_WBC2,
    HAL_DISP_CHANNEL_WBC3,
   
    HAL_DISP_CHANNEL_BUTT
} HAL_DISP_OUTPUTCHANNEL_E;

typedef enum
{
    HAL_UT_MODULE_ZME = 0,
    HAL_UT_MODULE_DIE
} UT_MODULE_E;

typedef struct
{
    HI_U32 need_rand_range ;
    HI_U32 rdy_rand_range  ;
    HI_U32 need_mode       ;
    HI_U32 rdy_mode        ;
} UT_BFM_PARA_S;

typedef enum
{
    HAL_DISP_MUXINTF_DEBUG  = 0,
    HAL_DISP_MUXINTF_SDDATE    ,
    HAL_DISP_MUXINTF_VGAOUT    ,
    HAL_DISP_MUXINTF_HDDATE    ,
    
    HAL_DISP_MUXINTF_BUTT
} HAL_DISP_MUXINTF_E;

typedef enum tagHAL_DISP_LAYER_E
{
    HAL_DISP_LAYER_VIDEO1 = 0,
    HAL_DISP_LAYER_VIDEO2, 
    HAL_DISP_LAYER_VIDEO3, 
    HAL_DISP_LAYER_VIDEO4,
    HAL_DISP_LAYER_GFX0,   
    HAL_DISP_LAYER_GFX1,   
    HAL_DISP_LAYER_GFX2,   
    HAL_DISP_LAYER_GFX3,   
    HAL_DISP_LAYER_HC,   
    HAL_DISP_LAYER_WBC0,   
    HAL_DISP_LAYER_WBC1,   
    HAL_DISP_LAYER_WBC2,   
    HAL_DISP_LAYER_WBC3,   
    HAL_DISP_LAYER_TT,   

    HAL_DISP_LAYER_BUTT
} HAL_DISP_LAYER_E;


/* image format of video frame */
typedef enum tagHAL_DISP_PIXELFORMAT_E
{
    HAL_INPUTFMT_YCbCr_SEMIPLANAR_400     = 0x1,
    HAL_INPUTFMT_YCbCr_SEMIPLANAR_411     = 0x2,
    HAL_INPUTFMT_YCbCr_SEMIPLANAR_420     = 0x3,
    HAL_INPUTFMT_YCbCr_SEMIPLANAR_422_1X2 = 0x4,
    HAL_INPUTFMT_YCbCr_SEMIPLANAR_422_2X1 = 0x5,
    HAL_INPUTFMT_YCbCr_SEMIPLANAR_444     = 0x6,   
   
    //add for Planar pixel format for VHD, add by q212453
    HAL_INPUTFMT_YCbCr_PLANAR_400     = 0x9,
    HAL_INPUTFMT_YCbCr_PLANAR_411     = 0xa, 
    HAL_INPUTFMT_YCbCr_PLANAR_420     = 0xb,
    HAL_INPUTFMT_YCbCr_PLANAR_422_1X2 = 0xc,
    HAL_INPUTFMT_YCbCr_PLANAR_422_2X1 = 0xd, 
    HAL_INPUTFMT_YCbCr_PLANAR_444     = 0xe,
    HAL_INPUTFMT_YCbCr_PLANAR_410     = 0xf,

    HAL_INPUTFMT_CbYCrY_PACKAGE_422       = 0x11,//UYVY   
    HAL_INPUTFMT_YCbYCr_PACKAGE_422       = 0x12,//YUYV    
    HAL_INPUTFMT_YCrYCb_PACKAGE_422       = 0x13,//YVYU 


    HAL_INPUTFMT_YYCbCr_PACKAGE_422       = 0x14,//YYUV    
    HAL_INPUTFMT_CrYCbY_PACKAGE_422       = 0x15,//VYUY    
    HAL_INPUTFMT_CrCbYY_PACKAGE_422       = 0x16,//VUYY    
    HAL_INPUTFMT_YCbCr_PACKAGE_444        = 0x1000,    

    HAL_INPUTFMT_CLUT_1BPP                = 0x00,
    HAL_INPUTFMT_CLUT_2BPP                = 0x10,
    HAL_INPUTFMT_CLUT_4BPP                = 0x20,
    HAL_INPUTFMT_CLUT_8BPP                = 0x30,
    HAL_INPUTFMT_ACLUT_44                 = 0x38,    

    HAL_INPUTFMT_RGB_444                  = 0x40,
    HAL_INPUTFMT_RGB_555                  = 0x41,
    HAL_INPUTFMT_RGB_565                  = 0x42,
    HAL_INPUTFMT_CbYCrY_PACKAGE_422_GRC   = 0x43,
    HAL_INPUTFMT_YCbYCr_PACKAGE_422_GRC   = 0x44,
    HAL_INPUTFMT_YCrYCb_PACKAGE_422_GRC   = 0x45,
    HAL_INPUTFMT_ACLUT_88                 = 0x46,
    HAL_INPUTFMT_ARGB_4444                = 0x48,
    HAL_INPUTFMT_ARGB_1555                = 0x49,

    HAL_INPUTFMT_RGB_888                  = 0x50,
    HAL_INPUTFMT_YCbCr_888                = 0x51,
    HAL_INPUTFMT_ARGB_8565                = 0x5a,
    HAL_INPUTFMT_ARGB_6666                = 0x5b,

    HAL_INPUTFMT_KRGB_888                 = 0x60,
    HAL_INPUTFMT_ARGB_8888                = 0x68,
    HAL_INPUTFMT_AYCbCr_8888              = 0x69,

    HAL_INPUTFMT_RGBA_4444                = 0xc8,
    HAL_INPUTFMT_RGBA_5551                = 0xc9,

    HAL_INPUTFMT_RGBA_6666                = 0xd8,
    HAL_INPUTFMT_RGBA_5658                = 0xda,

    HAL_INPUTFMT_RGBA_8888                = 0xe8,
    HAL_INPUTFMT_YCbCrA_8888              = 0xe9,

    HAL_DISP_PIXELFORMAT_BUTT        
    
}HAL_DISP_PIXELFORMAT_E;

/* data format of interface output */
typedef enum tagHAL_DISP_INTFDATAFMT_E
{
    HAL_DISP_INTFDATAFMT_YCBCR422 = 0x0,
    
    HAL_DISP_INTFDATAFMT_RGB888   = 0xc,
    HAL_DISP_INTFDATAFMT_YCBCR444 = 0xc,
    
    HAL_DISP_INTFDATAFMT_CBYCRY_PACKAGE_422   = 0x0,
    HAL_DISP_INTFDATAFMT_YCBYCR_PACKAGE_422   = 0x1,
    HAL_DISP_INTFDATAFMT_YCRYCB_PACKAGE_422   = 0x2,

    /* WBC2 output data format. */
    HAL_DISP_INTFDATAFMT_ARGB8888   = 0x0,
    
    HAL_DISP_INTFDATAFMT_BUTT          
} HAL_DISP_INTFDATAFMT_E;

/* coefficients for CSC chroma transformation */
typedef enum tagHAL_CSCCOEF_E
{
    HAL_CSC_YUV2RGB_601 = 0,
    HAL_CSC_YUV2RGB_709    ,
    HAL_CSC_RGB2YUV_601    ,
    HAL_CSC_RGB2YUV_709    ,
    HAL_CSC_YUV2YUV_709_601,
    HAL_CSC_YUV2YUV_601_709,
    HAL_CSC_YUV2YUV,
   
    HAL_CSC_BUTT
} HAL_CSCCOEF_E;

/* video field mode */
typedef enum tagHAL_DISP_FRAMEMODE_E
{
    HAL_DISP_FRAME_PROGRESS, 
    HAL_DISP_FIELD_TOP     ,
    HAL_DISP_FIELD_BOTTOM  ,
    
    HAL_DISP_FRAMEMODE_BUTT    
}HAL_DISP_FRAMEMODE_E;

/* read mode of video data */
typedef enum tagHAL_DISP_DATARMODE_E
{
    HAL_DISP_INTERLACE = 0,
    HAL_DISP_PROGRESSIVE = 1,
    HAL_DISP_TOP,
    HAL_DISP_BOTTOM,
    
    HAL_DISP_DATARMODE_BUTT
} HAL_DISP_DATARMODE_E;

/* read mode of video data */
typedef enum tagHAL_VHD_FOD_E
{
    HAL_T_FIRST = 0,
    HAL_B_FIRST = 1,
    
    HAL_VHD_FOD_BUTT
} HAL_VHD_FOD_E;

/* digital-output format */
typedef enum tagHAL_DISP_DIGFMT_E
{
    HAL_DISP_DIGFMT_PAL = 0,
    HAL_DISP_DIGFMT_NTSC,
    HAL_DISP_DIGFMT_720P,
    HAL_DISP_DIGFMT_1080I,
    HAL_DISP_DIGFMT_1080P,
    HAL_DISP_DIGFMT_480P,
    HAL_DISP_DIGFMT_576P,
    HAL_DISP_DIGFMT_480I,
    HAL_DISP_DIGFMT_576I,
    HAL_DISP_DIGFMT_TESTI,
    HAL_DISP_DIGFMT_TESTP,
    HAL_DISP_DIGFMT_TESTS,
    HAL_DISP_DIGFMT_TESTUT,
  
    HAL_DISP_DIGFMT_BUTT
} HAL_DISP_DIGFMT_E;


/* vou interrupt mask type */
typedef enum tagHAL_DISP_INTERRUPTMASK_E
{
    HAL_DISP_INTMSK_NONE      = 0, 
    
    HAL_DISP_INTMSK_DSDVTTHD  = 0x1,
    HAL_DISP_INTMSK_DSDVTTHD2 = 0x2,
    HAL_DISP_INTMSK_DSDVTTHD3 = 0x4,
    HAL_DISP_INTMSK_DSDUFINT  = 0x8,
    
    HAL_DISP_INTMSK_DHDVTTHD  = 0x10,
    HAL_DISP_INTMSK_DHDVTTHD2 = 0x20,
    HAL_DISP_INTMSK_DHDVTTHD3 = 0x40,
    HAL_DISP_INTMSK_DHDUFINT  = 0x80,

    HAL_DISP_INTMSK_WTEINT   = 0x100,
    HAL_DISP_INTMSK_VTEINT   = 0x200,
    HAL_DISP_INTMSK_WBC2TEINT = 0x800,
    
    HAL_DISP_INTMSK_LNKTEINT = 0x1000,
    HAL_DISP_INTMSK_WBC3TEINT    = 0x4000,

    HAL_DISP_INTMSK_WBC3STPINT   = 0x10000,
    HAL_DISP_INTMSK_VSDCERRINT   = 0x20000,
    HAL_DISP_INTMSK_VADDCERRINT  = 0x40000,
    HAL_DISP_INTMSK_VHDDCERRINT  = 0x80000,

    HAL_DISP_INTMSK_VSDRRINT = 0x100000,
    HAL_DISP_INTMSK_VADRRINT = 0x200000,
    HAL_DISP_INTMSK_VHDRRINT = 0x400000,
    HAL_DISP_INTMSK_G0RRINT  = 0x800000,
    
    HAL_DISP_INTMSK_G1RRINT = 0x1000000,
    
    HAL_DISP_INTMSK_RRERRINT = 0x10000000,
    HAL_DISP_INTMSK_UTENDINT = 0x40000000,
    HAL_DISP_INTMSK_BUSEERINT = 0x80000000,

	/* HAL_DISP_INTMSK_WTBINT   = 0x80, */
	/* HAL_DISP_INTMSK_VHDWUFINT = 0x20000000, */

    HAL_DISP_INTREPORT_ALL = 0xffffffff
} HAL_DISP_INTERRUPTMASK_E;


/* vou graphic layer data extend mode */
typedef enum 
{
    HAL_GFX_BITEXTEND_1ST =   0,  
    HAL_GFX_BITEXTEND_2ND = 0x2,
    HAL_GFX_BITEXTEND_3RD = 0x3,
    
    HAL_GFX_BITEXTEND_BUTT
}HAL_GFX_BITEXTEND_E;

/* vou coef load mode */
typedef enum 
{
    HAL_DISP_COEFMODE_HOR  = 0,  
    HAL_DISP_COEFMODE_VER,
    HAL_DISP_COEFMODE_LUT,
    HAL_DISP_COEFMODE_GAM,
    HAL_DISP_COEFMODE_ACC,
    
    HAL_DISP_COEFMODE_ALL
}HAL_DISP_COEFMODE_E;

/* vou zoom mode */
typedef enum 
{
    HAL_DISP_ZMEMODE_HORL = 0,  
    HAL_DISP_ZMEMODE_HORC,  
    HAL_DISP_ZMEMODE_VERL,
    HAL_DISP_ZMEMODE_VERC,
    
    HAL_DISP_ZMEMODE_HOR,
    HAL_DISP_ZMEMODE_VER,
    HAL_DISP_ZMEMODE_ALPHA,
    HAL_DISP_ZMEMODE_ALPHAV,
    HAL_DISP_ZMEMODE_VERT,
    HAL_DISP_ZMEMODE_VERB,
    
    HAL_DISP_ZMEMODE_ALL,
    HAL_DISP_ZMEMODE_NONL,
    HAL_DISP_ZMEMODE_BUTT
      
}HAL_DISP_ZMEMODE_E;

/* vou mixer prio id */
typedef enum tagHAL_DISP_MIX_PRIO_E
{
    HAL_DISP_MIX_PRIO0 = 0,
    HAL_DISP_MIX_PRIO1,
    HAL_DISP_MIX_PRIO2,
    HAL_DISP_MIX_PRIO3,
    HAL_DISP_MIX_PRIO4,
    HAL_DISP_MIX_PRIO5,

    HAL_DISP_MIX_BUTT 
}HAL_DISP_MIX_PRIO_E;

/* vou wbc output point select */
typedef enum tagHAL_WBC_DFPSEL_E
{
    HAL_WBC_DFPSEL_P0 = 0,
    HAL_WBC_DFPSEL_P1,
    HAL_WBC_DFPSEL_P2,
    HAL_WBC_DFPSEL_P3,
    HAL_WBC_DFPSEL_P4,
    
    HAL_WBC_DFPSEL_BUTT
}HAL_WBC_DFPSEL_E;

/* vou wbc online mode */
typedef enum tagHAL_WBC_RESOSEL_E
{
    HAL_WBC_RESOSEL_ONL = 0,
    HAL_WBC_RESOSEL_OFL,
    
    HAL_WBC_RESOSEL_BUTT
}HAL_WBC_RESOSEL_E;

/* RM frame or filed infomation */
typedef enum tagHAL_IFIRMODE_E
{
    HAL_IFIRMODE_DISEN = 0,
    HAL_IFIRMODE_COPY,
    HAL_IFIRMODE_DOUBLE,
    HAL_IFIRMODE_6TAPFIR,

    HAL_IFIRMODE_BUTT
}HAL_IFIRMODE_E;

/* RM frame or filed infomation */
typedef enum tagRM_FFINFO_E
{
    RM_FFINFO_TOP,
    RM_FFINFO_BTM,
    RM_FFINFO_FRM,
    RM_FFINFO_BT1,

    RM_FFINFO_BUTT
}RM_FFINFO_E;

/* vou acm block id information */
typedef enum tagHAL_ACMBLK_ID_E
{
    HAL_ACMBLK_ID0,
    HAL_ACMBLK_ID1,
    HAL_ACMBLK_ID2,
    HAL_ACMBLK_ID3,
    
    HAL_ACMBLK_ALL,

    HAL_ACMBLK_BUTT
    
}HAL_ACMBLK_ID_E;

/* vou digital output mode */
typedef enum tagHAL_DIGSEL_E
{
    HAL_DIGSEL_SINGL_EMB    = 0,    /* dsd output bt.656 */
    HAL_DIGSEL_YCMUX_EMB       ,    /* dhd output bt.1120 */
    HAL_DIGSEL_YCBCR_EMB       ,    /* digital output bt.1120 with 3 comp */
    HAL_DIGSEL_SINGL_SYNC      ,    /* digital output CEA 861-D 8bits YC mux */
    HAL_DIGSEL_YCMUX_SYNC      ,    /* digital output YC  separate */
    HAL_DIGSEL_RGB_SYNC        ,    /* digital output RGB with sync  */
    HAL_DIGSEL_YCBCR_SYNC      ,    /* digital output YCbCr with sync */

    HAL_DIFSEL_BUTT
    
}HAL_DIGSEL_E;

/* vou die st mode */
typedef enum tagHAL_DIE_STMD_E
{
    HAL_DIE_STMD_Q   = 0,
    HAL_DIE_STMD_N      ,
    HAL_DIE_STMD_M      ,
    HAL_DIE_STMD_L      ,
    HAL_DIE_STMD_K      ,
    HAL_DIE_STMD_KLM    ,
    HAL_DIE_STMD_KLQR   ,
    HAL_DIE_STMD_KLQRM  ,    
    HAL_DIE_STMD_STKLM  ,    
    HAL_DIE_STMD_KLMN   ,    
    HAL_DIE_STMD_DISALL ,

    HAL_DIE_STMD_BUTT
    
}HAL_DIE_STMD_E;

/* vou die mode */
typedef enum tagHAL_DIE_MODE_E
{
    HAL_DIE_MODE_5FILED = 0,
    HAL_DIE_MODE_4FILED    ,
    HAL_DIE_MODE_3FILED    ,
    HAL_DIE_MODE_1FILED    ,

    HAL_DIE_MODE_BUTT
    
}HAL_DIE_MODE_E;

/* vou die dir mult mode */
typedef enum tagHAL_DIE_DIRMULT_E
{
    HAL_DIE_DIRMULT_00 = 0,
    HAL_DIE_DIRMULT_01    ,
    HAL_DIE_DIRMULT_02    ,
    HAL_DIE_DIRMULT_03    ,
    HAL_DIE_DIRMULT_04    ,
    HAL_DIE_DIRMULT_05    ,
    HAL_DIE_DIRMULT_06    ,
    HAL_DIE_DIRMULT_07    ,
    HAL_DIE_DIRMULT_08    ,
    HAL_DIE_DIRMULT_09    ,
    HAL_DIE_DIRMULT_10    ,
    HAL_DIE_DIRMULT_11    ,
    HAL_DIE_DIRMULT_12    ,
    HAL_DIE_DIRMULT_13    ,
    HAL_DIE_DIRMULT_14    ,
    HAL_DIE_DIRMULT_00_03 ,
    HAL_DIE_DIRMULT_04_07 ,
    HAL_DIE_DIRMULT_08_11 ,
    HAL_DIE_DIRMULT_12_14 ,
    HAL_DIE_DIRMULT_ALL   ,

    HAL_DIE_DIRMULT_BUTT
    
}HAL_DIE_DIRMULT_E;

/* vou die dir mult mode */
typedef enum tagHAL_PD_STA_E
{
    /* HAL_PD_STA_STLBLKCNT = 0, */
    HAL_PD_STA_FRMITDIFF = 0,
    HAL_PD_STA_BLKSAD00     ,
    HAL_PD_STA_BLKSAD01     ,
    HAL_PD_STA_BLKSAD02     ,
    HAL_PD_STA_BLKSAD03     ,
    HAL_PD_STA_BLKSAD04     ,
    HAL_PD_STA_BLKSAD05     ,
    HAL_PD_STA_BLKSAD06     ,
    HAL_PD_STA_BLKSAD07     ,
    HAL_PD_STA_BLKSAD08     ,
    HAL_PD_STA_BLKSAD09     ,
    HAL_PD_STA_BLKSAD10     ,
    HAL_PD_STA_BLKSAD11     ,
    HAL_PD_STA_BLKSAD12     ,
    HAL_PD_STA_BLKSAD13     ,
    HAL_PD_STA_BLKSAD14     ,
    HAL_PD_STA_BLKSAD15     ,
    HAL_PD_STA_HIST00       ,
    HAL_PD_STA_HIST01       ,
    HAL_PD_STA_HIST02       ,
    HAL_PD_STA_HIST03       ,
    HAL_PD_STA_UMMCH0       ,
    HAL_PD_STA_UMNOMCH0     ,
    HAL_PD_STA_UMMCH1       ,
    HAL_PD_STA_UMNOMCH1     ,
    HAL_PD_STA_PCCFFWD      ,
    HAL_PD_STA_PCCFWD       ,
    HAL_PD_STA_PCCBWD       ,
    HAL_PD_STA_PCCCRSS      ,
    HAL_PD_STA_PCCPW        ,
    HAL_PD_STA_PCCFWDTKR    ,
    HAL_PD_STA_PCCBWDTKR    ,
    HAL_PD_STA_PCCBLKFWD00  ,
    HAL_PD_STA_PCCBLKFWD01  ,
    HAL_PD_STA_PCCBLKFWD02  ,
    HAL_PD_STA_PCCBLKFWD03  ,
    HAL_PD_STA_PCCBLKFWD04  ,
    HAL_PD_STA_PCCBLKFWD05  ,
    HAL_PD_STA_PCCBLKFWD06  ,
    HAL_PD_STA_PCCBLKFWD07  ,
    HAL_PD_STA_PCCBLKFWD08  ,
    HAL_PD_STA_PCCBLKBWD00  ,
    HAL_PD_STA_PCCBLKBWD01  ,
    HAL_PD_STA_PCCBLKBWD02  ,
    HAL_PD_STA_PCCBLKBWD03  ,
    HAL_PD_STA_PCCBLKBWD04  ,
    HAL_PD_STA_PCCBLKBWD05  ,
    HAL_PD_STA_PCCBLKBWD06  ,
    HAL_PD_STA_PCCBLKBWD07  ,
    HAL_PD_STA_PCCBLKBWD08  ,
    HAL_PD_STA_LASICNT14    ,
    HAL_PD_STA_LASICNT32    ,
    HAL_PD_STA_LASICNT34    ,

    HAL_PD_STA_BUTT
    
}HAL_PD_STA_E;


/* HD_DATE encode format */
typedef enum tagHAL_DISP_ENCODEFORMAT_E
{
    HAL_DISP_ENCODEFORMAT_480P = 0,
    HAL_DISP_ENCODEFORMAT_576P = 1,
    HAL_DISP_ENCODEFORMAT_720P = 2,
    HAL_DISP_ENCODEFORMAT_1080P = 3,
    HAL_DISP_ENCODEFORMAT_1080I =  4,
    HAL_DISP_ENCODEFORMAT_295M1080P = 5,
    HAL_DISP_ENCODEFORMAT_195M1080I = 6,
    HAL_DISP_ENCODEFORMAT_AS1152I = 7,
    HAL_DISP_ENCODEFORMAT_AS1080I = 8,
    
    HAL_DISP_ENCODEFORMAT_BUTT
} HAL_DISP_ENCODEFORMAT_E;

/* HD_DATE synchronization format */
typedef enum tagHAL_DISP_SYNCFORMAT_E
{
    HAL_DISP_SYNCFORMAT_RGB  = 0,
    HAL_DISP_SYNCFORMAT_YPBPR = 1,
    HAL_DISP_SYNCFORMAT_VGA = 2,
   
    HAL_DISP_SYNCFORMAT_BUTT
} HAL_DISP_SYNCFORMAT_E;

/* format of HD_DATE color space transformation */
typedef enum tagHAL_DISP_HD_CSCCOEF_E
{
    HAL_DISP_HD_CSCCOEF_YPBPR  = 0,
    HAL_DISP_HD_CSCCOEF_RGB_709 = 1,
    HAL_DISP_HD_CSCCOEF_RGB_601 = 2,
    HAL_DISP_HD_CSCCOEF_RGB_SMPTE240 = 3,
    
    HAL_DISP_HD_CSCCOEF_BUTT
} HAL_DISP_HD_CSCCOEF_E;

/* HD_DATE synchronized output */
typedef enum tagHAL_DISP_HD_SYNCSEL_E
{
    HAL_DISP_HD_OUTPUT_NONE  = 0,
    HAL_DISP_HD_OUTPUT_HSYNC = 1,
    HAL_DISP_HD_OUTPUT_VSYNC = 2,
    HAL_DISP_HD_OUTPUT_FID = 3,
    
    HAL_DISP_HD_SYNCSEL_BUTT
} HAL_DISP_HD_SYNCSEL_E;

/* HD_DATE synchronized output */
typedef enum tagHAL_DISP_HD_VIDEOSEL_E
{
    HAL_DISP_HD_VIDEOSEL_NONE  = 0,
    HAL_DISP_HD_VIDEOSEL_R_PR = 1,
    HAL_DISP_HD_VIDEOSEL_G_Y = 2,
    HAL_DISP_HD_VIDEOSEL_B_PB = 3,
    
    HAL_DISP_HD_VIDEOSEL_BUTT
} HAL_DISP_HD_vIDEOSEL_E;

/* HD_DATE synchronized output */
typedef enum tagHAL_DISP_HD_SRCCTRL_E
{
    HAL_DISP_HD_NONE  = 0,
    HAL_DISP_FILTER_ONLY1 = 1,
    HAL_DISP_2X_INTERPOL = 2,
    HAL_DISP_4X_INTERPOL = 3,
    
    HAL_DISP_SRCCTRL_BUTT
} HAL_DISP_HD_SRCCTRL_E;

/* SD_DATE dac select */
typedef enum
{
    HAL_DISP_OUTPUTSEL_DAC0  = 0x0,
    HAL_DISP_OUTPUTSEL_DAC1,
    HAL_DISP_OUTPUTSEL_DAC2,
    HAL_DISP_OUTPUTSEL_DAC3,
    HAL_DISP_OUTPUTSEL_DAC4,
    HAL_DISP_OUTPUTSEL_DAC5,
    
    HAL_DISP_OUTPUTSEL_DAC0_2,
    HAL_DISP_OUTPUTSEL_DAC3_5,

    HAL_DISP_OUTPUTSEL_ALL,

    HAL_DISP_OUTPUTSEL_BUTT
        
}HAL_DISP_OUTPUTSEL_E;

typedef enum
{
    DATE_ODD_FIELD = 0,
    DATE_EVEN_FIELD,

    DATE_FIELD_BUTT
}DATE_FIELD_t;

typedef enum
{
    DATE_TT_LINE_05 = 5,
    DATE_TT_LINE_06,
    DATE_TT_LINE_07,
    DATE_TT_LINE_08,
    DATE_TT_LINE_09,
    DATE_TT_LINE_10,
    DATE_TT_LINE_11,
    DATE_TT_LINE_12,
    DATE_TT_LINE_13,
    DATE_TT_LINE_14,
    DATE_TT_LINE_15,
    DATE_TT_LINE_16,
    DATE_TT_LINE_17,
    DATE_TT_LINE_18,
    DATE_TT_LINE_19,
    DATE_TT_LINE_20,
    DATE_TT_LINE_21,
    DATE_TT_LINE_22,
    
    DATE_TT_LINE_BUTT
}DATE_TT_LINE_NUM_t;

typedef enum
{
    DATE_DISABLE = 0,
    DATE_ENABLE
}DATE_ENABLE_t;

typedef enum
{
    DATE_TT_FINISHED = 0,
    DATE_TT_READY
}DATE_TT_READY_t;

/* used for communication between modules */
typedef enum
{
    ID_DRV_MODULE,
    ID_CK_MODULE,
    ID_BFM_MODULE,
    ID_WBC_MODULE,
    ID_DAC_MODULE
}MODULE_ID;

/* used for random para select */
typedef enum
{
    HAL_DISP_RANDPARA_VPFMT,
    HAL_DISP_RANDPARA_VPFMT1,
    HAL_DISP_RANDPARA_VPFMT2,
    HAL_DISP_RANDPARA_GPFMT,
    HAL_DISP_RANDPARA_GPFMT1,
    HAL_DISP_RANDPARA_GPFMT2,
    HAL_DISP_RANDPARA_INTFFMT,
    HAL_DISP_RANDPARA_CSC,
    HAL_DISP_RANDPARA_FRAMEMD,
    HAL_DISP_RANDPARA_DATARMD,
    HAL_DISP_RANDPARA_DIGFMT,
    HAL_GFX_RANDPARA_BITEXTEND,

    HAL_GFX_RANDPARA_BUTT,
}HAL_DISP_RANDPARA_E;

/* used for dac test select */
typedef enum
{
    HAL_DISP_DAC_TESTMODE1,
    HAL_DISP_DAC_TESTMODE2,
    HAL_DISP_DAC_TESTMODE3,
    HAL_DISP_DAC_TESTMODE4,
    HAL_DISP_DAC_TESTMODE5,

    HAL_DISP_DAC_TESTMODE_BUTT,
}HAL_DISP_DAC_TESTMODE_E;
/* LTI/CTI  mode */

typedef enum 
{
    HAL_DISP_TIMODE_LUM = 0,  
    HAL_DISP_TIMODE_CHM,  
    
    HAL_DISP_TIMODE_ALL,
    HAL_DISP_TIMODE_NON,
    HAL_DISP_TIMODE_BUTT
      
}HAL_DISP_TIMODE_E;

/* used for pdata select */     // for LVDS interface function configure vo data sel
typedef enum
{
    HAL_DISP_DATA_SEL0,    // data_sel0
    HAL_DISP_DATA_SEL1,    // data_sel1
    HAL_DISP_DATA_SEL2,    // data_sel2
    HAL_DISP_DATA_CH_BUTT,
}HAL_DISP_VO_PDATA_CH_E;

/* used for pdata select */     // for LVDS interface function
typedef enum
{
    HAL_DISP_DATA_BT1120_2,   // bt.1120  2 component
    HAL_DISP_DATA_SEPRA_2,    // hd separated mode 2 component
    HAL_DISP_DATA_BT1120_3,   // hd bt.1120 3 component
    HAL_DISP_DATA_SEPRA_3,    // hd separated mode 3 component
    HAL_DISP_DATA_SEL_BUTT,
}HAL_DISP_VO_PDATA_SEL_E;
/*==============================================================================*/
/* information of rectangle's coordinates and size */
typedef struct tagHAL_DISP_RECT_S
{
    HI_S32 s32SX;         /* source horizontal start position*/
    HI_S32 s32SY;         /* source vertical start position*/
    
    HI_S32 s32DXS;        /* dispaly horizontal start position*/
    HI_S32 s32DYS;        /* display vertical start position*/

    HI_S32 s32DXL;        /* dispaly horizontal end position*/
    HI_S32 s32DYL;        /* display vertical end position*/
    
    HI_S32 s32VX;         /* video horizontal start position*/
    HI_S32 s32VY;         /* video vertical start position*/    
    
    HI_S32 s32CXS;       /*crop horizontal start position*/
    HI_S32 s32CYS;       /*crop vertical start position*/

    HI_S32 s32CXL;       /*crop horizontal end position*/
    HI_S32 s32CYL;       /*crop vertical end position*/
    HI_U32 u32InWidth;    /* input width*/
    HI_U32 u32InHeight;   /* input height*/
    HI_U32 u32OutWidth;   /* output width*/
    HI_U32 u32OutHeight;  /* output height*/
} HAL_DISP_RECT_S;

/* the following para used in SDK will be substituted by the above common intf defined in SDK. */
typedef struct
{
    HI_S32 s32X;
    HI_S32 s32Y;
    HI_U32 u32Width;
    HI_U32 u32Height;
} HAL_DISP_RECT2_S;



/* synchronization information for video frame */
typedef struct tagHAL_DISP_SYNCINFO_S
{
    HI_U32  bSynm;
    HI_U32  bIop;
    HI_U8    u8Intfb; 
    
    HI_U16    u16Vact ;
    HI_U16    u16Vbb;
    HI_U16    u16Vfb;

    HI_U16    u16Hact;
    HI_U16    u16Hbb;
    HI_U16    u16Hfb;

    HI_U16    u16Hmid;

    HI_U16    u16Bvact;
    HI_U16    u16Bvbb;
    HI_U16    u16Bvfb;

    HI_U16    u16Hpw;
    HI_U16    u16Vpw;

    HI_U32  bIdv;
    HI_U32  bIhs;
    HI_U32  bIvs;
} HAL_DISP_SYNCINFO_S;

/* vou graphic layer key  */
typedef struct tagHAL_GFX_KEY_S
{
    HI_U8 u8Key_r_min;
    HI_U8 u8Key_g_min;
    HI_U8 u8Key_b_min;

    HI_U8 u8Key_r_max;
    HI_U8 u8Key_g_max;
    HI_U8 u8Key_b_max;    

    HI_U8 u8Key_r_msk;
    HI_U8 u8Key_g_msk;
    HI_U8 u8Key_b_msk;

    HI_U32 bKeyMode;

    HI_U8 u8KeyAlpha;

} HAL_GFX_KEY_S;

/* vou graphic layer mask  */
typedef struct tagHAL_GFX_MASK_S
{
    HI_U8 u8Mask_r;
    HI_U8 u8Mask_g;
    HI_U8 u8Mask_b;

} HAL_GFX_MASK_S;

/* vou graphic layer alpha process  */
typedef struct tagHAL_GFX_ALPHA_S
{
    HAL_GFX_KEY_S stKey;
    HAL_GFX_MASK_S stMask;

    HI_U8 u8galpha;
    HI_U8 u8palpha0;
    HI_U8 u8palpha1;

}HAL_GFX_ALPHA_S;
 
/* vou background color */
typedef struct tagHAL_DISP_BKCOLOR_S
{
    HI_U8 u8Bkg_a;  
    HI_U8 u8Bkg_y;
    HI_U8 u8Bkg_cb;
    HI_U8 u8Bkg_cr;

} HAL_DISP_BKCOLOR_S; 

/* vou background color */
typedef struct tagHAL_DISP_CLIP_S
{
    HI_U32   bClipEn;
    HI_U16 u16ClipLow_y;  
    HI_U16 u16ClipLow_cb;  
    HI_U16 u16ClipLow_cr;  
    
    HI_U16 u16ClipHigh_y;  
    HI_U16 u16ClipHigh_cb;  
    HI_U16 u16ClipHigh_cr;  

} HAL_DISP_CLIP_S;


/* HD_DATE CSC control and filtering coefficients */
typedef struct tagHAL_DISP_HD_CSCCTRL_S
{
    HI_U32  bCscCtrl;    /* control of color space transformation */
    
    HI_U8    u8CscCoef_r_y;    
    HI_U8    u8CscCoef_r_cb;
    HI_U8    u8CscCoef_r_cr;

    HI_U8    u8CscCoef_g_y;
    HI_U8    u8CscCoef_g_cb;
    HI_U8    u8CscCoef_g_cr;

    HI_U8    u8CscCoef_b_y;
    HI_U8    u8CscCoef_b_cb;
    HI_U8    u8CscCoef_b_cr;
    
} HAL_DISP_HD_CSCCTRL_S;

/* HD_DATE interface and synchronization information */
typedef struct tagHAL_DISP_HD_OUPUTINTERFACE_S
{
    HI_U8    u8VideoOutCtrl; /* output video format control */
    HI_U8    u8SyncAddCtrl;  /* synchronization superposition control */
    HI_U8    u8VideoFt;      /* synchronization format setting */

    HI_U8    u8Video1Sel; /* video1_out video output select */
    HI_U8    u8Video2Sel; /* video2_out video output select */
    HI_U8    u8Video3Sel; /* video3_out video output select */
    HI_U8    u8HsyncSel;  /* hsync output select */
    HI_U8    u8VsyncSel;  /* vsync output select */
    
} HAL_DISP_HD_OUPUTINTERFACE_S;


/* polarity information for HD_DATE interface */
typedef struct tagHAL_DISP_HD_INTERFACEPOLA_S
{
    HI_U32 bFidOutPola;     /* output FID polarity control */
    HI_U32 bVsyncOutPola;   /* output VSYNC polarity control */
    HI_U32 bHsyncOutPola;   /* output HSYNC polarity control */
    
    HI_U32 bFidInPola;      /* input FID polarity control */
    HI_U32 bVsyncInPola;    /* input VSYNC polarity control */
    HI_U32 bHsyncInPola;    /* input HYNC polarity control */

} HAL_DISP_HD_INTERFACEPOLA_S;


/* HD_DATE filter control and filter coefficients */
typedef struct tagHAL_DISP_HD_FILTERCTRL_S
{
    HI_U32  bSdSel;
    /* HI_U32  bSyncLpfEn; */

    HI_U8    u8SrcCtrl;  /* over-sample control */

    HI_U8    u8CoefTap11;
    HI_U8    u8CoefTap12;
    HI_U8    u8CoefTap13;
    HI_U8    u8CoefTap14;    

    HI_U8    u8CoefTap21;
    HI_U8    u8CoefTap22;
    HI_U8    u8CoefTap23;
    HI_U8    u8CoefTap24;

    HI_U8    u8CoefTap31;
    HI_U8    u8CoefTap32;
    HI_U8    u8CoefTap33;
    HI_U8    u8CoefTap34;

    HI_U8    u8CoefTap41;
    HI_U8    u8CoefTap42;
    HI_U8    u8CoefTap43;
    HI_U8    u8CoefTap44;

    HI_U16    u16CoefTap51;
    HI_U16    u16CoefTap52;
    HI_U16    u16CoefTap53;
    HI_U16    u16CoefTap54;    

    HI_U16    u16CoefTap61;
    HI_U16    u16CoefTap62;
    HI_U16    u16CoefTap63;
    HI_U16    u16CoefTap64;    

    HI_U16    u16CoefTap71;
    HI_U16    u16CoefTap72;
    HI_U16    u16CoefTap73;
    HI_U16    u16CoefTap74; 

    HI_U16    u16CoefTap81;
    HI_U16    u16CoefTap82;
    HI_U16    u16CoefTap83;
    HI_U16    u16CoefTap84; 

    HI_U16    u16CoefTap91;
    HI_U16    u16CoefTap92;
    HI_U16    u16CoefTap93;
    HI_U16    u16CoefTap94; 

    HI_U8    u8CoefTap101;
    HI_U8    u8CoefTap102;
    HI_U8    u8CoefTap103;
    HI_U8    u8CoefTap104; 

    HI_U8    u8CoefTap111;
    HI_U8    u8CoefTap112;
    HI_U8    u8CoefTap113;
    HI_U8    u8CoefTap114; 

    HI_U8    u8CoefTap121;
    HI_U8    u8CoefTap122;
    HI_U8    u8CoefTap123;
    HI_U8    u8CoefTap124; 

    HI_U8    u8CoefTap131;
    HI_U8    u8CoefTap132;
    HI_U8    u8CoefTap133;
    HI_U8    u8CoefTap134; 
} HAL_DISP_HD_FILTERCTRL_S;

typedef struct tagVOU_BFM_OUTDATA_S
{
    HI_U16 *Y;
    HI_U16 *Cb;
    HI_U16 *Cr;
    
    HI_U32 Length;

    HI_U8  Field;
    HI_U8  Dataformat;
    HI_U8  Datafmt;
}VOU_BFM_OUTDATA_S;

typedef struct tagRequest
{
    HI_S32  id;
    HI_VOID *buf;
    HI_U32  addr;
    HI_S32  size;
    HI_S32  count;
    HI_S32  mode;
    HI_U32    wr;  /* 0: read; 1: write */
} Request;

typedef struct
{
    HI_U32 acc_multi    ;
    HI_U32 thd_med_high ;
    HI_U32 thd_med_low  ;
    HI_U32 thd_high     ;
    HI_U32 thd_low      ;
} ACCTHD_S;


typedef struct 
{
    HI_S32 csc_coef00;
    HI_S32 csc_coef01;
    HI_S32 csc_coef02;

    HI_S32 csc_coef10;
    HI_S32 csc_coef11;
    HI_S32 csc_coef12;

    HI_S32 csc_coef20;
    HI_S32 csc_coef21;
    HI_S32 csc_coef22;

    HI_S32 csc_in_dc0;
    HI_S32 csc_in_dc1;
    HI_S32 csc_in_dc2;

    HI_S32 csc_out_dc0;
    HI_S32 csc_out_dc1;
    HI_S32 csc_out_dc2;
} CscCoef_S;

/* SDK use it, not the above one, we need to unit in next editor. */
typedef struct
{
    HI_S32 csc_in_dc0;
    HI_S32 csc_in_dc1;
    HI_S32 csc_in_dc2;

    HI_S32 csc_out_dc0;
    HI_S32 csc_out_dc1;
    HI_S32 csc_out_dc2;
} IntfCscDcCoef_S;

typedef struct
{
    HI_S32 csc_coef00;
    HI_S32 csc_coef01;
    HI_S32 csc_coef02;

    HI_S32 csc_coef10;
    HI_S32 csc_coef11;
    HI_S32 csc_coef12;

    HI_S32 csc_coef20;
    HI_S32 csc_coef21;
    HI_S32 csc_coef22;
} IntfCscCoef_S;


typedef struct
{
    double   zone0_delta;
    double   zone2_delta;

    double   zone0_ratio;
    double   zone1_ratio;

    unsigned int zone0_end;
    unsigned int zone1_end;

}NONLINEAR_INFO;

typedef struct
{
    HI_U32  key_en      ;
    HI_U32  key_alpha   ;
    HI_U32  luma_mask   ;
    HI_U32  luma_high   ;
    HI_U32  luma_low    ;
} LUMA_KEY_S;

typedef struct
{
    HI_U32  uAData  ;
    HI_U32  uRData  ;
    HI_U32  uGData  ;
    HI_U32  uBData  ;
} LUT_DATA_S;


typedef struct
{
    HI_U32 bAcmBlkEn    ;
    
    HI_U8  u8UIndex   ;
    HI_U8  u8VIndex   ;
    
    HI_S8  s8UOffsetA  ;
    HI_S8  s8UOffsetB  ;
    HI_S8  s8UOffsetC  ;
    HI_S8  s8UOffsetD  ;
    
    HI_S8  s8VOffsetA  ;
    HI_S8  s8VOffsetB  ;
    HI_S8  s8VOffsetC  ;
    HI_S8  s8VOffsetD  ;
} HAL_DISP_ACMBLKINFO_S;

typedef struct
{
    HAL_DISP_ACMBLKINFO_S stAcmBlk0 ;
    HAL_DISP_ACMBLKINFO_S stAcmBlk1 ;
    HAL_DISP_ACMBLKINFO_S stAcmBlk2 ;
    HAL_DISP_ACMBLKINFO_S stAcmBlk3 ;
    
} HAL_DISP_ACMINFO_S;

typedef enum hiHAL_DISP_SYNC_MODE_E
{
    HAL_DISP_SYNC_MODE_TIMING = 0x0,
    HAL_DISP_SYNC_MODE_SIGNAL = 0x1,
    HAL_DISP_SYNC_MODE_BUTT
} HAL_DISP_SYNC_MODE_E;

typedef enum hiHAL_DISP_BIT_WIDTH_E
{
    HAL_DISP_BIT_WIDTH_1 = 0x0,
    HAL_DISP_BIT_WIDTH_2 = 0x1,
    HAL_DISP_BIT_WIDTH_3 = 0x2,
    HAL_DISP_BIT_WIDTH_BUTT
} HAL_DISP_BIT_WIDTH_E;


typedef struct 
{
    HI_U32 u32LastAddr;   /* last node end position that store the nest node word num/node no/next addr  */
    HI_U32 u32CurAddr;    /* current node start position that store current node info. */
    HI_U32 u32WordNum;    /* current node num used in rm(have regup, no next node addr), so ddr need add(next node addr) -1. */
    HI_U32 u32NodeCfgNum; /* current node no. used in ddr */
    HI_U32 *upData;       /* current node data that combinate already. */
} NODE_DDR_PARA_S;


//add for VC1 profile, by q212453
typedef enum tagHAL_VC1PROFILE_E
{
    HAL_VC1PROFILE_SIMPLE = 0,
    HAL_VC1PROFILE_MAIN      ,
    HAL_VC1PROFILE_ADVANCE   ,
    HAL_VC1PROFILE_RESERVED

}HAL_VC1PROFILE_E;

/* vc-1 range frame or field mode  */
typedef enum 
{
    HAL_DISP_VC1RDMD_FLD = 0,  
    HAL_DISP_VC1RDMD_FRM,      
    HAL_DISP_VC1RDMD_DIE,      

    HAL_DISP_VC1RDMD_BUTT
      
}HAL_DISP_VC1RDMD_E;


//add for VC1 coef cfg,for rm cfg
typedef struct
{
    HI_U32 u32Mapy;
    HI_U32 u32Mapc;
    
    HI_U32 u32Bmapy;
    HI_U32 u32Bmapc;

} Vc1MapCoefCfg;

#endif

