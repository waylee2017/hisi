#include "BrowserDataParser.h"
#include  "Browser.h"

#ifdef  BROWSER_SWITCH_FLAG

static BROWSER_U32  PageIDConvert(BROWSER_U8 Y1, BROWSER_U8 X1)
{
	BROWSER_U32  return_page_id = 0;
	BROWSER_U8  H = 0;
	BROWSER_U8  Q = 0;
	BROWSER_U8  W = 0;
	BROWSER_U8  Z = 0;
	BROWSER_U8  X1A = (X1 >> 4) & 0x0f;
	BROWSER_U8  X1B = (X1) & 0x0f;
	BROWSER_U8  Y1A = (Y1 >> 4) & 0x0f;
	BROWSER_U8  Y1B = (Y1) & 0x0f;

	if (((X1A >> 2) & 0x0f) == 0x00)
	{
		H = 0x03 - X1A;
	}
	else if (((X1A >> 2) & 0x0f) == 0x01)
	{
		H = 0x0b - X1A;
	}
	else if (((X1A >> 2) & 0x0f) == 0x02)
	{
		H = 0x13 - X1A;
	}
	else if (((X1A >> 2) & 0x0f) == 0x03)
	{
		H = 0x1b - X1A;
	}

	if (((X1B & 0x01) == 0x00) && (((X1B >> 2) & 0x01) == 0x00))
	{
		Q = 0x0A - X1B;
	}
	else if (((X1B & 0x01) == 0x01) && (((X1B >> 2) & 0x01) == 0x00))
	{
		Q = 0x0C - X1B;
	}
	else if (((X1B & 0x01) == 0x00) && (((X1B >> 2) & 0x01) == 0x01))
	{
		Q = 0x12 - X1B;
	}
	else if (((X1B & 0x01) == 0x01) && (((X1B >> 2) & 0x01) == 0x01))
	{
		Q = 0x14 - X1B;
	}

	if (((Y1A >> 2) & 0x0f) == 0x00)
	{
		W = 0x03 - Y1A;
	}
	else if (((Y1A >> 2) & 0x0f) == 0x01)
	{
		W = 0x0b - Y1A;
	}
	else if (((Y1A >> 2) & 0x0f) == 0x02)
	{
		W = 0x13 - Y1A;
	}
	else if (((Y1A >> 2) & 0x0f) == 0x03)
	{
		W = 0x1b - Y1A;
	}

	if (((Y1B & 0x01) == 0x00) && (((Y1B >> 2) & 0x01) == 0x00))
	{
		Z = 0x0A - Y1B;
	}
	else if (((Y1B & 0x01) == 0x01) && (((Y1B >> 2) & 0x01) == 0x00))
	{
		Z = 0x0C - Y1B;
	}
	else if (((Y1B & 0x01) == 0x00) && (((Y1B >> 2) & 0x01) == 0x01))
	{
		Z = 0x12 - Y1B;
	}
	else if (((Y1B & 0x01) == 0x01) && (((Y1B >> 2) & 0x01) == 0x01))
	{
		Z = 0x14 - Y1B;
	}

	return_page_id = (((BROWSER_U32)(H << 12) & 0xf000) |((BROWSER_U32)(Q << 8) & 0x0f00) | ((BROWSER_U32)(W << 4) & 0x00f0) | ((BROWSER_U32)Z & 0x000f));

	return  return_page_id;
}

static BROWSER_U8  WidgetIndexConvert(BROWSER_U8 X)
{
	BROWSER_U8  return_index_value = 0;
	BROWSER_U8  W = 0;
	BROWSER_U8  Z = 0;
	BROWSER_U8  X1 = (X >> 4) & 0x0f;
	BROWSER_U8  X2 = (X) & 0x0f;

	W = 0x03 - X1;

	if (((X2 & 0x01) == 0x00) && (((X2 >> 2) & 0x01) == 0x00))
	{
		Z = 0x0A - X2;
	}
	else if (((X2 & 0x01) == 0x01) && (((X2 >> 2) & 0x01) == 0x00))
	{
		Z = 0x0C - X2;
	}
	else if (((X2 & 0x01) == 0x00) && (((X2 >> 2) & 0x01) == 0x01))
	{
		Z = 0x12 - X2;
	}
	else if (((X2 & 0x01) == 0x01) && (((X2 >> 2) & 0x01) == 0x01))
	{
		Z = 0x14 - X2;
	}


	return_index_value = ((BROWSER_U8)(W << 4) & 0xf0) | ((BROWSER_U8)Z & 0x0f);

	return  return_index_value;
}

static BROWSER_U8  ColourConvert(BROWSER_U8 X)
{
	BROWSER_U8  return_colour_value = 0;
	BROWSER_U8  W = 0;
	BROWSER_U8  Z = 0;
	BROWSER_U8  X1 = (X >> 4) & 0x0f;
	BROWSER_U8  X2 = (X) & 0x0f;

	if ((X1 | 0x0D) == 0x0D)
	{
		if ((X1 & 0x08) == 0x08)
		{
			W = 0x15 - X1;
		}
		else
		{
			W = 0x05 - X1;
		}
	}
	else
	{
		if ((X1 & 0x08) == 0x08)
		{
			W = 0x19 - X1;
		}
		else
		{
			W = 0x09 - X1;
		}
	}

	if (X2 <= 0x07)
	{
		Z = 0x07 - X2;
	}
	else
	{
		Z = 0x17 - X2;
	}

	return_colour_value = ((BROWSER_U8)(W << 4) & 0xf0) | ((BROWSER_U8)Z & 0x0f);

	return  return_colour_value;
}
#if 0
static BROWSER_U32  ColourCombine(BROWSER_U8 A, BROWSER_U8 R, BROWSER_U8 G, BROWSER_U8 B)
{
	BROWSER_U32  return_colour_value = 0;
	BROWSER_U8 a_value = ColourConvert(A);
	BROWSER_U8 r_value = ColourConvert(R);
	BROWSER_U8 g_value = ColourConvert(G);
	BROWSER_U8 b_value = ColourConvert(B);

	return_colour_value = ((BROWSER_U32)(a_value << 24) & 0xff000000) | ((BROWSER_U32)(r_value << 16) & 0x00ff0000) | ((BROWSER_U32)(g_value << 8) & 0x0000ff00) | ((BROWSER_U32)b_value & 0x000000ff);

	return  return_colour_value;
}
#endif
static BROWSER_U32  CoordinateConvert(BROWSER_U8 Y1, BROWSER_U8 X1)
{
	BROWSER_U32  return_coordinate_value = 0;
	BROWSER_U8  H = 0;
	BROWSER_U8  Q = 0;
	BROWSER_U8  W = 0;
	BROWSER_U8  Z = 0;
	BROWSER_U8  X1A = (X1 >> 4) & 0x0f;
	BROWSER_U8  X1B = (X1) & 0x0f;
	BROWSER_U8  Y1A = (Y1 >> 4) & 0x0f;
	BROWSER_U8  Y1B = (Y1) & 0x0f;

	if ((X1A | 0x0D) == 0x0D)
	{
		if ((X1A & 0x08) == 0x08)
		{
			H = 0x15 - X1A;
		}
		else
		{
			H = 0x05 - X1A;
		}
	}
	else
	{
		if ((X1A & 0x08) == 0x08)
		{
			H = 0x19 - X1A;
		}
		else
		{
			H = 0x09 - X1A;
		}
	}

	if (X1B <= 0x07)
	{
		Q = 0x07 - X1B;
	}
	else
	{
		Q = 0x17 - X1B;
	}

	if ((Y1A | 0x0D) == 0x0D)
	{
		if ((Y1A & 0x08) == 0x08)
		{
			W = 0x15 - Y1A;
		}
		else
		{
			W = 0x05 - Y1A;
		}
	}
	else
	{
		if ((Y1A & 0x08) == 0x08)
		{
			W = 0x19 - Y1A;
		}
		else
		{
			W = 0x09 - Y1A;
		}
	}

	if (Y1B <= 0x07)
	{
		Z = 0x07 - Y1B;
	}
	else
	{
		Z = 0x17 - Y1B;
	}

	return_coordinate_value = ((BROWSER_U32)(H << 12) & 0xf000) |((BROWSER_U32)(Q << 8) & 0x0f00) | ((BROWSER_U32)(W << 4) & 0x00f0) | ((BROWSER_U32)Z & 0x000f);

	return  return_coordinate_value;
}

