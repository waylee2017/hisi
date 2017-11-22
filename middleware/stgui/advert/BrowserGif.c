#include  "BrowserGif.h"

#ifdef  BROWSER_SWITCH_FLAG


static BROWSER_U8  f_gif_file_signature[] = {"GIF"};
static BROWSER_U8  f_gif_file_version[][4] = {{"87a"},{"89a"}};

static BROWSER_U16  f_lzw_clear_code = 0;
static BROWSER_U16  f_lzw_end_code = 0;

static BROWSER_U32  *f_lzw_table = 0;
static BROWSER_U32  f_lzw_table_idx = 0;
static BROWSER_U32  f_lzw_code_size = 0;
static BROWSER_U32  *f_lzw_idx_pallete = 0;
static volatile BROWSER_U32 lzw_line_read = 0;
//static BROWSER_U16 (*write_code)(BROWSER_U32,BROWSER_U16,BROWSER_U32);

static BROWSER_U32  *f_lzw_stack_start = 0;
static BROWSER_U32  *f_lzw_stack_ptr = 0;

#if 0
BROWSER_GIF_RECT_T brgif_dec( BROWSER_GIF_PARSER_T *i_par_p,  BROWSER_GIF_RESULT_T *result)
{
     BROWSER_GIF_CONTEXT_T *text;
     BROWSER_GIF_FRAME_T *i_frame_p;
    i_frame_p = ( BROWSER_GIF_FRAME_T *)Browser_Os_Malloc_Plus(sizeof( BROWSER_GIF_FRAME_T));
    text = ( BROWSER_GIF_CONTEXT_T *)Browser_Os_Malloc_Plus(sizeof( BROWSER_GIF_CONTEXT_T));
    Browser_Os_Memset((void *)i_frame_p, 0, sizeof( BROWSER_GIF_FRAME_T));
    if(0 == text)
    {
        BR_PRINTF("malloc BROWSER_GIF_CONTEXT_T fail.\n");
        return BROWSER_GIF_FALSE;
    }
    Browser_Os_Memset(text,0,sizeof( BROWSER_GIF_CONTEXT_T));
    Browser_Gif_Init(i_par_p, text);
    brgif_core(text);
    result->i_rect.x = text->out.i_pos.x;
    result->i_rect.y = text->out.i_pos.y;
    result->i_rect.h = text->i_core.lzw->i_rect.h;
    result->i_rect.w = text->i_core.lzw->i_rect.w;
    result->num = 1;
    //result->i_frame_p = i_frame_p;
    i_frame_p->delay = 0xff;
    //i_frame_p->next = 0;
    i_frame_p->img_buf = (BROWSER_U8 *)text->i_core.lzw->i_line_buf;
    Browser_Os_Free_Plus(text);
        return BROWSER_GIF_TRUE;
}
#endif



static void Browser_Gif_Core_Set_Error(BROWSER_GIF_CONTEXT_T  *text ,BROWSER_I32  num)
{
	if (text != 0)
	{
		text->i_core.i_status.i_error= num;
	}
}

static void Browser_Gif_In_Init_Bit( BROWSER_GIF_IN_T *in)
{
	in->i_bit.i_bits= 0;
	in->i_bit.i_value= 0;
	in->i_sub.i_left= 0;
	in->i_sub.i_size= 0;
}

static BROWSER_I16 Browser_Gif_In_Next_Byte( BROWSER_GIF_IN_T *in)
{
	BROWSER_GIF_STRING_T *str = &in->i_str;
	BROWSER_U16 byte = 0;

	if (0 == str->i_left)
	{
		return -1;
	}

	byte = (BROWSER_U16)(*(str->i_read_p));

	return (BROWSER_I16)byte;	
}

static BROWSER_I16 Browser_Gif_In_Read_Byte( BROWSER_GIF_IN_T *in)
{
	BROWSER_I16 byte = 0;

	byte = Browser_Gif_In_Next_Byte(in);
	
	if(byte >= 0)
	{
		--(in->i_str.i_left);
		
		++(in->i_str.i_read_p);
	}
	
	return byte;
}

static BROWSER_GIF_RETURN_T Browser_Gif_Read_Sub_Size(BROWSER_GIF_IN_T *in)
{
	BROWSER_I16 byte = Browser_Gif_In_Read_Byte(in);
	
#if 1
	if(byte <= 0)
	{
		return BROWSER_GIF_FALSE;
	}
#endif

	in->i_sub.i_left = (BROWSER_U8)byte;

	in->i_sub.i_size = in->i_sub.i_left;
	
	//BR_PRINTF("sub block i_size %d \n",in->sub.left);
	
	return BROWSER_GIF_TRUE;
}

static BROWSER_I16 Browser_Gif_In_Read_Bits( BROWSER_GIF_IN_T *in, BROWSER_U8 num)
{
	BROWSER_GIF_BIT_T *bit = &in->i_bit;
	BROWSER_U16 data = 0;
	BROWSER_I16 byte_c = 0;

	while(1)
	{
		if(bit->i_bits < num)
		{
			if(0 == in->i_sub.i_left)
			{
				if(Browser_Gif_Read_Sub_Size(in))
					continue;
				else
					return -1;
			}
			else
			{		
				byte_c = Browser_Gif_In_Read_Byte(in);
				
				--(in->i_sub.i_left);
				
				if(byte_c < 0)
					return -1;
				
				bit->i_value &= ~(0xff << bit->i_bits);
				bit->i_value |= byte_c << bit->i_bits;
				bit->i_bits += 8;
				
				if(0 == in->i_sub.i_left)
					continue;
				
				byte_c = Browser_Gif_In_Read_Byte(in);
				
				--(in->i_sub.i_left);
				
				if(byte_c < 0)
					continue;
				
				bit->i_value &= ~(0xff<<bit->i_bits);
				bit->i_value |= byte_c<<bit->i_bits;		
				bit->i_bits += 8;
				
				continue;
			}
		}
		else
		{
			data = (BROWSER_U16)(bit->i_value & ((1<<num) - 1));
			bit->i_value >>= num;
			bit->i_bits -= num;
			
			break;
		}
	}
	
	return (BROWSER_I16)data;
}


static void Browser_Gif_In_Init( BROWSER_GIF_PARSER_T *par_p,  BROWSER_GIF_CONTEXT_T *text)
{
	BROWSER_GIF_IN_T  *in= &text->i_in;
//	BROWSER_GIF_CORE_BUFFER_T *i_buf = &(text->i_core.i_buf);
	in->i_str.i_start_p = (BROWSER_U8 *)par_p->i_cfg_par.i_sc_buf_p;
	in->i_str.i_read_p = in->i_str.i_start_p;
	in->i_str.i_size = par_p->i_cfg_par.i_sc_len;
	in->i_str.i_left = in->i_str.i_size;
}

static void Browser_Gif_Out_Init( BROWSER_GIF_PARSER_T *par_p,  BROWSER_GIF_CONTEXT_T *text)
{
	 BROWSER_GIF_OUT_T *out = &text->i_out;
	out->i_pos.i_x = par_p->i_out_par.i_pos.i_x;
	out->i_pos.i_y = par_p->i_out_par.i_pos.i_y;
	out->i_background_colour = 0xffff;
	out->i_image_buffer = 0;
	out->i_background_buffer = 0;
}

