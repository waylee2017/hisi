#ifndef  BROWSER_DATA_PARSER_H
#define  BROWSER_DATA_PARSER_H

#include "BrowserHDI.h"

#ifdef  BROWSER_SWITCH_FLAG

typedef enum
{
	BROWSER_LINK_FUNC_NONE,
	BROWSER_LINK_FUNC_WATCH_TV,
	BROWSER_LINK_FUNC_LISTEN_RADIO,
	BROWSER_LINK_FUNC_FULL_VIEW,
	BROWSER_LINK_FUNC_PLAY_VOD
}BROWSER_LINK_FUNC_T;

typedef  struct
{
	BROWSER_U8  i_index;											/*控件序列号，序列号从0开始*/
	BROWSER_U32  i_page_id;											/*控件所属的PAGE ID (从0  开始)*/
	BrowserArea_T  i_area;											/*控件坐标及宽高(x, y, width, height)*/
	BROWSER_U32  i_link_page_id;									/*链接的PAGE ID*/
	BROWSER_BOOLEAN_T  i_bg_colour_disable_flag;					/*背景色禁用标志, TRUE为禁用，FALSE为使用*/
	BROWSER_BOOLEAN_T  i_link_flag;									/*链接标志(链接PAGE 或者功能), TRUE为链接，FALSE为无链接*/
	BROWSER_BOOLEAN_T  i_iframe_flag;								/*是否用来显示IFRAME，TRUE为显示，FALSE无显示*/
	BROWSER_BOOLEAN_T  i_pic_flag;									/*图片标志，TRUE为有图片数据，FALSE无图片数*/
	BrowserColourARGB_T  i_fg_colour;									/*前景颜色，主要是文字颜色*/
	BrowserColourARGB_T  i_bg_colour;									/*背景颜色*/
	BROWSER_LINK_FUNC_T  i_link_func;								/*链接功能*/
	BROWSER_U32  i_string_length;									/*字符串字节个数*/
	char  *i_string_p;													/*字符串*/
	BROWSER_TEXT_LANGUAGE_T  i_string_language;					/*字符串语言*/
	BROWSER_STRING_ALIGN_MODE_T  i_string_align;					/*字符串对齐方式*/
	BROWSER_STRING_DYNAMIC_MODE_T  i_string_dynamic_mode;		/*字符串动态模式*/
	BROWSER_FONT_SIZE_T  i_string_font_size;							/*字符串字体尺寸*/
	BROWSER_U32  i_pic_path_length;									/*图片保存路径字符串字节数*/
	char  *i_pic_path_string_p;										/*图片路径字符串*/
	BROWSER_U32  i_pic_data_size;									/*图片数据大小*/
	BROWSER_U8  *i_pic_data_p;										/*图片数据*/
}BrowserWidget_T;	

typedef  struct
{
	BROWSER_U32  i_page_id;											/*PAGE ID (从0  开始)*/
	BROWSER_BOOLEAN_T  i_play_service_flag;							/*PLAY SERVICE 标志*/
	BROWSER_U16  i_service_id;										/*SERVICE ID*/
	BROWSER_U16  i_ts_id;											/*TRANSPORT STREM ID*/
	BROWSER_U32  i_widget_num;										/*控件个数*/
	BrowserWidget_T  *i_widget_p;										/*控件数据*/
}BrowserPage_T;

typedef  struct
{
	BROWSER_U32  i_width;											/*浏览器宽度*/
	BROWSER_U32  i_height;											/*浏览器高度*/
	BROWSER_U32  i_widget_total_num;								/*所有PAGE全部控件总数*/
	BROWSER_U32  i_page_num;										/*PAGE个数*/
	BrowserPage_T  *i_page_p;										/*PAGE数据*/
}BrowserData_T;


BROWSER_BOOLEAN_T  BrowserDataParser(BROWSER_U8  *p_data_p, BROWSER_U32 p_data_num, BrowserData_T  *p_browser_data_p);

#ifdef  BROWSER_AD_FLAG

BROWSER_BOOLEAN_T  Browser_Ad_DataParser(BROWSER_U8  *p_data_p, BROWSER_U32 p_data_num, BrowserData_T  *p_browser_data_p);

#endif

#endif

#endif

