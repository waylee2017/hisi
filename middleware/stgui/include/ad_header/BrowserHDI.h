#ifndef  BROWSER_HDI_H
#define  BROWSER_HDI_H

#define  BROWSER_SWITCH_FLAG
#define  BROWSER_NAVIGATOR_FLAG
#define  BROWSER_AD_FLAG

#ifdef  BROWSER_SWITCH_FLAG

/*++++++++++++++++++++BROWSER PORTING INTERFACE HEADER FILE (V 4.1)++++++++++++++++++++++++*/
extern void MLMF_Print(const char* fmt, ...);

/*-------------------------------------基本数据类型---------------------------------------*/
typedef  unsigned char 	 BROWSER_U8;
typedef  unsigned short	 BROWSER_U16;
typedef  unsigned long		 BROWSER_U32;
typedef  signed char 	 	 BROWSER_I8;
typedef  signed short	 	 BROWSER_I16;
typedef  signed long		 BROWSER_I32;

typedef  enum
{
	BROWSER_FALSE,
	BROWSER_TRUE
}BROWSER_BOOLEAN_T;

typedef enum
{
	BROWSER_STRING_LEFT_ALIGN,						/*文本左对齐*/
	BROWSER_STRING_RIGHT_ALIGN,						/*文本右对齐*/
	BROWSER_STRING_CENTER_ALIGN,					/*文本居中对齐*/
	BROWSER_STRING_ALIGN_NUM
}BROWSER_STRING_ALIGN_MODE_T;

typedef enum
{
	BROWSER_STRING_DYNAMIC_NONE,					/*文本正常显示*/	
	BROWSER_STRING_DYNAMIC_HSCROLL,				/*文本从右到左滚动显示*/	
	BROWSER_STRING_DYNAMIC_VSCROLL,					/*文本从下到上横屏滚动显示*/	
	BROWSER_STRING_DYNAMIC_VSCROLL2,				/*文本从下到上两行文本横屏跳跃滚动显示*/	
	BROWSER_STRING_DYNAMIC_NUM
}BROWSER_STRING_DYNAMIC_MODE_T;

typedef enum
{
	BROWSER_FONT_26,									
	BROWSER_FONT_32,
	BROWSER_FONT_38,
	BROWSER_FONT_NUM
}BROWSER_FONT_SIZE_T;

typedef  enum
{
	BROWSER_KEY_UP,							/*按键上*/		
	BROWSER_KEY_DOWN,						/*按键下*/	
	BROWSER_KEY_LEFT,							/*按键左*/	
	BROWSER_KEY_RIGHT,						/*按键右*/	
	BROWSER_KEY_SELECT,						/*按键选择*/	
	BROWSER_KEY_PRIVATE_00,					/*用户自定义按键*/
	BROWSER_KEY_PRIVATE_01,					/*用户自定义按键*/
	BROWSER_KEY_PRIVATE_02,					/*用户自定义按键*/
	BROWSER_KEY_PRIVATE_03,					/*用户自定义按键*/
	BROWSER_KEY_PRIVATE_04,					/*用户自定义按键*/
	BROWSER_KEY_PRIVATE_05,					/*用户自定义按键*/
	BROWSER_KEY_PRIVATE_06,					/*用户自定义按键*/
	BROWSER_KEY_PRIVATE_07,					/*用户自定义按键*/
	BROWSER_KEY_PRIVATE_08,					/*用户自定义按键*/
	BROWSER_KEY_PRIVATE_09,					/*用户自定义按键*/
	BROWSER_KEY_NUM
}BROWSER_KEY_T;

typedef  enum
{
	BROWSER_FOCUS_NORMAL,							/*控件焦点框正常显示*/
	BROWSER_FOCUS_ACTIVE,							/*控件焦点框激活态显示*/
	BROWSER_FOCUS_HIDE								/*隐藏控件焦点框*/
}BROWSER_FOCUS_STATE_T;

