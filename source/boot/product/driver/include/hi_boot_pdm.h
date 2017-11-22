/******************************************************************************
*
* Copyright (C) 2014 Hisilicon Technologies Co., Ltd.  All rights reserved. 
*
* This program is confidential and proprietary to Hisilicon  Technologies Co., Ltd. (Hisilicon), 
* and may not be copied, reproduced, modified, disclosed to others, published or used, in
* whole or in part, without the express prior written permission of Hisilicon.
*
******************************************************************************
File Name           : hi_boot_pdm.h
Version             : Initial Draft
Author              : 
Created             : 2014/10/21
Description         : 
Function List       : 
History             :
Date                       Author                   Modification
2014/10/21                                          Created file        
******************************************************************************/


#ifndef __HI_BOOT_PDM_H__
#define __HI_BOOT_PDM_H__

#include "hi_boot_common.h"
#include "hi_flash.h"
#include "hi_unf_disp.h"
#include "hi_go_common.h"

#ifdef __cplusplus
extern "C" {
#endif

#define MCE_DEF_BASEPARAM_SIZE       (8*1024)
#define MCE_DEF_LOGOPARAM_SIZE		 (8*1024)
#define MCE_DEF_PLAYPARAM_SIZE		 (8*1024)

#define PDM_BASE_DEF_NAME         "baseparam"
#define PDM_LOGO_DEF_NAME         "logo"
#define PDM_FASTPLAY_DEF_NAME     "fastplay"
#define PDM_DEVICE_INFO_DEF_NAME  "deviceinfo"

#define MCE_BASE_TABLENAME_HD0          "BASE_TABLE_HD0"

#define MCE_BASE_KEYNAME_FMT            "BASE_KEY_FMT"
#define MCE_BASE_KEYNAME_INTF_YPBPR     "BASE_KEY_YPBPR"
#define MCE_BASE_KEYNAME_INTF_CVBS      "BASE_KEY_CVBS"
#define MCE_BASE_KEYNAME_INTF_RGB	    "BASE_KEY_RGB"
#define MCE_BASE_KEYNAME_INTF_SVIDEO    "BASE_KEY_SVIDEO"
#define MCE_BASE_KEYNAME_PF             "BASE_KEY_PF"
#define MCE_BASE_KEYNAME_DISPW          "BASE_KEY_DISPW"
#define MCE_BASE_KEYNAME_DISPH          "BASE_KEY_DISPH"
#define MCE_BASE_KEYNAME_SCRX           "BASE_KEY_SCRX"
#define MCE_BASE_KEYNAME_SCRY           "BASE_KEY_SCRY"
#define MCE_BASE_KEYNAME_SCRW           "BASE_KEY_SCRW"
#define MCE_BASE_KEYNAME_SCRH           "BASE_KEY_SCRH"
#define MCE_BASE_KEYNAME_HULEP          "BASE_KEY_HULEP"
#define MCE_BASE_KEYNAME_SATU           "BASE_KEY_SATU"
#define MCE_BASE_KEYNAME_CONTR          "BASE_KEY_CONTR"
#define MCE_BASE_KEYNAME_BRIG           "BASE_KEY_BRIG"
#define MCE_BASE_KEYNAME_BGCOLOR        "BASE_KEY_BGCOLOR"
#define MCE_BASE_KEYNAME_ASP_R          "BASE_KEY_ASP_R"
#define MCE_BASE_KEYNAME_ASP_C          "BASE_KEY_ASP_C"
#define MCE_BASE_KEYNAME_MACRSN         "BASE_KEY_MACRSN"
#define MCE_BASE_KEYNAME_TIMING         "BASE_KEY_TIMING"
#define MCE_BASE_KEYNAME_GAMA           "BASE_KEY_GAMA"

#define MCE_LOGO_TABLENAME              "LOGO_TABLE"
#define MCE_LOGO_KEYNAME_FLAG           "LOGO_KEY_FLAG"
#define MCE_LOGO_KEYNAME_CONTLEN        "LOGO_KEY_LEN"

#define MCE_PLAY_TABLENAME              "PLAY_TABLE"
#define MCE_PLAY_KEYNAME_FLAG           "PLAY_KEY_FLAG"
#define MCE_PLAY_KEYNAME_DATALEN        "PLAY_KEY_DATALEN"
#define MCE_PLAY_KEYNAME_PARAM          "PLAY_KEY_PARAM"

#define HI_MTD_NAME_LEN     32
#define PDM_MAX_RESBUF_NUM  32
#define HI_HEAD_CHECK_LEN     4
#define PDM_TAG_MAXLEN  512
#define PDM_TAG_VERSION "1.0.0.0"
#define DEF_CHECK_FLAG 0x5a5a5a5a


#define PDM_BASEPARAM_BUFNAME "baseparam"
#define PDM_PLAYPARAM_BUFNAME "playparam"
#define PDM_PLAYDATA_BUFNAME  "playdata"


#define HI_ERR_PDM(format...)     HI_ERR_BOOT(0, format)
#define HI_INFO_PDM(format...)    HI_INFO_BOOT(0, format)

typedef struct hiPDM_BASE_INFO_S
{
	unsigned int checkflag;
	unsigned int hdIntf;
	unsigned int sdIntf;
	unsigned int hdFmt;
	unsigned int sdFmt;
	unsigned int scart;
	unsigned int Bt1120;
	unsigned int Bt656;
	HI_UNF_DISP_DAC_MODE_E dac[6];
	unsigned int layerformat;
	unsigned int inrectwidth;
	unsigned int inrectheight;
	unsigned int outrectwidth;
	unsigned int outrectheight;
	unsigned int usewbc;
	unsigned int resv1;
	unsigned int resv2;
	unsigned int logoMtdSize; 
	unsigned int playMtdSize; 
	char chVersion[8];
	unsigned int u32Top;
	unsigned int u32Left;
	unsigned int u32HuePlus;
	unsigned int u32Saturation;
	unsigned int u32Contrast;
	unsigned int u32Brightness;
	HI_UNF_DISP_BG_COLOR_S enBgcolor;
	HI_UNF_ASPECT_RATIO_E enAspectRatio;
	HI_UNF_ASPECT_CVRS_E enAspectCvrs;
	HI_UNF_DISP_MACROVISION_MODE_E enDispMacrsn;
  // this struct record lvds interface paramters.
    HI_UNF_DISP_LCD_PARA_S sLcdPara;  
}HI_PDM_BASE_INFO_S;


typedef struct hiDISP_PARAM_S
{
    HI_UNF_ENC_FMT_E            enFormat;   
    HI_U32                      u32Brightness;
    HI_U32                      u32Contrast;
    HI_U32                      u32Saturation;
    HI_U32                      u32HuePlus;
    HI_BOOL                     bGammaEnable; 
    HI_U32                      u32ScreenXpos;
    HI_U32                      u32ScreenYpos;
    HI_U32                      u32ScreenWidth;
    HI_U32                      u32ScreenHeight; 
    HI_UNF_DISP_BG_COLOR_S      stBgColor;
    HI_UNF_DISP_INTERFACE_S     stIntf[HI_UNF_DISP_INTF_TYPE_BUTT];
    HI_UNF_DISP_LCD_PARA_S        stDispTiming;
}HI_DISP_PARAM_S;

typedef struct hiGRC_PARAM_S
{
    HIGO_PF_E                   enPixelFormat;
    HI_U32                      u32DisplayWidth;
    HI_U32                      u32DisplayHeight;
    HI_U32                      u32ScreenXpos;
    HI_U32                      u32ScreenYpos;
    HI_U32                      u32ScreenWidth;
    HI_U32                      u32ScreenHeight;
}HI_GRC_PARAM_S;

typedef struct hiLOGO_PARAM_S
{
    HI_U32                      u32CheckFlag; 
    HI_U32                      u32LogoLen;
}HI_LOGO_PARAM_S;


typedef struct hiPDM_LOGO_INFO_S
{
	unsigned int checkflag;
	unsigned int contentLen;
	unsigned int logoflag;
	char chVersion[8];
   	unsigned int u32XPos;
	unsigned int u32YPos;
	unsigned int u32OutWidth;
	unsigned int u32OutHeight;
	unsigned int u32BgColor;
}HI_PDM_LOGO_INFO_S;


typedef struct hiMCE_PARAM_S
{
    HI_U32                      u32CheckFlag;
    HI_U32                      u32PlayDataLen;
}HI_MCE_PARAM_S;

/*Flash pation info*/
typedef struct hiMTD_INFO_S
{
    HI_CHAR             MtdName[HI_MTD_NAME_LEN];
    HI_FLASH_TYPE_E     enFlashType;
    HI_U32              u32Offset;
    HI_U32              u32Size;
}HI_MTD_INFO_S;

typedef struct hiMCE_MTD_INFO_S
{
    HI_MTD_INFO_S               stBase;
    HI_MTD_INFO_S               stLogo;
    HI_MTD_INFO_S               stPlay;
}HI_MCE_MTD_INFO_S;

typedef enum hiPDM_SRCTYPE_E
{
    HI_PDM_SRCTYPE_FLASH,
    HI_PDM_SRCTYPE_DDR,
    HI_PDM_SRCTYPE_BUTT
}HI_PDM_SRCTYPE_E;

/* the address of parameter or data in ddr */
typedef struct hiPDM_MEMINFO_S
{
    HI_U32      u32BaseAddr;
    HI_U32      u32LogoAddr;
    HI_U32      u32PlayAddr;
}HI_PDM_MEMINFO_S;


typedef struct hiPDM_Data_S
{
    HI_U32      u32DataLen;
    HI_U8       *pData;
}HI_PDM_Data_S;

/* the reserve buffer discribe struct */
typedef struct hiPDM_BUFFER_S
{
    HI_CHAR     Name[16];
    HI_U32      PhyAddr;
    HI_U32      Len;
}PDM_BUFFER_S;

typedef enum  mce_Play_Type_E
{
	MCE_PLAY_TYPE_DVB	  = 0x11111111,  
	MCE_PLAY_TYPE_TSFILE  = 0x22222222,  
	MCE_PLAY_TYPE_GPHFILE = 0x44444444  
}MCE_PLAY_TYPE_E;

typedef struct hiPDM_MCE_PARAM_S
{
	unsigned int checkflag;
	MCE_PLAY_TYPE_E playType;
	unsigned int fastplayflag;
	unsigned int contentLen;
}HI_PDM_MCE_PARAM_S;


/**Picture attributes *//**CNcomment:图片属性*/
typedef struct hiPDM_PIC_PICTURE
{
	HI_U32          u32FileAddr;	/**<Physical address*//**<CNcomment:物理地址*/
	HI_U32          u32FileLen;		/**<File length*//**<CNcomment:文件大小*/
	HI_U32          u32Xpos;    	/**<x start position*//**<CNcomment:x 起始位置*/
	HI_U32          u32Ypos;		/**<y start position*//**<CNcomment:y 起始位置*/
	HI_U32          u32Width;		/**<width*//**<CNcomment:宽度*/
	HI_U32          u32Height;		/**<height*//**<CNcomment:高度*/
	HI_U32          u32DelayTime;	/**<Delay time*//**<CNcomment:延迟时间 */
}HI_PMD_PIC_PICTURE;

HI_S32 PDM_GetDefBaseParam(HI_PDM_BASE_INFO_S  *pstPdmBaseinfo);
HI_S32 HI_PDM_GetDispParam( HI_PDM_BASE_INFO_S *pstDispParam);

HI_S32 HI_PDM_GetGrcParam(HI_GRC_PARAM_S *pGrcParam);
HI_S32 HI_PDM_GetLogoData(HI_U32 Len, HI_U32 *pLogoDataAddr);
HI_S32 HI_PDM_GetMceData(HI_U32 u32Size, HI_U32 *pAddr);
HI_S32 HI_PDM_GetLogoParam(HI_PDM_LOGO_INFO_S *pstLogoParam);
HI_S32 HI_PDM_GetMceParam(HI_PDM_MCE_PARAM_S *pstMceParam);
/* Set the data source, now sopport data from ddr */
HI_S32 HI_PDM_SetSource(HI_PDM_SRCTYPE_E enSrcType, HI_PDM_MEMINFO_S *pstMemInfo);

/* Alloc reserve memory in boot */
HI_S32 HI_PDM_AllocReserveMem(const HI_CHAR *BufName, HI_U32 u32Len, HI_U32 *pu32PhyAddr);

/* set the reserve addresss to tag */
HI_VOID HI_PDM_SetTagData(HI_VOID);

/* parse device cfg info */
HI_S32 HI_PDM_GetDeviceInfo(HI_CHAR * pstrCfgName, HI_CHAR * pstrCfgValue, HI_U32 u32Size);

#ifdef __cplusplus
}
#endif

#endif


