#include "base.h"
#include "keyled.h"

#ifdef KEYLED_CT1642_INNER


/************************************************************************* 
						2.2 keyled_std module
*************************************************************************/
/* 2 Control param */
/* 2.1 Key control */ /*CNcomment:按键控制*/
#define KEYPAD_ENABLE        0x00000008    /* Enable key scan */  /* CNcomment: 键盘扫描使能 */ 
#define KEYPAD_PRESS_INTR    0x00000002    /*Keypad press down interrupt mask*/ /*CNcomment:键盘按下中断屏蔽 */
#define KEYPAD_RELEASE_INTR  0x00000001    /*keypad release interrupt mask*/ /*CNcomment: 键盘释放中断屏蔽 */

/* 2.2 key data    */
#define KEY_7_PRESS 		 0x80  /*(1 << 7)*/        
#define KEY_6_PRESS 		 0x40  /*(1 << 6)*/       
#define KEY_5_PRESS 		 0x20  /*(1 << 5)*/        
#define KEY_4_PRESS 		 0x10  /*(1 << 4)*/       
#define KEY_3_PRESS 		 0x08  /*(1 << 3) */        
#define KEY_2_PRESS 		 0x04  /*(1 << 2) */       
#define KEY_1_PRESS 		 0x02  /*(1 << 1)*/       
#define KEY_0_PRESS 		 0x01  /*(1 << 0)*/         
#define KEYPAD_ERROR    	(1000)   

/* 2.3 led control */
#define LEDC_ENABLE    		0x00000100    /*Enable LED display*/  /* CNcomment:LED显示使能 */
#define LEDC_FLASH_4   		0x00000080    /*Enable the fourth LED flash*/  /*CNcomment: 第四LED管闪烁使能 */
#define LEDC_FLASH_3   		0x00000040    /*Enable the third LED flash*/  /*CNcomment: 第三LED管闪烁使能 */
#define LEDC_FLASH_2   		0x00000020    /*Enable the second LED flash*/  /* CNcomment:第二LED管闪烁使能 */
#define LEDC_FLASH_1   		0x00000010    /*Enable the first LED flash*/  /*CNcomment: 第一LED管闪烁使能 */
#define LEDC_FLASH_ALL 		0x000000f0    /*Enable all LED flash*/  /* CNcomment:全部LED管闪烁 */

/* 2.4  led config */
#define LEDC_ANODE       	0x00000002   /*(1 << 1)*/
#define LEDC_HIGHT_LEVEL 	0x00000001   /*(1 << 0)*/

/* 2.5  def clk*/
#define SYSTEM_CLK       	(24)   /*unit::MHz def:24MHz*/   /* CNcomment:单位:MHz def:24MHz*/
#define CLKTIM_DEFAULT   	(250)  /*unit:KHz min:210KHz*/   /* CNcomment:单位:KHz min:210KHz*/
#define FRETIM_DEFAULT   	(650)  /*unit:Hz  min:108Hz*/   /* CNcomment:单位:Hz  min:108Hz*/
#define FLASHTIM_DEFAULT 	(60)   /*unit:Hz 10Hz*/   /* CNcomment:单位:Hz 10Hz*/
#define FLASHLEV_DEFAULT 	(1)    /*1means  the slowest while 5 means fastest*/   /*CNcomment: 1 最慢  5 最快 */
#define KEY_DEFAULT      	(60)   /*unit:Hz  min:0.5Hz*/   /* CNcomment:单位:Hz  min:0.5Hz */

/*variable*/
HI_U32 LedDigDisDot_ct1642[]  = {0xfd, 0x61, 0xdb, 0xf3, 0x67, 0xb7, 0xbf, 0xe1, 0xff, 0xf7};
HI_U32 LedDigDisCode_ct1642[] = {0xfc, 0x60, 0xda, 0xf2, 0x66, 0xb6, 0xbe, 0xe0, 0xfe, 0xf6};


HI_U8 KeyPressFlag_CT1642 = 0;

void keyled_enable_usr(HI_U8 type)
{
	HI_U32 reg = 0;
	
	HI_REG_READ32(LEDC_CONTROL, reg);
	
	if (type & 0x01)
	{
		reg |= 0x0300;  // LEDC_ENABLE
	}
	
	if (type & 0x02)
	{
		reg |= 0x08;  //KEYPAD_ENABLE 
	}
	HI_REG_WRITE32(LEDC_CONTROL, reg);
	
	return;
}