typedef  enum
{
	BROWSER_TEXT_LANGUAGE_MYANMAR,
	BROWSER_TEXT_LANGUAGE_ENGLISH,
	BROWSER_TEXT_LANGUAGE_NUM
}BROWSER_TEXT_LANGUAGE_T;

typedef struct
{
	BROWSER_U8  i_a;
	BROWSER_U8  i_r;
	BROWSER_U8  i_g;
	BROWSER_U8  i_b;
}BrowserColourARGB_T;

typedef  struct
{
	BROWSER_U32  i_x;
	BROWSER_U32  i_y;
	BROWSER_U32  i_width;
	BROWSER_U32  i_height;
}BrowserArea_T;

typedef  struct
{
	BROWSER_U8  *i_gif_picture_buffer_p; 		/*GIF图片数据缓存*/	
	BROWSER_U32  i_gif_picture_buffer_len;  		/*GIF图片数据缓存长度*/	
	BROWSER_U32  i_gif_picture_width;      			/*GIF图片宽度*/
	BROWSER_U32  i_gif_picture_heigt;   			/*GIF图片高度*/ 
	BROWSER_U8  *i_decode_buffer_p;  			/*GIF图片解码缓存*/ 
	BROWSER_U32  i_decode_buffer_len;			/*GIF图片解码缓存长度*/ 
}BrowserGifPicture_T;

typedef  struct
{
	BROWSER_U32  i_gif_frame_num;    		/*GIF图片帧数*/	
	BROWSER_U32  i_gif_width;      			/*GIF图片宽度*/
	BROWSER_U32  i_gif_heigt;   			 	/*GIF图片高度*/
	BROWSER_U16  i_gif_background_color;	/*GIF图片背景色，已做特殊处理，固定为白色*/
}BrowserGifContent_T;

typedef  struct
{
	BROWSER_U32  i_gif_frame_delay_ten_ms;      	/*GIF图片帧延时，单位: 10微秒*/	
	BROWSER_U8*  i_gif_frame_buf_p;  			/*GIF图片解码后的位图数据缓存*/	
}BrowserGifFrame_T;

typedef void (*BrowserTaskFunc_T) (void);
typedef void (*BrowserFilterCallback_T) (BROWSER_U8*  p_data_p, BROWSER_U32  p_data_length);

/*------------------------------------------------------------------------------------------*/

/*----------------------------------------宏定义-----------------------------------------*/

#define  BROWSER_HANDLE	BROWSER_U32					/*句柄*/
#define  BROWSER_INVALID_HANDLE		0x00000000			/*无效句柄*/
#define  BROWSER_TIMEOUT_INFINITY		0xFFFFFFFF			/*超时永久等待*/
#define  BROWSER_TIMEOUT_IMMEDIATE	0x00000000			/*超时立即退出*/

/*------------------------------------------------------------------------------------------*/

/*---------------------------以下接口是BROWSER LIB 提供给USER-------------------------------------*/

#ifdef  BROWSER_NAVIGATOR_FLAG

/*++++
 *描述:  机顶盒端移植浏览器时的启动接口
 *参数:  
 *1. p_browser_pid  -  浏览器ts流pid
 *返回值:  
 *1. BROWSER_TRUE  -  成功
 *2. BROWSER_FALSE  -  失败
 */
BROWSER_BOOLEAN_T  Browser_StbVersionInit(BROWSER_U32  p_browser_pid);


/*++++
 *描述:  浏览器获取数据，并启动浏览器
 *参数:  
 *1. p_browser_data_p  -  浏览器原始数据包
 *2. p_browser_data_size  -  浏览器原始数据大小
 *3. p_browser_version  -  浏览器原始数据版本号
 *返回值:  
 *1. BROWSER_TRUE  -  成功
 *2. BROWSER_FALSE  -  失败
 */
BROWSER_BOOLEAN_T  Browser_Init(BROWSER_U8* p_browser_data_p,  BROWSER_U32  p_browser_data_size, BROWSER_U32  p_browser_version);


