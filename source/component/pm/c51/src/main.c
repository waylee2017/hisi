#include "base.h"
#include "gpio.h"
#include "keyled.h"
#include "ir.h"
#include "timer.h"

static HI_U8 g_u8ChipType;
static HI_U8 g_u8HighWakeUp;

static HI_U8 g_u8GpioPort = 0xff;

static HI_U8 g_u8KeyEnterPmoc = 0x0;

DATA_U32_S  para_timeval={0xffffffff};

#define DDRPHY_ARRAY_COUNT 4
#define DDRPHY_REG_COUNT 20
#define RESUME_FLAG 0x66031013


extern HI_VOID ADVCA_RUN_CHECK(HI_VOID);
extern xdata HI_U8 g_u8CaVendorId;

extern HI_U32 u32UartBaseAddr;

/*************************************************************************
                        main  module
*************************************************************************/
HI_U8 intStatus, intStatus1, intStatus2;
HI_VOID intr_process() interrupt 4
{
    if (HI_FALSE != pmocflag)
    {
        return;
    }

    EA = 0;
    INT_MASK_0 = 0x0;
    INT_MASK_1 = 0x0;
    INT_MASK_2 = 0x0;

    intStatus  = INT_STATUS_IP0;
    intStatus1 = INT_STATUS_IP1;
    intStatus2 = INT_STATUS_IP2;

    if ((g_u8GpioPort != 0xff) && (intStatus & 0x10)) //bit4
    {
          gpio_isr(g_u8GpioPort);
    }
  
    /* The keyled who use GPIO to get key has no interrupt, so it needs other */
    /* interrupts to help itself to check key.                                */
#if (defined KEYLED_CT1642_INNER) 
    if ((intStatus & 0x10)) //bit4
#endif
    {
        KEYLED_Isr();
    }

    if (intStatus & 0x02) //bit1
    {
        TIMER_Isr();
    }
    else if (intStatus & 0x08) //bit3
    {
        IR_Isr();
    }

    if (intStatus2 & 0x40) //bit22
    {
        regAddr.val32 = PMT_CTRL_REG1;
	    read_regVal();
	    regData.val8[3]&=0xf7;
	    write_regVal();
	    regAddr.val32 = PMT_CTRL_REG2;
	    read_regVal();
	    regData.val8[3]&=0xf7;
	    write_regVal();

        pmocflag = HI_TRUE;
        pmocType = HI_UNF_PMOC_WKUP_ETH;
    }
   /* else if (intStatus2 & 0x01) //bit 16
    {
        //printf_char('u');
        pmocflag = HI_TRUE;
        pmocType = HI_UNF_PMOC_WKUP_USB;
    }*/

    if (pmocflag == HI_FALSE)
    {
        INT_MASK_0 = 0x1a;
        INT_MASK_1 = 0x10;//usb
        INT_MASK_2 = 0x40;
    }

    EA = 1;

    return;
}

HI_VOID MCUInit(HI_VOID)
{
    EA = 0;
    ARM_INTR_MASK = 0xff;  // intr mask
    INT_MASK_0 = 0x1a;     //  key ir timer intr
    INT_MASK_1 = 0x10;     // USB
    INT_MASK_2 = 0x40;     //SF
    INT_MASK_3 = 0x00;

    RI = 0;
    TI = 0;
    ES = 1;
}


