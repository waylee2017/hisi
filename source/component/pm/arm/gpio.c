#include "base.h"
//#include "hi_type.h"
#include "gpio.h"

extern HI_U8  klPmocVal;

void gpio5_dirset_bit(HI_U8 idx, HI_U8 val)
{
	HI_U32 reg;

	HI_REG_READ32(GPIO5_REG_DIR, reg);
	
	if (val) 
	{
		// input 
		reg &= ~(1 << idx);		
	}
	else 
	{
		// output 
		reg |= (1 << idx);
	}

	HI_REG_WRITE32(GPIO5_REG_DIR, reg);
	
	return ;
}


void gpio5_write_bit(HI_U8 idx, HI_U8 val)
{
	HI_U32 reg, regAddr;

	regAddr = GPIO5_BASE_ADDR + (0x4 << idx);

	if (val)
	{
		reg = (1 << idx);
    }
	else
	{
		reg = 0;
    }

	HI_REG_WRITE32(regAddr, reg);
	
	return ;
}

void gpio5_read_bit(HI_U8 idx, HI_U8* val)
{
	HI_U32 tmp = 0;
	HI_U32 reg, regAddr;
	
#if 1
	HI_REG_READ32(GPIO5_REG_DIR, reg);
	
	tmp = reg & (1 << idx);
	
	if (tmp)
	{
		*val = 0xff;
		return;	
	}
#endif
	
	regAddr= GPIO5_BASE_ADDR + (0x4 << idx);
	HI_REG_READ32(regAddr, reg);	
	tmp = reg & (0x1 << idx);
	
	if (tmp)
	{
		*val = 1;
	}
	else
	{
		*val = 0;
	}
	
	return;
}

void gpio5_bit_reuse(HI_U8 PinIndex)
{	
	HI_U32 OffSet[8] = {0x9C,0xA0,0xA8,0xAc,0xA4,0xB0,0xB4,0xB8};

    if (3 > PinIndex)
	{		
		HI_REG_WRITE32(IO_CONFIG_ADDR + OffSet[PinIndex], 0);	
	}

	if ((3 == PinIndex)||(6 == PinIndex)||(7 == PinIndex))
	{
		HI_REG_WRITE32(IO_CONFIG_ADDR + OffSet[PinIndex], 1);
	}
	
	return;
}

HI_VOID gpio_SetIntType(HI_U8 u8GpioBitNum)
{
    HI_U32 tmp = 0;
    
	HI_REG_READ32(GPIO5_REG_DIR, tmp);
    tmp = tmp & (~(0x1 << u8GpioBitNum));   // 0: input;
    HI_REG_WRITE32(GPIO5_REG_DIR, tmp);

	HI_REG_READ32(GPIO5_REG_IS, tmp);
	tmp = tmp & (~(0x1 << u8GpioBitNum));	// 0: edge interruput
	HI_REG_WRITE32(GPIO5_REG_IS, tmp);

	HI_REG_READ32(GPIO5_REG_IEV, tmp);
	tmp = tmp & (~(0x1 << u8GpioBitNum));	// 0: down edge interruput
	HI_REG_WRITE32(GPIO5_REG_IEV, tmp);

	HI_REG_READ32(GPIO5_REG_IBE, tmp);
	tmp = tmp & (~(0x1 << u8GpioBitNum));	// 0:  single edge interruput
	HI_REG_WRITE32(GPIO5_REG_IBE, tmp);
                         
	HI_REG_WRITE32(GPIO5_REG_IC, 0xff);  // clear all int

    return;
}

HI_VOID gpio_IntEnable(HI_U8 u8GpioBitNum, HI_BOOL IsEnable)
{
    HI_U32 tmp = 0;

    if (HI_TRUE == IsEnable)
    {
		HI_REG_READ32(GPIO5_REG_IE, tmp);
		tmp |= (0x1 << u8GpioBitNum); //1: enable interruput
		HI_REG_WRITE32(GPIO5_REG_IE, tmp);
    }
    else
    {
    	HI_REG_READ32(GPIO5_REG_IE, tmp);
		tmp &= (~(0x1 << u8GpioBitNum)); // 0:Mask interruput; 
		HI_REG_WRITE32(GPIO5_REG_IE, tmp);
    }
	
    return;
}

HI_VOID gpio_isr(HI_U8 u8GpioBitNum)
{
	HI_U8 ScanKey = 0;
	HI_U32 reg;

	HI_REG_READ32(GPIO5_REG_MIS, reg);
	ScanKey = reg & (0x1 << u8GpioBitNum);
	if(ScanKey == klPmocVal)
	{
		pmocType = 1;
		pmocflag = 1;
        
        gpio_IntEnable(u8GpioBitNum,HI_FALSE);
	}
                        
	HI_REG_WRITE32(GPIO5_REG_IC, 0xff); // clear all int
    
	return;
}