/*++++
 *描述:  终止浏览器，并释放相关资源
 *参数:  无
 *返回值:  
 *1. BROWSER_TRUE  -  成功
 *2. BROWSER_FALSE  -  失败
 */
BROWSER_BOOLEAN_T  Browser_Term(void);



/*++++
 *描述:  获取外部按键键值
 *参数:  无
 *1. p_key  -  外部传递按键键值
 *返回值:  
 *1. BROWSER_TRUE  -  成功
 *2. BROWSER_FALSE  -  失败
 */
BROWSER_BOOLEAN_T  Browser_SendKey(const BROWSER_KEY_T p_key);

/*++++
 *描述:  初始化浏览器内存
 *参数:  
 *1. p_os_mem_start_p  -  浏览器内存起始地址
 *2. p_os_mem_size  -  浏览器内存数据大小
 *返回值:  无
 */
void  Browser_Os_Mem_Init(BROWSER_U8  *p_os_mem_start_p, BROWSER_U32  p_os_mem_size);

#endif

//---------GIF解码函数接口------------
/*++++
 *描述:  GIF数据分析
 *参数:  
 *1. p_gif_picture_p  -  GIF原始数据及解码BUFFER
 *返回值: 
 *BrowserGifContent_T
 */
BrowserGifContent_T  Browser_Gif_Decode_Content(BrowserGifPicture_T*  p_gif_picture_p);  

/*++++
 *描述:  GIF帧数据获取
 *参数:  
 *1. p_gif_picture_p  -  GIF原始数据及解码BUFFER
 *2. p_gif_frame_index  -  需要解析的帧索引，索引下标从1开始
 *返回值: 
 *BrowserGifFrame_T
 */
BrowserGifFrame_T  Browser_Gif_Decode_Frame(BrowserGifPicture_T*  p_gif_picture_p, BROWSER_U32  p_gif_frame_index);  


/*------------------------以上接口是BROWSER LIB 提供给USER----------------------------------------*/


/*------------------------以下接口是由USER PORTING 提供为BROWSER LIB----------------------------------------*/

//---------互斥函数接口------------
/*++++
 *描述:  创建互斥句柄
 *参数:  无
 *返回值:  
 *1. BROWSER_INVALID_HANDLE  -  无效句柄，失败
 *2. OTHERS  -  有效句柄，成功
 */
BROWSER_HANDLE  Browser_Os_CreateMutex(void);

/*++++
 *描述:  删除互斥句柄
 *参数:  
 *1. p_handle  -  已创建的互斥句柄
 *返回值:  
 *1. BROWSER_TRUE  -  成功
 *2. BROWSER_FALSE  -  失败
 */
BROWSER_BOOLEAN_T   Browser_Os_DeleteMutex(BROWSER_HANDLE  p_handle);

/*++++
 *描述:  互斥锁定
 *参数:  
 *1. p_handle  -  已创建的互斥句柄
 *返回值:  无
 */
void   Browser_Os_LockMutex(BROWSER_HANDLE  p_handle);

/*++++
 *描述:  互斥释放
 *参数:  
 *1. p_handle  -  已创建的互斥句柄
 *返回值:  无
 */
void   Browser_Os_ReleaseMutex(BROWSER_HANDLE  p_handle);

//---------信号量函数接口------------
/*++++
 *描述:  创建信号量句柄
 *参数:  
 *1. p_init_val  -  BROWSER_TRUE : 给定初始值1，BROWSER_FALSE : 给定初始值0.
 *返回值:  
 *1. BROWSER_INVALID_HANDLE  -  无效句柄，失败
 *2. OTHERS  -  有效句柄，成功
 */
BROWSER_HANDLE  Browser_Os_CreateSemaphore(const BROWSER_BOOLEAN_T  p_init_val);

/*++++
 *描述:  删除信号量句柄
 *参数:  
 *1. p_handle  -  已创建的信号量句柄
 *返回值:  
 *1. BROWSER_TRUE  -  成功
 *2. BROWSER_FALSE  -  失败
 */
