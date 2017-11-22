
#include "base.h"
#include "keyled.h"

/************************************************************************* 
						2.0  keyled module
*************************************************************************/
/*variable*/
HI_U8  kltype = 0;
HI_U8  klPmocVal = 0;
HI_U32 channum;


extern HI_VOID keyled_isr_std(HI_VOID);
extern HI_VOID keyled_reset_std(HI_VOID);
extern HI_VOID keyled_enable_std(HI_U8 type);
extern HI_VOID keyled_disable_std(HI_U8 type);
extern HI_VOID timer_display_std(HI_VOID);
extern HI_VOID chan_display_std(void);
extern HI_VOID no_display_std(void);
extern void dbg_display_std(HI_U16 val);

/* while kltype !=0, func as follow */
extern void keyled_isr_usr(void);
extern void keyled_reset_usr(void);
extern void keyled_disable_usr(void);
extern void timer_display_usr(void);
extern void chan_display_usr(void);
extern void no_display_usr(void);
extern void dbg_display_usr(HI_U16 val);


/*debug*/
#if 0
HI_U8  kl_dbgcnt  = 0;
#define dbg_kl_reset()  do{ \
	kl_dbgcnt = 0; \
}while(0)

HI_VOID keyled_recVal(HI_U8 val)
{
	regData.val8[0] = 0;
	regData.val8[1] = 0;
	regData.val8[2] = 0;
	regData.val8[3] = val;

	regAddr.val8[0] = 0x60; 
	regAddr.val8[1] = 0x0b; 
	regAddr.val8[2] = (0xb0 | ((kl_dbgcnt & 0xc0) >> 6)); 
	regAddr.val8[3] = (kl_dbgcnt & 0x3f) << 2 ; 

	write_regVal();
	kl_dbgcnt++;
	if(kl_dbgcnt >= 255){
		kl_dbgcnt = 0;
	}
	return;
}
#endif

#if 1
void keyled_getParam()
{
	HI_U32 reg;

	HI_REG_READ32(DATA_BASE_ADDR + DATA_KEYTYPE, reg);	
	kltype = reg & 0xff;

	HI_REG_READ32(DATA_BASE_ADDR + DATA_KEYVAL, reg);	
	klPmocVal = reg & 0xff;
	
	return;
}
#endif


void keyled_resetParam(void)
{
#ifdef TEST_ON
	kltype = 0;
	klPmocVal = 0;
#else
	keyled_getParam();
#endif
}



HI_VOID timer_display(HI_VOID)
{ 
	if (kltype == 0) 
	{ 
		timer_display_std(); 
	}
	else
	{	
		timer_display_usr(); 
	}	

	return;
}

HI_VOID chan_display(HI_VOID)
{ 
	if(kltype == 0)
	{ 
		chan_display_std(); 
	}
	else
	{	
		chan_display_usr(); 
	}	

	return;
}

HI_VOID no_display(HI_VOID) 
{ 
	if (kltype == 0)
	{ 
		no_display_std(); 
	}
	else
	{	
		no_display_usr(); 
	}	

	return;
}     

HI_VOID early_display(HI_VOID)
{
	if (time_type == 2 )
	{
		timer_display();
	}
	else if (time_type == 1)
	{
		chan_display();
	}
	else
	{
		no_display();
	}
	
	return;
}

HI_VOID dbg_display(HI_U16 val)
{
	if(kltype == 0)
	{ 
		dbg_display_std(val); 
	}
	else
	{	
		dbg_display_usr(val); 
	}	

	return;
}

HI_VOID keyled_reset(HI_VOID) 
{ 
	if (kltype == 0)
	{ 
		keyled_reset_std(); 
	}
	else
	{ 
		keyled_reset_usr(); 
	} 

	return;
}

HI_VOID keyled_enable(HI_U8 type) 
{
	if (kltype == 0)
	{
		keyled_enable_std(type);
	}
	else
	{
		//no need to do anything
	}

	return;
}

HI_VOID keyled_disable(HI_U8 type) 
{
	if (kltype == 0)
	{
		keyled_disable_std(type); 
	}
	else
	{
		keyled_disable_usr(); 
	} 

	return;
}

HI_VOID keyled_isr(HI_VOID) 
{
	if (kltype == 0)
	{
		keyled_isr_std();
	}
	else if(kltype < 5)
	{
		keyled_isr_usr();
	}
	else
	{
		return;
	}

	return;
}