static BROWSER_GIF_RETURN_T Browser_Gif_Lzw_Init( BROWSER_GIF_CONTEXT_T *text)
{
	 BROWSER_GIF_CORE_BUFFER_T *i_buf = &(text->i_core.i_buf);
	BROWSER_I32 len = (sizeof( BROWSER_GIF_LZW_T) + 3) & ~3;

	if(i_buf->i_valid)
	{
		if((i_buf->i_size -= len) >= 0)
		{
			text->i_core.i_lzw_p = ( BROWSER_GIF_LZW_T *)i_buf->i_start;
			
			i_buf->i_start += len;
			
			Browser_Os_Memset((void *)text->i_core.i_lzw_p, 0, len);
		}
		else
			goto LZW_INIT_FAIL;

		return BROWSER_GIF_TRUE;	
	}

	LZW_INIT_FAIL:
	Browser_Gif_Core_Set_Error(text,-24);
	
	return BROWSER_GIF_FALSE;
}

static BROWSER_GIF_RETURN_T Browser_Gif_Info_Init( BROWSER_GIF_CONTEXT_T *text)
{
	BROWSER_GIF_CORE_BUFFER_T *i_buf = &(text->i_core.i_buf);
	BROWSER_I32 len = (sizeof( BROWSER_GIF_INFO_T) + 3) & ~3;
	
	if(i_buf->i_valid)
	{
		if((i_buf->i_size -= len) >= 0)
		{
			text->i_core.i_info_p = ( BROWSER_GIF_INFO_T *)i_buf->i_start;
			
			i_buf->i_start += len;
			
			Browser_Os_Memset((void *)text->i_core.i_info_p, 0, len);

			return BROWSER_GIF_TRUE;
		}
	}

	return BROWSER_GIF_FALSE;
}


static void Browser_Gif_Init(BROWSER_GIF_PARSER_T *i_par_p, BROWSER_GIF_CONTEXT_T *text)
{
	BROWSER_GIF_CORE_BUFFER_T *i_buf = &(text->i_core.i_buf);
	
	i_buf->i_start = (BROWSER_U32)i_par_p->i_cfg_par.i_dec_buf_p;
	
	i_buf->i_size = i_par_p->i_cfg_par.i_dec_len;
	
	i_buf->i_valid = 1;
	
	Browser_Gif_In_Init(i_par_p, text);
	
	Browser_Gif_Out_Init(i_par_p, text);
	
	Browser_Gif_Lzw_Init(text);
	
	Browser_Gif_Info_Init(text);
}

static  void Browser_Gif_Rd_Plt(BROWSER_U8 *plt, BROWSER_GIF_IN_T *in,BROWSER_I32 num) 
{	
	BROWSER_I32 i = 0;
	BROWSER_U16 RGB16 = 0,R = 0, G = 0, B = 0;
	
	for(; i < num; ++i)
	{
		R = (BROWSER_U16)Browser_Gif_In_Read_Byte(in);
		
		G = (BROWSER_U16)Browser_Gif_In_Read_Byte(in);
		
		B = (BROWSER_U16)Browser_Gif_In_Read_Byte(in);
		
		RGB16 = 0x8000 | (B>>3) | ((G>>3)<<5) | ((R>>3)<<10);
		
		*(BROWSER_U16 *)plt = RGB16;
		
		*(BROWSER_U16 *)(plt + 2) = 0;
		
		plt += 4;
	}	
}

static  BROWSER_GIF_RETURN_T Browser_Gif_Header( BROWSER_GIF_CONTEXT_T *text)
{
	 BROWSER_GIF_IN_T *in = &text->i_in;
	 BROWSER_GIF_INFO_HEADER_T *header = &(text->i_core.i_info_p->i_header);

	header->i_sig0= (BROWSER_U8)Browser_Gif_In_Read_Byte(in);
	header->i_sig1= (BROWSER_U8)Browser_Gif_In_Read_Byte(in);
	header->i_sig2= (BROWSER_U8)Browser_Gif_In_Read_Byte(in);
	header->i_ver0= (BROWSER_U8)Browser_Gif_In_Read_Byte(in);
	header->i_ver1= (BROWSER_U8)Browser_Gif_In_Read_Byte(in);
	header->i_ver2= (BROWSER_U8)Browser_Gif_In_Read_Byte(in);
	
	if(Browser_Gif_In_Next_Byte(in) < 0)
		goto HEADER_FAIL;
	
	if(header->i_sig0!= f_gif_file_signature[0] || header->i_sig1!= f_gif_file_signature[1]\
		|| header->i_sig2!= f_gif_file_signature[2])
	{
		goto HEADER_FAIL;
	}
	
	if(header->i_ver0!= f_gif_file_version[0][0] || header->i_ver1!= f_gif_file_version[0][1]\
		|| header->i_ver2!= f_gif_file_version[0][2])
	{
		if(header->i_ver0!= f_gif_file_version[1][0] || header->i_ver1!= f_gif_file_version[1][1]\
			|| header->i_ver2!= f_gif_file_version[1][2])
			goto HEADER_FAIL;
	}
	
	return BROWSER_GIF_TRUE;
	
HEADER_FAIL:
	return BROWSER_GIF_FALSE;
}


static  BROWSER_GIF_RETURN_T  Browser_Gif_Lsdes( BROWSER_GIF_CONTEXT_T *text,BROWSER_U8 preflag)
{
	BROWSER_GIF_IN_T *in = &text->i_in;
	BROWSER_GIF_LZW_T *lzw = text->i_core.i_lzw_p;
	BROWSER_GIF_CORE_BUFFER_T *i_buf = &(text->i_core.i_buf);
	BROWSER_GIF_INFO_LSDES_T *lsdes = &(text->i_core.i_info_p->i_lsdes);
	BROWSER_GIF_OUT_T *out = &text->i_out;
	BROWSER_I32 len = 0;
	BROWSER_U8 byte = 0;
	BROWSER_I32 gt_size = 0;
//	BROWSER_I32 i = 0;

	out->i_background_colour= 0xffff;//0x8000;

	lsdes->i_w_low= (BROWSER_U8)Browser_Gif_In_Read_Byte(in);
	lsdes->i_w_high= (BROWSER_U8)Browser_Gif_In_Read_Byte(in);
	lsdes->i_h_low= (BROWSER_U8)Browser_Gif_In_Read_Byte(in);
	lsdes->i_h_high= (BROWSER_U8)Browser_Gif_In_Read_Byte(in);
	byte = (BROWSER_U8)Browser_Gif_In_Read_Byte(in);
	lsdes->i_background_color= (BROWSER_U8)Browser_Gif_In_Read_Byte(in);
	lsdes->i_aspec_ratio= (BROWSER_U8)Browser_Gif_In_Read_Byte(in);

	if(Browser_Gif_In_Next_Byte(in) < 0)
	goto LSDES_FAIL;

	lsdes->i_gt_flag = byte>>7;
	lsdes->i_sort_flag = (byte>>3)&1;
	lsdes->i_color_res = (byte>>4)&7;

	if(lsdes->i_gt_flag)
	{
	lsdes->i_gt_size = byte&7;

	gt_size = 1<<(lsdes->i_gt_size+ 1);

	lzw->i_pallete.i_num = gt_size;

	Browser_Gif_Rd_Plt((BROWSER_U8 *)lzw->i_pallete.i_global_abs_pal_p, in, gt_size);

	out->i_background_colour = (BROWSER_U16)(*(lzw->i_pallete.i_global_abs_pal_p + lsdes->i_background_color));

	if(Browser_Gif_In_Next_Byte(in) < 0)
	goto LSDES_FAIL;

	//text->out->update = 1;
	}


	if((BROWSER_U16)((lsdes->i_w_high << 8) | lsdes->i_w_low) > BROWSER_GIF_MAX_WIDTH \
	|| (BROWSER_U16)((lsdes->i_h_high << 8) | lsdes->i_h_low) > BROWSER_GIF_MAX_HEIGHT)
	{
	goto LSDES_FAIL;
	}

	if(preflag)
	{
	lzw->i_line_buf = 0;

	return BROWSER_GIF_TRUE;
	}

	len =  (lsdes->i_w_high<<8) | lsdes->i_w_low;

	len = (len + 3) & ~3;

	lzw->i_pixel_pitch = len;

	lzw->i_img_pitch= len<<1; 
	len = lzw->i_img_pitch * ((lsdes->i_h_high << 8) | lsdes->i_h_low);

	if (i_buf->i_size< len)
	{
	goto LSDES_FAIL;
	}

	out->i_rect.i_x = 0;
	out->i_rect.i_y = 0;
	out->i_rect.i_w = (lsdes->i_w_high << 8) | lsdes->i_w_low;
	out->i_rect.i_h = (lsdes->i_h_high << 8) | lsdes->i_h_low;
	out->i_image_buffer = i_buf->i_start;
	i_buf->i_size -= len;
	i_buf->i_start += len;

	out->i_background_buffer = i_buf->i_start;
	i_buf->i_size -= len;
	i_buf->i_start += len;	
	lzw->i_line_buf = i_buf->i_start;
	i_buf->i_size -= len;
	i_buf->i_start += len;	
	//Browser_Os_Memset((void *)lzw->i_line_buf,0,len);

	if(i_buf->i_size< 0)
	goto LSDES_FAIL;

	return BROWSER_GIF_TRUE;

	LSDES_FAIL:	
	return BROWSER_GIF_FALSE;
	}