HI_VOID GetInitParams(HI_VOID)
{
    HI_U8 i;

	if(get_advca_support()==SUPPORT_ADVCA)
	{
		/* Get the chip type and standby scene */
		regAddr.val32 = DATA_CHIP_REG;
		read_regVal();
		g_u8ChipType = regData.val8[3];
		g_u8HighWakeUp = regData.val8[2];

		if (NORMAL_WAKEUP != g_u8HighWakeUp)
		{
		 	regAddr.val32 = PMT_CTRL_REG1;
			read_regVal();
			regData.val8[3]|=0x8;
			write_regVal();
			regAddr.val32 = PMT_CTRL_REG2;
			read_regVal();
			regData.val8[3]|=0x8;
			write_regVal();
		}

		regAddr.val32 = DATA_WDGON_REG;
		read_regVal();
		wdgon = regData.val8[3] & 0x1;

		/* Get the debug param */
		regAddr.val32 = DATA_DBGMASK_REG;
		read_regVal();
		dbgmask = regData.val8[3] & 0x7;

		/*record gpio index, between 40 and 47 */
    	regAddr.val32 = DATA_GPIO0_REG;
    	read_regVal();
    	GpioValArray[0] = regData.val8[3];

		/*record gpio output, 1 or 0 */
    	regAddr.val32 = DATA_GPIO1_REG;
    	read_regVal();
    	GpioValArray[1] = regData.val8[3];
		
		regAddr.val32 = DATA_DISPMODE_REG;
		read_regVal();
    	time_type = regData.val8[3];

		regAddr.val32 = DATA_DISPVAL_REG;
		read_regVal();
    	if (time_type == TIME_DISPLAY)
    	{
        // timer display
        	if ((regData.val8[1] >= 24)
                ||(regData.val8[2] >= 60)
                ||(regData.val8[3] >= 60))
        	{
            	// default value
            	time_hour = 9;
            	time_minute = 58;
            	time_second = 0;
        	}
        	else
        	{
            	time_hour = regData.val8[1];
            	time_minute = regData.val8[2];
            	time_second = regData.val8[3];
        	}
    	}
		
		else if (time_type == DIGITAL_DISPLAY)
		{
			   // channel display
			 g_channum.val32 = regData.val32;
		 }
		
		/* Get the time out of wake up */
		regAddr.val32 = DATA_TIMEVAL_REG;
		read_regVal();
    	waittime.val32 = regData.val32;
        para_timeval.val32 = regData.val32;
		
		regAddr.val32 = DATA_KEYVAL_REG;
		read_regVal();
		klPmocVal = regData.val8[3];
		

		/* Get gpio port param */
    	regAddr.val32 = DATA_GPIOPORT_REG;
    	read_regVal();
    	if (regData.val8[3] != 0xff)
    	{
       		g_u8GpioPort = regData.val8[3];
    	}

		/* Get CAID */
    	regAddr.val32 = DATA_CAID_REG;
    	read_regVal();
		g_u8CaVendorId = regData.val8[3];
    	
		/* Get the IR param */
		regAddr.val32 = DATA_IRTYPE_REG;
		read_regVal();
		ir_type = regData.val8[3];
		
		regAddr.val32 = DATA_IRNUM_REG;
		read_regVal();
		ir_pmocnum = regData.val8[3];

		regAddr.val32 = DATA_IRVAL_REG;
    	for (i = 0; i < ir_pmocnum; i++)
    	{
        	read_regVal();
        	irPmocLval[i].val32 = regData.val32;
        	regAddr.val8[3] += 0x4;
        	read_regVal();
        	irPmocHval[i].val32 = regData.val32;
        	regAddr.val8[3] += 0x4;
    	}
			
	}
	else
	{
		/* Get the chip type and standby scene */
		regAddr.val32 = DATA_CHIP;
		read_regVal();
		g_u8ChipType = regData.val8[3];
		g_u8HighWakeUp = regData.val8[2];

		if (NORMAL_WAKEUP != g_u8HighWakeUp)
		{
		 	regAddr.val32 = PMT_CTRL_REG1;
			read_regVal();
			regData.val8[3]|=0x8;
			write_regVal();
			regAddr.val32 = PMT_CTRL_REG2;
			read_regVal();
			regData.val8[3]|=0x8;
			write_regVal();
		}

		regAddr.val32 = DATA_WDGON;
		read_regVal();
		wdgon = regData.val8[3] & 0x1;

		/* Get the debug param */
		regAddr.val32 = DATA_DBGMASK;
		read_regVal();
		dbgmask = regData.val8[3] & 0x7;

		/*record gpio index, between 40 and 47 */
    	regAddr.val32 = DATA_GPIO0;
    	read_regVal();
    	GpioValArray[0] = regData.val8[3];

		/*record gpio output, 1 or 0 */
    	regAddr.val32 = DATA_GPIO1;
    	read_regVal();
    	GpioValArray[1] = regData.val8[3];

		regAddr.val32 = DATA_DISPMODE;
		read_regVal();
    	time_type = regData.val8[3];

		regAddr.val32 = DATA_DISPVAL;
		read_regVal();
    	if (time_type == TIME_DISPLAY)
    	{
        // timer display
        	if ((regData.val8[1] >= 24)
                ||(regData.val8[2] >= 60)
                ||(regData.val8[3] >= 60))
        	{
            	// default value
            	time_hour = 9;
            	time_minute = 58;
            	time_second = 0;
        	}
        	else
        	{
            	time_hour = regData.val8[1];
            	time_minute = regData.val8[2];
            	time_second = regData.val8[3];
        	}
    	}
		else if (time_type == DIGITAL_DISPLAY)
		{
			   // channel display
			 g_channum.val32 = regData.val32;
		}
		
		/* Get the time out of wake up */
		regAddr.val32 = DATA_TIMEVAL;
		read_regVal();
    	waittime.val32 = regData.val32;
		para_timeval.val32 = regData.val32;

		regAddr.val32 = DATA_KEYVAL;
    	read_regVal();
    	klPmocVal = regData.val8[3];

    	/* Get the IR param */
    	regAddr.val32 = DATA_IRTYPE;
    	read_regVal();
    	ir_type = regData.val8[3];

    	regAddr.val32 = DATA_IRNUM;
    	read_regVal();
    	ir_pmocnum = regData.val8[3];

    	regAddr.val32 = DATA_IRVAL;
    	for (i = 0; i < ir_pmocnum; i++)
    	{
        	read_regVal();
        	irPmocLval[i].val32 = regData.val32;
        	regAddr.val8[3] += 0x4;
        	read_regVal();
        	irPmocHval[i].val32 = regData.val32;
        	regAddr.val8[3] += 0x4;
    	}
	
    	/* Get gpio port param */
    	regAddr.val32 = DATA_IRVAL + 0x8 * ir_pmocnum + 0x4;
    	read_regVal();
    	if (regData.val8[3] != 0xff)
    	{
       		g_u8GpioPort = regData.val8[3];
    	}
		
	}

    return;
}

