#ifndef  BROWSER_GIF_H
#define  BROWSER_GIF_H

#include "BrowserHDI.h"

#ifdef  BROWSER_SWITCH_FLAG

#define BROWSER_GIF_MAX_WIDTH				       		1280//800
#define BROWSER_GIF_MAX_HEIGHT							720//600

// core control flag
#define BROWSER_GIF_INFO_HEADER							0x00000001
#define BROWSER_GIF_INFO_LSDES							0x00000002
#define BROWSER_GIF_INFO_IMGDES							0x00000004
#define BROWSER_GIF_INFO_GCE								0x00000008
#define BROWSER_GIF_INFO_GCE_PRIOR						0x00000010

#define BROWSER_GIF_END_FILE_STR							0x00010000
#define BROWSER_GIF_END_IMG_DECODE						0x00020000

#define BROWSER_GIF_INFO_MUST								0x00000007

#define BROWSER_GIF_DELAY_THRESHOLD						0
#define BROWSER_GIF_DELAY_MIN_VALUE						40
#define BROWSER_GIF_DELAY_EXTENTION						20
#define BROWSER_GIF_INVALID_MAX_TICKS					1000

#define BROWSER_GIF_DEFAULT_TRAN_COLOR					0xFF

//MACRO&ERUM
#define BROWSER_GIF_TRUE									((BROWSER_I32)1)
#define BROWSER_GIF_FALSE									((BROWSER_I32)0)

#define BROWSER_GIF_MAX_BIT_LEN							12
#define BROWSER_GIF_TABLE_LEN								0x1000

#define BROWSER_GIF_MAX_PALLETE_LEN						256
#define BROWSER_GIF_MAX_SUB_BLOCKS_NUM					20
#define BROWSER_GIF_MAX_SUB_BLOCK_SIZE					256

//lzw control flag
#define BROWSER_GIF_LZW_FIRST_STREAM					0x00000001

#define BROWSER_GIF_IMAGE_SEPARATOR						0x2C
#define BROWSER_GIF_EXT_INTRODUCER						0x21
#define BROWSER_GIF_BLOCK_TER_FLAG						0x00

#define BROWSER_GIF_FILE_TRAILER							0x3B

//extention lable
#define BROWSER_GIF_GRAPHIC_CTRL					0xF9

typedef BROWSER_I8  BROWSER_GIF_REGION_ID_T;
typedef BROWSER_U32 BROWSER_GIF_RETURN_T;


typedef enum
{
	BROWSER_GIF_lZW_NEW_SUB,
	BROWSER_GIF_LZW_IN_SUB
}BROWSER_GIF_LZW_STEP_T;

typedef enum
{
	BROWSER_GIF_PARSE_INFO,
	BROWSER_GIF_LZW_IMAGE,
	BROWSER_GIF_SHOW_DELAY
}BROWSER_GIF_CORE_STEP_T;

typedef struct 
{
	BROWSER_U32  i_x;
	BROWSER_U32  i_y;
}BROWSER_GIF_POSITION_T;

typedef struct
{
	BROWSER_U32  i_x;
	BROWSER_U32  i_y;
	BROWSER_U32  i_w;
	BROWSER_U32  i_h;
}BROWSER_GIF_RECT_T;

typedef struct
{
	BROWSER_U8*  i_start_p;
	BROWSER_U8*  i_read_p;
	BROWSER_U32  i_left;
	BROWSER_U32  i_size;
}BROWSER_GIF_STRING_T;

typedef struct
{
	BROWSER_U32  i_value;
	BROWSER_I32  i_bits;
}BROWSER_GIF_BIT_T;

typedef struct
{
	BROWSER_U8  i_size;
	BROWSER_U8  i_left;
}BROWSER_GIF_SUB_T;

typedef struct
{
	BROWSER_GIF_STRING_T  i_str;
	BROWSER_GIF_BIT_T  i_bit;
	BROWSER_GIF_SUB_T  i_sub;
}BROWSER_GIF_IN_T;   