void keyled_reset_usr(void)
{
	HI_U32 clktim = 0;
	HI_U32 fretim = 0;
	HI_U32 keytim = 0;
	//HI_U32 flashtim = 0;
	HI_U32 reg = 0;
	
	KeyPressFlag_CT1642 = 0;

	//printf_char('c');

#if 0
	//set pin multiplexing
	HI_REG_WRITE32(0x10203050, 0x1);
	HI_REG_WRITE32(0x10203054, 0x1);
	HI_REG_WRITE32(0x10203058, 0x1);
#endif

	// 0
	HI_REG_WRITE32(LEDC_CONTROL, 0);
		
	// 1.0  TODO change 
	reg = 0x34; //CT1642 | 8x1 ;
	HI_REG_WRITE32(LEDC_CONFIG, reg);
	
	// 1.1
	clktim = 1;
	HI_REG_WRITE32(LEDC_CLKTIM, clktim);
	
	// 1.2
	fretim = 2;	
	HI_REG_WRITE32(LEDC_FRETIM, fretim);
	
	// 1.3
	keytim = 0;
	HI_REG_WRITE32(LEDC_KEYTIM, keytim);

	HI_REG_WRITE32(LEDC_SYSTIM, 0x5);	

    /*Clean all interrupts*/  /*CNcomment: 2.1 清所有中断*/
	HI_REG_WRITE32(LEDC_KEYINT, 0);

	/* Mask bits*/  /*CNcomment:2.2 屏蔽位*/ 
	HI_REG_WRITE32(LEDC_CONTROL, 0x3);

	keyled_enable_usr(0x03);
	
	return;	
}

void no_display_usr(void)
{
	HI_U32 reg;

	HI_REG_READ32(LEDC_CONTROL, reg);
	reg &= 0xfffffeff;
	HI_REG_WRITE32(LEDC_CONTROL, reg);

	HI_REG_WRITE32(LEDC_DATA1, 0x00);
	HI_REG_WRITE32(LEDC_DATA2, 0x00);
	HI_REG_WRITE32(LEDC_DATA3, 0x00);
	HI_REG_WRITE32(LEDC_DATA4, 0x00);

	// 2 TODO  LEDC_ENABLE; 
	HI_REG_READ32(LEDC_CONTROL, reg);
	reg |= 0x0100;
	HI_REG_WRITE32(LEDC_CONTROL, reg);

	return;
}

void keyled_disable_usr()
{
	HI_U32 reg = 0;

	HI_REG_WRITE32(LEDC_DATA1, 0x00);
	HI_REG_WRITE32(LEDC_DATA2, 0x00);
	HI_REG_WRITE32(LEDC_DATA3, 0x00);
	HI_REG_WRITE32(LEDC_DATA4, 0x00);

	HI_REG_READ32(LEDC_CONTROL, reg);
	reg &= 0xfffffef7;
	HI_REG_WRITE32(LEDC_CONTROL, reg);
	
	return;
}

void keyled_isr_usr(void)
{
	HI_U8 key,IntVal;
	HI_U32 reg;

	HI_REG_READ32(LEDC_KEYINT, reg);
	IntVal = reg & 0x3;
	
	if(IntVal)
	{
		if (IntVal & 0x2)	// keypress int
		{
			// 0 mask
			HI_REG_READ32(LEDC_CONTROL, reg);
			reg &= 0xfffffffc;
			HI_REG_WRITE32(LEDC_CONTROL, reg);
			
			// 2 val
			HI_REG_READ32(LEDC_KEYDATA, reg);
			reg &= 0xff;
			switch (reg)
			{
				/* suppose the last right key is designed for power */
	    		/* CNcomment:假定最右的那个键是待机键               */
				case KEY_7_PRESS: 
					key = 8;
					break;
				case KEY_6_PRESS:
				case KEY_5_PRESS:
				case KEY_4_PRESS:
				case KEY_3_PRESS:
				case KEY_2_PRESS:
				case KEY_1_PRESS:
				case KEY_0_PRESS:
				default:
					key = 0xff;
					break;
			}

			if (key == klPmocVal)
			{
				KeyPressFlag_CT1642 = 1;

				/* clear press key interruput */
				HI_REG_READ32(LEDC_KEYINT, reg);
				reg |= 0x2;
				HI_REG_WRITE32(LEDC_KEYINT, reg);
				
				//  umask
				HI_REG_READ32(LEDC_CONTROL, reg);
				reg |= 0x3;
				HI_REG_WRITE32(LEDC_CONTROL, reg);
			}
			else
			{
				/* clear press and release key interruput */
				HI_REG_READ32(LEDC_KEYINT, reg);
				reg |= 0x3;
				HI_REG_WRITE32(LEDC_KEYINT, reg);
				
				//  umask
				HI_REG_READ32(LEDC_CONTROL, reg);
				reg |= 0x3;
				HI_REG_WRITE32(LEDC_CONTROL, reg);
			}
		}
		else if (1 == KeyPressFlag_CT1642 && (IntVal & 0x1))  //key release int 
		{
			pmocType = 1;
			pmocflag = 1;

			//  mask
			HI_REG_READ32(LEDC_CONTROL, reg);
			reg &= 0xfffffffc;
			HI_REG_WRITE32(LEDC_CONTROL, reg);

			/* clear press and release key interruput */
			HI_REG_READ32(LEDC_KEYINT, reg);
			reg |= 0x3;
			HI_REG_WRITE32(LEDC_KEYINT, reg);
		}
		else
		{
			/* clear press and release key interruput */
			HI_REG_READ32(LEDC_KEYINT, reg);
			reg |= 0x3;
			HI_REG_WRITE32(LEDC_KEYINT, reg);
		}
	}
	return;
}

