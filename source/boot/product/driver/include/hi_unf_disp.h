/*********************************************************************************
*
*  Copyright (C) 2014 Hisilicon Technologies Co., Ltd.  All rights reserved. 
*
*  This program is confidential and proprietary to Hisilicon Technologies Co., Ltd.
*  (Hisilicon), and may not be copied, reproduced, modified, disclosed to
*  others, published or used, in whole or in part, without the express prior
*  written permission of Hisilicon.
*
***********************************************************************************/

#ifndef __OPTM_DISP_H__
#define __OPTM_DISP_H__

#ifdef __cplusplus
 #if __cplusplus
extern "C" {
 #endif
#endif /* __cplusplus */


/**max DAC count*/
/**CNcomment:最大的DAC数目*/
#define MAX_DAC_NUM (4)


typedef enum hiUNF_DISP_E
{
    HI_UNF_DISP_SD0 = 0x0,  /**< SD DISPLAY0 */ /**<CNcomment:标清DISPLAY0 */
    HI_UNF_DISP_HD0,         /**< HD DISPLAY0 *//**<CNcomment: 高清DISPLAY0 */
    HI_UNF_DISP_BUTT
}HI_UNF_DISP_E;

typedef enum hiUNF_ENC_FMT_E
{
    HI_UNF_ENC_FMT_1080P_60 = 0,
    HI_UNF_ENC_FMT_1080P_50,   
    HI_UNF_ENC_FMT_1080P_30,  
    HI_UNF_ENC_FMT_1080P_25, 
    HI_UNF_ENC_FMT_1080P_24, 

    HI_UNF_ENC_FMT_1080i_60,         
    HI_UNF_ENC_FMT_1080i_50,         

    HI_UNF_ENC_FMT_720P_60,          
    HI_UNF_ENC_FMT_720P_50,         

    HI_UNF_ENC_FMT_576P_50,        
    HI_UNF_ENC_FMT_480P_60,       

    HI_UNF_ENC_FMT_PAL,              /* B D G H I PAL */
    HI_UNF_ENC_FMT_PAL_N,            /* (N)PAL        */
    HI_UNF_ENC_FMT_PAL_Nc,           /* (Nc)PAL       */

    HI_UNF_ENC_FMT_NTSC,             /* (M)NTSC       */
    HI_UNF_ENC_FMT_NTSC_J,           /* NTSC-J        */
    HI_UNF_ENC_FMT_NTSC_PAL_M,       /* (M)PAL        */

    HI_UNF_ENC_FMT_SECAM_SIN,        /**< SECAM_SIN*/
    HI_UNF_ENC_FMT_SECAM_COS,        /**< SECAM_COS*/

    HI_UNF_ENC_FMT_861D_640X480_60,
    HI_UNF_ENC_FMT_VESA_800X600_60,
    HI_UNF_ENC_FMT_VESA_1024X768_60,
    HI_UNF_ENC_FMT_VESA_1280X720_60,
    HI_UNF_ENC_FMT_VESA_1280X800_60,
    HI_UNF_ENC_FMT_VESA_1280X1024_60,
    HI_UNF_ENC_FMT_VESA_1360X768_60,         //Rowe
    HI_UNF_ENC_FMT_VESA_1366X768_60,
    HI_UNF_ENC_FMT_VESA_1400X1050_60,        //Rowe
    HI_UNF_ENC_FMT_VESA_1440X900_60,
    HI_UNF_ENC_FMT_VESA_1440X900_60_RB,
    HI_UNF_ENC_FMT_VESA_1600X900_60_RB,
    HI_UNF_ENC_FMT_VESA_1600X1200_60,
    HI_UNF_ENC_FMT_VESA_1680X1050_60,       //Rowe
    HI_UNF_ENC_FMT_VESA_1920X1080_60,
    HI_UNF_ENC_FMT_VESA_1920X1200_60,
    HI_UNF_ENC_FMT_VESA_2048X1152_60,
    HI_UNF_ENC_FMT_VESA_CUSTOMER_DEFINE,

    HI_UNF_ENC_FMT_BUTT
}HI_UNF_ENC_FMT_E;


typedef enum hiUNF_ASPECT_RATIO_E
{
    HI_UNF_ASPECT_RATIO_UNKNOWN,
    HI_UNF_ASPECT_RATIO_4TO3,  
    HI_UNF_ASPECT_RATIO_16TO9,
    HI_UNF_ASPECT_RATIO_SQUARE,
    HI_UNF_ASPECT_RATIO_14TO9, 
    HI_UNF_ASPECT_RATIO_221TO1,

    HI_UNF_ASPECT_RATIO_BUTT
}HI_UNF_ASPECT_RATIO_E;

typedef enum hiUNF_ASPECT_CVRS_E
{
    HI_UNF_ASPECT_CVRS_IGNORE = 0x0,   
    HI_UNF_ASPECT_CVRS_LETTERBOX,      
    HI_UNF_ASPECT_CVRS_PANANDSCAN,     
    HI_UNF_ASPECT_CVRS_COMBINED,      
    HI_UNF_ASPECT_CVRS_BUTT
} HI_UNF_ASPECT_CVRS_E;

typedef enum hiUNF_DISP_MACROVISION_MODE_E
{
    HI_UNF_DISP_MACROVISION_MODE_TYPE0,  
    HI_UNF_DISP_MACROVISION_MODE_TYPE1,  
    HI_UNF_DISP_MACROVISION_MODE_TYPE2,  
    HI_UNF_DISP_MACROVISION_MODE_TYPE3,  
    HI_UNF_DISP_MACROVISION_MODE_CUSTOM, 
    HI_UNF_DISP_MACROVISION_MODE_BUTT
} HI_UNF_DISP_MACROVISION_MODE_E;

/* CGMS type select */
typedef enum hiUNF_DISP_CGMS_TYPE_E
{
    HI_UNF_DISP_CGMS_TYPE_A = 0x00,
    HI_UNF_DISP_CGMS_TYPE_B,

    HI_UNF_DISP_CGMS_TYPE_BUTT
}HI_UNF_DISP_CGMS_TYPE_E;


/* definition of CGMS mode */
typedef enum hiUNF_DISP_CGMS_MODE_E
{
   HI_UNF_DISP_CGMS_MODE_COPY_FREELY    = 0,    /* copying is permitted without restriction */
   HI_UNF_DISP_CGMS_MODE_COPY_NO_MORE   = 0x01, /* No more copies are allowed (one generation copy has been made) */
   HI_UNF_DISP_CGMS_MODE_COPY_ONCE      = 0x02, /* One generation of copies may be made */
   HI_UNF_DISP_CGMS_MODE_COPY_NEVER     = 0x03, /* No copying is permitted */
      
   HI_UNF_DISP_CGMS_MODE_BUTT
}HI_UNF_DISP_CGMS_MODE_E;


/** definition of CGMS configuration */
typedef struct hiUNF_DISP_CGMS_CFG_S
{
    HI_BOOL                  bEnable;    /** HI_TRUE:CGMS is enabled; HI_FALSE:CGMS is disabled */
    HI_UNF_DISP_CGMS_TYPE_E  enType;     /** type-A or type-B or None(BUTT) */
    HI_UNF_DISP_CGMS_MODE_E  enMode;     /** CGMS mode. */
     
}HI_UNF_DISP_CGMS_CFG_S;


typedef enum hiUNF_DISP_DAC_MODE_E
{
    HI_UNF_DISP_DAC_MODE_SILENCE = 0,    
    HI_UNF_DISP_DAC_MODE_CVBS,           
    HI_UNF_DISP_DAC_MODE_Y,             
    HI_UNF_DISP_DAC_MODE_PB,            
    HI_UNF_DISP_DAC_MODE_PR,            
    HI_UNF_DISP_DAC_MODE_R,            
    HI_UNF_DISP_DAC_MODE_G,            
    HI_UNF_DISP_DAC_MODE_B,            
    HI_UNF_DISP_DAC_MODE_SVIDEO_Y,     
    HI_UNF_DISP_DAC_MODE_SVIDEO_C,    
    HI_UNF_DISP_DAC_MODE_HD_Y,       
    HI_UNF_DISP_DAC_MODE_HD_PB,     
    HI_UNF_DISP_DAC_MODE_HD_PR,     
    HI_UNF_DISP_DAC_MODE_HD_R,     
    HI_UNF_DISP_DAC_MODE_HD_G,    
    HI_UNF_DISP_DAC_MODE_HD_B,   
    HI_UNF_DISP_DAC_MODE_BUTT
}HI_UNF_DISP_DAC_MODE_E;

/*the supported display interface.*//*CNcomment:定义支持的显示输出接口 */
typedef struct  hiUNF_DISP_INTERFACE_S
{
    HI_BOOL                      bScartEnable;                
    HI_BOOL                      bBt1120Enable;               
    HI_BOOL                      bBt656Enable;                
    HI_UNF_DISP_DAC_MODE_E       enDacMode[MAX_DAC_NUM];      
}HI_UNF_DISP_INTERFACE_S ;

typedef enum hiUNF_DISP_INTF_TYPE_E
{
    HI_UNF_DISP_INTF_TYPE_TV = 0,    /*the output interface is TV.*//*CNcomment:输出接口为TV*/
    HI_UNF_DISP_INTF_TYPE_LCD,       /*the output interface is LCD*//*CNcomment:输出接口为LCD*/
    HI_UNF_DISP_INTF_TYPE_BUTT
}HI_UNF_DISP_INTF_TYPE_E;


/**define display output range struct */
/**CNcomment:定义DISPLAY输出范围类型*/
typedef struct hiUNF_RECT_S
{
    HI_S32 x, y;

    HI_S32 w, h;
} HI_UNF_RECT_S;

typedef enum hiUNF_DISP_LCD_DATA_WIDTH_E
{
    HI_UNF_DISP_LCD_DATA_WIDTH8 = 0,       
    HI_UNF_DISP_LCD_DATA_WIDTH16,          
    HI_UNF_DISP_LCD_DATA_WIDTH24,         
    HI_UNF_DISP_LCD_DATA_WIDTH_BUTT
}HI_UNF_DISP_LCD_DATA_WIDTH_E;


/*the data format of LCD.*//*CNcomment:定义LCD的数据格式*/
typedef enum hiUNF_DISP_LCD_FORMAT_E
{
    HI_UNF_DISP_LCD_FORMAT_YUV422 = 0,         /*YUV422,bitwidth:16*//*CNcomment:YUV422，位宽为16*/
    HI_UNF_DISP_LCD_FORMAT_RGB565 = 0x8,       /*RGB565,bitwidth:16*//*CNcomment:RGB565，位宽为16*/
    HI_UNF_DISP_LCD_FORMAT_RGB444 = 0xa,       /*RGB444,bitwidth:16*//*CNcomment:RGB444，位宽为16*/
    HI_UNF_DISP_LCD_FORMAT_RGB666 = 0xb,       /*RGB666,bitwidth:24*//*CNcomment:RGB666，位宽为24*/
    HI_UNF_DISP_LCD_FORMAT_RGB888 = 0xc,       /*RGB888,bitwidth:24*//*CNcomment:RGB888，位宽为24*/
    HI_UNF_DISP_LCD_FORMAT_BUTT
}HI_UNF_DISP_LCD_FORMAT_E;

/*the data format of LCD.*//*CNcomment:定义LCD的数据格式*/
typedef enum hiHI_UNF_DISP_LCD_DATA_FMT
{
    HI_UNF_DISP_LCD_DATA_FMT_YUV422 = 0,         /*YUV422,bitwidth:16*//*CNcomment:YUV422，位宽为16*/
    HI_UNF_DISP_LCD_DATA_FMT_RGB565 = 0x8,       /*RGB565,bitwidth:16*//*CNcomment:RGB565，位宽为16*/
    HI_UNF_DISP_LCD_DATA_FMT_RGB444 = 0xa,       /*RGB444,bitwidth:16*//*CNcomment:RGB444，位宽为16*/
    HI_UNF_DISP_LCD_DATA_FMT_RGB666 = 0xb,       /*RGB666,bitwidth:24*//*CNcomment:RGB666，位宽为24*/
    HI_UNF_DISP_LCD_DATA_FMT_RGB888 = 0xc,       /*RGB888,bitwidth:24*//*CNcomment:RGB888，位宽为24*/
    HI_UNF_DISP_LCD_DATA_FMT_BUTT
}HI_UNF_DISP_LCD_DATA_FMT_E;

/**HDMI Deep color mode*//**CNcomment: HDMI Deep Color 模式 */
typedef enum hiUNF_HDMI_DEEP_COLOR_E
{
    HI_UNF_HDMI_DEEP_COLOR_24BIT = 0x00,    /**<HDMI Deep color 24bit mode*//**<CNcomment: HDMI Deep Color 24bit 模式  */
    HI_UNF_HDMI_DEEP_COLOR_30BIT,           /**<HDMI Deep color 30bit mode*//**<CNcomment: HDMI Deep Color 30bit 模式  */
    HI_UNF_HDMI_DEEP_COLOR_36BIT,           /**<HDMI Deep color 36bit mode*//**<CNcomment: HDMI Deep Color 36bit 模式  */  
    HI_UNF_HDMI_DEEP_COLOR_OFF   = 0xff,
    HI_UNF_HDMI_DEEP_COLOR_BUTT
}HI_UNF_HDMI_DEEP_COLOR_E;

typedef struct hiUNF_DISP_LCD_PARA_S
{
    HI_U32                    VFB;                 /*vertical front blanking value*//*CNcomment:垂直前消隐*/
    HI_U32                    VBB;                 /*vertical back blanking value*//*CNcomment:垂直后消隐*/
    HI_U32                    VACT;                /*vertical active value.*//*CNcomment:垂直有效区*/
    HI_U32                    HFB;                 /*horizontal front blanking value *//*CNcomment:水平前消隐*/
    HI_U32                    HBB;                 /*horizontal back blanking value*//*CNcomment:水平后消隐*/
    HI_U32                    HACT;                /*horizontal active blanking value*//*CNcomment:水平有效区*/
    HI_U32                    VPW;                 /*vertical pulse width*//*CNcomment:垂直脉冲宽度*/
    HI_U32                    HPW;                 /*horizontal pulse width*//*CNcomment:水平脉冲宽度*/
    HI_BOOL                   IDV;                 /*whether valid data signal to be inverted*//*CNcomment:有效数据信号是否翻转*/
    HI_BOOL                   IHS;                 /*whether hsync to be inverted. *//*CNcomment:水平同步脉冲信号是否翻转*/
    HI_BOOL                   IVS;                 /*whether vsync to be inverted.*//*CNcomment:垂直同步脉冲信号是否翻转*/
    HI_BOOL                   ClockReversal;       /*whether clk to be inverted.*//*CNcomment:时钟是否翻转*/
    HI_UNF_DISP_LCD_DATA_WIDTH_E   DataWidth;      /*the data bit width.*//*CNcomment:数据位宽*/
    HI_UNF_DISP_LCD_FORMAT_E       ItfFormat;      /*data format.*//*CNcomment:数据格式.*/
    HI_BOOL                   DitherEnable;        /*whether to enable dither or not.*//*CNcomment:是否使能Dither*/
    HI_U32                    ClkPara0;            /**<PLL  register SC_VPLL1FREQCTRL0  value */
    HI_U32                    ClkPara1;            /**<PLL  register SC_VPLL1FREQCTRL1 value*/
    HI_U32                    InRectWidth;
    HI_U32                    InRectHeight;
} HI_UNF_DISP_LCD_PARA_S;



typedef struct  hiUNF_DISP_BG_COLOR_S
{
    HI_U8 u8Red ;            
    HI_U8 u8Green ;          
    HI_U8 u8Blue ;           
} HI_UNF_DISP_BG_COLOR_S;

typedef struct hiRECT_S
{
    HI_S32 s32X;
    HI_S32 s32Y;
    HI_S32 s32Width;
    HI_S32 s32Height;
}HI_RECT_S;


HI_S32 HI_UNF_DISP_Init(HI_VOID);
HI_S32 HI_UNF_DISP_DeInit(HI_VOID);
HI_S32 HI_UNF_DISP_SetFormat(HI_UNF_DISP_E enDisp, HI_UNF_ENC_FMT_E enEncodingFormat);
HI_S32 HI_UNF_DISP_SetDacMode(HI_UNF_DISP_INTERFACE_S *pstDacMode);
HI_S32 HI_UNF_DISP_SetLcdPara(HI_UNF_DISP_E enDisp, const HI_UNF_DISP_LCD_PARA_S *pstLcdPara);
//HI_S32 HI_UNF_DISP_SetScreen(HI_UNF_DISP_E enDisp, HI_RECT_S *pstOutRect);
HI_S32  HI_UNF_DISP_SetBgColor(HI_UNF_DISP_E enDisp, HI_UNF_DISP_BG_COLOR_S *pstBgColor);
HI_S32  HI_UNF_DISP_SetBrightness(HI_UNF_DISP_E enDisp, HI_U32 CscValue);
HI_S32  HI_UNF_DISP_SetContrast(HI_UNF_DISP_E enDisp, HI_U32 CscValue);
HI_S32  HI_UNF_DISP_SetSaturation(HI_UNF_DISP_E enDisp, HI_U32 CscValue);
HI_S32  HI_UNF_DISP_SetHuePlus(HI_UNF_DISP_E enDisp, HI_U32 CscValue);
HI_S32 HI_UNF_DISP_Attach(HI_UNF_DISP_E enDstDisp, HI_UNF_DISP_E enSrcDisp);
HI_S32 HI_UNF_DISP_Detach(HI_UNF_DISP_E enDstDisp, HI_UNF_DISP_E enSrcDisp);
HI_S32 HI_UNF_DISP_Open (HI_UNF_DISP_E enDisp) ;
HI_S32 HI_UNF_DISP_Close(HI_UNF_DISP_E enDisp);

HI_S32 HIADP_Disp_Init(HI_UNF_ENC_FMT_E enFormat);

HI_S32 HI_UNF_DISP_SetOutputWin(HI_UNF_DISP_E enDisp, HI_UNF_RECT_S *pstOutRect);

#ifdef __cplusplus
 #if __cplusplus
}
 #endif
#endif /* __cplusplus */

#endif  /* __OPTM_DISP_H__ */
