#include "base.h"
#include "gpio.h"
#include "keyled.h"
#include "ir.h"
#include "timer.h"

static HI_U8 g_u8ChipType;
static HI_U8 g_u8HighWakeUp;

static HI_U8 g_u8GpioPort = 0xff;

static HI_U8 g_u8KeyEnterPmoc = 0x0;

void do_suspend(void)
{
    HI_U32 reg;

    /* 2.0 DDR Enter self-refresh state */	
    HI_REG_WRITE32(DDRC_BASE_ADDR + DDRC_SREFCTRL, 0x1); 
    while (1)
    {
        HI_REG_READ32(DDRC_BASE_ADDR + DDRC_STATUS, reg);
        if ((reg & 0x1) == 0x1)
        {
            break;
        }
    }
#if 1   
    /* 2.1 DDRPHY IO Retention On */	
    HI_REG_WRITE32(SYS_BASE_ADDR + SYSCTRL_DDRLP, 0x2);
    /* 2.2 DDRPHY IO Output Off */	
    HI_REG_WRITE32(DDRPHY_BASE_ADDR + DDRPHY_CTRL0, 0x2800);
    /* 2.3 DDRPHY Power-Down */	
    HI_REG_WRITE32(DDRPHY_BASE_ADDR + DDRPHY_PLL, 0x7);
#endif    


    /* 2.4 select CPU/BUS/DDR clock to XTAL */
    
    HI_REG_WRITE32(CRG_BASE_ADDR + PERI_CRG18, 0x202); 
    HI_REG_WRITE32(CRG_BASE_ADDR + PERI_CRG18, 0x602); 
    
    HI_REG_WRITE32(CRG_BASE_ADDR + PERI_CRG22, 0x3f);

    HI_REG_WRITE32(CRG_BASE_ADDR + PERI_CRG74, 0x202); 
    HI_REG_WRITE32(CRG_BASE_ADDR + PERI_CRG74, 0x602); 
    
    /* 2.5 DDRC clock off */
    HI_REG_WRITE32(CRG_BASE_ADDR + PERI_CRG25, 0x0); 


	//************cbb config  begin*********************/

	 /* QADC power down and  CLK gating */   
	 HI_REG_READ32(PERI_BASE_ADDR + PERI_QAMADC0, reg);    
	 reg &= 0xfffffffc; //bit1:0 to 00    
	 HI_REG_WRITE32(PERI_BASE_ADDR + PERI_QAMADC0, reg);
	 HI_REG_READ32(CRG_BASE_ADDR + PERI_CRG57, reg); 
	 //reg |= 0x00003300; //bit[13:12]&bit[9:8] to 11   
	 reg &= 0xffffff84; //bit[6:3] and bit[1:0] to 0    
	 HI_REG_WRITE32(CRG_BASE_ADDR + PERI_CRG57, reg);    
	 HI_REG_READ32(CRG_BASE_ADDR + PERI_CRG56, reg);  
	 //reg |= 0x00000010; //bit4 to 1     
	 reg &= 0xfffffffc; //bit[1:0] to 00    
	 HI_REG_WRITE32(CRG_BASE_ADDR + PERI_CRG56, reg);   

	 /*VDAC power down and CLK gating*/
	 HI_REG_READ32(VOU_BASE_ADDR + DACCTRL0_1, reg);    
	 reg &= 0xfefffeff; //bit24&bit8 to 0   
	 HI_REG_WRITE32(VOU_BASE_ADDR + DACCTRL0_1, reg);
	 HI_REG_READ32(VOU_BASE_ADDR + DACCTL2_3, reg);    
	 reg &= 0xfefffeff; //bit24&bit8 to 0    
	 HI_REG_WRITE32(VOU_BASE_ADDR + DACCTRL2_3, reg);
	 HI_REG_READ32(VOU_BASE_ADDR + DACCTRL, reg);    
	 reg &= 0xffbfffff; //bit22 to 0  
	 reg |= 0x00100000; //bit20 to 1  
	 HI_REG_WRITE32(VOU_BASE_ADDR + DACCTRL, reg);
	 HI_REG_READ32(CRG_BASE_ADDR + PERI_CRG54, reg);
	 //reg |= 0x40000000; //bit30 to 1     
	 reg &= 0xffff3c02; //bit[15:14]&bit[9:2] &bit0 to 0    
	 HI_REG_WRITE32(CRG_BASE_ADDR + PERI_CRG54, reg);
	 HI_REG_READ32(CRG_BASE_ADDR + PERI_CRG71, reg);    
	 reg &= 0xfffffffe; //bit0 to 0    
	 HI_REG_WRITE32(CRG_BASE_ADDR + PERI_CRG71, reg);

    /* HDMI power down and CLK gateing */
    HI_REG_READ32(HDMIPHY_BASE_ADDR | 0x0064, reg);
    reg |= 0x1fffff; 
    HI_REG_WRITE32(HDMIPHY_BASE_ADDR | 0x0064, reg); 
    HI_REG_READ32(CRG_BASE_ADDR +PERI_CRG68, reg);
    //reg |= 0x00000070;//bit[6:4]  to 0x7 
    reg &= 0xfffffff0;//bit[3:0]  to 0x0  
    HI_REG_WRITE32(CRG_BASE_ADDR+PERI_CRG68, reg);
    HI_REG_READ32(CRG_BASE_ADDR +PERI_CRG67, reg);
    reg |= 0x00000300;//bit[9:8]  to 0x3  
    reg &= 0xffffffc0;//bit[5:0]  to 0x00
    HI_REG_WRITE32(CRG_BASE_ADDR+PERI_CRG67, reg);
   
	/* USB power down and CLK gating */    
	HI_REG_READ32(CRG_BASE_ADDR + PERI_CRG47, reg);     
	//reg |= 0x0000b000;//bit11&bit[9:8] to 1
    reg &= 0xfffffffe;//bit0 to 0   
	HI_REG_WRITE32(CRG_BASE_ADDR +PERI_CRG47, reg);    
	HI_REG_READ32(CRG_BASE_ADDR +PERI_CRG46, reg);
	//reg |= 0x0001f000;//bit[16:12] to 0x1f 
    reg &= 0xffffff08;//bit[7:4] &bit[2:0]  to 0  
    HI_REG_WRITE32(CRG_BASE_ADDR+PERI_CRG46, reg);

	if (NORMAL_WAKEUP == g_u8HighWakeUp)
	{
		/*FE PHY Power Down*/
		//HI_REG_WRITE32(SF_BASE_ADDR + MDIO_RWCTRL, 0x39002100); 
	    HI_REG_READ32(PERI_BASE_ADDR + PERI_FEPHY, reg);  
	    reg |= 0x00000240; //bit9&bit6 to 1         
		HI_REG_WRITE32(PERI_BASE_ADDR + PERI_FEPHY, reg);
		HI_REG_READ32(CRG_BASE_ADDR +PERI_CRG51, reg);
		reg |= 0x00004002;//bit14&bit1  to 1 
	    reg &= 0xffffcffe;//bit13&bit12&bit0  to 0  
	    HI_REG_WRITE32(CRG_BASE_ADDR+PERI_CRG51, reg);
	}
	/*ADAC power down and CLK gating */
    HI_REG_READ32(PERI_BASE_ADDR + PERI_TIANLA_ADAC0, reg);  
    reg |= 0xf0000000; //bit[31:28] to 0xf        
    HI_REG_WRITE32(PERI_BASE_ADDR + PERI_TIANLA_ADAC0, reg);

    HI_REG_READ32(PERI_BASE_ADDR + PERI_TIANLA_ADAC2, reg);  
    reg |= 0xde808000; //bit[31:30]&bit[28:25]&bit23&bit15 to 1       
    HI_REG_WRITE32(PERI_BASE_ADDR + PERI_TIANLA_ADAC2, reg);
    HI_REG_READ32(CRG_BASE_ADDR +PERI_CRG69, reg);
    reg &= 0xfffffffe;//bit0  to 0  
    HI_REG_WRITE32(CRG_BASE_ADDR+PERI_CRG69, reg);
    HI_REG_READ32(CRG_BASE_ADDR +PERI_CRG70, reg);
    reg &= 0xfffffffe;//bit0  to 0  
    HI_REG_WRITE32(CRG_BASE_ADDR+PERI_CRG70, reg);
	   
    /*Other CBB CLK gating */
	HI_REG_READ32(CRG_BASE_ADDR +PERI_CRG28, reg);  //DNR
    reg &= 0xfffffffe;//bit0  to 0  
    HI_REG_WRITE32(CRG_BASE_ADDR+PERI_CRG28, reg);
    HI_REG_READ32(CRG_BASE_ADDR +PERI_CRG29, reg);  //SCI
    reg &= 0xfffffffa;//bit2&bit0  to 0  
    HI_REG_WRITE32(CRG_BASE_ADDR+PERI_CRG29, reg);
    HI_REG_READ32(CRG_BASE_ADDR +PERI_CRG30, reg);  //VDH
   reg &= 0xfffffffc;//bit1&bit0  to 0  
   HI_REG_WRITE32(CRG_BASE_ADDR+PERI_CRG30, reg);

   HI_REG_READ32(CRG_BASE_ADDR +PERI_CRG31, reg);  //JPGD
   reg &= 0xfffffffe;//bit0  to 0  
   HI_REG_WRITE32(CRG_BASE_ADDR+PERI_CRG31, reg);
   HI_REG_READ32(CRG_BASE_ADDR +PERI_CRG37, reg);  //TDE
   reg &= 0xfffffffe;//bit1&bit0  to 0  
   HI_REG_WRITE32(CRG_BASE_ADDR+PERI_CRG37, reg);

   HI_REG_READ32(CRG_BASE_ADDR +PERI_CRG48, reg);  //CA
   reg &= 0xfffffffe;//bit0  to 0  
   HI_REG_WRITE32(CRG_BASE_ADDR+PERI_CRG48, reg);

   HI_REG_READ32(CRG_BASE_ADDR +PERI_CRG63, reg);  //PVR-1
   reg &= 0xffffff00;//bit[7:0] to 0x00 
   HI_REG_WRITE32(CRG_BASE_ADDR+PERI_CRG63, reg);
 #if 1
   HI_REG_READ32(SYS_BASE_ADDR + SC_CLKGATE_SRST_CTRL, reg);  //CLK(UART/IR)
   reg &= 0xdfffffff; //bit29 to 0                  
   HI_REG_WRITE32(SYS_BASE_ADDR + SC_CLKGATE_SRST_CTRL, reg); 
	//************cbb config  end*********************/
#endif
	
    /* 2.6 Power-Down APLL/BPLL/DPLL/VPLL/EPLL */
    HI_REG_READ32(CRG_BASE_ADDR + PERI_CRG_PLL1, reg);
    reg |= 0x00800000;
    HI_REG_WRITE32(CRG_BASE_ADDR + PERI_CRG_PLL1, reg);
    if (NORMAL_WAKEUP == g_u8HighWakeUp)
	{  
    	HI_REG_READ32(CRG_BASE_ADDR + PERI_CRG_PLL3, reg);
    	reg |= 0x00800000;
    	HI_REG_WRITE32(CRG_BASE_ADDR + PERI_CRG_PLL3, reg);
 	}    
    HI_REG_READ32(CRG_BASE_ADDR + PERI_CRG_PLL5, reg);
    reg |= 0x00100000;
    HI_REG_WRITE32(CRG_BASE_ADDR + PERI_CRG_PLL5, reg);
 
    HI_REG_READ32(CRG_BASE_ADDR + PERI_CRG_PLL7, reg);
    reg |= 0x00800000;
    HI_REG_WRITE32(CRG_BASE_ADDR + PERI_CRG_PLL7, reg);
    if (NORMAL_WAKEUP == g_u8HighWakeUp)
	{  
    	HI_REG_READ32(CRG_BASE_ADDR + PERI_CRG_PLL9, reg);
    	reg |= 0x00800000;
    	HI_REG_WRITE32(CRG_BASE_ADDR + PERI_CRG_PLL9, reg);
    }
	    /* 2.7 close the power of  peripheral */
    HI_REG_READ32(SYS_BASE_ADDR + SC_LOW_POWER_CTRL, reg);
	reg &= 0xfffffffd; //bit1 stb poweroff
	HI_REG_WRITE32(SYS_BASE_ADDR + SC_LOW_POWER_CTRL, reg);
}

