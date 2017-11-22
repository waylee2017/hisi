#include "base.h"
#include "keyled.h"


/************************************************************************* 
						timer  module
*************************************************************************/

HI_U8  time_hour;
HI_U8  time_minute;
HI_U8  time_second;
HI_U8  time_cnt;
HI_U8  time_mod;
HI_U8  time_dot;
HI_U8  time_type;
HI_U32 waittime;

void timer_reset(void)
{
	HI_U32 reg = 0;
	
	/* 1. disable timer1 and set the 32-bit count*/
	HI_REG_WRITE32(TIMER_BASE_ADDR + TIMER_CONTROL, 0x02);

	/* 2. set the Timer Load 24M */
	{
		if (kltype == 0)
		{ 
			// std panel
			time_mod = 1;
			reg = 0x016e3600;
		}
		else
		{   
		    /*For the unstandard panel , the led refresh /key scan must be set by yourself*/
		    /*CNcomment: 客户前面板必须人为调用led刷新/key 扫描*/
#if(defined KEYLED_PT6961) || (defined KEYLED_TM1618A) || (defined KEYLED_PT6964) || (defined KEYLED_FD650)
	        time_mod = 8;
			reg = 0x002dc6c0;
#endif

#ifdef KEYLED_CT1642_INNER
			time_mod = 1;
			reg = 0x016e3600;
#endif

#ifdef KEYLED_CT1642
		    time_mod = 50;
			reg = 0x00075300;
#endif
		}
	}
	HI_REG_WRITE32(TIMER_BASE_ADDR + TIMER_LOAD, reg);
	
#if 0 //do not need to choose, it always is 24M;
	/* 3. use bus clock in PMOC. In DOZE mode , it's 200K / (6 * 2) */
	HI_REG_READ32(0x101e0000, reg);
	reg |= 0x00010000;
	HI_REG_WRITE32(0x101e0000, reg);
#endif

	/* 4. set Timer control */
	HI_REG_WRITE32(TIMER_BASE_ADDR + TIMER_CONTROL, 0x62);
	
	/* 5. clear int */
	HI_REG_WRITE32(TIMER_BASE_ADDR + TIMER_INTCLR, 0x01);
	
}

void timer_getParam(void) 
{
#if 0
	time_type = 2;
	time_hour = 9;
	time_minute = 58;
	time_second = 0;

	waittime = 0xff;
#else
	HI_U32 reg;

	HI_REG_READ32(DATA_BASE_ADDR + DATA_DISPMODE, reg);

	reg = reg & 0xff;
	if (reg == 2)
	{       
		// timer display
		HI_REG_READ32(DATA_BASE_ADDR + DATA_DISPVAL, reg);

		time_type = 2;

		time_hour = (reg & 0x00ff0000) >> 16;
		time_minute = (reg & 0x0000ff00) >> 8;
		time_second = reg & 0x000000ff;
		
		if ((time_hour>= 24) 
				|| (time_minute >= 60)	
				|| (time_second >= 60))
		{
			// default value
			time_hour = 9;
			time_minute = 58;
			time_second = 0;
		}
	}
	else if (reg == 1)
	{ 
		// channel display
		HI_REG_READ32(DATA_BASE_ADDR + DATA_DISPVAL, reg);
		
		time_type = 1;

		channum = reg;
	}
	else
	{							
		// no display
		time_type = 0;
	}
	
	HI_REG_READ32(DATA_BASE_ADDR + DATA_TIMEVAL, reg);
	waittime = reg;
#endif
	return;
}

void timer_resetParam(void)
{
#ifdef TEST_ON
	time_type = 2;
	time_dot = 0;
	time_hour   = 9;
	time_minute = 58;
	time_second = 0;
	time_cnt = 0;
	time_mod = 0;
	channum.val8[0] = 0;
	channum.val8[1] = 0;
	channum.val8[2] = 0;
	channum.val8[3] = 0;
	waittime = 0xffffffff;
#else
	timer_getParam(); 
	time_dot = 0;
	time_cnt = 0;
	time_mod = 0;
#endif
	return;
}

