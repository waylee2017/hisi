#include "base.h"
#include "keyled.h"


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
HI_U8  ledDisDot [10] = {0x02,0x9E,0x24,0x0c,0x98,0x48,0x40,0x1e,0x00,0x08};
HI_U8  ledDisCode[10] = {0x03,0x9F,0x25,0x0d,0x99,0x49,0x41,0x1f,0x01,0x09};

HI_U8 KeyPressFlag = 0;

void keyled_reset_std(void)
{
	HI_U32 clktim = 0;
	HI_U32 fretim = 0;
	HI_U32 keytim = 0;
	//HI_U32 flashtim = 0;
	HI_U32 reg = 0;
	
	KeyPressFlag = 0;
	
	// 0
	HI_REG_WRITE32(LEDC_CONTROL, 0);
		
	// 1.0  TODO change 
	reg |= 0x02;
	reg &= 0xfe;
	HI_REG_WRITE32(LEDC_CONFIG, reg);
	
	// 1.1
	clktim = 3;

	if (clktim < 1)
	{
		clktim = 0;
	}
	else
	{
		clktim--;
	}
	HI_REG_WRITE32(LEDC_CLKTIM, clktim);
	
	// 1.2
	fretim = 3;
	if (fretim < 1)
	{
		fretim = 0;
	}
	else
	{
		fretim--;
	}
	HI_REG_WRITE32(LEDC_FRETIM, fretim);
	
	// 1.3

	/*1.4. Flash or not*/  /* CNcomment:1.4 是否闪烁*/

	 /*2.0 Keypad scan disabled. */
	 /* CNcomment:2.0 key  此时键盘扫描已经非使能*/	
	keytim = 5;
	if (keytim < 1)
	{
		keytim = 0;
	}
	else
	{
		keytim--;
	}
	HI_REG_WRITE32(LEDC_KEYTIM, keytim);

    /*Clean all interrupts*/  /*CNcomment: 2.1 清所有中断*/
	HI_REG_WRITE32(LEDC_KEYINT, 0);

	/* Mask bits*/  /*CNcomment:2.2 屏蔽位*/ 
	HI_REG_WRITE32(LEDC_CONTROL, 0x3);
	
	return;	
}

void keyled_enable_std(HI_U8 type)
{
	HI_U32 reg = 0;
	
	HI_REG_READ32(LEDC_CONTROL, reg);
	
	if (type & 0x01)
	{
		reg |= 0x0100;  // LEDC_ENABLE
	}
	
	if (type & 0x02)
	{
		reg |= 0x08;  //KEYPAD_ENABLE 
	}
	HI_REG_WRITE32(LEDC_CONTROL, reg);
	
	return;
}

void keyled_disable_std(HI_U8 type)
{
	HI_U32 reg = 0;
	
	HI_REG_READ32(LEDC_CONTROL, reg);

	if (type & 0x01)
	{
		reg &= 0xfffffeff;  // LEDC_DISABLE
	}
	if (type & 0x02)
	{
		reg &= 0xfffffff7;  //KEYPAD_DISABLE 
	}
	HI_REG_WRITE32(LEDC_CONTROL, reg);
	
	return;
}