void write_regValEx(void)
{
    *((unsigned char volatile xdata*)regAddr.val32 + 0) = regData.val8[3];
    *((unsigned char volatile xdata*)regAddr.val32 + 1) = regData.val8[2];
    *((unsigned char volatile xdata*)regAddr.val32 + 2) = regData.val8[1];
    *((unsigned char volatile xdata*)regAddr.val32 + 3) = regData.val8[0];

    return ;
}

void DDRPHYRegSave(void)
{
    HI_U8 i, j;
        /* save ddr phy reg to mcu ram                                                   */
        /* save 4 * 20 regs, begin address: 0xf8a38210, 0xf8a38290, 0xf8a38310, 0xf8a390 */
    HI_U32 u32TmpAddr;
	 
    for (i = 0; i < DDRPHY_ARRAY_COUNT; i++)
    {
        regAddr.val32 = DATA_PHY_BASE_ADDR + i * (DDRPHY_REG_COUNT + 2) * 0x4;
        regData.val32 = DDRPHY_REG_COUNT;
        write_regValEx();
        
        regAddr.val32 = DATA_PHY_BASE_ADDR + i * (DDRPHY_REG_COUNT + 2 ) * 0x4 + 0x4;
        regData.val32 = DDRPHY_BASE_ADDR + 0x210 + i * 0x80;
        write_regValEx();

         for (j = 0; j < DDRPHY_REG_COUNT; j++)
         {
             regAddr.val32 = DDRPHY_BASE_ADDR + 0x210 + i * 0x80 + j * 0x4;
             read_regVal();
             regAddr.val32 = DATA_PHY_BASE_ADDR + i * (DDRPHY_REG_COUNT + 2) * 0x4 + 0x8 + j * 0x4;
             write_regValEx();
         }
     }

     u32TmpAddr = DATA_PHY_BASE_ADDR + DDRPHY_ARRAY_COUNT * (DDRPHY_REG_COUNT + 2) * 0x4;

     /* set 0x10108070 bit 20 to 1 */
     regAddr.val32 = u32TmpAddr;
     regData.val32 = 1;
     write_regValEx();

     regAddr.val32 = u32TmpAddr + 0x4;
     regData.val32 = 0x10108070;
     write_regValEx();

     regAddr.val32 = 0x10108070;
     read_regVal();
     regData.val8[1] |= 0x10;
     regAddr.val32 = u32TmpAddr + 0x8;
     write_regValEx();

     /* set 0x10108070 bit 20 to 0 */
     regAddr.val32 = u32TmpAddr + 0xc;
     regData.val32 = 1;
     write_regValEx();

     regAddr.val32 = u32TmpAddr + 0x10;
     regData.val32 = 0x10108070;
     write_regValEx();

     regAddr.val32 = 0x10108070;
     read_regVal();
     regData.val8[1] &= 0xef;
     regAddr.val32 = u32TmpAddr + 0x14;
     write_regValEx();

     /* set 0x10108004 bit 15 to 1 */
     regAddr.val32 = u32TmpAddr + 0x18;
     regData.val32 = 1;
     write_regValEx();

     regAddr.val32 = u32TmpAddr + 0x1c;
     regData.val32 = 0x10108004;
     write_regValEx();

     regAddr.val32 = u32TmpAddr + 0x20;
     regData.val32 = 0x8000;
     write_regValEx();

     /* set 0x10108004 bit 15 to 0 */
     regAddr.val32 = u32TmpAddr + 0x24;
     regData.val32 = 1;
     write_regValEx();

     regAddr.val32 = u32TmpAddr + 0x28;
     regData.val32 = 0x10108004;
     write_regValEx();

     regAddr.val32 = u32TmpAddr + 0x2c;
     regData.val32 = 0x0;
     write_regValEx();

     /*  set the last value to 0, so bootrom will recognize the end */
     regAddr.val32 = u32TmpAddr + 0x30;
     regData.val32 = 0;
     write_regValEx();

     /* save the address of c51 ram to SC_GEN16 for bootrom restoring ddr phy reg */
     regAddr.val32 = CFG_BASE_ADDR + SC_GEN16;
     regData.val32 = DATA_PHY_BASE_ADDR;
     write_regVal();
	 
     return;
}