static  BROWSER_GIF_RETURN_T  Browser_Gif_Imgdes( BROWSER_GIF_CONTEXT_T *text)
{
	BROWSER_GIF_IN_T *in = &text->i_in;
	BROWSER_GIF_INFO_IMGDES_T *imgdes = &(text->i_core.i_info_p->i_imgdes);	
	BROWSER_GIF_LZW_T *lzw = text->i_core.i_lzw_p;
	BROWSER_U8 byte = 0;
	int gt_size = 0,i = 0;
//	BROWSER_U16 RGB16 = 0,R = 0, G = 0, B = 0;

	imgdes->i_x_low = (BROWSER_U8)Browser_Gif_In_Read_Byte(in);
	imgdes->i_x_high = (BROWSER_U8)Browser_Gif_In_Read_Byte(in);
	imgdes->i_y_low = (BROWSER_U8)Browser_Gif_In_Read_Byte(in);
	imgdes->i_y_high = (BROWSER_U8)Browser_Gif_In_Read_Byte(in);
	imgdes->i_w_low = (BROWSER_U8)Browser_Gif_In_Read_Byte(in);
	imgdes->i_w_high = (BROWSER_U8)Browser_Gif_In_Read_Byte(in);
	imgdes->i_h_low = (BROWSER_U8)Browser_Gif_In_Read_Byte(in);
	imgdes->i_h_high = (BROWSER_U8)Browser_Gif_In_Read_Byte(in);
	byte = (BROWSER_U8)Browser_Gif_In_Read_Byte(in);

	if(Browser_Gif_In_Next_Byte(in) < 0)
	goto IMGDES_FAIL;

	{
	BROWSER_GIF_INFO_LSDES_T *lsdes = &(text->i_core.i_info_p->i_lsdes);		
	int img_x = imgdes->i_x_high<<8 | imgdes->i_x_low;
	int img_y = imgdes->i_y_high<<8 | imgdes->i_y_low;
	int img_w = imgdes->i_w_high<<8 | imgdes->i_w_low;
	int img_h = imgdes->i_h_high<<8 | imgdes->i_h_low;
	int des_w = lsdes->i_w_high<<8 | lsdes->i_w_low;
	int des_h = lsdes->i_h_high<<8 | lsdes->i_h_low;

	if((img_x + img_w > des_w)
	|| (img_y + img_h > des_h))
	{
	goto IMGDES_FAIL;
	}	

	lzw->i_rect.i_x = img_x;
	lzw->i_rect.i_y = img_y;
	lzw->i_rect.i_w = img_w;
	lzw->i_rect.i_h = img_h;
	}

	imgdes->i_lt_flag= byte>>7;
	imgdes->i_sort_flag= (byte>>5) & 1;
	imgdes->i_int_flag= (byte>>6) & 1;

	i = BROWSER_GIF_MAX_PALLETE_LEN;

	while(i--)
	{
	lzw->i_pallete.i_local_abs_pal_p[i] = lzw->i_pallete.i_global_abs_pal_p[i];
	}

	if(imgdes->i_lt_flag)
	{
	imgdes->i_lt_size= byte&7;

	gt_size = 1<<(imgdes->i_lt_size + 1);

	Browser_Gif_Rd_Plt((BROWSER_U8 *)lzw->i_pallete.i_local_abs_pal_p, in, gt_size);		

	if(Browser_Gif_In_Next_Byte(in) < 0)
	goto IMGDES_FAIL;
	}

	return BROWSER_GIF_TRUE;

	IMGDES_FAIL:
	return BROWSER_GIF_FALSE;
	}



static  BROWSER_GIF_RETURN_T  Browser_Gif_Gce( BROWSER_GIF_CONTEXT_T *text)
{
	 BROWSER_GIF_IN_T *in = &text->i_in;
	 BROWSER_GIF_INFO_GCE_T *gce = &(text->i_core.i_info_p->i_gce);
	BROWSER_U8 byte = 0;

	gce->i_block_size = (BROWSER_U8)Browser_Gif_In_Read_Byte(in);
	byte = (BROWSER_U8)Browser_Gif_In_Read_Byte(in);
	gce->i_dy_time_low = (BROWSER_U8)Browser_Gif_In_Read_Byte(in);
	gce->i_dy_time_high = (BROWSER_U8)Browser_Gif_In_Read_Byte(in);
	gce->i_alpha_value = (BROWSER_U8)Browser_Gif_In_Read_Byte(in);
	gce->i_block_tm = (BROWSER_U8)Browser_Gif_In_Read_Byte(in);
	
	if(Browser_Gif_In_Next_Byte(in) < 0)
		goto GCE_FAIL;
	
	gce->i_alpha_flag = byte & 1;
	gce->i_user_in = (byte>>1) & 1;
	gce->i_disposal_m = (byte>>2) & 7;
	
	if(BROWSER_GIF_BLOCK_TER_FLAG != gce->i_block_tm)
		goto GCE_FAIL;
	
	return BROWSER_GIF_TRUE;
	
GCE_FAIL:
	return BROWSER_GIF_FALSE;
}