void keyled_isr_std(void)
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
				case KEY_7_PRESS:
					key = 7;
					break;
				case KEY_6_PRESS:
					key = 6;
					break;
				case KEY_5_PRESS:
					key = 5;
					break;
				case KEY_4_PRESS:
					key = 4;
					break;
				case KEY_3_PRESS:
					key = 3;
					break;
				case KEY_2_PRESS:
					key = 2;
					break;
				case KEY_1_PRESS:
					key = 1;
					break;
				case KEY_0_PRESS:
					key = 0;
					break;
				default:
					key = 8;
					break;
			}

			if (key == klPmocVal)
			{
				KeyPressFlag = 1;

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
		else if (1 == KeyPressFlag && (IntVal & 0x1))  //key release int 
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

void timer_display_std(void)
{
	HI_U8 index;
	HI_U32 reg;
	
	// TODO
	HI_REG_READ32(LEDC_CONTROL, reg);
	reg &= 0xfffffeff;
	HI_REG_WRITE32(LEDC_CONTROL, reg);
	
	// 1.0  hour 
	index = time_hour / 10; 
	reg = ledDisCode[index];
	HI_REG_WRITE32(LEDC_DATA1, reg);
	
	// 1.1
	index = time_hour - index * 10;
	if (time_dot)
	{
		reg = ledDisDot[index];
	}
	else
	{
		reg = ledDisCode[index];
	}
	HI_REG_WRITE32(LEDC_DATA2, reg);

	// 1.2
	index = time_minute / 10; 
	if (time_dot)
	{
		reg = ledDisDot[index];
	}
	else
	{
		reg = ledDisCode[index];
	}
	HI_REG_WRITE32(LEDC_DATA3, reg);
	
	// 1.3
	index = time_minute - index * 10;
	reg = ledDisCode[index];
	HI_REG_WRITE32(LEDC_DATA4, reg);
	
	// 2 TODO  LEDC_ENABLE; 
	HI_REG_READ32(LEDC_CONTROL, reg);
	reg |= 0x0100;
	HI_REG_WRITE32(LEDC_CONTROL, reg);
	
	return;
}

void chan_display_std(void)
{
	HI_U8 index;
	HI_U32 reg;

	// TODO
	HI_REG_READ32(LEDC_CONTROL, reg);
	reg &= 0xfffffeff;
	HI_REG_WRITE32(LEDC_CONTROL, reg);

	// 1.0 
	index = (channum >> 24) & 0xff; 
	reg = ledDisCode[index];
	HI_REG_WRITE32(LEDC_DATA1, reg);
	
	// 1.1
	index = (channum >> 16) & 0xff; 
	reg = ledDisCode[index];
	HI_REG_WRITE32(LEDC_DATA2, reg);

	// 1.2
	index = (channum >> 8) & 0xff; 
	reg = ledDisCode[index];
	HI_REG_WRITE32(LEDC_DATA3, reg);

	// 1.3
	index = (channum ) & 0xff; 
	reg = ledDisCode[index];
	HI_REG_WRITE32(LEDC_DATA4, reg);

	// 2 TODO  LEDC_ENABLE; 
	HI_REG_READ32(LEDC_CONTROL, reg);
	reg |= 0x0100;
	HI_REG_WRITE32(LEDC_CONTROL, reg);
	
	return;

}

void no_display_std(void)
{
	HI_U32 reg;

	HI_REG_READ32(LEDC_CONTROL, reg);
	reg &= 0xfffffeff;
	HI_REG_WRITE32(LEDC_CONTROL, reg);

	HI_REG_WRITE32(LEDC_DATA1, 0xff);
	HI_REG_WRITE32(LEDC_DATA2, 0xff);
	HI_REG_WRITE32(LEDC_DATA3, 0xff);
	HI_REG_WRITE32(LEDC_DATA4, 0xff);

	// 2 TODO  LEDC_ENABLE; 
	HI_REG_READ32(LEDC_CONTROL, reg);
	reg |= 0x0100;
	HI_REG_WRITE32(LEDC_CONTROL, reg);

	return;
}

void dbg_display_std(HI_U16 val)
{
//	HI_U16 tmp;
	HI_U16 index;
	HI_U32 reg;

	if(val > 9999)
	{
		return;
	}
	
	// 0
	
	HI_REG_READ32(LEDC_CONTROL, reg);
	reg &= 0xfffffeff;
	HI_REG_WRITE32(LEDC_CONTROL, reg);	
	
	// 1.0 
	index = val % 10;  
	reg = ledDisCode[index];
	HI_REG_WRITE32(LEDC_DATA4, reg);
	
	// 1.1
	val = val / 10;
	index = val % 10;
	reg = ledDisCode[index];
	HI_REG_WRITE32(LEDC_DATA3, reg);
	
	// 1.2
	val = val / 10;
	index = val % 10;
	reg = ledDisCode[index];
	HI_REG_WRITE32(LEDC_DATA2, reg);
	
	// 1.3
	val = val / 10;
	index = val % 10;
	reg = ledDisCode[index];
	HI_REG_WRITE32(LEDC_DATA1, reg);
	
	// 2 TODO  LEDC_ENABLE; 
	HI_REG_READ32(LEDC_CONTROL, reg);
	reg |= 0x0100;
	HI_REG_WRITE32(LEDC_CONTROL, reg);
	
	return;
}