void DDREnterSelf(void)
{
   
    /* Config DDR to self-refresh state */
	regAddr.val32 = DDR_BASE_ADDR + DDR_SREF;
    read_regVal();
    regData.val8[3] |= 0x01;
    write_regVal();

    /* Whether DDR change to self-refresh state */
    while (1)
    {
        regAddr.val32 = DDR_BASE_ADDR + DDR_STATUS;
        read_regVal();
        if ((regData.val8[3] & 0x1) == 0x1) //bit0
        {
            break;
        }
    }

   // printf_char('e');

    regAddr.val32 = DDRPHY_BASE_ADDR + DDR_PHYCTRL0;
    read_regVal();
    regData.val8[2] &= 0xe8; //set bit 12 to 0;bit10:8 to 0
    regData.val8[3] &= 0x7f; //set bit 7 to 0;
    write_regVal();

}

void GetTimePeriod(void)
{
    HI_U32 u32TimePeriod = 0;

    u32TimePeriod = para_timeval.val32 - waittime.val32;
    /* save standby period in 51 ram */
    regAddr.val32 = CFG_BASE_ADDR + SC_GEN18;
    regData.val32 = u32TimePeriod;
    write_regVal();

    return;
}

void ResetCPU(void)
{
    /* unclock wdg */
    regAddr.val32 = 0x10201c00;
    regData.val32 = 0x1ACCE551;
    write_regVal();

    /* wdg load value */
    regAddr.val32 = 0x10201000;
    regData.val32 = 0x100;
    write_regVal();

    /* bit0: int enable bit1: reboot enable */
    regAddr.val32 = 0x10201008;
    regData.val32 = 0x3;
    write_regVal();
}