void timer_display_usr(void)
{
	HI_U8 index;
	HI_U32 reg;
	
	// TODO
	HI_REG_READ32(LEDC_CONTROL, reg);
	reg &= 0xfffffeff;
	HI_REG_WRITE32(LEDC_CONTROL, reg);
	
	// 1.0  hour 
	index = time_hour / 10; 
	if (time_dot)
	{
		reg = LedDigDisDot_ct1642[index];
	}
	else
	{
		reg = LedDigDisCode_ct1642[index];
	}
	//reg = LedDigDisCode_ct1642[index];
	HI_REG_WRITE32(LEDC_DATA1, reg);
	
	// 1.1
	index = time_hour - index * 10;
	if (time_dot)
	{
		reg = LedDigDisDot_ct1642[index];
	}
	else
	{
		reg = LedDigDisCode_ct1642[index];
	}
	HI_REG_WRITE32(LEDC_DATA2, reg);

	// 1.2
	index = time_minute / 10; 
#if 0
	if (time_dot)
	{
		reg = LedDigDisCode_ct1642[index];
	}
	else
	{
		reg = LedDigDisCode_ct1642[index];
	}
#endif	
	reg = LedDigDisCode_ct1642[index];
	HI_REG_WRITE32(LEDC_DATA3, reg);
	
	// 1.3
	index = time_minute - index * 10;
	reg = LedDigDisCode_ct1642[index];
	HI_REG_WRITE32(LEDC_DATA4, reg);
	
	// 2 TODO  LEDC_ENABLE; 
	HI_REG_READ32(LEDC_CONTROL, reg);
	reg |= 0x0100;
	HI_REG_WRITE32(LEDC_CONTROL, reg);
	
	return;
}

void chan_display_usr(void)
{
	HI_U8 index;
	HI_U32 reg;

	// TODO
	HI_REG_READ32(LEDC_CONTROL, reg);
	reg &= 0xfffffeff;
	HI_REG_WRITE32(LEDC_CONTROL, reg);

	// 1.0 
	index = (channum >> 24) & 0xff; 
	reg = LedDigDisCode_ct1642[index];
	HI_REG_WRITE32(LEDC_DATA1, reg);
	
	// 1.1
	index = (channum >> 16) & 0xff; 
	reg = LedDigDisCode_ct1642[index];
	HI_REG_WRITE32(LEDC_DATA2, reg);

	// 1.2
	index = (channum >> 8) & 0xff; 
	reg = LedDigDisCode_ct1642[index];
	HI_REG_WRITE32(LEDC_DATA3, reg);

	// 1.3
	index = (channum ) & 0xff; 
	reg = LedDigDisCode_ct1642[index];
	HI_REG_WRITE32(LEDC_DATA4, reg);

	// 2 TODO  LEDC_ENABLE; 
	HI_REG_READ32(LEDC_CONTROL, reg);
	reg |= 0x0100;
	HI_REG_WRITE32(LEDC_CONTROL, reg);
	
	return;

}

void dbg_display_usr(HI_U16 val)
{
//	HI_U16 tmp;
	HI_U16 index;
	HI_U32 reg;

	if(val > 9999)
	{
		return;
	}
	
	// 0
	//printf_char('e');
	
	HI_REG_READ32(LEDC_CONTROL, reg);
	reg &= 0xfffffeff;
	HI_REG_WRITE32(LEDC_CONTROL, reg);	
	
	// 1.0 
	index = val % 10;  
	reg = LedDigDisCode_ct1642[index];
	HI_REG_WRITE32(LEDC_DATA4, reg);
	
	// 1.1
	val = val / 10;
	index = val % 10;
	reg = LedDigDisCode_ct1642[index];
	HI_REG_WRITE32(LEDC_DATA3, reg);
	
	// 1.2
	val = val / 10;
	index = val % 10;
	reg = LedDigDisCode_ct1642[index];
	HI_REG_WRITE32(LEDC_DATA2, reg);
	
	// 1.3
	val = val / 10;
	index = val % 10;
	reg = LedDigDisCode_ct1642[index];
	HI_REG_WRITE32(LEDC_DATA1, reg);
	
	// 2 TODO  LEDC_ENABLE; 
	HI_REG_READ32(LEDC_CONTROL, reg);
	reg |= 0x0100;
	HI_REG_WRITE32(LEDC_CONTROL, reg);
	
	return;
}

#endif

