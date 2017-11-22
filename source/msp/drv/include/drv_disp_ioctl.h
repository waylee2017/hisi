/******************************************************************************

  Copyright (C), 2001-2011, Hisilicon Tech. Co., Ltd.

 ******************************************************************************
  File Name     : mpi_priv_disp.h
  Version       : Initial Draft
  Author        : Hisilicon multimedia software group
  Created       : 2009/12/15
  Description   :
  History       :
  1.Date        : 2009/12/15
    Author      : w58735
    Modification: Created file

******************************************************************************/
#ifndef __MPI_PRIV_DISP_H__
#define __MPI_PRIV_DISP_H__

#include "hi_unf_disp.h"
#include "hi_debug.h"
#include "hi_drv_disp.h"

#ifdef __cplusplus
#if __cplusplus
extern "C"{
#endif
#endif

typedef struct hiDISP_HDMI_SETTING_S
{
    /*the flag determine whther  hsync negative enabled.*/
    /*CNcomment:????赤?2?D?o??o??D?那1?邦*/
    HI_BOOL bHsyncNegative; 

    /*the flag determine whther  vsync negative enabled.*/
    /*CNcomment:∩1?㊣赤?2?D?o??o??D?那1?邦*/
    HI_BOOL bVsyncNegative; 

    /*the flag determine whther  DV negative enabled.*/
    /*CNcomment:dv?o??D?那1?邦*/
    HI_BOOL bDvNegative;    

    /*0: sync embedded; 1: sync separate.*/
    /*CNcomment:0, 赤?2??迆???㏒那?; 1, 赤?2?﹞?角??㏒那?*/
    HI_S32 s32SyncType;    

    HI_S32 s32CompNumber;  //0,10bit; 1, 20bit; 2, 30bit
    HI_S32 s32DataFmt;     //0:YCbCr;1: RGB
}DISP_HDMI_SETTING_S;

typedef struct hiDISP_ATTACH_S
{
    HI_UNF_DISP_E   enDstDisp;
    HI_UNF_DISP_E   enSrcDisp;
}DISP_ATTACH_S;

typedef struct hiDISP_OSD_S
{
    HI_UNF_DISP_E              enDisp;
    HI_UNF_DISP_FREE_LAYER_E   enLayer;
}DISP_OSD_S;

typedef struct hiDISP_ENABLE_S
{
    HI_UNF_DISP_E  enDisp;
    HI_BOOL        bEnable;
}DISP_ENABLE_S;

typedef struct hiDISP_INTF_S
{
    HI_UNF_DISP_E            enDisp;
    HI_UNF_DISP_INTF_TYPE_E  IntfType;
}DISP_INTF_S;

typedef struct hiDISP_FORMAT_S
{
    HI_UNF_DISP_E       enDisp;
    HI_UNF_ENC_FMT_E    EncodingFormat;
}DISP_FORMAT_S;

typedef struct hiDISP_LCD_S
{
    HI_UNF_DISP_E           enDisp;
    HI_UNF_DISP_LCD_PARA_S  LcdPara;
}DISP_LCD_S;

typedef struct hiDISP_SET_LCD_DEFAULTPARA_S
{
    HI_UNF_DISP_E       enDisp;
    HI_U32              enLcdFmt;
}DISP_SET_LCD_DEFAULTPARA_S;

typedef struct hiDISP_GET_LCD_DEFAULTPARA_S
{
    HI_U32                 enLcdFmt;
    HI_UNF_DISP_LCD_PARA_S LcdPara;
}DISP_GET_LCD_DEFAULTPARA_S;

typedef struct hiDISP_ZORDER_S
{
	HI_UNF_DISP_E           enDisp;
	HI_UNF_DISP_LAYER_E     Layer;
	HI_LAYER_ZORDER_E       ZFlag;
}DISP_ZORDER_S;

typedef struct hiDISP_ORDER_S
{
	HI_UNF_DISP_E           enDisp;
	HI_UNF_DISP_LAYER_E     Layer;
	HI_U32                  Order;
}DISP_ORDER_S;

typedef struct hiDISP_BGC_S
{
    HI_UNF_DISP_E           enDisp;
    HI_UNF_DISP_BG_COLOR_S       BgColor;
}DISP_BGC_S;

typedef struct hiDISP_CSC_S
{
    HI_UNF_DISP_E    enDisp;
    HI_U32           CscValue;
}DISP_CSC_S;


typedef struct hidisp_colort_s
{
    HI_U32           u32Kr;
    HI_U32           u32Kg;
    HI_U32           u32Kb;
}disp_colort_s;

typedef struct hiDISP_COLORTEMP_S
{
    HI_UNF_DISP_E    enDisp;
    disp_colort_s    colortempvalue;
   
}DISP_COLORTEMP_S;

typedef struct hiDISP_ACC_S
{
    HI_UNF_DISP_E    enDisp;
    HI_BOOL          bEnable;
}DISP_ACC_S;

typedef struct hiDISP_TTX_S
{
    HI_UNF_DISP_E      enDisp;
    HI_UNF_DISP_TTX_DATA_S  TtxData;
}DISP_TTX_S;

typedef struct hiDISP_VBI_S
{
    HI_UNF_DISP_E      enDisp;
    HI_UNF_DISP_VBI_DATA_S  VbiData;
}DISP_VBI_S;

typedef struct hiDISP_WSS_S
{
    HI_UNF_DISP_E      enDisp;
    HI_UNF_DISP_WSS_DATA_S  WssData;
}DISP_WSS_S;

typedef struct hiDISP_MCRVSN_S
{
    HI_UNF_DISP_E              enDisp;
    HI_UNF_DISP_MACROVISION_MODE_E  Mcrvsn;
}DISP_MCRVSN_S;

typedef struct hiDISP_HDMIINF_S
{
    HI_UNF_DISP_E              enDisp;
    DISP_HDMI_SETTING_S HDMIInf;
}DISP_HDMIINF_S;

typedef struct hiDISP_STATE_S
{
    HI_BOOL         bSd0Disp;
    HI_BOOL         bHd0Disp;
    HI_BOOL         bMiraCast;
}DISP_STATE_S;

typedef struct hiDISP_GLOBAL_STATE_S
{      
    HI_U32              Sd0DispNum;
    HI_U32              Hd0DispNum;
}DISP_GLOBAL_STATE_S;


/* CGMS parameter struct */
typedef struct hiDISP_CGMS_S
{
    HI_UNF_DISP_E          enDisp;
    HI_UNF_DISP_CGMS_CFG_S stCgmsCfg;
}DISP_CGMS_S;


/* CGMS parameter struct */
typedef struct hiDISP_OUTRECT_S
{
    HI_UNF_DISP_E          enDisp;
    HI_UNF_RECT_S          stOutRectCfg;
}DISP_OUTRECT_S;

typedef struct hiDISP_TCCSC_S
{
    HI_UNF_DISP_E        enDisp;
    HI_BOOL        bEnable;
}DISP_TCCSC_S;

#if 0
typedef struct hiDISP_MIRROR_CFG_S
{
    HI_HANDLE  cast_handle;
    HI_UNF_DISP_E        enDisp;
    HI_UNF_DISP_CAST_CFG_S  mirror_cfg;
}DISP_MIRROR_CFG_S;


typedef struct hiDISP_MIRROR_FRAME_S
{
    HI_HANDLE  cast_handle;
    HI_UNF_DISP_MIRROR_FRAME_S  mirror_frame;
}DISP_MIRROR_FRAME_S;

typedef struct hiDISP_MIRROR_ENBALE_S
{
    HI_HANDLE  cast_handle;
    HI_BOOL  bEnable;   
}DISP_MIRROR_ENBALE_S;
#endif

typedef enum hiIOC_DISP_E
{
    IOC_DISP_ATTACH = 0,
    IOC_DISP_DETACH,
    
    IOC_DISP_OPEN,
    IOC_DISP_CLOSE,

    IOC_DISP_ATTACH_OSD,
    IOC_DISP_DETACH_OSD,

    IOC_DISP_SET_ENABLE,
    IOC_DISP_GET_ENABLE,

    IOC_DISP_SET_INTF,
    IOC_DISP_GET_INTF,

    IOC_DISP_SET_FORMAT,
    IOC_DISP_GET_FORMAT,
    IOC_DISP_GET_LCD_FORMAT,

    IOC_DISP_SET_DAC,
    IOC_DISP_GET_DAC,

    IOC_DISP_SET_LCD,
    IOC_DISP_GET_LCD,
    
    IOC_DISP_SET_LCD_DEFAULTPARA,
    IOC_DISP_GET_LCD_DEFAULTPARA,

    IOC_DISP_SET_ZORDER,
    IOC_DISP_GET_ORDER,

    IOC_DISP_SET_BGC,
    IOC_DISP_GET_BGC,

    IOC_DISP_SET_BRIGHT,
    IOC_DISP_GET_BRIGHT,

    IOC_DISP_SET_CONTRAST,
    IOC_DISP_GET_CONTRAST,

    IOC_DISP_SET_SATURATION,
    IOC_DISP_GET_SATURATION,

    IOC_DISP_SET_HUE,
    IOC_DISP_GET_HUE,
    IOC_DISP_SET_COLORTEMP,
    IOC_DISP_GET_COLORTEMP,

    IOC_DISP_SET_ACC,

    IOC_DISP_SEND_TTX,
    IOC_DISP_SEND_VBI,
    IOC_DISP_SET_WSS,

    IOC_DISP_SET_MCRVSN,
    IOC_DISP_GET_MCRVSN,

    IOC_DISP_SET_HDMIINF,
    IOC_DISP_GET_HDMIINF,

    IOC_DISP_SET_CGMS,
    IOC_DISP_SET_DISP_WIN,  
    IOC_DISP_SET_TCCSC,  
    IOC_DISP_OPEN_MIRROR,
    IOC_DISP_CLOSE_MIRROR,
    IOC_DISP_MIRROR_SETENABLE,
    IOC_DISP_MIRROR_GETENABLE,
    IOC_DISP_MIRROR_GETFRAME,
    IOC_DISP_MIRROR_PUTFRAME,   
    IOC_DISP_SET_DISP_DEFAUL, 
    
    IOC_DISP_SET_BUTT
}IOC_DISP_E;

#define CMD_DISP_ATTACH	           _IOW(HI_ID_DISP, IOC_DISP_ATTACH, DISP_ATTACH_S)
#define CMD_DISP_DETACH            _IOW(HI_ID_DISP, IOC_DISP_DETACH, DISP_ATTACH_S)

#define CMD_DISP_OPEN  	           _IOW(HI_ID_DISP, IOC_DISP_OPEN, HI_UNF_DISP_E)
#define CMD_DISP_CLOSE             _IOW(HI_ID_DISP, IOC_DISP_CLOSE, HI_UNF_DISP_E)

#define CMD_DISP_AttachOsd         _IOW(HI_ID_DISP, IOC_DISP_ATTACH_OSD, DISP_OSD_S)
#define CMD_DISP_DetachOsd         _IOW(HI_ID_DISP, IOC_DISP_DETACH_OSD, DISP_OSD_S)

#define CMD_DISP_SET_ENABLE        _IOW(HI_ID_DISP, IOC_DISP_SET_ENABLE, DISP_ENABLE_S)
#define CMD_DISP_GET_ENABLE        _IOWR(HI_ID_DISP, IOC_DISP_GET_ENABLE, DISP_ENABLE_S)

#define CMD_DISP_SET_INTF          _IOW(HI_ID_DISP, IOC_DISP_SET_INTF, DISP_INTF_S)
#define CMD_DISP_GET_INTF          _IOWR(HI_ID_DISP, IOC_DISP_GET_INTF, DISP_INTF_S)

#define CMD_DISP_SET_FORMAT        _IOW(HI_ID_DISP, IOC_DISP_SET_FORMAT, DISP_FORMAT_S)
#define CMD_DISP_GET_FORMAT        _IOWR(HI_ID_DISP, IOC_DISP_GET_FORMAT, DISP_FORMAT_S)
#define CMD_DISP_GET_LCD_FORMAT    _IOWR(HI_ID_DISP, IOC_DISP_GET_LCD_FORMAT, DISP_FORMAT_S)

#define CMD_DISP_SET_DAC           _IOW(HI_ID_DISP, IOC_DISP_SET_DAC, HI_UNF_DISP_INTERFACE_S)
#define CMD_DISP_GET_DAC           _IOR(HI_ID_DISP, IOC_DISP_GET_DAC, HI_UNF_DISP_INTERFACE_S)

#define CMD_DISP_SET_LCD           _IOW(HI_ID_DISP, IOC_DISP_SET_LCD, DISP_LCD_S)
#define CMD_DISP_GET_LCD           _IOWR(HI_ID_DISP, IOC_DISP_GET_LCD, DISP_LCD_S)

#define CMD_DISP_SET_LCD_DEF_PARA  _IOW(HI_ID_DISP, IOC_DISP_SET_LCD_DEFAULTPARA, DISP_SET_LCD_DEFAULTPARA_S)
#define CMD_DISP_GET_LCD_DEF_PARA  _IOWR(HI_ID_DISP, IOC_DISP_GET_LCD_DEFAULTPARA, DISP_GET_LCD_DEFAULTPARA_S)

#define CMD_DISP_SET_ZORDER        _IOW(HI_ID_DISP, IOC_DISP_SET_ZORDER, DISP_ZORDER_S)
#define CMD_DISP_GET_ORDER         _IOWR(HI_ID_DISP, IOC_DISP_GET_ORDER, DISP_ORDER_S)

#define CMD_DISP_SET_BGC           _IOW(HI_ID_DISP, IOC_DISP_SET_BGC, DISP_BGC_S)
#define CMD_DISP_GET_BGC           _IOWR(HI_ID_DISP, IOC_DISP_GET_BGC, DISP_BGC_S)

#define CMD_DISP_SET_BRIGHT        _IOW(HI_ID_DISP, IOC_DISP_SET_BRIGHT, DISP_CSC_S)
#define CMD_DISP_GET_BRIGHT        _IOWR(HI_ID_DISP, IOC_DISP_GET_BRIGHT, DISP_CSC_S)

#define CMD_DISP_SET_CONTRAST      _IOW(HI_ID_DISP, IOC_DISP_SET_CONTRAST, DISP_CSC_S)
#define CMD_DISP_GET_CONTRAST      _IOWR(HI_ID_DISP, IOC_DISP_GET_CONTRAST, DISP_CSC_S)

#define CMD_DISP_SET_SATURATION    _IOW(HI_ID_DISP, IOC_DISP_SET_SATURATION, DISP_CSC_S)
#define CMD_DISP_GET_SATURATION    _IOWR(HI_ID_DISP, IOC_DISP_GET_SATURATION, DISP_CSC_S)

#define CMD_DISP_SET_HUE           _IOW(HI_ID_DISP,  IOC_DISP_SET_HUE, DISP_CSC_S)
#define CMD_DISP_GET_HUE           _IOWR(HI_ID_DISP, IOC_DISP_GET_HUE, DISP_CSC_S)

#define CMD_DISP_SET_COLORTEMP     _IOWR(HI_ID_DISP, IOC_DISP_SET_COLORTEMP, DISP_COLORTEMP_S)
#define CMD_DISP_GET_COLORTEMP     _IOWR(HI_ID_DISP, IOC_DISP_GET_COLORTEMP, DISP_COLORTEMP_S)

#define CMD_DISP_SET_ACC           _IOW(HI_ID_DISP, IOC_DISP_SET_ACC, DISP_ACC_S)

#define CMD_DISP_SEND_TTX          _IOW(HI_ID_DISP, IOC_DISP_SEND_TTX, DISP_TTX_S)
#define CMD_DISP_SEND_VBI          _IOW(HI_ID_DISP, IOC_DISP_SEND_VBI, DISP_VBI_S)
#define CMD_DISP_SET_WSS           _IOW(HI_ID_DISP, IOC_DISP_SET_WSS, DISP_WSS_S)

#define CMD_DISP_SET_MCRVSN        _IOW(HI_ID_DISP, IOC_DISP_SET_MCRVSN, DISP_MCRVSN_S)
#define CMD_DISP_GET_MCRVSN        _IOWR(HI_ID_DISP, IOC_DISP_GET_MCRVSN, DISP_MCRVSN_S)

#define CMD_DISP_SET_HDMI_INTF     _IOW(HI_ID_DISP, IOC_DISP_SET_HDMIINF, DISP_HDMIINF_S)
#define CMD_DISP_GET_HDMI_INTF     _IOWR(HI_ID_DISP, IOC_DISP_GET_HDMIINF, DISP_HDMIINF_S)


#define CMD_DISP_SET_CGMS          _IOW(HI_ID_DISP, IOC_DISP_SET_CGMS, DISP_CGMS_S)
#define CMD_DISP_SET_DISP_WIN     _IOW(HI_ID_DISP, IOC_DISP_SET_DISP_WIN, DISP_OUTRECT_S)

#define CMD_DISP_SET_TCCSC        _IOW(HI_ID_DISP, IOC_DISP_SET_TCCSC, DISP_TCCSC_S)
#define CMD_DISP_OPEN_MIRROR       _IOWR(HI_ID_DISP, IOC_DISP_OPEN_MIRROR,  DISP_MIRROR_CFG_S)
#define CMD_DISP_CLOSE_MIRROR      _IOWR(HI_ID_DISP, IOC_DISP_CLOSE_MIRROR, HI_HANDLE)
#if 0
#define CMD_DISP_MIRROR_SETENABLE      _IOWR(HI_ID_DISP, IOC_DISP_MIRROR_SETENABLE, DISP_MIRROR_ENBALE_S)
#define CMD_DISP_MIRROR_GETENABLE      _IOWR(HI_ID_DISP, IOC_DISP_MIRROR_GETENABLE, DISP_MIRROR_ENBALE_S)

#define CMD_DISP_MIRROR_GETFRAME      _IOWR(HI_ID_DISP, IOC_DISP_MIRROR_GETFRAME, DISP_MIRROR_FRAME_S)
#define CMD_DISP_MIRROR_PUTFRAME      _IOWR(HI_ID_DISP, IOC_DISP_MIRROR_PUTFRAME, DISP_MIRROR_FRAME_S)
#endif

#define CMD_DISP_SET_DISP_DEFAUL     _IOW(HI_ID_DISP, IOC_DISP_SET_DISP_DEFAUL, HI_UNF_DISP_E)

#ifdef __cplusplus
#if __cplusplus
}
#endif
#endif

#endif