void SystemSuspend(void)
{
  
	if(get_advca_support()==SUPPORT_ADVCA)
	{
    	if(g_u8CaVendorId != CA_VENDOR_ID_NAGRA)
    	{
        	DDREnterSelf();
    	}
	}
	else
	{
		DDREnterSelf();
	}

    printf_char('f');

    /* change MCU bus clock to 24M / 8 */
    regAddr.val32 = CFG_BASE_ADDR + MCU_CTRL;
    read_regVal();
    regData.val8[3] &= 0xfc; //bit [1:0] = 0x0
    //regData.val8[2] |= 0x07; 
    write_regVal();
	
	while (1)
	{
		read_regVal();
		if ((regData.val8[3] & 0xc) == 0x0)
		{
			   break;
		}
	}

    //dbg_val(0x1f, 0x4);
    printf_char('g');

	/* x2p --> h2p */
    regAddr.val32 = CFG_BASE_ADDR + LOW_POWER_CTRL;
    read_regVal();
    regData.val8[3] |= 0x4;
    write_regVal();
    wait_minute_2(20, 20);

	 /* DDRPHY retention */
    regAddr.val32 = CFG_BASE_ADDR + DDR_PHY_ISO;
    read_regVal();
    regData.val8[3] &= 0xfc;
    regData.val8[3] |= 0x02; //bit1:0 TODO need to confirm the value.//0x03
    write_regVal();        
   
	
    if (NORMAL_WAKEUP != g_u8HighWakeUp)
    {
        //APLL  power down
        regAddr.val32 = CRG_BASE_ADDR + 0x04;
        read_regVal();
        regData.val8[1] |= 0x10;
        write_regVal();
        
       //VPLL  power down
        regAddr.val32 = CRG_BASE_ADDR + 0x24;
        read_regVal();
        regData.val8[1] |= 0x10;
        write_regVal();
      

        //EPLL  power down
        regAddr.val32 = CRG_BASE_ADDR + 0x34;
        read_regVal();
        regData.val8[1] |= 0x10;
        write_regVal();
    }

    if (!(dbgmask & 0x4))
    {
        if (NORMAL_WAKEUP == g_u8HighWakeUp)
        {
            //printf_char('h');

            /* Isolation zone configuration */
            regAddr.val32 = CFG_BASE_ADDR + LOW_POWER_CTRL;
            read_regVal();
            regData.val8[3] |= 0x8;
            write_regVal();

            //printf_char('j');

            /* Power-down area reset */
            regAddr.val32 = CFG_BASE_ADDR + MCU_SRST_CTRL;
            read_regVal();
            regData.val8[0] |= 0x10;
            write_regVal();

            //printf_char('i');
          
           /* standby powoff output 0: power down */
            regAddr.val32 = CFG_BASE_ADDR + LOW_POWER_CTRL;
            read_regVal();
            regData.val8[3] &= 0xfd; //bit 1
            write_regVal();           
        }
    }
    return;
}