void ResetCPU(void)
{
    /* unclock wdg */
    HI_REG_WRITE32(0x10201c00,0x1ACCE551);

    /* wdg load value */
	HI_REG_WRITE32(0x10201000,0x100);

    /* bit0: int enable bit1: reboot enable */
	HI_REG_WRITE32(0x10201008,0x3);
}

void do_resume(void)
{
    HI_U32 reg;
    HI_U32 i;
    /*  open the power of  peripheral */            
    HI_REG_READ32(SYS_BASE_ADDR + SC_LOW_POWER_CTRL, reg); 
    reg |= 0x00000002; //bit1 stb poweroff           
    HI_REG_WRITE32(SYS_BASE_ADDR + SC_LOW_POWER_CTRL, reg);

    /* 3.0 Power-Up APLL/BPLL/DPLL/VPLL/EPLL */
    HI_REG_READ32(CRG_BASE_ADDR + PERI_CRG_PLL1, reg);
    reg &= 0xff7fffff;
    HI_REG_WRITE32(CRG_BASE_ADDR + PERI_CRG_PLL1, reg);
    #if 1    
    HI_REG_READ32(CRG_BASE_ADDR + PERI_CRG_PLL3, reg);    //BPLL
    reg &= 0xff7fffff;
    HI_REG_WRITE32(CRG_BASE_ADDR + PERI_CRG_PLL3, reg);
  #endif      
    HI_REG_READ32(CRG_BASE_ADDR + PERI_CRG_PLL5, reg);
    reg &= 0xffefffff;
    HI_REG_WRITE32(CRG_BASE_ADDR + PERI_CRG_PLL5, reg);

    HI_REG_READ32(CRG_BASE_ADDR + PERI_CRG_PLL7, reg);
    reg &= 0xff7fffff;
    HI_REG_WRITE32(CRG_BASE_ADDR + PERI_CRG_PLL7, reg);
    
    HI_REG_READ32(CRG_BASE_ADDR + PERI_CRG_PLL9, reg);
    reg &= 0xff7fffff;
    HI_REG_WRITE32(CRG_BASE_ADDR + PERI_CRG_PLL9, reg);

	/* 3.1 Wait pll locked */    
	while (1)    
	{        
		HI_REG_READ32(CRG_BASE_ADDR + SC_PLLLOCKSTAT, reg);
		if ((reg & 0x1f) == 0x1f)        
		{            
				break;        
		}    
	}

    /* 3.2 Select CPU/BUS/DDR clock to PLL */
	  
    HI_REG_WRITE32(CRG_BASE_ADDR + PERI_CRG18, 0x200); 
    HI_REG_WRITE32(CRG_BASE_ADDR + PERI_CRG18, 0x600); 
	  HI_REG_WRITE32(CRG_BASE_ADDR + PERI_CRG74, 0x200); 
    HI_REG_WRITE32(CRG_BASE_ADDR + PERI_CRG74, 0x600); 
    HI_REG_WRITE32(CRG_BASE_ADDR + PERI_CRG22, 0x15);  
    HI_REG_WRITE32(SYS_BASE_ADDR + SC_CLKGATE_SRST_CTRL, 0x20011161); 
    
    /* 3.3 DDRC clock on */
    HI_REG_WRITE32(CRG_BASE_ADDR + PERI_CRG25, 0x1003); 
     
    /* 3.4 DDRPHY IO Output on*/	
    HI_REG_WRITE32(DDRPHY_BASE_ADDR + DDRPHY_CTRL0, 0x3980);
     
    /* 3.5 DDRPHY Power-Up */
    HI_REG_WRITE32(DDRPHY_BASE_ADDR + DDRPHY_PLL, 0x0);
    for(i=0;i<64;i++) HI_REG_READ32(SYS_BASE_ADDR + SYSCTRL_DDRLP, reg); // delay
    HI_REG_WRITE32(DDRPHY_BASE_ADDR + DDRPHY_CTRL1, 0x780078);
    for(i=0;i<64;i++) HI_REG_READ32(SYS_BASE_ADDR + SYSCTRL_DDRLP, reg); // delay
    HI_REG_WRITE32(DDRPHY_BASE_ADDR + DDRPHY_CTRL1, 0x700070);
    for(i=0;i<64;i++) HI_REG_READ32(SYS_BASE_ADDR + SYSCTRL_DDRLP, reg); // delay
     
    /* 3.6 DDRPHY Reset */
    HI_REG_WRITE32(DDRPHY_BASE_ADDR + DDRPHY_INIT, 0xa000);
    HI_REG_WRITE32(DDRPHY_BASE_ADDR + DDRPHY_INIT, 0x0000);
     
    /* 3.7 DDRPHY IO Retention off*/
    HI_REG_WRITE32(SYS_BASE_ADDR + SYSCTRL_DDRLP, 0x1);
     
     
     
	  /* 3.8 DDR Exit self-refresh state */	
    HI_REG_WRITE32(DDRC_BASE_ADDR + DDRC_SREFCTRL, 0x2); 
    while (1)
     {
         HI_REG_READ32(DDRC_BASE_ADDR + DDRC_STATUS, reg);
         if ((reg & 0x1) == 0x0)
         {
             break;
         }
     }
    

		/*FE PHY Power up*/
	//FE PHY
#if 1	
	HI_REG_READ32(PERI_BASE_ADDR + PERI_FEPHY, reg);  
  //  reg |= 0xFFFFFDBF; //bit9&bit6 to 0         
   	reg = 0x030000a1;
	HI_REG_WRITE32(PERI_BASE_ADDR + PERI_FEPHY, reg);
	HI_REG_READ32(CRG_BASE_ADDR +PERI_CRG51, reg);
    reg = 0x00003001;//bit13&bit12&bit0  to 0 
   // reg = 0x1;	
	HI_REG_WRITE32(CRG_BASE_ADDR+PERI_CRG51, reg);
#endif
	HI_REG_READ32(CRG_BASE_ADDR +PERI_CRG63, reg);  //PVR-1
    //reg |= 0x00400000;//bit22  to 1  
    reg |= 0x000000ff;//bit[7:0] to 0xff 
    HI_REG_WRITE32(CRG_BASE_ADDR+PERI_CRG63, reg);
}