#ifdef  BROWSER_NAVIGATOR_FLAG

static void  BrowserDataWidgetRelease(BrowserWidget_T  *p_browser_widget_data_p,  BROWSER_U32  p_widget_num)
{
	if ((p_browser_widget_data_p != 0)
	&& (p_widget_num != 0))
	{
		int  i = 0;

		for (; i < p_widget_num; ++i)
		{
			if (p_browser_widget_data_p[i].i_string_p != 0)
			{
				Browser_Os_Free(p_browser_widget_data_p[i].i_string_p);
			}

			if (p_browser_widget_data_p[i].i_pic_path_string_p!= 0)
			{
				Browser_Os_Free(p_browser_widget_data_p[i].i_pic_path_string_p);
			}

			if (p_browser_widget_data_p[i].i_pic_data_p!= 0)
			{
				Browser_Os_Free(p_browser_widget_data_p[i].i_pic_data_p);
			}
		}

		Browser_Os_Memset(p_browser_widget_data_p, 0, sizeof(BrowserWidget_T) * p_widget_num);
	}

}

static void  BrowserDataRelease(BrowserData_T  *p_browser_data_p)
{
	if (p_browser_data_p != 0)
	{
		int  i = 0, k = 0;

		if (p_browser_data_p->i_page_p != 0)
		{
			for (; i < p_browser_data_p->i_page_num; ++i)
			{
				if (p_browser_data_p->i_page_p[i].i_widget_p != 0)
				{
					for (k = 0; k < p_browser_data_p->i_page_p[i].i_widget_num; ++k)
					{
						if (p_browser_data_p->i_page_p[i].i_widget_p[k].i_string_p != 0)
						{
							Browser_Os_Free(p_browser_data_p->i_page_p[i].i_widget_p[k].i_string_p);
						}

						if (p_browser_data_p->i_page_p[i].i_widget_p[k].i_pic_path_string_p!= 0)
						{
							Browser_Os_Free(p_browser_data_p->i_page_p[i].i_widget_p[k].i_pic_path_string_p);
						}

						if (p_browser_data_p->i_page_p[i].i_widget_p[k].i_pic_data_p!= 0)
						{
							Browser_Os_Free(p_browser_data_p->i_page_p[i].i_widget_p[k].i_pic_data_p);
						}
					}

					Browser_Os_Free(p_browser_data_p->i_page_p[i].i_widget_p);
				}
			}

			Browser_Os_Free(p_browser_data_p->i_page_p);
		}

		Browser_Os_Memset(p_browser_data_p, 0, sizeof(BrowserData_T));
	}
}