static  BROWSER_GIF_RETURN_T  Browser_Gif_Find_Imgdes( BROWSER_GIF_CONTEXT_T *text)
{
	BROWSER_GIF_IN_T *in = &text->i_in;
//	BROWSER_GIF_INFO_T *info = text->i_core.i_info_p;
//	BROWSER_GIF_INFO_IMGDES_T *imgdes = &info->i_imgdes;
	BROWSER_U8 indicator = 0;
	BROWSER_U8 ext_lable = 0;
//	BROWSER_U8 byte = 0;
	int ext_len = 0;
	int i = 0;

	IMGDES_BEGIN:
	indicator = (BROWSER_U8)Browser_Gif_In_Read_Byte(in);

	switch (indicator)
	{
	case BROWSER_GIF_FILE_TRAILER:
	goto FIND_IMGDES_FAIL;
	case BROWSER_GIF_IMAGE_SEPARATOR:
	if(Browser_Gif_Imgdes(text))
	break;	
	else
	goto FIND_IMGDES_FAIL;
	case BROWSER_GIF_EXT_INTRODUCER:
	ext_lable = (BROWSER_U8)Browser_Gif_In_Read_Byte(in);

	if(BROWSER_GIF_GRAPHIC_CTRL == ext_lable)
	{
	if(Browser_Gif_Gce(text))
	text->i_core.i_status.i_flag |= BROWSER_GIF_INFO_GCE;
	goto IMGDES_BEGIN;
	}
	else
	{
	do
	{
	ext_len = Browser_Gif_In_Read_Byte(in);

	if(ext_len <= 0)
	break;

	for(i = 0;i < ext_len; ++i)
	Browser_Gif_In_Read_Byte(in);	

	}while(1);
	}
	goto IMGDES_BEGIN;
	default:			
	while(1)
	{
	if(BROWSER_GIF_BLOCK_TER_FLAG == indicator)
	goto IMGDES_BEGIN;
	else
	{
	if(Browser_Gif_In_Next_Byte(in) < 0)	
	{
	goto FIND_IMGDES_FAIL;
	}

	indicator = (BROWSER_U8)Browser_Gif_In_Read_Byte(in);
	}
	}		
	}

	return BROWSER_GIF_TRUE;

	FIND_IMGDES_FAIL:		

	text->i_core.i_status.i_flag |= BROWSER_GIF_END_FILE_STR;

	return BROWSER_GIF_FALSE;
	}

static BROWSER_GIF_RETURN_T Browser_Gif_Info_Parse( BROWSER_GIF_CONTEXT_T *text,BROWSER_U8 preflag)
{
	 BROWSER_GIF_INFO_T *info = text->i_core.i_info_p;
	 BROWSER_GIF_DEC_CORE_T *i_core = &text->i_core;
	 BROWSER_GIF_STATUS_T *i_status = &i_core->i_status;

INFO_BEGIN:
	if(!(i_status->i_flag& BROWSER_GIF_INFO_HEADER))
	{
		Browser_Os_Memset((void *)info,0,sizeof( BROWSER_GIF_INFO_T));
		
		if(Browser_Gif_Header(text))
		{            
			i_status->i_flag |= BROWSER_GIF_INFO_HEADER;
			if(Browser_Gif_Lsdes(text, preflag))
			{
				i_status->i_flag |= BROWSER_GIF_INFO_LSDES;
				
				goto INFO_BEGIN;
			}
		}	
		Browser_Gif_Core_Set_Error(text,-21);
		return BROWSER_GIF_FALSE;
	}
	else
	{
		if(Browser_Gif_Find_Imgdes(text))
			i_status->i_flag|= BROWSER_GIF_INFO_IMGDES;
	}	
	return (i_status->i_flag & BROWSER_GIF_END_FILE_STR) ? BROWSER_GIF_FALSE : BROWSER_GIF_TRUE;
}

static  void Browser_Gif_Brlzw_First_Stream( BROWSER_GIF_LZW_T *lzw)
{
	f_lzw_code_size = lzw->i_min_code_size;
	f_lzw_clear_code = 1<<(f_lzw_code_size- 1);
	f_lzw_end_code =  f_lzw_clear_code + 1;
	f_lzw_table_idx =  f_lzw_clear_code + 2;
	f_lzw_idx_pallete = lzw->i_pallete.i_local_abs_pal_p;
	f_lzw_table = lzw->i_table_start_p;
}


static  void Browser_Gif_Table_Init(void)
{
	int cnt = 1<<(f_lzw_code_size - 1);
	int i = 0;

	Browser_Os_Memset((void *)f_lzw_table,0,BROWSER_GIF_TABLE_LEN<<2);
	Browser_Os_Memset((void *)f_lzw_stack_start,0,BROWSER_GIF_TABLE_LEN<<2);
	
	for(i = 0; i < cnt; ++i)
	{
		*(f_lzw_table + i) = i + 1;
	}
	
	*(f_lzw_table + i ) = 1;
}

static  BROWSER_GIF_RETURN_T  Browser_Gif_Bris_Code_Exist(BROWSER_U16 code)
{
	if(0 == (*(f_lzw_table + code) & 0xffff))
	{
		return BROWSER_GIF_FALSE;
	}
	
	return BROWSER_GIF_TRUE;
}

static  BROWSER_U16 Browser_Gif_Brfirst_Char(BROWSER_U16 code)
{
	BROWSER_U16 data = 0;
	
	while(1)
	{
		if(0 == (*(f_lzw_table + code)&0xffff0000))
		{
			data =  (BROWSER_U16)*(f_lzw_table + code);
			break;
		}
		else
			code = (*(f_lzw_table + code))>>16;
	}
	return data;
}


static  BROWSER_U16 Browser_Gif_Write_Code_16(BROWSER_U32 color, BROWSER_U16 code,BROWSER_U32 line)
{
	BROWSER_U16 num = 1;

	while(1)
	{
		*f_lzw_stack_ptr++ = (BROWSER_U32)((*(f_lzw_idx_pallete + ((BROWSER_U8)(*(f_lzw_table + code)) & 0xFFFF) - 1)));
		if(0 == (*(f_lzw_table + code)&0xffff0000))
			break;

		num++;
		code = (BROWSER_U16)((*(f_lzw_table + code))>>16);
	}
    if(lzw_line_read != 0)
    {
    	while(f_lzw_stack_ptr != f_lzw_stack_start)
    	{
    		*(BROWSER_U16 *)lzw_line_read = (BROWSER_U16)((*(--f_lzw_stack_ptr)) & 0xFFFF);
    		lzw_line_read += 2;
    	}
    }
    else
    {
        f_lzw_stack_ptr = f_lzw_stack_start;
    }
	return num;
}