extern HI_U32 waittime;
void GetTimePeriod(void)
{
    HI_U32 reg;

    HI_REG_READ32(DATA_BASE_ADDR + DATA_TIMEVAL, reg);
    reg = reg - waittime;

    /* save standby period in  sram */
    HI_REG_WRITE32(SYS_BASE_ADDR + SC_GEN18, reg);
    return;
}


void getInitParam()
{
	HI_U32 reg;
	HI_U32 i;
	/* Get the chip type and standby scene */
	HI_REG_READ32(DATA_BASE_ADDR + DATA_CHIP, reg);
	g_u8ChipType = reg & 0xff;
	g_u8HighWakeUp = (reg >> 8)&0xff;

	if (NORMAL_WAKEUP != g_u8HighWakeUp)
	{
		HI_REG_READ32(PMT_CTRL_REG1, reg);
		reg|=0x8;
		HI_REG_WRITE32(PMT_CTRL_REG1, reg);
		HI_REG_READ32(PMT_CTRL_REG2, reg);
		reg|=0x8;
		HI_REG_WRITE32(PMT_CTRL_REG2, reg);		
	}

	HI_REG_READ32(DATA_BASE_ADDR + DATA_WDGON, reg);
	wdgon = (reg & 0xff) & 0x1;
	/* Get the debug param */

	HI_REG_READ32(DATA_BASE_ADDR + DATA_DBGMASK, reg);
	dbgmask = reg & 0x7;

	/*record gpio index, between 40 and 47 */
	HI_REG_READ32(DATA_BASE_ADDR + DATA_GPIO0, reg);
	GpioValArray[0] = reg & 0xff;

	/*record gpio output, 1 or 0 */
	HI_REG_READ32(DATA_BASE_ADDR + DATA_GPIO1, reg);
	GpioValArray[1] = reg & 0xff;


	HI_REG_READ32(DATA_BASE_ADDR + DATA_DISPMODE, reg);
	time_type = reg & 0xff;

	HI_REG_READ32(DATA_BASE_ADDR + DATA_DISPVAL, reg);
	if (time_type == TIME_DISPLAY)
	{
    // timer display
    	if  ((((reg>>16)&0xff) >= 24)
            ||(((reg>>8)&0xff) >= 60)
            ||((reg&0xff) >= 60))
    	{
        	// default value
        	time_hour = 9;
        	time_minute = 58;
        	time_second = 0;
    	}
    	else
    	{
        	time_hour = (reg>>16)&0xff;
        	time_minute = (reg>>8)&0xff;
        	time_second = reg&0xff;
    	}
	}
#if 0
	else if (time_type == DIGITAL_DISPLAY)
	{
		   // channel display
		 g_channum.val32 = regData.val32;
	}


	/* Get the time out of wake up */
	HI_REG_READ32(DATA_BASE_ADDR + DATA_TIMEVAL, reg);
	waittime.val32 = reg;
	para_timeval.val32 = reg;
#endif	

	HI_REG_READ32(DATA_BASE_ADDR + DATA_KEYTYPE, reg);
	kltype = reg & 0xff;

	HI_REG_READ32(DATA_BASE_ADDR + DATA_KEYVAL, reg);
	klPmocVal = reg & 0xff;
	
	/* Get the IR param */
	HI_REG_READ32(DATA_BASE_ADDR + DATA_IRTYPE, reg);
	ir_type = reg & 0xff;
	HI_REG_READ32(DATA_BASE_ADDR + DATA_IRNUM, reg);
	ir_pmocnum = reg & 0xff;

	for (i = 0; i < ir_pmocnum; i++)
	{
		HI_REG_READ32(DATA_BASE_ADDR + DATA_IRVAL + i * 8, reg);
    	irPmocLval[i] = reg;
		HI_REG_READ32(DATA_BASE_ADDR + DATA_IRVAL + 0x4 + i * 8, reg);
    	irPmocHval[i] = reg;
	//	printf_val(irPmocLval[i]);
	//	printf_val(irPmocHval[i]);
	}

	
	/* Get gpio port param */
	HI_REG_READ32(DATA_BASE_ADDR + DATA_IRVAL + 0x8 * ir_pmocnum + 0x4, reg);
	if ((reg & 0xff) != 0xff)
	{
   		g_u8GpioPort = reg & 0xff;
	}
		
}