BROWSER_BOOLEAN_T   Browser_Os_DeleteSemaphore(BROWSER_HANDLE  p_handle);

/*++++
 *描述:  发送信号量
 *参数:  
 *1. p_handle  -  已创建的信号量句柄
 *返回值:  无
 */
BROWSER_BOOLEAN_T   Browser_Os_SemaphoreSignal(BROWSER_HANDLE  p_handle);

/*++++
 *描述:  等待信号量
 *参数:  
 *1. p_handle  -  已创建的信号量句柄
 *2. p_wait_timeout_ms  -  超时等待时间，单位为毫秒
 *返回值:  无
 */
BROWSER_BOOLEAN_T   Browser_Os_SemaphoreWait(BROWSER_HANDLE  p_handle, const BROWSER_U32  p_wait_timeout_ms);

//---------消息队列函数接口------------
/*++++
 *描述:  创建消息队列句柄
 *参数:  
 *1. p_element_size  -  消息负载数据大小.
 *2. p_element_num  -  消息队列中消息的个数.
 *返回值:  
 *1. BROWSER_INVALID_HANDLE  -  无效句柄，失败
 *2. OTHERS  -  有效句柄，成功
 */
BROWSER_HANDLE  Browser_Os_CreateMessageQueue(const BROWSER_U32  p_element_size, const BROWSER_U32  p_element_num);

/*++++
 *描述:  删除消息队列句柄
 *参数:  
 *1. p_handle  -  已创建的消息队列句柄
 *返回值:  
 *1. BROWSER_TRUE  -  成功
 *2. BROWSER_FALSE  -  失败
 */
BROWSER_BOOLEAN_T   Browser_Os_DeleteMessageQueue(BROWSER_HANDLE  p_handle);

/*++++
 *描述:  从一个已创建的消息队列中申请一个消息
 *参数:  
 *1. p_handle  -  已创建的消息队列句柄
 *返回值:  
 *1. NULL  -  失败
 *2. OTHERS  -  成功
 */
void*  Browser_Os_MessageQueueClaim(BROWSER_HANDLE  p_handle);

/*++++
 *描述:  释放从一个已创建的消息队列中申请的消息
 *参数:  
 *1. p_handle  -  已创建的消息队列句柄
 *2. p_msg_p  -  已申请的消息
 *返回值:  无
 */
void   Browser_Os_MessageQueueRelease(BROWSER_HANDLE  p_handle,  void* p_msg_p);

/*++++
 *描述:  发送一个已申请的消息
 *参数:  
 *1. p_handle  -  已创建的消息队列句柄
 *2. p_msg_p  -  已申请的消息
 *返回值:  无
 */
BROWSER_BOOLEAN_T   Browser_Os_MessageQueueSend(BROWSER_HANDLE  p_handle,  void* p_msg_p);

/*++++
 *描述:  接收消息队列中的消息
 *参数:  
 *1. p_handle  -  已创建的消息队列句柄
 *2. p_ticks  -  超时等待时间
 *返回值:  
 *1. NULL  -  失败
 *2. OTHERS  -  成功
 */
void*  Browser_Os_MessageQueueReceive(BROWSER_HANDLE  p_handle,  const BROWSER_U32  p_milli_seconds);

//---------任务函数接口------------
/*++++
 *描述:  创建任务句柄
 *参数:  
 *1. p_task_name_p  -  任务名.
 *2. p_task_func_p  -  任务函数指针.
 *3. p_stack_size  -  任务堆栈大小
 *返回值:  
 *1. BROWSER_INVALID_HANDLE  -  无效句柄，失败
 *2. OTHERS  -  有效句柄，成功
 */
BROWSER_HANDLE  Browser_Os_CreateTask(char*  p_task_name_p, BrowserTaskFunc_T  p_task_func_p, const BROWSER_U32  p_stack_size);