static void Browser_Gif_Brlzw_Decompress( BROWSER_GIF_CONTEXT_T *text)
{
	BROWSER_GIF_LZW_T *lzw = text->i_core.i_lzw_p;
	BROWSER_GIF_IN_T *in = &(text->i_in);
	BROWSER_I32 width = lzw->i_rect.i_w;
	BROWSER_U16 code = 0, prefix = lzw->i_prefix, suffix = lzw->i_suffix, num = 0;

	if(text->i_core.i_info_p->i_gce.i_alpha_flag != 0 )
	{
	lzw->i_pallete.i_global_abs_pal_p[text->i_core.i_info_p->i_gce.i_alpha_value] &= 0x7FFF;
	lzw->i_pallete.i_local_abs_pal_p[text->i_core.i_info_p->i_gce.i_alpha_value] &= 0x7FFF;
	}

//	LZW_ENTER:	
	f_lzw_code_size = lzw->i_code_size;
	f_lzw_clear_code = lzw->i_clear_code;
	f_lzw_end_code = lzw->i_end_code;
	f_lzw_table_idx = lzw->i_table_idx;
	f_lzw_idx_pallete = lzw->i_pallete.i_local_abs_pal_p;
	f_lzw_table = lzw->i_table_start_p;
	lzw_line_read = lzw->i_line_read;
	f_lzw_stack_start = lzw->i_stack_start_p;
	f_lzw_stack_ptr = lzw->i_stack_ptr_p;

	do
	{
	if(!(lzw->i_flag & BROWSER_GIF_LZW_FIRST_STREAM))
	{
	//clear code operation and init list
	lzw->i_flag |= BROWSER_GIF_LZW_FIRST_STREAM;

	Browser_Gif_Brlzw_First_Stream(lzw);

	Browser_Gif_Table_Init();

	//read the first code and ready for the next lzw decoding
	prefix = code = Browser_Gif_In_Read_Bits(in,f_lzw_code_size);

	if(code ==  f_lzw_clear_code)
	{
	lzw->i_flag &= ~BROWSER_GIF_LZW_FIRST_STREAM;
	continue;	
	}
	else if(code <  f_lzw_clear_code)
	{
	num = Browser_Gif_Write_Code_16((BROWSER_U32)lzw,prefix, lzw_line_read);//lzw->line_read);

	if(1 == num)
	{
	//lzw->line_read += num;
	lzw->i_pixel_num += num;
	continue;
	}
	}

	Browser_Gif_Core_Set_Error(text,-22);
	return;
	}
	//read the code
	suffix = code = Browser_Gif_In_Read_Bits(in,f_lzw_code_size);

	if((BROWSER_I16)code < 0)
	{
	text->i_core.i_status.i_flag |= BROWSER_GIF_END_FILE_STR;
	return;
	}
	else if(code ==  f_lzw_clear_code)
	{
	lzw->i_flag&= ~BROWSER_GIF_LZW_FIRST_STREAM;

	continue;
	}
	else if(code ==  f_lzw_end_code)
	{
	text->i_core.i_status.i_flag |= BROWSER_GIF_END_IMG_DECODE;

	return;
	}

	prefix = (0 == prefix) ? f_lzw_clear_code : prefix;

	if(Browser_Gif_Bris_Code_Exist(code))
	{
	*(f_lzw_table+ f_lzw_table_idx) = prefix<<16;
	*(f_lzw_table + f_lzw_table_idx) |= Browser_Gif_Brfirst_Char(suffix);		
	}
	else
	{
	*(f_lzw_table+ f_lzw_table_idx) = prefix<<16;
	*(f_lzw_table + f_lzw_table_idx) |= Browser_Gif_Brfirst_Char(prefix);
	}

	//write the prefix into the line buffer
	num = Browser_Gif_Write_Code_16((BROWSER_U32)lzw,code,lzw_line_read);//lzw->line_read);

	//lzw->line_read += num;

	lzw->i_pixel_num+= num;

	++f_lzw_table_idx;

	if((f_lzw_table_idx == (BROWSER_U32)(1<<f_lzw_code_size)) && (BROWSER_GIF_MAX_BIT_LEN != f_lzw_code_size))
	{
		++f_lzw_code_size;
	}

	prefix = code;

//	LZW_EXIT:		
	//exit this decompress process when finish one line
	if(lzw->i_pixel_num >= width)
	{
	lzw->i_sum_lines++;

	//libc_printf("Lzw Line %d\n",lzw->sum_lines);

	lzw->i_pixel_num -= width;

	lzw->i_prefix = prefix;
	}
	}while(1);
	}

static int Browser_Gif_Get_Original_Line(int line, int total)
{
	int f1, f2, f3, f4;
	int idx;

	f1 = (total>>3);
	if((f1<<3) < total)
		f1++;

	if(line < f1)
	{
		idx = (line<<3);
		goto EXIT;
	}

	f2 = ((total - 4)>>3);
	if((f2<<3) < (total - 4))
		f2++;

	if(line < (f1 + f2))
	{
		idx = 4 + ((line - f1)<<3);
		goto EXIT;
	}

	f3 = ((total - 2)>>2);
	if((f3<<2) < (total - 2))
		f3++;

	if(line < (f1 + f2 + f3))
	{
		idx = 2 + ((line - f1 - f2)<<2);
		goto EXIT;
	}

	f4 = ((total - 1)>>1);
	if((f4<<1) < (total - 1))
		f4++;

	if(line < (f1 + f2 + f3 + f4))
	{
		idx = 1 + ((line - f1 - f2 - f3)<<1);
		goto EXIT;
	}

	return -1;
	
EXIT:
	return idx;
}

static void Browser_Gif_Brinterlace2normal_Image( BROWSER_GIF_CONTEXT_T *text)
{
	BROWSER_GIF_CORE_BUFFER_T *i_buf = &(text->i_core.i_buf);
	BROWSER_GIF_LZW_T *lzw = text->i_core.i_lzw_p;
//	BROWSER_GIF_OUT_T *out = &text->i_out;
	int h = lzw->i_sum_lines;
	char *out_buf = 0;
	char *in_buf = 0;	
	int pitch = 0;	
	int i = 0, j = 0;
	pitch = lzw->i_rect.i_w << 1;


	if(pitch * h <= i_buf->i_size)
	{
	BROWSER_U32 buf_start = i_buf->i_start;

	Browser_Os_Memcpy((void *)buf_start, (void *)(lzw->i_line_buf + pitch), pitch * (h - 1));

	in_buf = (void *)buf_start;

	for(i = 1; i < h; ++i)
	{
	j = Browser_Gif_Get_Original_Line(i, h);
	if(j < 0)
	{
	return;
	}

	out_buf = (void *)(lzw->i_line_buf + j * pitch);

	Browser_Os_Memcpy(out_buf , in_buf, pitch);

	in_buf += pitch;
	}
	}
	else
	{

	}
}

static BROWSER_GIF_RETURN_T Browser_Gif_Brcheck_Info_Integrity( BROWSER_GIF_DEC_CORE_T *i_core)
{
	return (BROWSER_GIF_INFO_MUST == (i_core->i_status.i_flag & BROWSER_GIF_INFO_MUST)) ? BROWSER_GIF_TRUE : BROWSER_GIF_FALSE;
}

static BROWSER_GIF_RETURN_T Browser_Gif_Lzw_Make_Ready( BROWSER_GIF_CONTEXT_T *text)
{
	BROWSER_GIF_LZW_T *lzw = text->i_core.i_lzw_p;
	BROWSER_GIF_INFO_T *info = text->i_core.i_info_p;
	BROWSER_I16 byte = 0;

	lzw->i_flag &= ~BROWSER_GIF_LZW_FIRST_STREAM;

	byte = (BROWSER_I16)Browser_Gif_In_Read_Byte(&text->i_in);

	if(byte < 0)	
	return BROWSER_GIF_FALSE;

	lzw->i_min_code_size = 1 + (BROWSER_U8)byte;
	lzw->i_line_read = lzw->i_line_buf;
	lzw->i_rect.i_w = (info->i_imgdes.i_w_high<<8) | info->i_imgdes.i_w_low;
	lzw->i_rect.i_h = (info->i_imgdes.i_h_high<<8) | info->i_imgdes.i_h_low;
	lzw->i_rect.i_x = (info->i_imgdes.i_x_high<<8) | info->i_imgdes.i_x_low;
	lzw->i_rect.i_y = (info->i_imgdes.i_y_high<<8) | info->i_imgdes.i_y_low;			
	lzw->i_sum_lines = 0;
	lzw->i_pixel_num = 0;
	lzw->i_flag = 0;

	lzw->i_stack_ptr_p = lzw->i_stack_start_p;

	return BROWSER_GIF_TRUE;
}

#if 0
static BROWSER_GIF_RETURN_T Browser_Gif_Lzw_Image_Done( BROWSER_GIF_CONTEXT_T *text)
{
	 BROWSER_GIF_LZW_T *lzw = text->i_core.i_lzw_p;
	
	if(lzw->i_rect.i_h<= lzw->i_sum_lines)
	{
		return BROWSER_GIF_TRUE;
	}
	
	return BROWSER_GIF_FALSE;
}
#endif