void main()
{
    HI_U32 reg;

    pmocType = 0xff;
    pmocflag = 0;
	
    getInitParam();
 //   ir_resetParam();
    timer_resetParam();
    keyled_resetParam();

    timer_reset();

    keyled_reset();

	if (g_u8GpioPort != 0xff)
    {
        gpio_SetKeyIntType(g_u8GpioPort);
    }
	
    ir_enable();
	IR_Init();
   // ir_reset();


    do_suspend();

    early_display();
    timer_enable();
    ir_start();

	if (g_u8GpioPort != 0xff)
    {
        gpio_KeyIntEnable(g_u8GpioPort, HI_TRUE);
    }
	
    while (1)
    {
        wait_minute_2(20, 20);

		if (g_u8GpioPort != 0xff)  //bit4
	    {
	          gpio_keyisr(g_u8GpioPort);
	    }

        HI_REG_READ32(TIMER_BASE_ADDR + TIMER_RIS, reg);
        if ((reg & 0x01) == 0x01)
        {
            timer_isr();

            if (kltype)
            {
                keyled_isr();
            }
        }
#if (defined KEYLED_CT1642_INNER) 
        HI_REG_READ32(LEDC_KEYINT, reg);
        if ((reg & 0x3) && (kltype == 2))
#endif
        {
            keyled_isr();
        }

        HI_REG_READ32(IR_BASE_ADDR + IR_INT_STATUS, reg);
        if (reg & 0x070f0000)
        {
            IR_Isr();
        }
		
		if (NORMAL_WAKEUP != g_u8HighWakeUp)
		{
			HI_REG_READ32(PMT_CTRL_REG1, reg);
			if(reg & 0x60)
			{
				reg &= 0xfff7;
				HI_REG_WRITE32(PMT_CTRL_REG1, reg);
				pmocflag = 1;
				pmocType = HI_UNF_PMOC_WKUP_ETH;
			}
			
		}
		
        if (pmocflag)
        {
            break;
        }
    }

    ir_disable();
    timer_disable();
    keyled_disable(0x3);

	if (0x0 == wdgon)
	{
		HI_REG_WRITE32(SYS_BASE_ADDR + SC_GEN0,0x66031013);//power down flag
	}
	else
	{
		ResetCPU();
	}

    do_resume();

    GetTimePeriod();

    // rec wakeup type
    HI_REG_WRITE32(SYS_BASE_ADDR + SC_GEN17, pmocType);

    //printf_char('v');
}