/*++++
 *描述:  删除任务及任务句柄
 *参数:  
 *1. p_handle  -  已创建的任务句柄
 *返回值:  
 *1. BROWSER_TRUE  -  成功
 *2. BROWSER_FALSE  -  失败
 */
BROWSER_BOOLEAN_T   Browser_Os_DeleteTask(BROWSER_HANDLE  p_handle);

/*++++
 *描述:  任务休眠
 *参数:  
 *1. p_milli_seconds  -  休眠时间
 *返回值:  无
 */
void  Browser_Os_TaskSleep(const BROWSER_U32  p_milli_seconds);


//---------内存管理函数接口------------
/*++++
 *描述:  申请内存扩展接口
 *参数:  
 *1. p_buffer_size  -  需申请的内存大小
 *返回值:  
 *1. NULL  -  失败
 *2. OTHERS  -  成功
 */
void*  Browser_Os_Malloc_Plus(const BROWSER_U32  p_buffer_size);  

/*++++
 *描述:  释放已申请的内存扩展接口
 *参数:  
 *1. p_buffer_p  -  已申请的内存
 *返回值:  无 
 */
void  Browser_Os_Free_Plus(void*  p_buffer_p);  


/*++++
 *描述:  内存填充
 *参数:  
 *1. p_buffer_p  -  已申请的内存
 *2. p_char  -  填充值
 *3. p_buffer_size  -  内存大小
 *返回值:  无 
 */
void  Browser_Os_Memset(void*  p_buffer_p,  const BROWSER_U8  p_char,  const BROWSER_U32  p_buffer_size);  

/*++++
 *描述:  内存拷贝
 *参数:  
 *1. p_dest_buffer_p  -  目标内存
 *2. p_source_buffer_p  -  源内存
 *3. p_buffer_size  -  内存大小
 *返回值:  无 
 */
void  Browser_Os_Memcpy(void*  p_dest_buffer_p,  const void* p_source_buffer_p,  const BROWSER_U32  p_buffer_size);  

//---------STB 端管理函数接口------------

/*++++
 *描述:  设置PID 、TABLE_ID获取对应的SECTION数据
 *参数:  
 *1. p_pid  -  pid
 *2. p_table_id  -  table id
 *3. p_filter_callback  -  SECTION数据获取回调函数
 *返回值: 
 *1. BROWSER_INVALID_HANDLE  -  无效句柄，失败
 *2. OTHERS  -  有效句柄，成功
 */
BROWSER_HANDLE  Browser_Stb_SetFilter(BROWSER_U32  p_pid, BROWSER_U8  p_table_id, BrowserFilterCallback_T  p_filter_callback);

/*++++
 *描述:  关闭指定的FILTER
 *参数:  
 *1. p_filter_handle  -  filter 句柄
 *返回值: 无
 */
void  Browser_Stb_StopFilter(BROWSER_HANDLE  p_filter_handle);


#ifdef  BROWSER_NAVIGATOR_FLAG

//---------驱动管理函数接口------------
/*++++
 *描述:  初始化底层驱动
 *参数:  无
 *返回值:  
 *1. BROWSER_TRUE  -  成功
 *2. BROWSER_FALSE  -  失败
 */
BROWSER_BOOLEAN_T  Browser_Driver_Init(void);

/*++++
 *描述:  终止底层驱动
 *参数:  无
 *返回值:  
 *1. BROWSER_TRUE  -  成功
 *2. BROWSER_FALSE  -  失败
 */
BROWSER_BOOLEAN_T  Browser_Driver_Term(void);

//---------UI  管理函数接口------------
/*++++
 *描述:  创建整个BROWSER的绘图区域, 底层驱动应将绘图区域居中显示，
                 其它绘图接口坐标均为相对于该区域的相对坐标，而非相对于
                 主屏幕的绝对坐标
 *参数:  
 *1. p_width  -  区域宽度.
 *2. p_height  -  区域高度.
 *返回值:  
 *1. BROWSER_TRUE  -  成功
 *2. BROWSER_FALSE  -  失败
 */
