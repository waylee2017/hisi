/*********************************************************************************
*
*  Copyright (C) 2014 Hisilicon Technologies Co., Ltd.  All rights reserved. 
*
*  This program is confidential and proprietary to Hisilicon Technologies Co., Ltd.
*  (Hisilicon), and may not be copied, reproduced, modified, disclosed to
*  others, published or used, in whole or in part, without the express prior
*  written permission of Hisilicon.
*
***********************************************************************************
  File Name	: hi_drv_pdm.h
  Version		: Initial Draft
  Author		: Hisilicon multimedia software group
  Created		: 2009/12/21
  Description	:
  History		:
  1.Date		: 2009/12/21
    Author		: 
    Modification	: Created file

*******************************************************************************/
#ifndef __HI_DRV_PDM_H__
#define __HI_DRV_PDM_H__

#include "hi_type.h"
#include "hi_unf_disp.h"
#include "hi_unf_common.h"
#include "hi_go_surface.h"
#include "hi_unf_mce.h"

#ifdef __cplusplus
extern "C" {
#endif

#define MCE_DEF_BASEPARAM_SIZE       (8*1024)
#define MCE_DEF_LOGOPARAM_SIZE		 (8*1024)
#define MCE_DEF_PLAYPARAM_SIZE		 (8*1024)


#define PARSER_BASE_FLASH_NAME         "baseparam"
#define PARSER_LOGO_FLASH_NAME         "logo"
#define PARSER_FASTPLAY_FLASH_NAME     "fastplay"

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

#define HI_FATAL_PDM(format...)    HI_FATAL_PRINT(HI_ID_PDM, format)
#define HI_ERR_PDM(format...)      HI_ERR_PRINT(HI_ID_PDM, format)
#define HI_WARN_PDM(format...)     HI_WARN_PRINT(HI_ID_PDM, format)
#define HI_INFO_PDM(format...)     HI_INFO_PRINT(HI_ID_PDM, format)


#define PDM_BASEPARAM_BUFNAME "baseparam"
#define PDM_PLAYPARAM_BUFNAME "playparam"
#define PDM_PLAYDATA_BUFNAME  "playdata"


#define HI_FLASH_NAME_LEN   32
#define DEF_CHECK_FLAG 0x5a5a5a5a
#define HI_HEDA_CHECK_LEN	4


typedef struct hiPDM_Data_S
{
    HI_U32      u32DataLen;
    HI_U8       *pData;
}HI_PDM_Data_S;

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
	HI_UNF_DISP_INTERFACE_S		stDacMode;
    HI_UNF_DISP_BG_COLOR_S      stBgColor;
}HI_DISP_PARAM_S;

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

typedef struct hiMCE_PARAM_S
{
    HI_U32                      u32CheckFlag;
    HI_U32                      u32PlayDataLen;
    HI_UNF_MCE_PLAY_PARAM_S     stPlayParam;
}HI_MCE_PARAM_S;

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

typedef struct mce_Dvb_Info_S
{
	//program
	unsigned int PcrPid;
	unsigned int u32PlayTime;								/**<play time */
	unsigned int VElementPid;
	unsigned int AElementPid;
	HI_UNF_VCODEC_TYPE_E VideoType;
	unsigned int AudioType;
	//tuner
	unsigned int tunerId;
	unsigned int tunerFreq;
	unsigned int tunerSrate;
	unsigned int tunerQam;
	//audio
	unsigned int volume;
	HI_UNF_TRACK_MODE_E  trackMode;
	// vid
	HI_UNF_VO_DEV_MODE_E       devMode;
	unsigned int    tunerDevType;
	unsigned int    demoDev;
	unsigned int  I2cChannel; 
	char chVersion[8];
	
	unsigned int    tunerAddr;
	unsigned int    demoAddr;

}MCE_DVB_INFO_S;

typedef struct mce_TsFile_Info_S
{
	// file
	unsigned int contentLen;
	unsigned int IsCycle;	
	unsigned int u32PlayTime;								/**<play time */
	//program
	unsigned int PcrPid;
	unsigned int VElementPid;
	unsigned int AElementPid;
	HI_UNF_VCODEC_TYPE_E VideoType;
	unsigned int AudioType;
	//audio
	unsigned int volume;
	HI_UNF_TRACK_MODE_E trackMode;
	// vid
	HI_UNF_VO_DEV_MODE_E devMode;
	char chVersion[8];	
}MCE_TSFILE_INFO_S;