#if 0
void br_out_img( BROWSER_GIF_CONTEXT_T *text)
{
	 BROWSER_GIF_OUT_T *out = &text->out;
	 BROWSER_GIF_LZW_T *lzw = text->i_core.lzw;
    
	 osd_device *osd = ( osd_device *)out->osddev;
	 OSDRect i_rect;
	BROWSER_U8 region_id = (BROWSER_U8)out->regionID;
	VSCR source;


	i_rect.uLeft = out->i_pos.x + lzw->i_rect.x;
	i_rect.uTop = out->i_pos.y + lzw->i_rect.y;
	i_rect.uWidth = lzw->i_rect.w;
	i_rect.uHeight = lzw->i_rect.h;

	Browser_Os_Memset((void *)&source,0,sizeof(VSCR));
	source.vR.uLeft = i_rect.uLeft;
	source.vR.uTop = i_rect.uTop;
	source.vR.uWidth = lzw->i_rect.w;
	source.vR.uHeight = lzw->i_rect.h;
	source.lpbScr = (BROWSER_U8 *)lzw->i_line_buf;
	OSDDrv_RegionWrite((HANDLE)osd,region_id,&source,&i_rect);	
}
#endif

#if 0
void brgif_core( BROWSER_GIF_CONTEXT_T *text)
{
     BROWSER_GIF_DEC_CORE_T *i_core = &text->i_core;
	 BROWSER_GIF_IN_T *in = &text->in;
	 BROWSER_GIF_STATUS_T *i_status = &i_core->i_status;
	BROWSER_U8 img_done_flag = 0;
    CORE_BEGIN:
	switch(text->i_core.i_status.i_step)
	{
		case BROWSER_GIF_PARSE_INFO:
			if(Browser_Gif_Info_Parse(text))
			{
				if(Browser_Gif_Brcheck_Info_Integrity(i_core))
				{
					if(Browser_Gif_Lzw_Make_Ready(text))
					{
						i_status->i_step = BROWSER_GIF_LZW_IMAGE;		
						goto CORE_BEGIN;
					}
					else
						break;
				}
				Browser_Gif_Core_Set_Error(text,-25);
			}
			break;
		case BROWSER_GIF_LZW_IMAGE:
			// decode one sub data block and free the resource for another file if it exists
			Browser_Gif_Brlzw_Decompress(text);
			break;
		default:
			BR_ASSERT();
	}

	//check error
	if(text->i_core.i_status.error)
			return;

	//check flag and image finish
	/*if(i_status->flag & BROWSER_GIF_END_FILE_STR)
	{
		if(i_core->lzw->sum_lines > 0)
			img_done_flag = 1;
	}
	else if(Browser_Gif_Lzw_Image_Done(text) || (i_status->flag & BROWSER_GIF_END_IMG_DECODE))
	{
		BR_PRINTF("\n\n\nCurrent image %d\n",i_core->lzw->img_id);
			img_done_flag = 1;
	}*/
    if(i_status->flag & BROWSER_GIF_END_IMG_DECODE)
    {
            img_done_flag = 1;
    }
    
	if(img_done_flag)
	{
			img_done_flag = 0;
			if(i_core->info->imgdes.int_flag == 1)
			{
				BR_PRINTF("convert interlace image to normal\n");
				Browser_Gif_Brinterlace2normal_Image(text);
			}
			
			//br_out_img(text);
	}
CORE_EXIT:	
	return;
}
#endif

static BROWSER_U32 Browser_Gif_Frame_Num( BROWSER_GIF_CONTEXT_T *text)
{
	 BROWSER_GIF_DEC_CORE_T *i_core = &text->i_core;
	 BROWSER_GIF_IN_T *in = &text->i_in;
	 BROWSER_GIF_STATUS_T *i_status = &i_core->i_status;
	BROWSER_U32 frame_num = 0;
	
	while(1)
	{
		NUM_BEGIN:
			
		switch(text->i_core.i_status.i_step)
		{
			case BROWSER_GIF_PARSE_INFO:
				
				if(Browser_Gif_Info_Parse(text,1))
				{
					if(Browser_Gif_Brcheck_Info_Integrity(i_core))
					{
						if(Browser_Gif_Lzw_Make_Ready(text))
						{
							i_status->i_step= BROWSER_GIF_LZW_IMAGE;		
							
							goto NUM_BEGIN;
						}
						else
							break;
					}
					
					Browser_Gif_Core_Set_Error(text,-25);
				}
				
				break;
			
			case BROWSER_GIF_LZW_IMAGE:
				// decode one sub data block and free the resource for another file if it exists
				Browser_Gif_Brlzw_Decompress(text);
				
				break;
				
			default:
				break;
		}
		
		if(text->i_core.i_status.i_error)
			return 0;
		
		if(i_status->i_flag & BROWSER_GIF_END_IMG_DECODE)
		{
			i_status->i_flag &= ~(BROWSER_GIF_INFO_IMGDES | BROWSER_GIF_END_IMG_DECODE);
			i_status->i_step= BROWSER_GIF_PARSE_INFO;
			frame_num++;
			Browser_Gif_In_Init_Bit(in);
			continue;
		}
		
		if(i_status->i_flag& BROWSER_GIF_END_FILE_STR)
		{
			return frame_num;    
		}
	}
}


static BROWSER_GIF_RETURN_T  Browser_Gif_Get_Num( BROWSER_GIF_PARSER_T *i_par_p,  BROWSER_GIF_RESULT_T *result)
{
	 BROWSER_GIF_CONTEXT_T *text = 0;
	// BROWSER_GIF_FRAME_T *i_frame_p;
	//i_frame_p = ( BROWSER_GIF_FRAME_T *)Browser_Os_Malloc_Plus(sizeof( BROWSER_GIF_FRAME_T));
	text = ( BROWSER_GIF_CONTEXT_T *)Browser_Os_Malloc_Plus(sizeof( BROWSER_GIF_CONTEXT_T));

	if(text == 0)
	{
		return BROWSER_GIF_FALSE;
	}
	
	Browser_Os_Memset(text,0,sizeof( BROWSER_GIF_CONTEXT_T));
	
	Browser_Gif_Init(i_par_p, text);
	
	result->i_num= Browser_Gif_Frame_Num(text);
	result->i_rect.i_x = text->i_out.i_pos.i_x;
	result->i_rect.i_y = text->i_out.i_pos.i_y;
	result->i_rect.i_h = (text->i_core.i_info_p->i_lsdes.i_h_high << 8)|text->i_core.i_info_p->i_lsdes.i_h_low;
	result->i_rect.i_w = (text->i_core.i_info_p->i_lsdes.i_w_high << 8)|text->i_core.i_info_p->i_lsdes.i_w_low;
	result->i_background_color = text->i_out.i_background_colour;
	
	//result->i_frame_p = 0;
	Browser_Os_Free_Plus(text);
	
	return BROWSER_GIF_TRUE;
}

static void Browser_Gif_Fill_Rect(BROWSER_GIF_RECT_T *dec_rect, BROWSER_GIF_RECT_T *src_rect, BROWSER_U16 *i_dec_buf_p, BROWSER_U16 color)
{
	BROWSER_U32 i = 0;
	BROWSER_U32 j = 0;
	
	for(i = 0; i < src_rect->i_h; ++i)
	{
		for(j = 0; j < src_rect->i_w; ++j)
		{
			*(i_dec_buf_p + (src_rect->i_y + i) * dec_rect->i_w+ src_rect->i_x + j) = color;
		}
	}
}

static void Browser_Gif_Write_Rect(BROWSER_GIF_RECT_T *dec_rect, BROWSER_GIF_RECT_T *src_rect, BROWSER_U16 *i_dec_buf_p, BROWSER_U16 *src_buf)
{
	BROWSER_U32 i = 0;
	BROWSER_U32 j = 0;
	BROWSER_U16 color = 0;
	
	for(i = 0; i < src_rect->i_h; ++i)
	{
		for(j = 0; j < src_rect->i_w; ++j)
		{   
			color = *(src_buf + i * src_rect->i_w+ j);
			
			if(color&0x8000)
				*(i_dec_buf_p + (src_rect->i_y+ i) * dec_rect->i_w+ src_rect->i_x+ j) = color;
		}
	}

}