BROWSER_BOOLEAN_T  BrowserDataParser(BROWSER_U8  *p_data_p, BROWSER_U32 p_data_num, BrowserData_T  *p_browser_data_p)
{
	if ((p_data_p == 0)
	|| (p_data_num == 0)
	|| (p_browser_data_p == 0)
	)
	{
		return  BROWSER_FALSE;
	}

	// 释放原有数据
	BrowserDataRelease(p_browser_data_p);

	// 判断数据头是否以"zzdb"开始
	if ((p_data_p[0] == 0x7A)
	&& (p_data_p[1] == 0x7A)
	&& (p_data_p[2] == 0x64)
	&& (p_data_p[3] == 0x62))
	{
		BROWSER_U32  widget_offset = 0;
		BROWSER_U32  page_count = 0;
		BROWSER_U32  widget_count = 0;
		BROWSER_U32  widget_head_size = 0;	/*除第一个控件外，每个控件开头的前9个字节，这9个字节是否存在，需要看前一个控件是否存在图片，图片存在则当前控件的前8个字节将不存在*/
		BROWSER_U32  widget_tail_size = 4;
		BROWSER_U8  page_widget_index = 0;
		BROWSER_U32  page_widget_count = 0;
		BROWSER_U32  string_length = 0;
		BROWSER_BOOLEAN_T  next_widget_head_size_flag = BROWSER_FALSE;		//如果为TRUE，下一个控件开头为8个字节，否则为9个字节
		BrowserWidget_T  widget_max_p[0xff];
		int  i = 0;
		
		Browser_Os_Memset(widget_max_p, 0, (0xff * sizeof(BrowserWidget_T)));
		
		p_browser_data_p->i_height = ((BROWSER_U32)(p_data_p[5] << 8) & 0xff00) |((BROWSER_U32)(p_data_p[4] & 0x00ff));
		p_browser_data_p->i_width = ((BROWSER_U32)(p_data_p[7] << 8) & 0xff00) |((BROWSER_U32)(p_data_p[6] & 0x00ff));
		p_browser_data_p->i_page_num = (((BROWSER_U32)(p_data_p[9] << 8) & 0xff00) |((BROWSER_U32)(p_data_p[8] & 0x00ff))) + 1;
		p_browser_data_p->i_widget_total_num = ((BROWSER_U32)(p_data_p[13] << 8) & 0xff00) |((BROWSER_U32)(p_data_p[12] & 0x00ff));

		p_browser_data_p->i_page_p = (BrowserPage_T *)Browser_Os_Malloc(p_browser_data_p->i_page_num * sizeof(BrowserPage_T));

		if (p_browser_data_p->i_page_p != 0)
		{
			Browser_Os_Memset(p_browser_data_p->i_page_p, 0, (p_browser_data_p->i_page_num * sizeof(BrowserPage_T)));
		}
		else
		{
			BrowserDataRelease(p_browser_data_p);
			
			return  BROWSER_FALSE;
		}

		for (i = 0; i < (p_browser_data_p->i_page_num); ++i)
		{
			if (p_data_p[32 + (8 * i) + 4] == 0x00)
			{
				p_browser_data_p->i_page_p[i].i_play_service_flag = BROWSER_FALSE;/*不播放服务*/
			}
			else if (p_data_p[32 + (8 * i) + 4] == 0x01)
			{
				p_browser_data_p->i_page_p[i].i_play_service_flag = BROWSER_TRUE;/*播放服务*/
				
				p_browser_data_p->i_page_p[i].i_service_id = ((BROWSER_U16)(p_data_p[32 + (8 * i) + 1] << 8) & 0xff00) |((BROWSER_U16)(p_data_p[32 + (8 * i) + 0] & 0x00ff));

				p_browser_data_p->i_page_p[i].i_ts_id = ((BROWSER_U16)(p_data_p[32 + (8 * i) + 3] << 8) & 0xff00) |((BROWSER_U16)(p_data_p[32 + (8 * i) + 2] & 0x00ff));
			}
		}

		widget_offset = 32 + (8 * (p_browser_data_p->i_page_num));

		while (widget_count < p_browser_data_p->i_widget_total_num)
		{
			page_widget_index = WidgetIndexConvert(p_data_p[widget_offset + widget_head_size]);

			//统计PAGE控件总数
			if (page_widget_index == 0)
			{
				p_browser_data_p->i_page_p[page_count].i_page_id = page_count;

				//*********************
				#if 0
				if ((page_count == 426)
				|| (page_count == 427))
				{
					printf("page_count : %d   0x%x \n", page_count, widget_offset);
				}
				#endif
				//**********************

				/*通过已统计的控件数，保存到前一个PAGE结构中*/
				if (page_count > 0)
				{
					/*跳过没有任何控件的PAGE*/
					while ((page_count - 1) != widget_max_p[0].i_page_id)
					{
						++page_count;
					}
					
					p_browser_data_p->i_page_p[page_count - 1].i_widget_num = page_widget_count;

					p_browser_data_p->i_page_p[page_count - 1].i_widget_p = (BrowserWidget_T *)Browser_Os_Malloc(page_widget_count * sizeof(BrowserWidget_T));

					if (p_browser_data_p->i_page_p[page_count - 1].i_widget_p != 0)
					{
						Browser_Os_Memcpy(p_browser_data_p->i_page_p[page_count - 1].i_widget_p, widget_max_p, (page_widget_count * sizeof(BrowserWidget_T)));
					}
					else
					{
						BrowserDataWidgetRelease(widget_max_p, page_widget_count);
					
						BrowserDataRelease(p_browser_data_p);
						
						return  BROWSER_FALSE;
					}

					Browser_Os_Memset(widget_max_p, 0, (0xff * sizeof(BrowserWidget_T)));

					page_widget_count = 0;
				}

				++page_count;
			}

			widget_max_p[page_widget_count].i_index = page_widget_index;

			if (((p_data_p[widget_offset + widget_head_size + 1] >> 4) & 0x03) == 0x03)
			{
				widget_max_p[page_widget_count].i_string_align = BROWSER_STRING_LEFT_ALIGN;
			}
			else if (((p_data_p[widget_offset + widget_head_size + 1] >> 4) & 0x03) == 0x02)
			{
				widget_max_p[page_widget_count].i_string_align = BROWSER_STRING_RIGHT_ALIGN;
			}
			else if (((p_data_p[widget_offset + widget_head_size + 1] >> 4) & 0x03) == 0x01)
			{
				widget_max_p[page_widget_count].i_string_align = BROWSER_STRING_CENTER_ALIGN;
			}

			if (((p_data_p[widget_offset + widget_head_size + 1] >> 4) & 0x08) == 0x08)
			{
				widget_max_p[page_widget_count].i_bg_colour_disable_flag = BROWSER_TRUE;
			}
			else 
			{
				widget_max_p[page_widget_count].i_bg_colour_disable_flag = BROWSER_FALSE;
			}

			if (((p_data_p[widget_offset + widget_head_size + 1]) & 0x01) == 0x01)
			{
				widget_max_p[page_widget_count].i_link_flag = BROWSER_TRUE;
			}
			else 
			{
				widget_max_p[page_widget_count].i_link_flag = BROWSER_FALSE;
			}

			if (((p_data_p[widget_offset + widget_head_size + 1]) & 0x06) == 0x02)
			{
				widget_max_p[page_widget_count].i_string_font_size = BROWSER_FONT_26;
			}
			else if (((p_data_p[widget_offset + widget_head_size + 1]) & 0x06) == 0x00)
			{
				widget_max_p[page_widget_count].i_string_font_size = BROWSER_FONT_32;
			}
			else if (((p_data_p[widget_offset + widget_head_size + 1]) & 0x06) == 0x06)
			{
				widget_max_p[page_widget_count].i_string_font_size = BROWSER_FONT_38;
			}

			/*获取图片数据标记*/
			if (((p_data_p[widget_offset + widget_head_size + 2] >> 4) & 0x01) == 0x01)
			{
				widget_max_p[page_widget_count].i_pic_flag = BROWSER_FALSE;
			}
			else
			{
				widget_max_p[page_widget_count].i_pic_flag = BROWSER_TRUE;
			}

			if (((p_data_p[widget_offset + widget_head_size + 2] >> 4) & 0x0c) == 0x00)
			{
				widget_max_p[page_widget_count].i_string_dynamic_mode = BROWSER_STRING_DYNAMIC_NONE;
			}
			else if (((p_data_p[widget_offset + widget_head_size + 2] >> 4) & 0x0c) == 0x04)
			{
				widget_max_p[page_widget_count].i_string_dynamic_mode = BROWSER_STRING_DYNAMIC_HSCROLL;
			}
			else if (((p_data_p[widget_offset + widget_head_size + 2] >> 4) & 0x0c) == 0x08)
			{
				widget_max_p[page_widget_count].i_string_dynamic_mode = BROWSER_STRING_DYNAMIC_VSCROLL;
			}
			else if (((p_data_p[widget_offset + widget_head_size + 2] >> 4) & 0x0c) == 0x0c)
			{
				widget_max_p[page_widget_count].i_string_dynamic_mode = BROWSER_STRING_DYNAMIC_VSCROLL2;
			}

			if (widget_max_p[page_widget_count].i_link_flag == BROWSER_TRUE)
			{
				if (((p_data_p[widget_offset + widget_head_size + 2]) & 0x0f) == 0x0a)
				{
					widget_max_p[page_widget_count].i_link_func = BROWSER_LINK_FUNC_NONE;
				}
				else if (((p_data_p[widget_offset + widget_head_size + 2]) & 0x0f) == 0x0b)
				{
					widget_max_p[page_widget_count].i_link_func = BROWSER_LINK_FUNC_WATCH_TV;
				}
				else if (((p_data_p[widget_offset + widget_head_size + 2]) & 0x0f) == 0x08)
				{
					widget_max_p[page_widget_count].i_link_func = BROWSER_LINK_FUNC_LISTEN_RADIO;
				}
				else if (((p_data_p[widget_offset + widget_head_size + 2]) & 0x0f) == 0x09)
				{
					widget_max_p[page_widget_count].i_link_func = BROWSER_LINK_FUNC_FULL_VIEW;
				}
				else if (((p_data_p[widget_offset + widget_head_size + 2]) & 0x0f) == 0x0e)
				{
					widget_max_p[page_widget_count].i_link_func = BROWSER_LINK_FUNC_PLAY_VOD;
				}
			}

			if (p_data_p[widget_offset + widget_head_size + 3] == 0x3a)
			{
				widget_max_p[page_widget_count].i_iframe_flag = BROWSER_FALSE;
			}
			else if (p_data_p[widget_offset + widget_head_size + 3] == 0x3e)
			{
				widget_max_p[page_widget_count].i_iframe_flag = BROWSER_TRUE;
			}

			widget_max_p[page_widget_count].i_page_id = PageIDConvert(p_data_p[widget_offset + widget_head_size + 4], p_data_p[widget_offset + widget_head_size + 5]);

			if (widget_max_p[page_widget_count].i_link_flag == BROWSER_TRUE)
			{
				widget_max_p[page_widget_count].i_link_page_id = PageIDConvert(p_data_p[widget_offset + widget_head_size + 6], p_data_p[widget_offset + widget_head_size + 7]);
			}
			
			widget_max_p[page_widget_count].i_area.i_x = CoordinateConvert(p_data_p[widget_offset + widget_head_size + 16 + 4 + 0], p_data_p[widget_offset + widget_head_size + 16 + 4 + 1]);
			widget_max_p[page_widget_count].i_area.i_y = CoordinateConvert(p_data_p[widget_offset + widget_head_size + 16 + 4 + 2 + 0], p_data_p[widget_offset + widget_head_size + 16 + 4 + 2 + 1]);
			widget_max_p[page_widget_count].i_area.i_width = CoordinateConvert(p_data_p[widget_offset + widget_head_size + 16 + 4 + 2 + 2 + 0], p_data_p[widget_offset + widget_head_size + 16 + 4 + 2 + 2 + 1]);
			widget_max_p[page_widget_count].i_area.i_height = CoordinateConvert(p_data_p[widget_offset + widget_head_size + 16 + 4 + 2 + 2 + 2 + 0], p_data_p[widget_offset + widget_head_size + 16 + 4 + 2 + 2 + 2 + 1]);

			widget_max_p[page_widget_count].i_bg_colour.i_b = ColourConvert(p_data_p[widget_offset + widget_head_size + 16 + 4 + 8 + 0]);
			widget_max_p[page_widget_count].i_bg_colour.i_g = ColourConvert(p_data_p[widget_offset + widget_head_size + 16 + 4 + 8 + 1]);
			widget_max_p[page_widget_count].i_bg_colour.i_r = ColourConvert(p_data_p[widget_offset + widget_head_size + 16 + 4 + 8 + 2]);
			widget_max_p[page_widget_count].i_bg_colour.i_a = 0xff;//ColourConvert(p_data_p[widget_offset + widget_head_size + 16 + 4 + 8 + 3]);

			widget_max_p[page_widget_count].i_fg_colour.i_b = ColourConvert(p_data_p[widget_offset + widget_head_size + 16 + 4 + 8 + 4 + 0]);
			widget_max_p[page_widget_count].i_fg_colour.i_g = ColourConvert(p_data_p[widget_offset + widget_head_size + 16 + 4 + 8 + 4 + 1]);
			widget_max_p[page_widget_count].i_fg_colour.i_r = ColourConvert(p_data_p[widget_offset + widget_head_size + 16 + 4 + 8 + 4 + 2]);
			widget_max_p[page_widget_count].i_fg_colour.i_a = 0xff;//ColourConvert(p_data_p[widget_offset + widget_head_size + 16 + 4 + 8 + 4 + 3]);

			widget_max_p[page_widget_count].i_string_length = ((BROWSER_U32)(p_data_p[widget_offset + widget_head_size + 16 + 4 + 8 + 4 + 4 + 3] << 24) & 0xff000000) 
														| ((BROWSER_U32)(p_data_p[widget_offset + widget_head_size + 16 + 4 + 8 + 4 + 4 + 2] << 16) & 0x00ff0000) 
														| ((BROWSER_U32)(p_data_p[widget_offset + widget_head_size + 16 + 4 + 8 + 4 + 4 + 1] << 8) & 0x0000ff00) 
														| ((BROWSER_U32)(p_data_p[widget_offset + widget_head_size + 16 + 4 + 8 + 4 + 4 + 0]) & 0x000000ff);

			widget_tail_size = 4;

			if ((p_data_p[widget_offset + widget_head_size + 10] == 0x00) 
			&& (p_data_p[widget_offset + widget_head_size + 11] == 0x00))
			{
				next_widget_head_size_flag = BROWSER_TRUE;
			}
			else
			{
				if (widget_max_p[page_widget_count].i_pic_flag == BROWSER_TRUE)
				{
					if (widget_max_p[page_widget_count].i_string_length == 0)
					{
						next_widget_head_size_flag = BROWSER_TRUE;
					}
					else
					{
						widget_max_p[page_widget_count].i_string_length -= 1;

						next_widget_head_size_flag = BROWSER_FALSE;
					}
				}
				else
				{
					if (widget_max_p[page_widget_count].i_string_length == 0)
					{
						next_widget_head_size_flag = BROWSER_TRUE;
					}
					else
					{
						if (p_data_p[widget_offset + widget_head_size + 16 + 4 + 8 + 4 + 4 + widget_tail_size + (widget_max_p[page_widget_count].i_string_length - 1)] == 0x00)
						{
							widget_max_p[page_widget_count].i_string_length -= 1;

							next_widget_head_size_flag = BROWSER_FALSE;
						}
						else
						{
							next_widget_head_size_flag = BROWSER_TRUE;
						}
					}
				}
			}

			widget_max_p[page_widget_count].i_string_language = BROWSER_TEXT_LANGUAGE_MYANMAR;
			
			string_length = widget_max_p[page_widget_count].i_string_length;

			if (widget_max_p[page_widget_count].i_string_length > 0)
			{
				widget_max_p[page_widget_count].i_string_p = (char *)Browser_Os_Malloc(widget_max_p[page_widget_count].i_string_length + 1);

				if (widget_max_p[page_widget_count].i_string_p != 0)
				{
					BROWSER_U32  n = 0;
					BROWSER_U32  new_string_length = widget_max_p[page_widget_count].i_string_length;
					BROWSER_U32  ori_string_length = widget_max_p[page_widget_count].i_string_length;
					
					Browser_Os_Memcpy(widget_max_p[page_widget_count].i_string_p, &(p_data_p[widget_offset + widget_head_size + 16 + 4 + 8 + 4 + 4 + widget_tail_size]), widget_max_p[page_widget_count].i_string_length);

					if ((ori_string_length >= 3) 
					&& ((widget_max_p[page_widget_count].i_string_p[ori_string_length - 1] == 0x0a) 
						&& (widget_max_p[page_widget_count].i_string_p[ori_string_length - 2] == 0x0d)
						&& (widget_max_p[page_widget_count].i_string_p[ori_string_length - 3] == 0x09)))
					{
						n = 3;
					
						for (; n <= ori_string_length; ++n)
						{
							if (widget_max_p[page_widget_count].i_string_p[ori_string_length - n] == 0x09)//è￥μ???±í·?
							{
								--new_string_length;
							}
							else
							{
								break;
							}
						}

						widget_max_p[page_widget_count].i_string_p[new_string_length - 1] = 0x0a;
						
						widget_max_p[page_widget_count].i_string_p[new_string_length - 2] = 0x0d;
						
					}
					else if ((ori_string_length >= 5) 
					&& ((widget_max_p[page_widget_count].i_string_p[ori_string_length - 1] == 0x0a) 
						&& (widget_max_p[page_widget_count].i_string_p[ori_string_length - 2] == 0x0d)
						&& (widget_max_p[page_widget_count].i_string_p[ori_string_length - 3] == 0x0a) 
						&& (widget_max_p[page_widget_count].i_string_p[ori_string_length - 4] == 0x0d)						
						&& (widget_max_p[page_widget_count].i_string_p[ori_string_length - 5] == 0x09)))
					{
						n = 5;
					
						for (; n <= ori_string_length; ++n)
						{
							if (widget_max_p[page_widget_count].i_string_p[ori_string_length - n] == 0x09)//è￥μ???±í·?
							{
								--new_string_length;
							}
							else
							{
								break;
							}
						}

						widget_max_p[page_widget_count].i_string_p[new_string_length - 1] = 0x0a;
						
						widget_max_p[page_widget_count].i_string_p[new_string_length - 2] = 0x0d;

						widget_max_p[page_widget_count].i_string_p[new_string_length - 3] = 0x0a;
						
						widget_max_p[page_widget_count].i_string_p[new_string_length - 4] = 0x0d;
						
					}
					else if ((ori_string_length >= 1) 
					&& (widget_max_p[page_widget_count].i_string_p[ori_string_length - 1] == 0x09))
					{
						n = 1;
					
						for (; n <= ori_string_length; ++n)
						{
							if (widget_max_p[page_widget_count].i_string_p[ori_string_length - n] == 0x09)//è￥μ???±í·?
							{
								--new_string_length;
							}
							else
							{
								break;
							}
						}
					}

					widget_max_p[page_widget_count].i_string_length = new_string_length;

					widget_max_p[page_widget_count].i_string_p[widget_max_p[page_widget_count].i_string_length] = '\0';
				}
				else
				{
					BrowserDataWidgetRelease(widget_max_p, page_widget_count);
				
					BrowserDataRelease(p_browser_data_p);
					
					return  BROWSER_FALSE;
				}
			}

			/*判断是否存在图片数据*/
			if (widget_max_p[page_widget_count].i_pic_flag == BROWSER_TRUE)
			{
				BROWSER_U32  widget_pic_offset = widget_offset + widget_head_size + 16 + 4 + 8 + 4 + 4 + widget_tail_size + string_length;

				if (next_widget_head_size_flag == BROWSER_TRUE)
				{
					widget_max_p[page_widget_count].i_pic_path_length = p_data_p[widget_pic_offset];
				}
				else
				{
					widget_max_p[page_widget_count].i_pic_path_length = p_data_p[widget_pic_offset + 1];
				}

				if (widget_max_p[page_widget_count].i_pic_path_length > 0)
				{
					widget_max_p[page_widget_count].i_pic_path_string_p = (char *)Browser_Os_Malloc(widget_max_p[page_widget_count].i_pic_path_length + 1);

					if (widget_max_p[page_widget_count].i_pic_path_string_p != 0)
					{
						Browser_Os_Memcpy(widget_max_p[page_widget_count].i_pic_path_string_p, &(p_data_p[widget_pic_offset + 5]), widget_max_p[page_widget_count].i_pic_path_length);

						widget_max_p[page_widget_count].i_pic_path_string_p[widget_max_p[page_widget_count].i_pic_path_length] = '\0';
					}
					else
					{
						BrowserDataWidgetRelease(widget_max_p, page_widget_count);
					
						BrowserDataRelease(p_browser_data_p);
						
						return  BROWSER_FALSE;
					}
				}
				
				if (next_widget_head_size_flag == BROWSER_TRUE)
				{
				widget_pic_offset += 4 + widget_max_p[page_widget_count].i_pic_path_length;
				}
				else
				{
				widget_pic_offset += 5 + widget_max_p[page_widget_count].i_pic_path_length;
				}

				widget_max_p[page_widget_count].i_pic_data_size = ((BROWSER_U32)(p_data_p[widget_pic_offset + 3] << 24) & 0xff000000) 
															| ((BROWSER_U32)(p_data_p[widget_pic_offset + 2] << 16) & 0x00ff0000) 
															| ((BROWSER_U32)(p_data_p[widget_pic_offset + 1] << 8) & 0x0000ff00) 
															| ((BROWSER_U32)(p_data_p[widget_pic_offset + 0]) & 0x000000ff);

				widget_pic_offset += 4;

				if (widget_max_p[page_widget_count].i_pic_data_size > 0)
				{
					widget_max_p[page_widget_count].i_pic_data_p = (BROWSER_U8 *)Browser_Os_Malloc(widget_max_p[page_widget_count].i_pic_data_size);

					if (widget_max_p[page_widget_count].i_pic_data_p != 0)
					{
						Browser_Os_Memcpy(widget_max_p[page_widget_count].i_pic_data_p, &(p_data_p[widget_pic_offset]), widget_max_p[page_widget_count].i_pic_data_size);
					}
					else
					{
						BrowserDataWidgetRelease(widget_max_p, page_widget_count);
					
						BrowserDataRelease(p_browser_data_p);
						
						return  BROWSER_FALSE;
					}
				}
			}
			
			widget_offset += widget_head_size + 16 + 4 + 8 + 4 + 4 + widget_tail_size + string_length;

			if (widget_max_p[page_widget_count].i_pic_flag == BROWSER_TRUE)
			{
				if (next_widget_head_size_flag == BROWSER_TRUE)
				{
				widget_offset += 4 + widget_max_p[page_widget_count].i_pic_path_length + 4 + widget_max_p[page_widget_count].i_pic_data_size;
				}
				else
				{
				widget_offset += 5 + widget_max_p[page_widget_count].i_pic_path_length + 4 + widget_max_p[page_widget_count].i_pic_data_size;
				}

				widget_head_size = 0;
			}
			else
			{
				if (next_widget_head_size_flag == BROWSER_TRUE)
				{
					widget_head_size = 8;
				}
				else
				{
					widget_head_size = 9;
				}
			}

			++page_widget_count;

			++widget_count;

		}

		/*保存最后一个PAGE 的控件总数*/
		if ((page_count > 0) && (page_widget_count != 0))
		{
			p_browser_data_p->i_page_p[page_count - 1].i_widget_num = page_widget_count;

			p_browser_data_p->i_page_p[page_count - 1].i_widget_p = (BrowserWidget_T *)Browser_Os_Malloc(page_widget_count * sizeof(BrowserWidget_T));

			if (p_browser_data_p->i_page_p[page_count - 1].i_widget_p != 0)
			{
				Browser_Os_Memcpy(p_browser_data_p->i_page_p[page_count - 1].i_widget_p, widget_max_p, (page_widget_count * sizeof(BrowserWidget_T)));
			}
			else
			{
				BrowserDataWidgetRelease(widget_max_p, page_widget_count);
			
				BrowserDataRelease(p_browser_data_p);
				
				return  BROWSER_FALSE;
			}
		}
	}
	else
	{
		return  BROWSER_FALSE;
	}

	//********************
	#if 0

	{
		int  n = 0;

		for (; n < p_browser_data_p->i_page_num; ++n)
		{
			printf("PAGE : %d   WIDGET NUM : %d\n", n + 1, p_browser_data_p->i_page_p[n].i_widget_num);
		}
	}
	
	#endif
	//*******************

	return  BROWSER_TRUE;
}