HI_VOID SystemResume(HI_VOID)
{
    if (!(dbgmask & 0x4))
    {
        //check usb or network wakeup
        if (g_u8HighWakeUp != NORMAL_WAKEUP)
        {
            /* Power-down area reset */
            regAddr.val32 = CFG_BASE_ADDR + MCU_SRST_CTRL;
            read_regVal();
            regData.val8[0] |= 0x10;
            write_regVal();
        }
        else
        {
            /* standby powoff output 1: power up */
            regAddr.val32 = CFG_BASE_ADDR + LOW_POWER_CTRL;
            read_regVal();
            regData.val8[3] |= 0x02;
            write_regVal();

        	/* delay for power stable and should be more than 100ms for customer*/
        	wait_minute_3(3, 210, 210);

            /* Isolation zone resume */
            regAddr.val32 = CFG_BASE_ADDR + LOW_POWER_CTRL;
            read_regVal();
            regData.val8[3] &= 0xf7;
            write_regVal();
        }

        /* revocation of Power-down area reset */
        regAddr.val32 = CFG_BASE_ADDR + MCU_SRST_CTRL;
        read_regVal();
        regData.val8[0] &= 0xef; //bit28
        write_regVal();
		/*exit  DDRPHY retention realize in boot */
		
		/*regAddr.val32 = CFG_BASE_ADDR + DDR_PHY_ISO;
    	read_regVal();
    	regData.val8[3] &= 0xfc;
    	regData.val8[3] |= 0x01; //bit1:0 TODO need to confirm the value.//0x03
    	write_regVal();   */     

		/* h2p --> x2p */
    	regAddr.val32 = CFG_BASE_ADDR + LOW_POWER_CTRL;
    	read_regVal();
    	regData.val8[3] &= 0xfb;
    	write_regVal();
		wait_minute_2(20, 20);
        
    }

    return;
}


void main()
{
    while (1)
    {
        MCUInit();

        if(get_advca_support()==SUPPORT_ADVCA)
        {
        	printf_str("ADVCA_RUN_CHECK\r\n");
        	ADVCA_RUN_CHECK();
        }

        GetInitParams();

#ifndef HI_ADVCA_RELEASE
        printf_str("Enter MCU \r\n");
#endif

        KEYLED_Init();

        IR_Init();
        TIMER_Init();

        if (g_u8GpioPort != 0xff)
        {
            gpio_SetIntType(g_u8GpioPort);
        }

        // dbg
        //dbg_reset();

        // ir
        //ir_enable();
        //IR_Init();
		if(get_advca_support()==SUPPORT_ADVCA)
		{
        	if (g_u8CaVendorId != CA_VENDOR_ID_NAGRA)
        	{
            	DDRPHYRegSave();
        	}
	    }
		else
		{
			DDRPHYRegSave();
		}

        // suspend
        SystemSuspend();

        // enable  timer/ir/key isr
        //pmocType = 0xff;
        //pmocflag = 0;

        KEYLED_Early_Display();
        TIMER_Enable();

        if (g_u8GpioPort != 0xff)
        {
            gpio_IntEnable(g_u8GpioPort, HI_TRUE);
        }

        //keyled_enable(0x2);
        //keyled_enable(0x1);
        IR_Start();

        while (1)
        {
            wait_minute_2(10, 10);
            EA = 0;
            if (pmocflag)
            {
                break;
            }
            EA = 1;
        }


#if 1
        KEYLED_Disable();
        IR_Disable();
#endif

        TIMER_Disable();
        GetTimePeriod();
     
        if (0x0 == wdgon)//wdgon=0 ÎªÔ­µØ»½ÐÑ
        {
        	regAddr.val32 = CFG_BASE_ADDR + SC_GEN0;
        	regData.val32 = RESUME_FLAG;//power down flag
        	write_regVal();
        }

        // record wakeup type in C51 Ram
        regAddr.val32 = CFG_BASE_ADDR + SC_GEN17;
        regData.val32 = 0x0;
        regData.val8[3] = pmocType;
        write_regVal();

        // resume system
        SystemResume();

#ifndef HI_ADVCA_RELEASE
        printf_str("Resume from MCU \r\n");
#endif

		if(get_advca_support()!=SUPPORT_ADVCA)
		{

        // wait for cpu power up to shut up mcu.
        	while (1)
        	{
            	wait_minute_2(10, 10);
        	}
		}

    }

    return;
}