static void Browser_Gif_First_Frame( BROWSER_GIF_CONTEXT_T *text)
{
	BROWSER_GIF_OUT_T *out = &text->i_out;
	BROWSER_GIF_LZW_T *lzw = text->i_core.i_lzw_p;
#if 0  //ORIGINAL SOURCE CODE	
	BROWSER_GIF_INFO_GCE_T *gce = &text->i_core.i_info_p->i_gce;
#endif

	Browser_Gif_Fill_Rect(&out->i_rect, &out->i_rect, (BROWSER_U16 *)out->i_image_buffer, out->i_background_colour);
	Browser_Gif_Fill_Rect(&out->i_rect, &out->i_rect, (BROWSER_U16 *)out->i_background_buffer, out->i_background_colour);
	Browser_Gif_Write_Rect(&out->i_rect, &lzw->i_rect, (BROWSER_U16 *)out->i_image_buffer, (BROWSER_U16 *)lzw->i_line_buf);
	
#if 0  //ORIGINAL SOURCE CODE
	if(gce->i_disposal_m== 0)
	Browser_Gif_Write_Rect(&out->i_rect, &lzw->i_rect, (BROWSER_U16 *)out->i_background_buffer, (BROWSER_U16 *)lzw->i_line_buf);
#else //KING MODIFY IN 2013.12.19 for dynamic gif
	Browser_Gif_Write_Rect(&out->i_rect, &lzw->i_rect, (BROWSER_U16 *)out->i_background_buffer, (BROWSER_U16 *)lzw->i_line_buf);
#endif
}

static void Browser_Gif_Frame_Generate( BROWSER_GIF_CONTEXT_T *text)
{
	BROWSER_GIF_OUT_T *out = &text->i_out;
	BROWSER_GIF_LZW_T *lzw = text->i_core.i_lzw_p;

#if 0  //ORIGINAL SOURCE CODE	
	BROWSER_GIF_INFO_GCE_T *gce = &text->i_core.i_info_p->i_gce;
#endif

	Browser_Gif_Write_Rect(&out->i_rect, &out->i_rect, (BROWSER_U16 *)out->i_image_buffer, (BROWSER_U16 *)out->i_background_buffer);

	Browser_Gif_Write_Rect(&out->i_rect, &lzw->i_rect, (BROWSER_U16 *)out->i_image_buffer, (BROWSER_U16 *)lzw->i_line_buf);

#if 0  //ORIGINAL SOURCE CODE
	if(gce->i_disposal_m == 0)
		Browser_Gif_Write_Rect(&out->i_rect, &lzw->i_rect, (BROWSER_U16 *)out->i_background_buffer, (BROWSER_U16 *)lzw->i_line_buf);
	else if(gce->i_disposal_m <= 2)
		Browser_Gif_Fill_Rect(&out->i_rect, &lzw->i_rect, (BROWSER_U16 *)out->i_background_buffer, out->i_background_colour);
#else //KING MODIFY IN 2013.12.19 for dynamic gif
	Browser_Gif_Write_Rect(&out->i_rect, &lzw->i_rect, (BROWSER_U16 *)out->i_background_buffer, (BROWSER_U16 *)lzw->i_line_buf);
#endif
}

static BROWSER_GIF_RETURN_T Browser_Gif_Frame_Data( BROWSER_GIF_CONTEXT_T *text,BROWSER_U32 frame_idx)
{
	BROWSER_GIF_DEC_CORE_T *i_core = &text->i_core;
	BROWSER_GIF_IN_T *in = &text->i_in;
	BROWSER_GIF_STATUS_T *i_status = &i_core->i_status;
	BROWSER_U32 frame_num = 0;

	if(frame_idx == 0)
	{
		return  BROWSER_GIF_FALSE;
	}

	while(1)
	{
		NUM_BEGIN:
		switch(text->i_core.i_status.i_step)
		{
		case BROWSER_GIF_PARSE_INFO:
			if(Browser_Gif_Info_Parse(text,0))
			{
				if(Browser_Gif_Brcheck_Info_Integrity(i_core))
				{
					if(Browser_Gif_Lzw_Make_Ready(text))
					{
						i_status->i_step = BROWSER_GIF_LZW_IMAGE;		
						goto NUM_BEGIN;
					}
					else
						break;
				}
				
				Browser_Gif_Core_Set_Error(text,-25);
			}
			break;
		case BROWSER_GIF_LZW_IMAGE:
			// decode one sub data block and free the resource for another file if it exists
			Browser_Gif_Brlzw_Decompress(text);
			break;
		default:
			break;
		}

		if(text->i_core.i_status.i_error)
			return BROWSER_GIF_FALSE;

		if(i_status->i_flag& BROWSER_GIF_END_IMG_DECODE)
		{
			if(i_core->i_info_p->i_imgdes.i_int_flag== 1)
			{
				Browser_Gif_Brinterlace2normal_Image(text);
			}

			++frame_num;    

			i_status->i_flag &= ~(BROWSER_GIF_INFO_IMGDES | BROWSER_GIF_END_IMG_DECODE);

			i_status->i_step = BROWSER_GIF_PARSE_INFO;

			Browser_Gif_In_Init_Bit(in);

			if(frame_num == 1)
				Browser_Gif_First_Frame(text);
			else
				Browser_Gif_Frame_Generate(text);

			if(frame_num == frame_idx)
				return BROWSER_GIF_TRUE;

			continue;
		}

		if(i_status->i_flag& BROWSER_GIF_END_FILE_STR)
		{
			return BROWSER_GIF_FALSE;    
		}
	}

	return  BROWSER_GIF_FALSE;
}

static BROWSER_GIF_RETURN_T Browser_Gif_Get_Frame_Data( BROWSER_GIF_PARSER_T  *i_par_p,  BROWSER_GIF_FRAME_T  *i_frame_p, BROWSER_U32  frame_idx)
{
	BROWSER_GIF_CONTEXT_T *text = 0;

	if ((i_par_p == 0)
	|| (i_frame_p == 0))
	{
		return BROWSER_GIF_FALSE;
	}

	text = (BROWSER_GIF_CONTEXT_T *)Browser_Os_Malloc_Plus(sizeof(BROWSER_GIF_CONTEXT_T));
	
	if(text == 0)
	{
		return BROWSER_GIF_FALSE;
	}
	
	Browser_Os_Memset(text, 0, sizeof(BROWSER_GIF_CONTEXT_T));
	
	Browser_Gif_Init(i_par_p, text);
	
	if(!Browser_Gif_Frame_Data(text, frame_idx))
	{
		Browser_Os_Free_Plus(text);
		return BROWSER_GIF_FALSE;
	}
	
	i_frame_p->i_delay_ten_ms = (text->i_core.i_info_p->i_gce.i_dy_time_high << 8) | text->i_core.i_info_p->i_gce.i_dy_time_low;
	
	i_frame_p->i_img_buf_p = (BROWSER_U8*)text->i_out.i_image_buffer;
	
	//result->i_frame_p = 0;
	Browser_Os_Free_Plus(text);
	
	return BROWSER_GIF_TRUE;
}

