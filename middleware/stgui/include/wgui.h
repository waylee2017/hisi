/**********************************************************************************

File Name   : wgui.h

Description : This is an API head file of Menu DIR in ST5105 project.

COPYRIGHT (C) STMicroelectronics 2004

Date               		Modification                                              Name
----               		------------                                          ----
5/17/2004			Created         			                             Louie
11/16/2005			Modified								C.S.R.	
<$ModMark> (do not move/delete)
***********************************************************************************/

#ifndef __WGUI_H__		/* Prevent multiple inclusion of the file */
#define __WGUI_H__

#ifdef __cplusplus
extern "C" {
#endif
#include "mm_common.h"
#include "bmp_src.h"

#define TXT_HEIGHT_OF_LINE 25
#define TXT_WIDTH_OF_TAB 20

#define OSD_REGINMAXWIDHT		1280
#define OSD_REGINMAXHEIGHT		720
#define OSD_COLOR_DEPTH		4
#define MM_WGUI_RUN 0xfff00000
#define MM_WGUI_RUNMASK 0x82800000
#define MM_WGUI_RELLENMASK 0x000fffff

#define GWFONT_HEIGHT_SIZE16 16
#define SMALLER_GWFONT_HEIGHT 16
#define GWFONT_HEIGHT_SIZE18          18
#define SMALL_GWFONT_HEIGHT 20
#define GWFONT_HEIGHT_SIZE22          22
#define SECONDMENU_LISTFONT_HEIGHT  24
#define MID_GWFONT_HEIGHT  26
#define SECONDTITLE_FONT_HEIGHT  26
#define TOPLEFTMAINTITLE_FONT_HEIGHT  28
#define TOPLEFTMAINTITLE_FONT_HEIGHT_HD  34
#define INPUT_CHANNEL_NUMBER_HEIGHT (SECONDTITLE_FONT_HEIGHT*3)
#define INPUT_CHANNEL_NUMBER_DISTANCE 37
#define INPUT_CHANNEL_NUMBER_THOUSAND_X 25 //千位数的位置

#define STARTUP_BG_COLOR 0XFF00052F  /*开机背景深蓝色*/

#define DEEP_FRAM_COLOR 0xFF3973A4  /*广告图片周围框的深蓝色*/
#define SUBMENU_MIDDLE_BACK_LIGHT_COLOR 0xFF8BD5FF/*子菜单中间部分背景浅蓝色*/

#define HIDE_COLOR  0xFF080808

#define MID_MSG_GRAY_COLOR  0xFF371934

#define FONT_FRONT_COLOR_BLACK 0xFF200008//字体前景色，黑色
#define BACKGROUND_COLOR 0xFF008BD5
#define FONT_FRONT_COLOR_GREEN 0xff62b46a////字体前景色，绿色
#define TITLEBAR_COLOR 0xff104a83
#define FONT_FRONT_COLOR_BLUE 0xFF203183////字体前景色，蓝色
#define SCROLLBAR_BACK_COLOR 0xFF83C5F6//滚动框的背景深蓝色
#define LISTITEM_NOFOCUS_COLOR 0xFF394152//节目编辑中，节目列表上面头的背景深蓝色
#define SUBAREA_DEEPBLUE 0xFF4162A4
#define NM_GRAY_COLOR 0xFF4A4A8B
#define FONT_FRONT_COLOR_GRAY 0xFFA4BDD5//字体前景色，灰色,用于系统设置里面的"手动搜台、主频设置等"
#define FONT_FRONT_COLOR_DEEPBLUE 0xFF20649C
#define SUBAREA_BKG_COLOR 0xFF5283C5
#define SUBMENU_MIDDLE_BACK_DEEP_COLOR 0xFF6294C5//子菜单中间部分背景深蓝色
#define TIME_EREA_BACK 0xFF6A5210
#define CHANNEL_BAR_BACK 0xFFA4BDD5
#define CHANNEL_BAR_PANNEL_BACK 0xFFACACAC
#define ORANGE_COLOR 0xFFE69400
#define GAME_DLG_BACK 0xFFE6AC4A
#define FONT_FRONT_COLOR_RED 0xFFD52010////字体前景色，深红色
#define FONT_FRONT_COLOR_YELLOW 0xff4becec//0xFFEFF507////字体前景色，深红色
#define FONT_FRONT_COLOR_WHITE 0xFFFFFFFF//字体前景色，白色
#define FRAM_COLOR  0xFFB4D5BD
#define FRAM_COLOR1  0xFF838383
#define FRAM_COLOR2_GREEN  0xFF399C5A
#define OSD_BACK_COLOR  0xFF5252D5
#define BAND_BACK 0xFF378BC5
#define BAND_FRONT 0xFF0073BD
#define SYSSETTING_HIDE_FRONT 0xFF4A7BA4
#define FONT_FRNT_DEEP_YELLOW 0xFFFF9410
#define MENU_ITEM_BCK_GREEN 0xFFACEE8B
#define MENU_ITEM_BCK_YELLOW 0xFFFFFF08
#define SNAKE1_COLOR 0xFF62B4B4
#define SNAKE2_COLOR 0xFF4183C5
#define SNAKE3_COLOR 0xFFE694AC
#define SNAKE4_COLOR 0xFF8BC529
#define SNAKE5_COLOR 0xFFE6A431
#define SNAKE6_COLOR 0xFF008BD5

#define BITMP_FONT_WIDTH 16
#define BITMP_FONT_HIGHT 16

#define MM_SUBMENU_LISTITEM_HEIGHT 30 //item height
#define MM_SUBMENU_LISTITEM_REFRESH_HEIGHT (MM_SUBMENU_LISTITEM_HEIGHT + 10)

typedef struct PenPostion_s {
	MBT_S32 x;
	MBT_S32 y;
}PenPosition;

typedef struct LineWidthInfo_s {
	MBT_S32 s32MaxLineWidth;	/*最长行宽度*/
	MBT_S32 s32LastLineWidth;	/*最后一行的宽度*/
}LineWidthInfo;
extern MBT_U32 wguiv_u32OsdPalletteScanLine[OSD_REGINMAXHEIGHT];
    
extern MBT_U32 wguiv_u32ExtLayerLayerOsdLine[OSD_REGINMAXHEIGHT];

extern MBT_U8 WGUIF_GetFontLibVer(MBT_VOID);
extern MBT_VOID WGUIF_FreeFontLib(MBT_VOID);


extern MBT_S32 WGUIF_FNTAdjustTxtLine(MBT_CHAR * pText, MBT_S32 strLen, MBT_S32 iWidthLimit, MBT_S32 iHeightLimit);
extern MBT_S32 WGUIF_FNTSetTxtMiddle(MBT_S32 s32RectX, MBT_S32 s32RectY, MBT_S32 s32RectWidth, MBT_S32 s32RectHeight, MBT_S32 s32FontWidth, MBT_S32 s32FontHeight, MBT_CHAR *pcText, MBT_U32 u32FrontColor);
extern MBT_S32 WGUIF_FNTDrawTxt2Rgn(MBT_S32 x, MBT_S32 y,MBT_CHAR* pText,MBT_S32  iChNum, MBT_U32 u32TextColor,MBT_S32 iReginW);
extern MBT_S32 WGUIF_FNTDrawTxt(MBT_S32 x,MBT_S32 y,MBT_S32 iChNum, MBT_CHAR* pText,MBT_U32 u32TextColor);
extern MBT_S32 WGUIF_FNTDrawExtTxt(MBT_S32 x,MBT_S32 y,MBT_S32 iChNum, MBT_CHAR* pText,MBT_U32 u32TextColor);
extern MBT_S32 WGUIF_FNTGetTxtWidth(MBT_S32  iChNum, MBT_CHAR* pText);
extern MBT_S32 WGUIF_DrawLimitWidthTxt(MBT_S32 x, MBT_S32 y, MBT_S32 iChNum, MBT_CHAR *pcText, MBT_U32 iFrontColor, MBT_S32 iMaxWidth,MBT_S32 iRowHeight);
extern MBT_S32 WGUIF_GetFontHeight(MBT_VOID);
extern MBT_S32 WGUIF_FNTDrawTxtWithAlphaExt(MBT_S32 x, MBT_S32 y, MBT_S32 iChNum, MBT_CHAR *pcText, MBT_U32 iFrontColor);
extern MBT_S32 WGUIF_FNTClearTxtWithAlphaExt(MBT_S32 x, MBT_S32 y, MBT_S32 iChNum, MBT_CHAR *pcText, MBT_U32 iFrontColor);

extern MBT_VOID WGUIF_SetFontHeight(MBT_S32 s32FontHeight);
	
extern MBT_VOID WGUIF_ClsFullScreen(MBT_VOID);
extern MBT_VOID WGUIF_DrawFilledRectangle(MBT_S32 x,MBT_S32 y,MBT_S32 iWidth,MBT_S32 iHeight,MBT_U32 u32Color);
extern MBT_VOID WGUIF_DrawFilledRectExt(MBT_S32 x, MBT_S32 y, MBT_S32 iWidth,MBT_S32  iHeight, MBT_U32 u32Color);
extern MBT_VOID WGUIF_DrawBox(MBT_U32 col1,MBT_U32 col2,MBT_S32 x,MBT_S32 y,MBT_S32 xx,MBT_S32 yy);
extern MBT_VOID WGUIF_ClsScreen(MBT_S32 x, MBT_S32 y, MBT_S32 iWidth, MBT_S32 iHeight);
extern MBT_VOID WGUIF_ClsExtScreen(MBT_S32 x, MBT_S32 y, MBT_S32 iWidth, MBT_S32 iHeight);

extern MBT_BOOL WGUIF_GetRectangleImage( MBT_S32 xstart, MBT_S32 ystart,BITMAPTRUECOLOR  *pCopybitmap);
extern MBT_BOOL WGUIF_PutRectangleImage(MBT_S32 xstart, MBT_S32 ystart, BITMAPTRUECOLOR * pCopybitmap);
extern MBT_BOOL WGUIF_GetRectangleImageExt( MBT_S32 xstart, MBT_S32 ystart,BITMAPTRUECOLOR  *pCopybitmap);
extern MBT_BOOL WGUIF_PutRectangleImageExt(MBT_S32 xstart, MBT_S32 ystart, BITMAPTRUECOLOR * pCopybitmap);
extern MBT_BOOL WGUIF_ReleaseRectangleImageExt(BITMAPTRUECOLOR  *pCopybitmap);
extern MMT_STB_ErrorCode_E WGUIF_InitRSRC(MBT_VOID);
extern MMT_STB_ErrorCode_E WGUIF_InitFontLib(MBT_BOOL bReadFromRom);
extern MMT_STB_ErrorCode_E WGUIF_DisplayReginTrueColorBmpExt(MBT_S32 s32ScrX,MBT_S32 s32ScrY,MBT_S32 s32BmpXOff,MBT_S32 s32BmpYOff,MBT_S32 iDispWidth,MBT_S32 iDispHeight,BITMAPTRUECOLOR * pBmpInfo,MBT_BOOL bOpenTrans);
extern MMT_STB_ErrorCode_E WGUIF_CopyPartBmp2ExtRegin(MBT_S32 s32ScrX,MBT_S32 s32ScrY,MBT_S32 s32BmpXOff,MBT_S32 s32BmpYOff,MBT_S32 iDispWidth,MBT_S32 iDispHeight,BITMAPTRUECOLOR * pBmpInfo,MBT_BOOL bOpenTrans);
extern MMT_STB_ErrorCode_E WGUIF_CopyPartBmp2Regin(MBT_S32 s32ScrX,MBT_S32 s32ScrY,MBT_S32 s32BmpXOff,MBT_S32 s32BmpYOff,MBT_S32 iDispWidth,MBT_S32 iDispHeight,BITMAPTRUECOLOR *pBmpInfo,MBT_BOOL bOpenTrans);
extern MMT_STB_ErrorCode_E WGUIF_DisplayReginTrueColorBmp(MBT_S32 s32ScrX,MBT_S32 s32ScrY,MBT_S32 s32BmpXOff,MBT_S32 s32BmpYOff,MBT_S32 iDispWidth,MBT_S32 iDispHeight,BITMAPTRUECOLOR * pBmpInfo,MBT_BOOL bOpenTrans);
extern MMT_STB_ErrorCode_E WGUIF_DrawFilledCircle(MBT_U32 xCenter,MBT_U32 yCenter,MBT_U32 radius,MBT_U32 u32Color);
extern MMT_STB_ErrorCode_E WGUIF_ReFreshLayer(MBT_VOID);



///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////	myanmar font function
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
extern MBT_S32 WGUIF_FNTDrawRgnTxt(MBT_S32 x, MBT_S32 y, MBT_U8 *pu8ReginBuf,MBT_S32 s32ReginW, MBT_S32 s32ReginH,MBT_S32 iChNum, MBT_CHAR* pText, MBT_U32 u32TextColor);
extern MBT_S32 WGUIF_FNTDrawSliderTxt(MBT_S32 x, MBT_S32 y,  MBT_S32 iLimitLeftX,MBT_S32 iLimitRightX,MBT_S32 iChNum, MBT_CHAR* pText, MBT_U32 u32TextColor);
extern MBT_S32 WGUIF_FNTDrawLimitWidthTxt(MBT_S32 x, MBT_S32 y, MBT_S32 iChNum, MBT_CHAR *pText, MBT_U32 iFrontColor, MBT_S32 iMaxWidth,MBT_S32 iRowHeight);
extern MBT_S32 WGUIF_FNTDrawLimitWidthTxtExt(MBT_S32 x, MBT_S32 y, MBT_S32 iChNum, MBT_CHAR *pText, MBT_U32 iFrontColor, MBT_S32 iMaxWidth,MBT_S32 iRowHeight);
extern MBT_S32 WGUIF_FNTGetTxtWidthLinesAdjust( MBT_S32 iChNum, MBT_CHAR *pText,MBT_U32 *pu32Lines,MBT_U32 u32MaxWidth);
extern MBT_S32 WGUIF_FNTDrawTxt2RgnUse2Color(MBT_S32 x, MBT_S32 y,MBT_CHAR* pText,MBT_S32  iChNum,MBT_S32  iHighlightByte, MBT_U32 u32TextColor,MBT_U32 u32HighlightColor,MBT_S32 iReginW);
extern MBT_S32 WGUIF_FNTDrawTxtWithAlpha(MBT_S32 x, MBT_S32 y, MBT_S32 iChNum, MBT_CHAR *pcText, MBT_U32 iFrontColor);
extern MBT_S32 WGUIF_FNTClearTxtWithAlpha(MBT_S32 x, MBT_S32 y, MBT_S32 iChNum, MBT_CHAR *pcText, MBT_U32 iFrontColor);
#ifdef __cplusplus
}
#endif

#endif 	/* #ifndef __CLUT8DEF_H__  */