HI_VOID gpio_GetBaseAddr(HI_U8 u8GpioNum,HI_U32 *BaseAddr)
{
	HI_U8 u8GroupNum;

	u8GroupNum = u8GpioNum / 8;
	
	if(u8GroupNum == 0)
	{
		*BaseAddr = GPIO0_BASE_ADDR;
	}
	else if(u8GroupNum == 1)
	{		
		*BaseAddr = GPIO1_BASE_ADDR;
	}
	else if(u8GroupNum == 2)
	{		
		*BaseAddr = GPIO2_BASE_ADDR;
	}
	else if(u8GroupNum == 3)
	{		
		*BaseAddr = GPIO3_BASE_ADDR;
	}
	else if(u8GroupNum == 5)
	{		
		*BaseAddr = GPIO5_BASE_ADDR;
	}
	else
	{
		
	}
	return;

}

HI_VOID gpio_SetKeyIntType(HI_U8 u8GpioNum)
{
    HI_U32 tmp = 0;
    HI_U8 u8GpioBitNum ;
	HI_U32 BaseAddr;

	u8GpioBitNum = u8GpioNum % 8;
	gpio_GetBaseAddr(u8GpioNum,&BaseAddr);
	
	HI_REG_READ32(BaseAddr + 0x400, tmp);
    tmp = (tmp & 0xff) & (~(0x1 << u8GpioBitNum));   // 0: input;
    HI_REG_WRITE32(BaseAddr + 0x400, tmp);

	HI_REG_READ32(BaseAddr + 0x404, tmp);
	tmp = (tmp & 0xff) & (~(0x1 << u8GpioBitNum));	// 0: edge interruput
	HI_REG_WRITE32(BaseAddr + 0x404, tmp);

	HI_REG_READ32(BaseAddr + 0x40c, tmp);
	tmp = (tmp & 0xff) & (~(0x1 << u8GpioBitNum));	// 0: down edge interruput
	HI_REG_WRITE32(BaseAddr + 0x40c, tmp);

	HI_REG_READ32(BaseAddr + 0x408, tmp);
	tmp = (tmp & 0xff) & (~(0x1 << u8GpioBitNum));	// 0:  single edge interruput
	HI_REG_WRITE32(BaseAddr + 0x408, tmp);
                         
	HI_REG_WRITE32(BaseAddr + 0x41c, 0xff);  // clear all int

    return;
}


HI_VOID gpio_KeyIntEnable(HI_U8 u8GpioNum, HI_BOOL IsEnable)
{
    HI_U32 tmp = 0;
	HI_U8 u8GpioBitNum ;
	HI_U32 BaseAddr;

	u8GpioBitNum = u8GpioNum % 8;
	gpio_GetBaseAddr(u8GpioNum,&BaseAddr);

    if (HI_TRUE == IsEnable)
    {
		HI_REG_READ32(BaseAddr + 0x410, tmp);
		tmp = (tmp & 0xff)|(0x1 << u8GpioBitNum); //1: enable interruput
		HI_REG_WRITE32(BaseAddr + 0x410, tmp);
    }
    else
    {
    	HI_REG_READ32(BaseAddr + 0x410, tmp);
		tmp = (tmp & 0xff)&(~(0x1 << u8GpioBitNum)); // 0:Mask interruput; 
		HI_REG_WRITE32(BaseAddr + 0x410, tmp);
    }
	
    return;
}

HI_VOID gpio_keyisr(HI_U8 u8GpioNum)
{
	HI_U8 ScanKey = 0;
	HI_U32 reg;
	HI_U8 u8GpioBitNum ;
	HI_U32 BaseAddr;

	u8GpioBitNum = u8GpioNum % 8;
	gpio_GetBaseAddr(u8GpioNum,&BaseAddr);

	HI_REG_READ32(BaseAddr + 0x418, reg);
	ScanKey = (reg & 0xff) & (0x1 << u8GpioBitNum);
	if(ScanKey)
	{
	 	printf_val(reg);
		pmocType = 1;
		pmocflag = 1;
        
        gpio_IntEnable(u8GpioBitNum,HI_FALSE);
	}
	else
	{
		if(0 != ScanKey)
			printf_val(ScanKey);
		return;
	}
                        
	HI_REG_WRITE32(BaseAddr + 0x41c, 0xff); // clear all int
    
	return;
}