BROWSER_GIF_RESULT_T  Browser_Gif_Get_Frame_Num(BROWSER_GIF_FILE_T  *i_gif_file_p , BROWSER_GIF_Resource_T  *i_gif_resource_p)
{
	BROWSER_GIF_RESULT_T  result;
	BROWSER_GIF_PARSER_T i_par_p;
	BROWSER_U32  dec = 0;
	BROWSER_U32  d_size = 0;

	Browser_Os_Memset((void *)&result, 0, sizeof(BROWSER_GIF_RESULT_T));

	if ((i_gif_file_p == 0)
	||(i_gif_resource_p == 0)
	||(i_gif_resource_p->i_dec_buffer_p == 0)
	||(i_gif_resource_p->i_dec_buffer_len == 0)
	)
	{
		return  result;
	}

	Browser_Os_Memset((void *)&i_par_p, 0, sizeof( BROWSER_GIF_PARSER_T));
	
	dec = (BROWSER_U32)i_gif_resource_p->i_dec_buffer_p;
	d_size = i_gif_resource_p->i_dec_buffer_len;

	dec = (dec + 3) & ~3;
	d_size -= dec - (BROWSER_U32)i_gif_resource_p->i_dec_buffer_p;

	i_par_p.i_out_par.i_pos.i_x = i_gif_file_p->i_x;
	i_par_p.i_out_par.i_pos.i_y = i_gif_file_p->i_y;

	i_par_p.i_cfg_par.i_sc_buf_p = i_gif_file_p->i_scbuf_p;
	i_par_p.i_cfg_par.i_sc_len = i_gif_file_p->i_len;
	i_par_p.i_cfg_par.i_dec_buf_p = (BROWSER_U8 *)dec;
	i_par_p.i_cfg_par.i_dec_len = d_size;

	if (Browser_Gif_Get_Num(&i_par_p,&result) == BROWSER_GIF_FALSE)
	{
		Browser_Os_Memset((void *)&result, 0, sizeof(BROWSER_GIF_RESULT_T));
	}

	return result;
}

BROWSER_GIF_FRAME_T  Browser_Gif_Get_Frame(BROWSER_GIF_FILE_T  *i_gif_file_p, BROWSER_GIF_Resource_T  *i_gif_resource_p, BROWSER_U32  i_frame_index)
{
	BROWSER_GIF_FRAME_T  i_frame_p;
	BROWSER_GIF_PARSER_T  i_par_p;
	BROWSER_U32  dec = 0;
	BROWSER_U32  d_size = 0;

	Browser_Os_Memset((void *)&i_frame_p, 0, sizeof(BROWSER_GIF_FRAME_T));

	if ((i_gif_file_p == 0)
	||(i_gif_resource_p == 0)
	||(i_gif_resource_p->i_dec_buffer_p == 0)
	||(i_gif_resource_p->i_dec_buffer_len == 0)
	)
	{
		return  i_frame_p;
	}

	Browser_Os_Memset((void *)&i_par_p, 0, sizeof( BROWSER_GIF_PARSER_T));
	
	dec = (BROWSER_U32)i_gif_resource_p->i_dec_buffer_p;
	d_size = i_gif_resource_p->i_dec_buffer_len;

	dec = (dec + 3) & ~3;
	d_size -= dec - (BROWSER_U32)i_gif_resource_p->i_dec_buffer_p;

	i_par_p.i_out_par.i_pos.i_x = i_gif_file_p->i_x;
	i_par_p.i_out_par.i_pos.i_y = i_gif_file_p->i_y;

	i_par_p.i_cfg_par.i_sc_buf_p = i_gif_file_p->i_scbuf_p;
	i_par_p.i_cfg_par.i_sc_len = i_gif_file_p->i_len;
	i_par_p.i_cfg_par.i_dec_buf_p = (BROWSER_U8 *)dec;
	i_par_p.i_cfg_par.i_dec_len = d_size;

	if (Browser_Gif_Get_Frame_Data(&i_par_p, &i_frame_p, i_frame_index) == BROWSER_GIF_FALSE)
	{
		Browser_Os_Memset((void *)&i_frame_p, 0, sizeof(BROWSER_GIF_FRAME_T));
	}
	
	return  i_frame_p;
}

BrowserGifContent_T  Browser_Gif_Decode_Content(BrowserGifPicture_T*  p_gif_picture_p)
{
	BrowserGifContent_T  gif_content;
	
	Browser_Os_Memset((void *)&gif_content, 0, sizeof(BrowserGifContent_T));
	
	if (p_gif_picture_p == 0)
	{
		return gif_content;
	}

	BROWSER_GIF_FILE_T  gif_file;
	BROWSER_GIF_Resource_T  gif_res;
	BROWSER_GIF_RESULT_T  gif_data;

	Browser_Os_Memset((void *)&gif_file, 0, sizeof(BROWSER_GIF_FILE_T));
	Browser_Os_Memset((void *)&gif_res, 0, sizeof(BROWSER_GIF_Resource_T));
	Browser_Os_Memset((void *)&gif_data, 0, sizeof(BROWSER_GIF_RESULT_T));
	
	gif_file.i_scbuf_p= p_gif_picture_p->i_gif_picture_buffer_p;
	gif_file.i_len= p_gif_picture_p->i_gif_picture_buffer_len;
	gif_file.i_x= 0;
	gif_file.i_y= 0;

	gif_res.i_dec_buffer_p= p_gif_picture_p->i_decode_buffer_p;
	gif_res.i_dec_buffer_len= p_gif_picture_p->i_decode_buffer_len;
	gif_res.i_heigt = p_gif_picture_p->i_gif_picture_heigt;
	gif_res.i_width = p_gif_picture_p->i_gif_picture_width;

	gif_data = Browser_Gif_Get_Frame_Num(&gif_file, &gif_res);

	gif_content.i_gif_background_color = gif_data.i_background_color;
	gif_content.i_gif_frame_num = gif_data.i_num;
	gif_content.i_gif_width = gif_data.i_rect.i_w;
	gif_content.i_gif_heigt = gif_data.i_rect.i_h;

	return  gif_content;
}

BrowserGifFrame_T  Browser_Gif_Decode_Frame(BrowserGifPicture_T*  p_gif_picture_p, BROWSER_U32  p_gif_frame_index)
{
	BrowserGifFrame_T  gif_frame;
	
	Browser_Os_Memset((void *)&gif_frame, 0, sizeof(BrowserGifFrame_T));
	
	if (p_gif_picture_p == 0)
	{
		return gif_frame;
	}

	BROWSER_GIF_FILE_T  gif_file;
	BROWSER_GIF_Resource_T  gif_res;
	BROWSER_GIF_FRAME_T  gif_frame_data;

	Browser_Os_Memset((void *)&gif_file, 0, sizeof(BROWSER_GIF_FILE_T));
	Browser_Os_Memset((void *)&gif_res, 0, sizeof(BROWSER_GIF_Resource_T));
	Browser_Os_Memset((void *)&gif_frame_data, 0, sizeof(BROWSER_GIF_FRAME_T));
	
	gif_file.i_scbuf_p= p_gif_picture_p->i_gif_picture_buffer_p;
	gif_file.i_len= p_gif_picture_p->i_gif_picture_buffer_len;
	gif_file.i_x= 0;
	gif_file.i_y= 0;

	gif_res.i_dec_buffer_p= p_gif_picture_p->i_decode_buffer_p;
	gif_res.i_dec_buffer_len= p_gif_picture_p->i_decode_buffer_len;
	gif_res.i_heigt = p_gif_picture_p->i_gif_picture_heigt;
	gif_res.i_width = p_gif_picture_p->i_gif_picture_width;

	gif_frame_data = Browser_Gif_Get_Frame(&gif_file, &gif_res, p_gif_frame_index);

	gif_frame.i_gif_frame_buf_p = gif_frame_data.i_img_buf_p;
	gif_frame.i_gif_frame_delay_ten_ms = gif_frame_data.i_delay_ten_ms;

	return  gif_frame;
}

#endif