/** play attr*//**CNcomment: 播放属性*/
typedef enum	hiPDM_PIC_PLAYMODE
{
    HI_PDM_PIC_PLAYMODE_LOOP,  	/**<Play loop*//**<CNcomment:循环*/
    HI_PDM_PIC_PLAYMODE_ONE,   	/**<Play one time*//**<CNcomment:一次*/
    HI_PDM_PIC_PLAYMODE_BYTIME, /**<Play loop by time*//**<CNcomment:通过时间循环*/
    HI_PDM_PIC_PLAYMODE_BUTT
}HI_PDM_PIC_PLAYMODE;

/** Common attributes *//**CNcomment:公共属性 */
typedef struct hiPDM_PIC_COMMINFO
{
    HI_U32 		            uCount;         	/**<Number of pictures*//**<CNcomment:图片数量*/
    HI_U32                  u32Xpos;        	/**<The x start postion in canvas*//**<CNcomment:在canvas中的x起始位置*/
    HI_U32                  u32Ypos;        	/**<The y start postion in canvas*//**<CNcomment:在canvas中的y起始位置*/
    HI_U32                  u32Width;        	/**<The display width in canvas*//**<CNcomment:在canvas中的显示宽度 */
    HI_U32                  u32Height;        	/**<The display height in canvas*//**<CNcomment:在canvas中的显示高度 */
    HI_U32                  BGColor;         	/**<Background color*//**<CNcomment:背景颜色*/  
    HI_PDM_PIC_PLAYMODE     PlayMode;           /**<Play mode*//**<CNcomment:播放模式*/
    HI_U32                  uLoopCount;         /**<Loopcount,0xfffffff means play util user stop it*//**<CNcomment:循环次数，loopcount,0xfffffff means play util user stop it*/
    HI_U32 	                uPlaySecond;        /**<Time of play(second)*//**<CNcomment:播放时间 time for play(second)*/
    HI_S8                   chVersion[8];

    HI_U32		            u32ScreenXpos;		/**<Screen X pos*//**<CNcomment: 屏幕X坐标*/
	HI_U32		            u32ScreenYpos;		/**<Screen Y pos*//**<CNcomment: 屏幕Y坐标*/
	HI_U32		            u32ScreenWidth;		/**<Screen Width*//**<CNcomment: 屏幕宽度*/
	HI_U32		            u32ScreenHeight;	/**<Screen Height*//**<CNcomment: 屏幕高度*/
	HI_U32		            u32ScreenBGColor;	/**<Screen Background color*//**CNcomment: 屏幕背景色*/

}HI_PDM_PIC_COMMINFO;

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


typedef struct mce_GphFile_Info_S
{
	HI_PDM_PIC_COMMINFO    comInfo;
	HI_PMD_PIC_PICTURE	   *ppicInfo;
}MCE_GPHFILE_INFO_S;

typedef enum  mce_Play_Type_E
{
	MCE_PLAY_TYPE_DVB	  = 0x11111111,  
	MCE_PLAY_TYPE_TSFILE  = 0x22222222,  
	MCE_PLAY_TYPE_GPHFILE = 0x44444444  
}MCE_PLAY_TYPE_E;

typedef struct hiMCE_PALY_INFO_S
{
	unsigned int checkflag;
	MCE_PLAY_TYPE_E playType;
	unsigned int fastplayflag;
	union 
	{
		MCE_DVB_INFO_S     dvbInfo;
		MCE_TSFILE_INFO_S  tsFileInfo;
		MCE_GPHFILE_INFO_S gphFileInfo; 
	}Info;
}HI_MCE_PALY_INFO_S;


/*Flash pation info for mce use*/
typedef struct hiPDM_FLASH_INFO_S
{
    HI_CHAR             Name[HI_FLASH_NAME_LEN];
    HI_U32              u32Offset;
    HI_U32              u32Size;
}PDM_FLASH_INFO_S;

HI_S32 HI_DRV_PDM_Init(HI_VOID);
HI_S32 HI_DRV_PDM_DeInit(HI_VOID);
HI_S32 HI_DRV_PDM_GetBaseInfo(HI_PDM_BASE_INFO_S *pstBaseInfo);
HI_S32 HI_DRV_PDM_GetDispParam(HI_UNF_DISP_E enDisp, HI_DISP_PARAM_S *pstDispParam);
HI_S32 HI_DRV_PDM_GetGrcParam(HI_GRC_PARAM_S *pGrcParam);
HI_S32 HI_DRV_PDM_GetAniAddr(HI_U32 *pAniVirAddr);
HI_S32 HI_DRV_PDM_GetMceData(HI_U32 *pAddr);
HI_S32 HI_DRV_PDM_ReleaseReserveMem(const HI_CHAR *BufName);

HI_S32 HI_DRV_PDM_GetMceParam(HI_MCE_PALY_INFO_S *pstMceParam);



/************** reserve mem ***************/
//void pdm_reserve_mem(void);


#ifdef __cplusplus
}
#endif

#endif


