//#include "keyled.h"
#include "base.h"

/************************************************************************* 
						0  base module
*************************************************************************/
/* variable*/

//define pmoc type: ir = 0; keyled = 1; timeout = 2; 
HI_U8 pmocType = 0xff;

//define cpu status: running 0xff; suspend 0; resume: 1
HI_U8 pmocflag = 0x0;

HI_U8 GpioValArray[2] = {0, 0};

extern HI_VOID dbg_display(HI_U16 val);

void printf_char(HI_U8 ch)
{ 
	HI_U32 reg;

#ifndef DEBUG_PRINT_ON
	return;
#endif

	while(1)
	{
		HI_REG_READ32(UART_BASE_ADDR + UART_FR, reg);

		if((reg & 0x20) == 0)
		{
			break;
		}   
    	wait_minute_2(20,20);
	}
		
	wait_minute_2(20,20);	
    
    HI_REG_WRITE32(UART_BASE_ADDR + UART_DR, ch);   
}

void printf_val(HI_U32 u32Data)
{
	HI_U8 i = 0;
	HI_U8 tmp = 0;
	
	printf_char(10); //line feed  '\n'
	printf_char(13); //carriage return '\r'
	printf_char('0');
	printf_char('x');

	for (i = 0; i < 8; i++)
	{
		tmp = (u32Data >> (7 - i) * 4) & 0xf;
		if (tmp > 9)
		{
			printf_char(tmp + 87);
		}
		else
		{
			printf_char(tmp + 48);
		}
	}
	printf_char(10); // '\n'
	printf_char(13); //carriage return '\r'
}

void printf_str(char *string)
{
    char *p = string;

    for(; *p!='\0'; p++)
    {
        printf_char(*p);
    }
    return;
}


/************************************************************************* 
						dbg  module
*************************************************************************/


/* valiable*/
HI_U8   dbgflag = 0;

/* function */
void dbg_val(HI_U8 pos, HI_U8 val)
{
	HI_U8 i, j;
	HI_U16 dat;

	/* show LED */
	if (dbgflag & 0x2)
	{
		dat = pos * 100 + val;
		dbg_display(dat);

		for (i = 0; i < 200; i++)
		{
			for (j = 0; j < 200; j++)
			{
				;
			}
		}				
	}

	/* save record to memory */
	if (dbgflag & 0x1)
	{
		dat = pos;
		dat = (pos << 8) + val;
		HI_REG_WRITE32(DEBUG_BASE_ADDR, dat);
	}
	
	return;
}


HI_U8   dbgmask = 0;
HI_U8   wdgon  = 0;

#if 0

HI_U8 GpioValArray[2] = {0, 0};

/*gpio para for power control, power off 12V0 5V0 */
void pwr_getParam(void)
{
	/*record gpio index, between 40 and 47 */
	regAddr.val32 = 0x600be00c;
	read_regVal(); 
	GpioValArray[0] = regData.val8[3];
	
	/*record gpio output, 1 or 0 */
	regAddr.val32 = 0x600be010;
	read_regVal(); 
	GpioValArray[1] = regData.val8[3];

	return;
}
#endif

void dbg_getParam(void)
{
	HI_U32 reg;
	
	wdgon  = 0;
	dbgmask = 0;

	HI_REG_READ32(DATA_BASE_ADDR + DATA_WDGON, reg);
	wdgon = reg & 0x01;
	

	HI_REG_READ32(DATA_BASE_ADDR + DATA_DBGMASK, reg);
	dbgmask = reg & 0x3;

	//pwr_getParam();
	
	return;
}

void dbg_resetParam(void) 
{
#ifdef TEST_ON
	wdgon  = 0;
	dbgmask = 0x3;
#else
	dbg_getParam();
#endif
	return;
}

void dbg_reset(void)
{
	dbgflag = dbgmask; 
	dbg_val(0, 0); 

	return;
}

void dbg_level(HI_U8 l) 
{
	dbgflag = (l & dbgmask); 

	return;
}