BROWSER_BOOLEAN_T  Browser_Ui_CreateRegion(const BROWSER_U32  p_width,  const BROWSER_U32  p_height);


/*++++
 *描述:  创建绘制图片句柄
 *参数:  
 *1. p_pic_data_p  -  图片数据，格式为GIF、BMP.
 *2. p_pic_data_size  -  图片数据大小.
 *3. p_pic_area  -  图片显示区域.
 *返回值:  
 *1. BROWSER_INVALID_HANDLE  -  无效句柄，失败
 *2. OTHERS  -  有效句柄，成功
 */
BROWSER_HANDLE  Browser_Ui_CreatePicture(BROWSER_U8  *p_pic_data_p,  const BROWSER_U32  p_pic_data_size,  BrowserArea_T  p_pic_area);

/*++++
 *描述:  删除绘制图片句柄
 *参数:  
 *1. p_handle  -  已创建的图片句柄.
 *返回值:  
 *1. BROWSER_TRUE  -  成功
 *2. BROWSER_FALSE  -  失败
 */
BROWSER_BOOLEAN_T  Browser_Ui_DeletePicture(BROWSER_HANDLE  p_handle);

/*++++
 *描述:  创建绘制文本句柄
 *参数:  
 *1. p_text_string_p  -  文本字符串.
 *2. p_text_language  -  文本语言类型.
 *3. p_text_string_length  -  文本字符串长度，不包含结束字符.
 *4. p_text_area  -  文本显示区域.
 *5. p_text_colour  -  文本字符串颜色.
 *6. p_text_font_size  -  文本字体大小.
 *7. p_text_align_mode  -  文本对齐方式.
 *8. p_text_dynamic_mode  -  文本动态效果.
 *返回值:  
 *1. BROWSER_INVALID_HANDLE  -  无效句柄，失败
 *2. OTHERS  -  有效句柄，成功
 */
BROWSER_HANDLE  Browser_Ui_CreateText(char  *p_text_string_p,  
											const BROWSER_TEXT_LANGUAGE_T  p_text_language,
											const BROWSER_U32  p_text_string_length,  
											BrowserArea_T  p_text_area,  
											BrowserColourARGB_T  p_text_colour,  
											BROWSER_FONT_SIZE_T  p_text_font_size,
											BROWSER_STRING_ALIGN_MODE_T  p_text_align_mode,
											BROWSER_STRING_DYNAMIC_MODE_T  p_text_dynamic_mode
											);

/*++++
 *描述:  删除绘制文本句柄
 *参数:  
 *1. p_handle  -  已创建的文本句柄.
 *返回值:  
 *1. BROWSER_TRUE  -  成功
 *2. BROWSER_FALSE  -  失败
 */
BROWSER_BOOLEAN_T  Browser_Ui_DeleteText(BROWSER_HANDLE  p_handle);

/*++++
 *描述:  绘制图片
 *参数:  
 *1. p_handle  -  已创建的绘制图片句柄.
 *返回值:  无
 */
void  Browser_Ui_DrawPicture(BROWSER_HANDLE  p_handle);

/*++++
 *描述:  绘制文本
 *参数:  
 *1. p_handle  -  已创建的绘制文本句柄.
 *返回值:  无
 */
void  Browser_Ui_DrawText(BROWSER_HANDLE  p_handle);

/*++++
 *描述:  绘制矩形
 *参数:  
 *1. p_area  -  绘制区域.
 *2. p_colour  -  区域颜色.
 *返回值:  无
 */
void  Browser_Ui_FillRectangle(BrowserArea_T  p_area,  BrowserColourARGB_T  p_colour);

/*++++
 *描述:  绘制光标,  该光标处于一个独立图层(虚拟图层或者物理图层)
 *参数:  
 *1. p_area  -  光标所在区域
 *2. p_focus_state  -  光标状态，可以处于正常、激活和隐藏状态
 *返回值: 无 
 */