#if 1
void timer_isr(void)
{
	HI_U32 reg;

	HI_REG_READ32(TIMER_BASE_ADDR + TIMER_RIS, reg);
	reg = reg & 0xff;
	
	if (reg)
	{
		// disable interrupt	
		HI_REG_READ32(TIMER_BASE_ADDR + TIMER_CONTROL, reg);
		reg &= 0xffffffcf;
		HI_REG_WRITE32(TIMER_BASE_ADDR + TIMER_CONTROL, reg);
		
		// clear interrupt
		HI_REG_WRITE32(TIMER_BASE_ADDR + TIMER_INTCLR, 0x1);
		
		// enable interrupt
		HI_REG_READ32(TIMER_BASE_ADDR + TIMER_CONTROL, reg);
		reg |= 0x30;
		HI_REG_WRITE32(TIMER_BASE_ADDR + TIMER_CONTROL, reg);
		
		
		// calc val
		time_cnt++;
		if (time_cnt != time_mod)
		{
			// just for ct1642
#ifdef KEYLED_CT1642
			if(time_type == 2 )
			{
				timer_display();
			}
			else if (time_type == 1 )
			{
				chan_display();
			}
#endif
			return;
		}
		time_cnt = 0;

		if (time_type == 2)
		{	
			time_dot = (1 - time_dot);

			time_second++;
			if (time_second >= 60)
			{
				time_second -= 60;
				time_minute++; 
			}
			
			if (time_minute >= 60)
			{
				time_minute -= 60;
				time_hour++;
			}
			
			if (time_hour >= 24)
			{
				time_hour = 0;
			}
	
			timer_display();
	
		}
		else if (time_type == 1)
		{
#ifdef KEYLED_CT1642
			chan_display();
#endif
		}
		else
		{
			// do not need to do anything
		}

		// 3 time for waking up 
		if (pmocflag == 0)
		{
			if (waittime != 0)
			{
				waittime--;
				return;
			}
			pmocType = 2;
			pmocflag = 1;
		}
	
	}
	return;
}
#endif

#if 0
void do_wait(void)
{
	HI_U16 i = 0;
	
	dbg_val(0x15, 0x00);
	
	while (1)
	{
		regAddr.val32 = TIMER_BASE_ADDR + TIMER_RIS;
		read_regVal();
		
		if (regData.val8[3])
		{
			// disable		
			regAddr.val32 = TIMER_BASE_ADDR + TIMER_CONTROL;
			read_regVal();
			regData.val8[3] &= 0xcf;
			write_regVal();
			
			// clear
			regData.val8[0] = 0x00;
			regData.val8[1] = 0x00;
			regData.val8[2] = 0x00;
			regData.val8[3] = 0x01;
			regAddr.val32 = TIMER_BASE_ADDR + TIMER_INTCLR;
			write_regVal();
			
			// enable
			regAddr.val32 = TIMER_BASE_ADDR + TIMER_CONTROL;
			read_regVal();
			regData.val8[3] |= 0x30;
			write_regVal();
			
			i++;
		}
		
		if (i >= 3)
		{
			dbg_val(0x15, i);
			break;
		}
	}
	
	return;
}
#endif

void timer_enable(void) 
{ 
	HI_U32 reg;
	
	HI_REG_READ32(TIMER_BASE_ADDR + TIMER_CONTROL, reg);
	reg |= 0x80;
	HI_REG_WRITE32(TIMER_BASE_ADDR + TIMER_CONTROL, reg);

	return;
}

void timer_disable(void)
{ 
	HI_U32 reg;

	HI_REG_READ32(TIMER_BASE_ADDR + TIMER_CONTROL, reg);
	reg &= 0xffffff7f;
	HI_REG_WRITE32(TIMER_BASE_ADDR + TIMER_CONTROL, reg);

	return;	
}

#if 0
void do_wdgon(void)
{
	if (wdgon == 0)
	{
		return;
	}

	//0 disable timer1
	regData.val32 = 0x0;
	regAddr.val32 = TIMER_BASE_ADDR + TIMER_CONTROL;
	write_regVal();
	
	//1 timer sel  // 3s
	regData.val8[0] = 0x00;
	regData.val8[1] = 0x2d;
	regData.val8[2] = 0xc6;
	regData.val8[3] = 0xc0;
	regAddr.val32 = TIMER_BASE_ADDR + TIMER_LOAD;
	write_regVal();
	
	// 2 cfg   
	regData.val8[0] = 0x00;
	regData.val8[1] = 0x00;
	regData.val8[2] = 0x00;
	regData.val8[3] = 0x62;    /* one  frequency-division*/        /*CNcomment:1分频*/ 
	//regData.val8[3] = 0xe2;     /* one  frequency-division*/     /*CNcomment:1分频*/ 
	//regData.val8[3] = 0xe6;     /* sixteen frequency-division*/  /*CNcomment:16分频*/ 
	//regData.val8[3] = 0xee;     /*ten frequency-division*/       /*CNcomment:10分频*/ 
	regAddr.val32 = TIMER_BASE_ADDR +TIMER_CONTROL;
	write_regVal();
	
	// 3 clear int
	regData.val8[0] = 0x00;
	regData.val8[1] = 0x00;
	regData.val8[2] = 0x00;
	regData.val8[3] = 0x01;
	regAddr.val32 = TIMER_BASE_ADDR + TIMER_INTCLR;
	write_regVal();
	
	// 4
	timer_enable();

	// 5
	do_wait();
	
	// 6
	regData.val8[0] = 0x00;
	regData.val8[1] = 0x00;
	regData.val8[2] = 0x00;
	regData.val8[3] = 0x01;
	regAddr.val32 = TIMER_BASE_ADDR + 0x101e0050;
	write_regVal();

	return;
}
#endif