typedef struct
{
	BROWSER_U32  i_image_buffer;
	//BROWSER_I32 imagebuf_size;
	BROWSER_U32  i_background_buffer;
	BROWSER_U16  i_background_colour;
	//BROWSER_I32 bkbuf_size;
	BROWSER_GIF_RECT_T  i_rect;
	BROWSER_GIF_POSITION_T  i_pos;
}BROWSER_GIF_OUT_T;   

typedef struct
{
	BROWSER_I32  i_num;
	BROWSER_U32  i_global_abs_pal_p[BROWSER_GIF_MAX_PALLETE_LEN];//index -> true color
	BROWSER_U32  i_local_abs_pal_p[BROWSER_GIF_MAX_PALLETE_LEN];
}BROWSER_GIF_PALLETE_T;   

typedef struct
{
	//lzw parameters
	BROWSER_U32  i_min_code_size;
	BROWSER_U32  i_code_size;
	BROWSER_U32  i_table_idx;
	BROWSER_U16  i_clear_code;
	BROWSER_U16  i_end_code;
	BROWSER_U16  i_prefix;
	BROWSER_U16  i_suffix;
	BROWSER_U32  i_table_start_p[BROWSER_GIF_TABLE_LEN];
	BROWSER_U32  i_stack_start_p[BROWSER_GIF_TABLE_LEN];
	BROWSER_U32*  i_stack_ptr_p;

	//lzw flow step control
	BROWSER_U32  i_flag;

	// line information
	BROWSER_U32  i_line_buf;
	BROWSER_U32  i_line_read;
	BROWSER_I32  i_pixel_num;
	BROWSER_I32  i_sum_lines;// count the num of lines successfully decompressed

	//pallete
	BROWSER_GIF_PALLETE_T  i_pallete;

	BROWSER_GIF_RECT_T  i_rect;
	BROWSER_U32  i_pixel_pitch;
	BROWSER_U32  i_img_pitch;
}BROWSER_GIF_LZW_T;  

typedef struct
{
	//signature
	BROWSER_U8  i_sig0;
	BROWSER_U8  i_sig1;
	BROWSER_U8  i_sig2;
	//version
	BROWSER_U8  i_ver0;
	BROWSER_U8  i_ver1;
	BROWSER_U8  i_ver2;
}BROWSER_GIF_INFO_HEADER_T;   

typedef struct
{
	BROWSER_U8  i_w_low;
	BROWSER_U8  i_w_high;
	BROWSER_U8  i_h_low;
	BROWSER_U8  i_h_high;
	BROWSER_U8  i_gt_size:3;//global table size
	BROWSER_U8  i_sort_flag:1;
	BROWSER_U8  i_color_res:3;//color resolution
	BROWSER_U8  i_gt_flag:1;//global table flag
	BROWSER_U8  i_background_color;
	BROWSER_U8  i_aspec_ratio;
}BROWSER_GIF_INFO_LSDES_T;   

typedef struct
{
	BROWSER_U8  i_x_low;
	BROWSER_U8  i_x_high;
	BROWSER_U8  i_y_low;
	BROWSER_U8  i_y_high;	
	BROWSER_U8  i_w_low;
	BROWSER_U8  i_w_high;
	BROWSER_U8  i_h_low;
	BROWSER_U8  i_h_high;
	BROWSER_U8  i_lt_size:3;//local table size
	BROWSER_U8  i_res:2;
	BROWSER_U8  i_sort_flag:1;
	BROWSER_U8  i_int_flag:1;//interlace flag
	BROWSER_U8  i_lt_flag:1;//local table flag
}BROWSER_GIF_INFO_IMGDES_T;   

typedef struct
{
	BROWSER_U8  i_block_size;
	BROWSER_U8  i_alpha_flag:1;//transparent color flag
	BROWSER_U8  i_user_in:1;
	BROWSER_U8  i_disposal_m:3;
	BROWSER_U8  i_res:3;
	BROWSER_U8  i_dy_time_low;
	BROWSER_U8  i_dy_time_high;
	BROWSER_U8  i_alpha_value;
	BROWSER_U8  i_block_tm;//block terminater
}BROWSER_GIF_INFO_GCE_T;   