void  Browser_Ui_DrawFocus(BrowserArea_T  p_area,  BROWSER_FOCUS_STATE_T  p_focus_state);

/*++++
 *描述:  UI开始绘制
 *参数:  无
 *返回值:  无 
 */
void  Browser_Ui_BeginDraw(void);

/*++++
 *描述:  UI完成绘制
 *参数:  无
 *返回值:  无 
 */
void  Browser_Ui_EndDraw(void);

//--注释:  所有的绘图和文本输出都需要通过函数Browser_Ui_BeginDraw() 和Browser_Ui_EndDraw()
//---------  配对，才能将已绘制的图片和文本输出到SCREEN。

//---------STB 端管理函数接口------------
/*++++
 *描述:  锁定前端信号
 *参数:  无
 *返回值:  
 *1. BROWSER_TRUE  -  锁定成功
 *2. BROWSER_FALSE  -  锁定失败
 */
BROWSER_BOOLEAN_T  Browser_Stb_LockTuner(void);

/*++++
 *描述:  关闭前端信号
 *参数:  无
 *返回值:  无
 */
void  Browser_Stb_StopTuner(void);


/*++++
 *描述:  提示用户等待，正在进入BROWSER
 *参数:  无
 *返回值:  无
 */
void  Browser_Stb_WaitingNotice(void);


/*++++
 *描述:  提示用户无信号
 *参数:  无
 *返回值:  无
 */
void  Browser_Stb_NoSignalNotice(void);

/*++++
 *描述:  提示用户无数据
 *参数:  无
 *返回值:  无
 */
void  Browser_Stb_NoDataNotice(void);

#endif


/*------------------------以上接口是由USER PORTING 提供为BROWSER LIB----------------------------------------*/

/*------------------------以下接口是广告分析接口----------------------------------------*/
#ifdef  BROWSER_AD_FLAG

/*-------------------------------------广告数据类型---------------------------------------*/
typedef  enum
{
	BROWSER_AD_NONE = 0xFF,
	BROWSER_AD_BOOT_SCREEN = 0,
	BROWSER_AD_BANNER = 1,
	BROWSER_AD_CHANNEL_LIST = 2,
	BROWSER_AD_VOL_BAR = 3,
	BROWSER_AD_EPG = 4,
	BROWSER_AD_NUM
}BROWSER_AD_POSITION_T;

typedef  struct
{
	BROWSER_U32  i_bmp_width;
	BROWSER_U32  i_bmp_height;
	BROWSER_U32  i_bmp_pitch;
	BROWSER_U32  i_bmp_bps;
	BROWSER_U8  *i_bmp_data_p;
}BROWSER_AD_BITMAP_T;

typedef  struct
{
	BROWSER_U32  i_year;
	BROWSER_U32  i_month;
	BROWSER_U32  i_day;
}BROWSER_AD_Date_T;

typedef  struct
{
	BROWSER_U32  i_hour;
	BROWSER_U32  i_min;
	BROWSER_U32  i_sec;
}BROWSER_AD_Time_T;


/*---------------------------以下接口是BROWSER LIB 提供给USER-------------------------------------*/
/*++++
 *描述:  广告数据捕获
 *参数:  
 *1. p_ad_pid  -  广告ts流pid
 *2. p_download_flag - 立即下载数据标志
 *返回值:  
 *1. BROWSER_TRUE  -  成功
 *2. BROWSER_FALSE  -  失败
 */
BROWSER_BOOLEAN_T  Browser_Ad_Download(BROWSER_U32  p_ad_pid, BROWSER_BOOLEAN_T  p_download_flag);

/*++++
 *描述:  终止广告，并释放相关资源
 *参数:  无
 *返回值:  
 *1. BROWSER_TRUE  -  成功
 *2. BROWSER_FALSE  -  失败
 */
BROWSER_BOOLEAN_T  Browser_Ad_Term(void);

/*++++
 *描述:  初始化广告数据下载内存
 *参数:  
 *1. p_ad_ts_mem_start_p  -  广告数据下载内存起始地址
 *2. p_ad_ts_mem_size  -  广告数据下载内存数据大小
 *返回值:  无
 */