#endif

#ifdef  BROWSER_AD_FLAG

static void  Browser_Ad_DataWidgetRelease(BrowserWidget_T  *p_browser_widget_data_p,  BROWSER_U32  p_widget_num)
{
	if ((p_browser_widget_data_p != 0)
	&& (p_widget_num != 0))
	{
		int  i = 0;

		for (; i < p_widget_num; ++i)
		{
			if (p_browser_widget_data_p[i].i_string_p != 0)
			{
				Browser_Ad_Free(p_browser_widget_data_p[i].i_string_p);
			}

			if (p_browser_widget_data_p[i].i_pic_path_string_p!= 0)
			{
				Browser_Ad_Free(p_browser_widget_data_p[i].i_pic_path_string_p);
			}

			if (p_browser_widget_data_p[i].i_pic_data_p!= 0)
			{
				Browser_Ad_Free(p_browser_widget_data_p[i].i_pic_data_p);
			}
		}

		Browser_Os_Memset(p_browser_widget_data_p, 0, sizeof(BrowserWidget_T) * p_widget_num);
	}

}

static void  Browser_Ad_DataRelease(BrowserData_T  *p_browser_data_p)
{
	if (p_browser_data_p != 0)
	{
		int  i = 0, k = 0;

		if (p_browser_data_p->i_page_p != 0)
		{
			for (; i < p_browser_data_p->i_page_num; ++i)
			{
				if (p_browser_data_p->i_page_p[i].i_widget_p != 0)
				{
					for (k = 0; k < p_browser_data_p->i_page_p[i].i_widget_num; ++k)
					{
						if (p_browser_data_p->i_page_p[i].i_widget_p[k].i_string_p != 0)
						{
							Browser_Ad_Free(p_browser_data_p->i_page_p[i].i_widget_p[k].i_string_p);
						}

						if (p_browser_data_p->i_page_p[i].i_widget_p[k].i_pic_path_string_p!= 0)
						{
							Browser_Ad_Free(p_browser_data_p->i_page_p[i].i_widget_p[k].i_pic_path_string_p);
						}

						if (p_browser_data_p->i_page_p[i].i_widget_p[k].i_pic_data_p!= 0)
						{
							Browser_Ad_Free(p_browser_data_p->i_page_p[i].i_widget_p[k].i_pic_data_p);
						}
					}

					Browser_Ad_Free(p_browser_data_p->i_page_p[i].i_widget_p);
				}
			}

			Browser_Ad_Free(p_browser_data_p->i_page_p);
		}

		Browser_Os_Memset(p_browser_data_p, 0, sizeof(BrowserData_T));
	}
}