typedef struct
{
	BROWSER_GIF_INFO_HEADER_T  i_header;
	BROWSER_GIF_INFO_LSDES_T  i_lsdes;
	BROWSER_GIF_INFO_IMGDES_T  i_imgdes;
	BROWSER_GIF_INFO_GCE_T  i_gce;
	BROWSER_U32  i_flag;
}BROWSER_GIF_INFO_T;   

typedef struct
{
	BROWSER_GIF_CORE_STEP_T  i_step;
	BROWSER_U32  i_flag;
	BROWSER_I32  i_error;
}BROWSER_GIF_STATUS_T;   

typedef struct
{
	BROWSER_U32  i_start;
	BROWSER_I32  i_size;
	BROWSER_U8  i_valid;
}BROWSER_GIF_CORE_BUFFER_T;   

typedef struct
{
	BROWSER_GIF_STATUS_T  i_status;
	BROWSER_GIF_LZW_T*  i_lzw_p;
	BROWSER_GIF_INFO_T*  i_info_p;
	BROWSER_GIF_CORE_BUFFER_T  i_buf;
}BROWSER_GIF_DEC_CORE_T;   

typedef struct
{
	BROWSER_GIF_DEC_CORE_T  i_core;
	BROWSER_GIF_IN_T  i_in;
	BROWSER_GIF_OUT_T  i_out;
}BROWSER_GIF_CONTEXT_T;   

typedef struct
{
	BROWSER_U8*  i_sc_buf_p;  //原始文件数据BUF
	BROWSER_I32  i_sc_len;  //文件长度 
	BROWSER_U8*  i_dec_buf_p;  //解码数据BUF
	BROWSER_I32  i_dec_len;  //BUF长度   
}BROWSER_GIF_CFG_T;   

typedef struct
{
	BROWSER_GIF_POSITION_T  i_pos;
}BROWSER_GIF_OUT_PARSER_T;   

typedef struct
{
	BROWSER_GIF_OUT_PARSER_T  i_out_par;
	BROWSER_GIF_CFG_T  i_cfg_par;
}BROWSER_GIF_PARSER_T;   

typedef struct
{
	BROWSER_U32  i_delay_ten_ms;      	//帧延时，单位0.01秒
	BROWSER_U8*  i_img_buf_p;   		//帧图像数据
	//struct brgif_frame *next;     		//下一帧
}BROWSER_GIF_FRAME_T;   

typedef struct
{
	BROWSER_U32  i_num;         
	BROWSER_GIF_RECT_T  i_rect;      
	BROWSER_U16  i_background_color;
}BROWSER_GIF_RESULT_T;  

/*GIF原始文件结构*/
typedef struct
{
	BROWSER_U8  *i_scbuf_p; 		//原始文件数据BUF
	BROWSER_U32  i_len;  			//文件长度   
	BROWSER_I32  i_x;
	BROWSER_I32  i_y;    				//图片显示的位置
} BROWSER_GIF_FILE_T;


/*以下结构用来提供GIF的宽高,和解码要用的缓存大小*/
typedef struct
{   
	BROWSER_U32  i_width;      		//GIF 宽
	BROWSER_U32  i_heigt;   			 //GIF 高
	BROWSER_U8  *i_dec_buffer_p;  	//解码用的BUFFER
	BROWSER_U32  i_dec_buffer_len; 	 //BUFFER 的长度   
} BROWSER_GIF_Resource_T;


/*这个函数用来完成GIF的帧数和GIF画布大小,结果在BROWSER_GIF_RESULT_T结构里，其需要0xc000左右的空间。*/
BROWSER_GIF_RESULT_T  Browser_Gif_Get_Frame_Num(BROWSER_GIF_FILE_T  *i_gif_file_p , BROWSER_GIF_Resource_T  *i_gif_resource_p);

/*这个函数用来完成GIF的第i_frame_index帧,由1开始算,结果在BROWSER_GIF_FRAME_T结构里，其需要0xc000 + 4倍画布显存的空间！*/
BROWSER_GIF_FRAME_T  Browser_Gif_Get_Frame(BROWSER_GIF_FILE_T  *i_gif_file_p, BROWSER_GIF_Resource_T  *i_gif_resource_p, BROWSER_U32  i_frame_index);

#endif

#endif