void  Browser_Ad_Ts_Mem_Init(BROWSER_U8  *p_ad_ts_mem_start_p, BROWSER_U32  p_ad_ts_mem_size);

/*++++
 *描述:  初始化广告内存
 *参数:  
 *1. p_os_mem_start_p  -  广告内存起始地址
 *2. p_os_mem_size  -  广告内存数据大小
 *返回值:  无
 */
void  Browser_Ad_Mem_Init(BROWSER_U8  *p_ad_mem_start_p, BROWSER_U32  p_ad_mem_size);

/*++++
 *描述:  初始化广告图片解码
 *参数:  
 *1. p_ad_pic_decode_mem_start_p  -  广告图片解码内存起始地址
 *2. p_ad_pic_decode_mem_size  -  广告图片解码内存数据大小
 *返回值:  无
 */
void  Browser_Ad_Picture_Decode_Mem_Init(BROWSER_U8  *p_ad_pic_decode_mem_start_p, BROWSER_U32  p_ad_pic_decode_mem_size);

/*++++
 *描述:  获取指定广告位置的图片数据
 *参数:  
 *1. p_ad_position  -  广告位置枚举
 *返回值:  
 *1. BROWSER_AD_BITMAP_T  -  广告图片数据
 */
BROWSER_AD_BITMAP_T  Browser_Ad_GetBitmap(BROWSER_AD_POSITION_T  p_ad_position);
BrowserGifPicture_T  Browser_Ad_GetGifInfo(BROWSER_AD_POSITION_T  p_ad_position);
BROWSER_BOOLEAN_T Browser_Ad_VersionChange(void);

/*------------------------以上接口是BROWSER LIB 提供给USER----------------------------------------*/


/*------------------------以下接口是由USER PORTING 提供为BROWSER LIB----------------------------------------*/
/*++++
 *描述:  锁定前端信号
 *参数:  无
 *返回值:  
 *1. BROWSER_TRUE  -  锁定成功
 *2. BROWSER_FALSE  -  锁定失败
 */
BROWSER_BOOLEAN_T  Browser_Ad_LockTuner(void);

/*++++
 *描述:  关闭前端信号
 *参数:  无
 *返回值:  无
 */
void  Browser_Ad_StopTuner(void);

/*++++
 *描述:  获取系统当前日期和时间
 *参数:  
 *1. p_ad_pic_decode_mem_start_p  -  广告图片解码内存起始地址
 *2. p_ad_pic_decode_mem_size  -  广告图片解码内存数据大小
 *返回值:  
 *1. BROWSER_TRUE  -  锁定成功
 *2. BROWSER_FALSE  -  锁定失败
 */
BROWSER_BOOLEAN_T  Browser_Ad_GetDateTime(BROWSER_AD_Date_T*  p_date_p,  BROWSER_AD_Time_T*  p_time_p);

/*++++
 *描述:  初始化底层驱动
 *参数:  无
 *返回值:  
 *1. BROWSER_TRUE  -  成功
 *2. BROWSER_FALSE  -  失败
 */
BROWSER_BOOLEAN_T  Browser_Ad_Driver_Init(void);

/*++++
 *描述:  终止底层驱动
 *参数:  无
 *返回值:  
 *1. BROWSER_TRUE  -  成功
 *2. BROWSER_FALSE  -  失败
 */
BROWSER_BOOLEAN_T  Browser_Ad_Driver_Term(void);

BrowserGifFrame_T  Browser_Decode_Pic_Frame(BROWSER_U8 *PicBuf,BROWSER_U32 BufSize);
BrowserGifFrame_T  Browser_Decode_Gif_Frame(BrowserGifPicture_T*  p_gif_picture_p, BROWSER_U32  p_gif_frame_index);

#endif

/*------------------------以上接口是广告分析接口----------------------------------------*/



#endif

#endif