BROWSER_BOOLEAN_T  Browser_Ad_DataParser(BROWSER_U8  *p_data_p, BROWSER_U32 p_data_num, BrowserData_T  *p_browser_data_p)
{
	if ((p_data_p == 0)
	|| (p_data_num == 0)
	|| (p_browser_data_p == 0)
	)
	{
		return  BROWSER_FALSE;
	}

	Browser_Ad_DataRelease(p_browser_data_p);

	if ((p_data_p[0] == 0x7A)
	&& (p_data_p[1] == 0x7A)
	&& (p_data_p[2] == 0x64)
	&& (p_data_p[3] == 0x62))
	{
		BROWSER_U32  widget_offset = 0;
		BROWSER_U32  page_count = 0;
		BROWSER_U32  widget_count = 0;
		BROWSER_U32  widget_head_size = 0;	
		BROWSER_U32  widget_tail_size = 4;
		BROWSER_U8  page_widget_index = 0;
		BROWSER_U32  page_widget_count = 0;
		BROWSER_U32  string_length = 0;
		BROWSER_BOOLEAN_T  next_widget_head_size_flag = BROWSER_FALSE;		
		BrowserWidget_T  widget_max_p[0xff];
		int  i = 0;
		
		Browser_Os_Memset(widget_max_p, 0, (0xff * sizeof(BrowserWidget_T)));
		
		p_browser_data_p->i_height = ((BROWSER_U32)(p_data_p[5] << 8) & 0xff00) |((BROWSER_U32)(p_data_p[4] & 0x00ff));
		p_browser_data_p->i_width = ((BROWSER_U32)(p_data_p[7] << 8) & 0xff00) |((BROWSER_U32)(p_data_p[6] & 0x00ff));
		p_browser_data_p->i_page_num = (((BROWSER_U32)(p_data_p[9] << 8) & 0xff00) |((BROWSER_U32)(p_data_p[8] & 0x00ff))) + 1;
		p_browser_data_p->i_widget_total_num = ((BROWSER_U32)(p_data_p[13] << 8) & 0xff00) |((BROWSER_U32)(p_data_p[12] & 0x00ff));

		p_browser_data_p->i_page_p = (BrowserPage_T *)Browser_Ad_Malloc(p_browser_data_p->i_page_num * sizeof(BrowserPage_T));

		if (p_browser_data_p->i_page_p != 0)
		{
			Browser_Os_Memset(p_browser_data_p->i_page_p, 0, (p_browser_data_p->i_page_num * sizeof(BrowserPage_T)));
		}
		else
		{
			Browser_Ad_DataRelease(p_browser_data_p);
			
			return  BROWSER_FALSE;
		}

		for (i = 0; i < (p_browser_data_p->i_page_num); ++i)
		{
			if (p_data_p[32 + (8 * i) + 4] == 0x00)
			{
				p_browser_data_p->i_page_p[i].i_play_service_flag = BROWSER_FALSE;
			}
			else if (p_data_p[32 + (8 * i) + 4] == 0x01)
			{
				p_browser_data_p->i_page_p[i].i_play_service_flag = BROWSER_TRUE;
				
				p_browser_data_p->i_page_p[i].i_service_id = ((BROWSER_U16)(p_data_p[32 + (8 * i) + 1] << 8) & 0xff00) |((BROWSER_U16)(p_data_p[32 + (8 * i) + 0] & 0x00ff));

				p_browser_data_p->i_page_p[i].i_ts_id = ((BROWSER_U16)(p_data_p[32 + (8 * i) + 3] << 8) & 0xff00) |((BROWSER_U16)(p_data_p[32 + (8 * i) + 2] & 0x00ff));
			}
		}

		widget_offset = 32 + (8 * (p_browser_data_p->i_page_num));

		while (widget_count < p_browser_data_p->i_widget_total_num)
		{
			page_widget_index = WidgetIndexConvert(p_data_p[widget_offset + widget_head_size]);

			if (page_widget_index == 0)
			{
				p_browser_data_p->i_page_p[page_count].i_page_id = page_count;

				//*********************
				#if 0
				if ((page_count == 426)
				|| (page_count == 427))
				{
					printf("page_count : %d   0x%x \n", page_count, widget_offset);
				}
				#endif
				//**********************

				if (page_count > 0)
				{
					while ((page_count - 1) != widget_max_p[0].i_page_id)
					{
						++page_count;
					}
					
					p_browser_data_p->i_page_p[page_count - 1].i_widget_num = page_widget_count;

					p_browser_data_p->i_page_p[page_count - 1].i_widget_p = (BrowserWidget_T *)Browser_Ad_Malloc(page_widget_count * sizeof(BrowserWidget_T));

					if (p_browser_data_p->i_page_p[page_count - 1].i_widget_p != 0)
					{
						Browser_Os_Memcpy(p_browser_data_p->i_page_p[page_count - 1].i_widget_p, widget_max_p, (page_widget_count * sizeof(BrowserWidget_T)));
					}
					else
					{
						Browser_Ad_DataWidgetRelease(widget_max_p, page_widget_count);
					
						Browser_Ad_DataRelease(p_browser_data_p);
						
						return  BROWSER_FALSE;
					}

					Browser_Os_Memset(widget_max_p, 0, (0xff * sizeof(BrowserWidget_T)));

					page_widget_count = 0;
				}

				++page_count;
			}

			widget_max_p[page_widget_count].i_index = page_widget_index;

			if (((p_data_p[widget_offset + widget_head_size + 1] >> 4) & 0x03) == 0x03)
			{
				widget_max_p[page_widget_count].i_string_align = BROWSER_STRING_LEFT_ALIGN;
			}
			else if (((p_data_p[widget_offset + widget_head_size + 1] >> 4) & 0x03) == 0x02)
			{
				widget_max_p[page_widget_count].i_string_align = BROWSER_STRING_RIGHT_ALIGN;
			}
			else if (((p_data_p[widget_offset + widget_head_size + 1] >> 4) & 0x03) == 0x01)
			{
				widget_max_p[page_widget_count].i_string_align = BROWSER_STRING_CENTER_ALIGN;
			}

			if (((p_data_p[widget_offset + widget_head_size + 1] >> 4) & 0x08) == 0x08)
			{
				widget_max_p[page_widget_count].i_bg_colour_disable_flag = BROWSER_TRUE;
			}
			else 
			{
				widget_max_p[page_widget_count].i_bg_colour_disable_flag = BROWSER_FALSE;
			}

			if (((p_data_p[widget_offset + widget_head_size + 1]) & 0x01) == 0x01)
			{
				widget_max_p[page_widget_count].i_link_flag = BROWSER_TRUE;
			}
			else 
			{
				widget_max_p[page_widget_count].i_link_flag = BROWSER_FALSE;
			}

			if (((p_data_p[widget_offset + widget_head_size + 1]) & 0x06) == 0x02)
			{
				widget_max_p[page_widget_count].i_string_font_size = BROWSER_FONT_26;
			}
			else if (((p_data_p[widget_offset + widget_head_size + 1]) & 0x06) == 0x00)
			{
				widget_max_p[page_widget_count].i_string_font_size = BROWSER_FONT_32;
			}
			else if (((p_data_p[widget_offset + widget_head_size + 1]) & 0x06) == 0x06)
			{
				widget_max_p[page_widget_count].i_string_font_size = BROWSER_FONT_38;
			}

			if (((p_data_p[widget_offset + widget_head_size + 2] >> 4) & 0x01) == 0x01)
			{
				widget_max_p[page_widget_count].i_pic_flag = BROWSER_FALSE;
			}
			else
			{
				widget_max_p[page_widget_count].i_pic_flag = BROWSER_TRUE;
			}

			if (((p_data_p[widget_offset + widget_head_size + 2] >> 4) & 0x0c) == 0x00)
			{
				widget_max_p[page_widget_count].i_string_dynamic_mode = BROWSER_STRING_DYNAMIC_NONE;
			}
			else if (((p_data_p[widget_offset + widget_head_size + 2] >> 4) & 0x0c) == 0x04)
			{
				widget_max_p[page_widget_count].i_string_dynamic_mode = BROWSER_STRING_DYNAMIC_HSCROLL;
			}
			else if (((p_data_p[widget_offset + widget_head_size + 2] >> 4) & 0x0c) == 0x08)
			{
				widget_max_p[page_widget_count].i_string_dynamic_mode = BROWSER_STRING_DYNAMIC_VSCROLL;
			}
			else if (((p_data_p[widget_offset + widget_head_size + 2] >> 4) & 0x0c) == 0x0c)
			{
				widget_max_p[page_widget_count].i_string_dynamic_mode = BROWSER_STRING_DYNAMIC_VSCROLL2;
			}

			if (widget_max_p[page_widget_count].i_link_flag == BROWSER_TRUE)
			{
				if (((p_data_p[widget_offset + widget_head_size + 2]) & 0x0f) == 0x0a)
				{
					widget_max_p[page_widget_count].i_link_func = BROWSER_LINK_FUNC_NONE;
				}
				else if (((p_data_p[widget_offset + widget_head_size + 2]) & 0x0f) == 0x0b)
				{
					widget_max_p[page_widget_count].i_link_func = BROWSER_LINK_FUNC_WATCH_TV;
				}
				else if (((p_data_p[widget_offset + widget_head_size + 2]) & 0x0f) == 0x08)
				{
					widget_max_p[page_widget_count].i_link_func = BROWSER_LINK_FUNC_LISTEN_RADIO;
				}
				else if (((p_data_p[widget_offset + widget_head_size + 2]) & 0x0f) == 0x09)
				{
					widget_max_p[page_widget_count].i_link_func = BROWSER_LINK_FUNC_FULL_VIEW;
				}
				else if (((p_data_p[widget_offset + widget_head_size + 2]) & 0x0f) == 0x0e)
				{
					widget_max_p[page_widget_count].i_link_func = BROWSER_LINK_FUNC_PLAY_VOD;
				}
			}

			if (p_data_p[widget_offset + widget_head_size + 3] == 0x3a)
			{
				widget_max_p[page_widget_count].i_iframe_flag = BROWSER_FALSE;
			}
			else if (p_data_p[widget_offset + widget_head_size + 3] == 0x3e)
			{
				widget_max_p[page_widget_count].i_iframe_flag = BROWSER_TRUE;
			}

			widget_max_p[page_widget_count].i_page_id = PageIDConvert(p_data_p[widget_offset + widget_head_size + 4], p_data_p[widget_offset + widget_head_size + 5]);

			if (widget_max_p[page_widget_count].i_link_flag == BROWSER_TRUE)
			{
				widget_max_p[page_widget_count].i_link_page_id = PageIDConvert(p_data_p[widget_offset + widget_head_size + 6], p_data_p[widget_offset + widget_head_size + 7]);
			}
			
			widget_max_p[page_widget_count].i_area.i_x = CoordinateConvert(p_data_p[widget_offset + widget_head_size + 16 + 4 + 0], p_data_p[widget_offset + widget_head_size + 16 + 4 + 1]);
			widget_max_p[page_widget_count].i_area.i_y = CoordinateConvert(p_data_p[widget_offset + widget_head_size + 16 + 4 + 2 + 0], p_data_p[widget_offset + widget_head_size + 16 + 4 + 2 + 1]);
			widget_max_p[page_widget_count].i_area.i_width = CoordinateConvert(p_data_p[widget_offset + widget_head_size + 16 + 4 + 2 + 2 + 0], p_data_p[widget_offset + widget_head_size + 16 + 4 + 2 + 2 + 1]);
			widget_max_p[page_widget_count].i_area.i_height = CoordinateConvert(p_data_p[widget_offset + widget_head_size + 16 + 4 + 2 + 2 + 2 + 0], p_data_p[widget_offset + widget_head_size + 16 + 4 + 2 + 2 + 2 + 1]);

			widget_max_p[page_widget_count].i_bg_colour.i_b = ColourConvert(p_data_p[widget_offset + widget_head_size + 16 + 4 + 8 + 0]);
			widget_max_p[page_widget_count].i_bg_colour.i_g = ColourConvert(p_data_p[widget_offset + widget_head_size + 16 + 4 + 8 + 1]);
			widget_max_p[page_widget_count].i_bg_colour.i_r = ColourConvert(p_data_p[widget_offset + widget_head_size + 16 + 4 + 8 + 2]);
			widget_max_p[page_widget_count].i_bg_colour.i_a = 0xff;//ColourConvert(p_data_p[widget_offset + widget_head_size + 16 + 4 + 8 + 3]);

			widget_max_p[page_widget_count].i_fg_colour.i_b = ColourConvert(p_data_p[widget_offset + widget_head_size + 16 + 4 + 8 + 4 + 0]);
			widget_max_p[page_widget_count].i_fg_colour.i_g = ColourConvert(p_data_p[widget_offset + widget_head_size + 16 + 4 + 8 + 4 + 1]);
			widget_max_p[page_widget_count].i_fg_colour.i_r = ColourConvert(p_data_p[widget_offset + widget_head_size + 16 + 4 + 8 + 4 + 2]);
			widget_max_p[page_widget_count].i_fg_colour.i_a = 0xff;//ColourConvert(p_data_p[widget_offset + widget_head_size + 16 + 4 + 8 + 4 + 3]);

			widget_max_p[page_widget_count].i_string_length = ((BROWSER_U32)(p_data_p[widget_offset + widget_head_size + 16 + 4 + 8 + 4 + 4 + 3] << 24) & 0xff000000) 
														| ((BROWSER_U32)(p_data_p[widget_offset + widget_head_size + 16 + 4 + 8 + 4 + 4 + 2] << 16) & 0x00ff0000) 
														| ((BROWSER_U32)(p_data_p[widget_offset + widget_head_size + 16 + 4 + 8 + 4 + 4 + 1] << 8) & 0x0000ff00) 
														| ((BROWSER_U32)(p_data_p[widget_offset + widget_head_size + 16 + 4 + 8 + 4 + 4 + 0]) & 0x000000ff);

			widget_tail_size = 4;

			if ((p_data_p[widget_offset + widget_head_size + 10] == 0x00) 
			&& (p_data_p[widget_offset + widget_head_size + 11] == 0x00))
			{
				next_widget_head_size_flag = BROWSER_TRUE;
			}
			else
			{
				if (widget_max_p[page_widget_count].i_pic_flag == BROWSER_TRUE)
				{
					if (widget_max_p[page_widget_count].i_string_length == 0)
					{
						next_widget_head_size_flag = BROWSER_TRUE;
					}
					else
					{
						widget_max_p[page_widget_count].i_string_length -= 1;

						next_widget_head_size_flag = BROWSER_FALSE;
					}
				}
				else
				{
					if (widget_max_p[page_widget_count].i_string_length == 0)
					{
						next_widget_head_size_flag = BROWSER_TRUE;
					}
					else
					{
						if (p_data_p[widget_offset + widget_head_size + 16 + 4 + 8 + 4 + 4 + widget_tail_size + (widget_max_p[page_widget_count].i_string_length - 1)] == 0x00)
						{
							widget_max_p[page_widget_count].i_string_length -= 1;

							next_widget_head_size_flag = BROWSER_FALSE;
						}
						else
						{
							next_widget_head_size_flag = BROWSER_TRUE;
						}
					}
				}
			}

			widget_max_p[page_widget_count].i_string_language = BROWSER_TEXT_LANGUAGE_MYANMAR;
			
			string_length = widget_max_p[page_widget_count].i_string_length;

			if (widget_max_p[page_widget_count].i_string_length > 0)
			{
				widget_max_p[page_widget_count].i_string_p = (char *)Browser_Ad_Malloc(widget_max_p[page_widget_count].i_string_length + 1);

				if (widget_max_p[page_widget_count].i_string_p != 0)
				{
					BROWSER_U32  n = 0;
					BROWSER_U32  new_string_length = widget_max_p[page_widget_count].i_string_length;
					BROWSER_U32  ori_string_length = widget_max_p[page_widget_count].i_string_length;
					
					Browser_Os_Memcpy(widget_max_p[page_widget_count].i_string_p, &(p_data_p[widget_offset + widget_head_size + 16 + 4 + 8 + 4 + 4 + widget_tail_size]), widget_max_p[page_widget_count].i_string_length);

					if ((ori_string_length >= 3) 
					&& ((widget_max_p[page_widget_count].i_string_p[ori_string_length - 1] == 0x0a) 
						&& (widget_max_p[page_widget_count].i_string_p[ori_string_length - 2] == 0x0d)
						&& (widget_max_p[page_widget_count].i_string_p[ori_string_length - 3] == 0x09)))
					{
						n = 3;
					
						for (; n <= ori_string_length; ++n)
						{
							if (widget_max_p[page_widget_count].i_string_p[ori_string_length - n] == 0x09)
							{
								--new_string_length;
							}
							else
							{
								break;
							}
						}

						widget_max_p[page_widget_count].i_string_p[new_string_length - 1] = 0x0a;
						
						widget_max_p[page_widget_count].i_string_p[new_string_length - 2] = 0x0d;
						
					}
					else if ((ori_string_length >= 5) 
					&& ((widget_max_p[page_widget_count].i_string_p[ori_string_length - 1] == 0x0a) 
						&& (widget_max_p[page_widget_count].i_string_p[ori_string_length - 2] == 0x0d)
						&& (widget_max_p[page_widget_count].i_string_p[ori_string_length - 3] == 0x0a) 
						&& (widget_max_p[page_widget_count].i_string_p[ori_string_length - 4] == 0x0d)						
						&& (widget_max_p[page_widget_count].i_string_p[ori_string_length - 5] == 0x09)))
					{
						n = 5;
					
						for (; n <= ori_string_length; ++n)
						{
							if (widget_max_p[page_widget_count].i_string_p[ori_string_length - n] == 0x09)
							{
								--new_string_length;
							}
							else
							{
								break;
							}
						}

						widget_max_p[page_widget_count].i_string_p[new_string_length - 1] = 0x0a;
						
						widget_max_p[page_widget_count].i_string_p[new_string_length - 2] = 0x0d;

						widget_max_p[page_widget_count].i_string_p[new_string_length - 3] = 0x0a;
						
						widget_max_p[page_widget_count].i_string_p[new_string_length - 4] = 0x0d;
						
					}
					else if ((ori_string_length >= 1) 
					&& (widget_max_p[page_widget_count].i_string_p[ori_string_length - 1] == 0x09))
					{
						n = 1;
					
						for (; n <= ori_string_length; ++n)
						{
							if (widget_max_p[page_widget_count].i_string_p[ori_string_length - n] == 0x09)
							{
								--new_string_length;
							}
							else
							{
								break;
							}
						}
					}

					widget_max_p[page_widget_count].i_string_length = new_string_length;

					widget_max_p[page_widget_count].i_string_p[widget_max_p[page_widget_count].i_string_length] = '\0';
				}
				else
				{
					Browser_Ad_DataWidgetRelease(widget_max_p, page_widget_count);
				
					Browser_Ad_DataRelease(p_browser_data_p);
					
					return  BROWSER_FALSE;
				}
			}

			if (widget_max_p[page_widget_count].i_pic_flag == BROWSER_TRUE)
			{
				BROWSER_U32  widget_pic_offset = widget_offset + widget_head_size + 16 + 4 + 8 + 4 + 4 + widget_tail_size + string_length;

				if (next_widget_head_size_flag == BROWSER_TRUE)
				{
					widget_max_p[page_widget_count].i_pic_path_length = p_data_p[widget_pic_offset];
				}
				else
				{
					widget_max_p[page_widget_count].i_pic_path_length = p_data_p[widget_pic_offset + 1];
				}

				if (widget_max_p[page_widget_count].i_pic_path_length > 0)
				{
					widget_max_p[page_widget_count].i_pic_path_string_p = (char *)Browser_Ad_Malloc(widget_max_p[page_widget_count].i_pic_path_length + 1);

					if (widget_max_p[page_widget_count].i_pic_path_string_p != 0)
					{
						Browser_Os_Memcpy(widget_max_p[page_widget_count].i_pic_path_string_p, &(p_data_p[widget_pic_offset + 5]), widget_max_p[page_widget_count].i_pic_path_length);

						widget_max_p[page_widget_count].i_pic_path_string_p[widget_max_p[page_widget_count].i_pic_path_length] = '\0';
					}
					else
					{
						Browser_Ad_DataWidgetRelease(widget_max_p, page_widget_count);
					
						Browser_Ad_DataRelease(p_browser_data_p);
						
						return  BROWSER_FALSE;
					}
				}
				
				if (next_widget_head_size_flag == BROWSER_TRUE)
				{
				widget_pic_offset += 4 + widget_max_p[page_widget_count].i_pic_path_length;
				}
				else
				{
				widget_pic_offset += 5 + widget_max_p[page_widget_count].i_pic_path_length;
				}

				widget_max_p[page_widget_count].i_pic_data_size = ((BROWSER_U32)(p_data_p[widget_pic_offset + 3] << 24) & 0xff000000) 
															| ((BROWSER_U32)(p_data_p[widget_pic_offset + 2] << 16) & 0x00ff0000) 
															| ((BROWSER_U32)(p_data_p[widget_pic_offset + 1] << 8) & 0x0000ff00) 
															| ((BROWSER_U32)(p_data_p[widget_pic_offset + 0]) & 0x000000ff);

				widget_pic_offset += 4;

				if (widget_max_p[page_widget_count].i_pic_data_size > 0)
				{
					widget_max_p[page_widget_count].i_pic_data_p = (BROWSER_U8 *)Browser_Ad_Malloc(widget_max_p[page_widget_count].i_pic_data_size);

					if (widget_max_p[page_widget_count].i_pic_data_p != 0)
					{
						Browser_Os_Memcpy(widget_max_p[page_widget_count].i_pic_data_p, &(p_data_p[widget_pic_offset]), widget_max_p[page_widget_count].i_pic_data_size);
					}
					else
					{
						Browser_Ad_DataWidgetRelease(widget_max_p, page_widget_count);
					
						Browser_Ad_DataRelease(p_browser_data_p);
						
						return  BROWSER_FALSE;
					}
				}
			}
			
			widget_offset += widget_head_size + 16 + 4 + 8 + 4 + 4 + widget_tail_size + string_length;

			if (widget_max_p[page_widget_count].i_pic_flag == BROWSER_TRUE)
			{
				if (next_widget_head_size_flag == BROWSER_TRUE)
				{
				widget_offset += 4 + widget_max_p[page_widget_count].i_pic_path_length + 4 + widget_max_p[page_widget_count].i_pic_data_size;
				}
				else
				{
				widget_offset += 5 + widget_max_p[page_widget_count].i_pic_path_length + 4 + widget_max_p[page_widget_count].i_pic_data_size;
				}

				widget_head_size = 0;
			}
			else
			{
				if (next_widget_head_size_flag == BROWSER_TRUE)
				{
					widget_head_size = 8;
				}
				else
				{
					widget_head_size = 9;
				}
			}

			++page_widget_count;

			++widget_count;

		}

		if ((page_count > 0) && (page_widget_count != 0))
		{
			p_browser_data_p->i_page_p[page_count - 1].i_widget_num = page_widget_count;

			p_browser_data_p->i_page_p[page_count - 1].i_widget_p = (BrowserWidget_T *)Browser_Ad_Malloc(page_widget_count * sizeof(BrowserWidget_T));

			if (p_browser_data_p->i_page_p[page_count - 1].i_widget_p != 0)
			{
				Browser_Os_Memcpy(p_browser_data_p->i_page_p[page_count - 1].i_widget_p, widget_max_p, (page_widget_count * sizeof(BrowserWidget_T)));
			}
			else
			{
				Browser_Ad_DataWidgetRelease(widget_max_p, page_widget_count);
			
				Browser_Ad_DataRelease(p_browser_data_p);
				
				return  BROWSER_FALSE;
			}
		}
	}
	else
	{
		return  BROWSER_FALSE;
	}

	//********************
	#if 0

	{
		int  n = 0;

		for (; n < p_browser_data_p->i_page_num; ++n)
		{
			printf("PAGE : %d   WIDGET NUM : %d\n", n + 1, p_browser_data_p->i_page_p[n].i_widget_num);
		}
	}
	 
	#endif
	//*******************

	return  BROWSER_TRUE;
}

	

#endif

#endif

