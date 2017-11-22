#ifndef  BROWSER_H 
#define  BROWSER_H

#include  "BrowserDataParser.h"

#ifdef  BROWSER_SWITCH_FLAG

typedef  struct
{
	BROWSER_BOOLEAN_T  i_bg_disable_flag;					//判断背景矩形是否不用显示
	BrowserArea_T  i_area;									//显示区域
	BrowserColourARGB_T  i_bg_colour;							//背景颜色
}BROWSER_WIDGET_BG_UI_T;

typedef  struct
{
	BROWSER_HANDLE  i_pic_handle;
	BROWSER_HANDLE  i_text_handle;
	BROWSER_WIDGET_BG_UI_T  i_bg_handle;
}BROWSER_WIDGET_UI_T;

typedef  struct
{
	BROWSER_U8  i_widget_num;								//PAGE所包含的WIDGET个数
	BROWSER_WIDGET_UI_T  *i_widget_ui_p;					//控件UI显示数组
}BROWSER_PAGE_UI_T;

typedef  struct
{
	BROWSER_BOOLEAN_T  i_init_flag;							//初始化标志
	BROWSER_U32  i_browser_version;							//浏览器版本号
	BrowserData_T  i_browser_data;							//浏览器数据结构
	BROWSER_U32  i_first_page_id;							//第一页ID
	BROWSER_U32  i_show_page_id;							//当前正在显示的PAGE ID
	BROWSER_U8  i_show_page_focus_widget_id;				//当前页的焦点控件ID
	BROWSER_PAGE_UI_T  i_show_page_ui_handle;				//当前页的显示UI
	BROWSER_HANDLE  i_msg_handle;
	BROWSER_HANDLE  i_task_handle;
}BROWSER_T;

typedef  struct
{
	BROWSER_U32  i_browser_ad_version;							//广告版本号
	BrowserData_T  i_browser_ad_data;							//广告数据结构
}BROWSER_AD_T;

void*  Browser_Os_Malloc(BROWSER_U32  p_buffer_size);
void  Browser_Os_Free(void*  p_buffer_p);

void*  Browser_Ad_Malloc(BROWSER_U32  p_buffer_size);
void  Browser_Ad_Free(void*  p_buffer_p);


#endif

#endif

