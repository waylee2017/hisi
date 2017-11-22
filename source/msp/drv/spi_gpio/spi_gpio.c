#include <linux/timer.h>
#include <linux/wait.h>
#include <linux/vmalloc.h>
#include <linux/kernel.h>
#include <linux/module.h>
#include <linux/types.h>
#include <linux/errno.h>
#include <linux/fcntl.h>
#include <linux/mm.h>
#include <linux/miscdevice.h>
#include <linux/proc_fs.h>
#include <linux/fs.h>
#include <linux/slab.h>
//#include <linux/smp_lock.h>
#include <linux/init.h>
#include <linux/delay.h>
#include <linux/kthread.h>
#include <linux/seq_file.h>
#include <linux/list.h>
#include <asm/uaccess.h>
#include <asm/io.h>
#include <asm/system.h>
#include <linux/interrupt.h>
#include <linux/ioport.h>
#include <linux/string.h>
#include <linux/random.h>



#include "hi_type.h"
#include "hi_debug.h"
//#include "hi_mmz.h"
//#include "common_dev.h"
//#include "common_proc.h"
//#include "common_dev.h"


//#include "common_mem.h"
//#include "sv_unf_osal.h"
//#include "sv.h"
#include "spi_gpio.h"
#define sv_reg_read(base, _reg) \
        (*((volatile unsigned int *)(base + (_reg))))

#define sv_reg_write(base, _reg, _value) \
        (*((volatile unsigned int *)(base + (_reg))) = _value)

#define HI_SOC_REG_BASE_GPIO0       (0x101E6000L)


/*GPIO BASE addr*/
static HI_U32 s_u32GpioBase[] = 
{
#if defined(CHIP_TYPE_hi3798mv100)
	IO_ADDRESS(0xf8b20000),
	IO_ADDRESS(0xf8b21000),
	IO_ADDRESS(0xf8b22000),
	IO_ADDRESS(0xf8b23000),
	IO_ADDRESS(0xf8b24000),
	IO_ADDRESS(0xf8004000),
	IO_ADDRESS(0xf8b26000),
	IO_ADDRESS(0xf8b27000),	
	IO_ADDRESS(0xf8b28000),
	IO_ADDRESS(0xf8b29000),
	IO_ADDRESS(0xf8b2a000),
	IO_ADDRESS(0xf8b2b000),
	IO_ADDRESS(0xf8b2c000),
	IO_ADDRESS(0xf8b2d000),
	IO_ADDRESS(0xf8b2e000),
	IO_ADDRESS(0xf8b2f000),
	IO_ADDRESS(0xf8b30000),
	IO_ADDRESS(0xf8b31000),
#else if defined(CHIP_TYPE_hi3716mv310)|| defined (CHIP_TYPE_hi3716mv330)
	IO_ADDRESS(0x101e6000),
	IO_ADDRESS(0x101e7000),
	IO_ADDRESS(0x101e8000),
	IO_ADDRESS(0x101e9000),	
	IO_ADDRESS(0x101ea000),
#endif
};



/*通道*/
static HI_SPI_GPIO_CH_ATTR s_stGpioCh[D_SPI_GPIO_MAX_CH] ;
#define SPI_DELAY_TIME 80

/*
_gpio 第几组
_bit 第几位
_dir 0-输入 1-输出
*/
#define SPI_GPIO_SET_DIR(_gpio, _bit, _dir) \
    do\
    {\
        if(_dir) \
            *(unsigned int*)(s_u32GpioBase[_gpio] + SPI_GPIO_DIR_REG) |= (_dir<<_bit); \
        else \
            *(unsigned int*)(s_u32GpioBase[_gpio] + SPI_GPIO_DIR_REG) &= ~(1<<_bit); \
    }while(0) 


/*
_gpio 第几组
_bit 第几位
*/
#define SPI_GPIO_SET_H(_gpio, _bit) \
    do\
    {\
        *(unsigned int*)(s_u32GpioBase[_gpio] + ((1<<2)<<_bit)) |= (1<<_bit); \
    }while(0) 
    
#define SPI_GPIO_SET_L(_gpio, _bit) \
    do\
    {\
        *(unsigned int*)(s_u32GpioBase[_gpio] + ((1<<2)<<_bit)) &= ~(1<<_bit); \
    }while(0) 

/*
得到BIT值，1 OR 0
*/
#define SPI_GPIO_GET(_gpio, _bit, _val) \
    do\
    {\
        _val = (*(unsigned int*)(s_u32GpioBase[_gpio] + ((1<<2)<<_bit)) >> _bit) && 1; \
    }while(0) 

static void spi_delay_us(unsigned int usec)
{
	int i,j;
	
	for(i=0;i<usec * 5;i++)
	{
		for(j=0;j<50;j++)
		{
			;
		}

	}
}
    
HI_S32 SpiGpioCreateChan(HI_SPI_GPIO_CH_ATTR *stChAttr, HI_U32* u32Ch)
{
	HI_U32 i;
	HI_SPI_GPIO_CH_ATTR * pstCh = s_stGpioCh;

	/*check input param*/
	if((stChAttr->u32SpiClkGpio > SPI_GPIO_GROUP_NUM)
		|| (stChAttr->u32SpiDIGpio > SPI_GPIO_GROUP_NUM)
		|| (stChAttr->u32SpiDOGpio > SPI_GPIO_GROUP_NUM)
		|| (stChAttr->u32SpiClkBit> SPI_GPIO_BIT_NUM)
		|| (stChAttr->u32SpiDIBit> SPI_GPIO_BIT_NUM)
		|| (stChAttr->u32SpiDOBit> SPI_GPIO_BIT_NUM))
	{
		printk("Input param invalid.\n");
		return HI_FAILURE;
	}

	/*find usabe ch*/
	for(i = 0; i < D_SPI_GPIO_MAX_CH; i++)
	{
		if((pstCh + i)->bUsedFlag == HI_FALSE)
		{
			break;
		}
	}
	if(i == D_SPI_GPIO_MAX_CH)
	{
		printk("No usable channel.\n");
		return HI_FAILURE;
	}

	*u32Ch = i;
	memcpy((pstCh + *u32Ch), stChAttr, sizeof(HI_SPI_GPIO_CH_ATTR));
	(pstCh + *u32Ch)->bUsedFlag = HI_TRUE;
	return HI_SUCCESS;
}

HI_VOID SpiGpioDestroyChan(HI_U32 u32Ch)
{
	HI_SPI_GPIO_CH_ATTR * pstCh = s_stGpioCh;
	if(u32Ch >= D_SPI_GPIO_MAX_CH)
	{
		printk("CH:%d out of range.\n", u32Ch);
		return;
	}

	if((pstCh + u32Ch)->bUsedFlag == HI_FALSE)
	{
		printk("CH:%d is not used.\n", u32Ch);
		return;		
	}

	(pstCh + u32Ch)->bUsedFlag = HI_FALSE;
	return;
}

HI_S32 SpiGpioWriteData(HI_U32 u32Ch, HI_CHAR * data, HI_U32 len)
{
    HI_U32 i,j;
	HI_SPI_GPIO_CH_ATTR * pstCh = s_stGpioCh;
    HI_CHAR tmpData;
	if(u32Ch >= D_SPI_GPIO_MAX_CH)
	{
		printk("CH:%d out of range.\n", u32Ch);
		return HI_FAILURE;
	}

	if((pstCh + u32Ch)->bUsedFlag == HI_FALSE)
	{
		printk("CH:%d is not used.\n", u32Ch);
		return HI_FAILURE;		
	}
    pstCh = (pstCh + u32Ch);

    /*write*/    
    SPI_GPIO_SET_H(pstCh->u32SpiCsGpio, pstCh->u32SpiCsBit); /*cs to 1*/
    SPI_GPIO_SET_H(pstCh->u32SpiClkGpio, pstCh->u32SpiClkBit); /*clk to 1*/    
    SPI_GPIO_SET_H(pstCh->u32SpiDIGpio, pstCh->u32SpiDIBit); /*di to 1*/
    SPI_GPIO_SET_DIR(pstCh->u32SpiCsGpio, pstCh->u32SpiCsBit, 1); /*cs out*/
    SPI_GPIO_SET_DIR(pstCh->u32SpiClkGpio, pstCh->u32SpiClkBit, 1); /*clk out*/    
    SPI_GPIO_SET_DIR(pstCh->u32SpiDIGpio, pstCh->u32SpiDIBit, 1); /*di out*/

    SPI_GPIO_SET_L(pstCh->u32SpiCsGpio, pstCh->u32SpiCsBit); /*cs to 0*/
    
    for(i = 0; i < len; i++)
    {
        tmpData = data[i];
        //printk("[%d] = %#x.\n", i, tmpData);
        for(j = 0; j < 8; j++)
        {
            //printk("%d %d\n", j, ((tmpData << j) & 0x80));
            if((tmpData << j) & 0x80)
            {                 
                //printk("H\n");
                SPI_GPIO_SET_H(pstCh->u32SpiDIGpio, pstCh->u32SpiDIBit); /*di to 1*/
            }
            else
            {                 
                //printk("L\n");   
                SPI_GPIO_SET_L(pstCh->u32SpiDIGpio, pstCh->u32SpiDIBit); /*di to 0*/
            }
            SPI_GPIO_SET_L(pstCh->u32SpiClkGpio, pstCh->u32SpiClkBit); /*clk to 0*/ 
            spi_delay_us(SPI_DELAY_TIME);
            SPI_GPIO_SET_H(pstCh->u32SpiClkGpio, pstCh->u32SpiClkBit); /*clk to 1*/ 
            spi_delay_us(SPI_DELAY_TIME);
        }
    }

    SPI_GPIO_SET_H(pstCh->u32SpiCsGpio, pstCh->u32SpiCsBit); /*cs to 1*/
    return HI_SUCCESS;
}

HI_S32 SpiGpioWriteReadData(HI_U32 u32Ch, HI_CHAR * wrdata, HI_U32 wrlen, HI_CHAR * rddata, HI_U32 rdlen)
{
    HI_U32 i,j;
	HI_SPI_GPIO_CH_ATTR * pstCh = s_stGpioCh;
    HI_CHAR tmpData;
    HI_CHAR rdval;
	if(u32Ch >= D_SPI_GPIO_MAX_CH)
	{
		printk("CH:%d out of range.\n", u32Ch);
		return HI_FAILURE;
	}

	if((pstCh + u32Ch)->bUsedFlag == HI_FALSE)
	{
		printk("CH:%d is not used.\n", u32Ch);
		return HI_FAILURE;		
	}
    pstCh = (pstCh + u32Ch);

    /*write*/    
    SPI_GPIO_SET_H(pstCh->u32SpiCsGpio, pstCh->u32SpiCsBit); /*cs to 1*/
    SPI_GPIO_SET_H(pstCh->u32SpiClkGpio, pstCh->u32SpiClkBit); /*clk to 1*/    
    SPI_GPIO_SET_H(pstCh->u32SpiDIGpio, pstCh->u32SpiDIBit); /*di to 1*/
    SPI_GPIO_SET_DIR(pstCh->u32SpiCsGpio, pstCh->u32SpiCsBit, 1); /*cs out*/
    SPI_GPIO_SET_DIR(pstCh->u32SpiClkGpio, pstCh->u32SpiClkBit, 1); /*clk out*/    
    SPI_GPIO_SET_DIR(pstCh->u32SpiDIGpio, pstCh->u32SpiDIBit, 1); /*di out*/

    SPI_GPIO_SET_L(pstCh->u32SpiCsGpio, pstCh->u32SpiCsBit); /*cs to 0*/
    
    for(i = 0; i < wrlen; i++)
    {
        tmpData = wrdata[i];
        //printk("[%d] = %#x.\n", i, tmpData);
        for(j = 0; j < 8; j++)
        {
            //printk("%d %d\n", j, ((tmpData << j) & 0x80));
            if((tmpData << j) & 0x80)
            {                 
                //printk("H\n");
                SPI_GPIO_SET_H(pstCh->u32SpiDIGpio, pstCh->u32SpiDIBit); /*di to 1*/
            }
            else
            {                 
                //printk("L\n");
                SPI_GPIO_SET_L(pstCh->u32SpiDIGpio, pstCh->u32SpiDIBit); /*di to 0*/
            }
            SPI_GPIO_SET_L(pstCh->u32SpiClkGpio, pstCh->u32SpiClkBit); /*clk to 0*/ 
            spi_delay_us(SPI_DELAY_TIME);
            SPI_GPIO_SET_H(pstCh->u32SpiClkGpio, pstCh->u32SpiClkBit); /*clk to 1*/ 
            spi_delay_us(SPI_DELAY_TIME);
        }
    }

     /*read*/
    SPI_GPIO_SET_DIR(pstCh->u32SpiDOGpio, pstCh->u32SpiDOBit, 0); /*do in*/
    for(i = 0; i < rdlen; i++)
    {
        tmpData = 0;
        //printk("rd %d\n", i);
        for(j = 0; j < 8; j++)
        {
            SPI_GPIO_SET_L(pstCh->u32SpiClkGpio, pstCh->u32SpiClkBit); /*clk to 0*/ 
            spi_delay_us(SPI_DELAY_TIME);
            SPI_GPIO_GET(pstCh->u32SpiDOGpio, pstCh->u32SpiDOBit, rdval);
            tmpData += (rdval<<(7-j));
            
            //printk("rdval %d\n", rdval);
            SPI_GPIO_SET_H(pstCh->u32SpiClkGpio, pstCh->u32SpiClkBit); /*clk to 1*/ 
            spi_delay_us(SPI_DELAY_TIME);
        }
        
        //printk("rd data %#x\n", tmpData);
        rddata[i] = tmpData;
    }
    SPI_GPIO_SET_H(pstCh->u32SpiCsGpio, pstCh->u32SpiCsBit); /*cs to 1*/
    return HI_SUCCESS;
    
}

HI_S32 SocPllAD9517Init(HI_VOID)
{
    HI_S32 ret;
    HI_U32 i;
    HI_U32 u32Ch;
    HI_CHAR wrdata[16];/*写的值*/
    HI_CHAR rddata[16];/*读出的值*/
    HI_SPI_GPIO_CH_ATTR stSpiAttr;
    HI_U32 u32Value;
    
    /*复位*/    //GPIO0_1 先低再高
    sv_reg_write(IO_ADDRESS(HI_SOC_REG_BASE_GPIO0), 0x8, 0x0);
	
    u32Value = sv_reg_read(IO_ADDRESS(HI_SOC_REG_BASE_GPIO0), 0x08); 
    printk("0x101E6008 u32Value:%d\n",u32Value);
	
    u32Value = sv_reg_read(IO_ADDRESS(HI_SOC_REG_BASE_GPIO0), 0x400);
    printk("0x101E6400 u32Value:%d\n",u32Value);	
    u32Value |= (1<<1);
    printk("0x101E6400 u32Value:%d\n",u32Value);
    sv_reg_write(IO_ADDRESS(HI_SOC_REG_BASE_GPIO0), 0x400, u32Value);
    msleep(200);//delay 200 ms
    u32Value = sv_reg_read(IO_ADDRESS(HI_SOC_REG_BASE_GPIO0), 0x400); 
    printk("0x101E6400 u32Value:%d\n",u32Value);
	
    sv_reg_write(IO_ADDRESS(HI_SOC_REG_BASE_GPIO0), 0x8, (1<<1)); 
	
    u32Value = sv_reg_read(IO_ADDRESS(HI_SOC_REG_BASE_GPIO0), 0x08); 
    printk("0x101E6008 u32Value:%d\n",u32Value);

 
    /*复位*/    //GPIO1_3 先低再高
/*    sv_reg_write(IO_ADDRESS(0x101e7000), 0x20, 0x0);
    u32Value = sv_reg_read(IO_ADDRESS(0x101e7000), 0x400);
    u32Value |= (1<<3);
    sv_reg_write(IO_ADDRESS(0x101e7000), 0x400, u32Value);
    msleep(200);//delay 200 ms
    sv_reg_write(IO_ADDRESS(0x101e7000), 0x20, (1<<3));
*/

    /*
    *SCK -- GPIO0_6
    *SDO -- GPIO0_7
    *SDI -- GPIO0_5
    *CS  -- GPIO0_0
    */


	
    stSpiAttr.u32SpiClkGpio = 0;
    stSpiAttr.u32SpiClkBit  = 6;
    stSpiAttr.u32SpiCsGpio = 0;
    stSpiAttr.u32SpiCsBit  = 0;
    stSpiAttr.u32SpiDIGpio = 0;
    stSpiAttr.u32SpiDIBit  = 5;
    stSpiAttr.u32SpiDOGpio = 0;
    stSpiAttr.u32SpiDOBit  = 7;
/*
    stSpiAttr.u32SpiClkGpio = 1;
    stSpiAttr.u32SpiClkBit  = 4;
    stSpiAttr.u32SpiCsGpio = 1;
    stSpiAttr.u32SpiCsBit  = 7;
    stSpiAttr.u32SpiDIGpio = 1;
    stSpiAttr.u32SpiDIBit  = 6;
    stSpiAttr.u32SpiDOGpio = 1;
    stSpiAttr.u32SpiDOBit  = 5;
*/
    /*创建SPI通道*/
    ret = SpiGpioCreateChan(&stSpiAttr, &u32Ch);
    if(ret != HI_SUCCESS)
    {
        printk("SpiGpioCreateChan fail.\n");
        return 1;
    }
    printk("ch = %d\n", u32Ch);
    

    /*active SDO*/
    printk("======0x00======\n");
    wrdata[0] = 0x00;
    wrdata[1] = 0x0;
    wrdata[2] = 0x99;
    ret = SpiGpioWriteData(u32Ch, wrdata, 3);
    if(ret != HI_SUCCESS)
    {
        printk("SpiGpioWriteReadData fail.\n");
        return 1;
    }
    //return 0;
    wrdata[0] = 0x80;
    wrdata[1] = 0x0;
    ret = SpiGpioWriteReadData(u32Ch, wrdata, 2, rddata, 1);
    if(ret != HI_SUCCESS)
    {
        printk("SpiGpioWriteReadData fail.\n");
        return 1;
    }
    for(i=0;i<1;i++)
    {
        printk("[%#x]:w.r -> %#x. %#x.\n", 0x00,wrdata[i+2],rddata[i]);
    }

    /*enable out4*/
    printk("======0x140======\n");
    wrdata[0] = 0x01;
    wrdata[1] = 0x40;
    wrdata[2] = 0x42;
    ret = SpiGpioWriteData(u32Ch, wrdata, 3);
    if(ret != HI_SUCCESS)
    {
        printk("SpiGpioWriteReadData fail.\n");
        return 1;
    }
    //return 0;
    wrdata[0] = 0x81;
    wrdata[1] = 0x40;
    ret = SpiGpioWriteReadData(u32Ch, wrdata, 2, rddata, 1);
    if(ret != HI_SUCCESS)
    {
        printk("SpiGpioWriteReadData fail.\n");
        return 1;
    }
    for(i=0;i<1;i++)
    {
        printk("[%#x]:w.r -> %#x. %#x.\n", 0x140,wrdata[i+2],rddata[i]);
    }

    /*read back active register*/
    printk("======0x04======\n");
    wrdata[0] = 0x00;
    wrdata[1] = 0x04;
    wrdata[2] = 0x01;
    ret = SpiGpioWriteData(u32Ch, wrdata, 3);
    if(ret != HI_SUCCESS)
    {
        printk("SpiGpioWriteReadData fail.\n");
        return 1;
    }
    //return 0;
    wrdata[0] = 0x80;
    wrdata[1] = 0x04;
    ret = SpiGpioWriteReadData(u32Ch, wrdata, 2, rddata, 1);
    if(ret != HI_SUCCESS)
    {
        printk("SpiGpioWriteReadData fail.\n");
        return 1;
    }
    for(i=0;i<1;i++)
    {
        printk("[%#x]:w.r -> %#x. %#x.\n", 0x04,wrdata[i+2],rddata[i]);
    }

    //return 0;
    
    /* PLL Settings. */
    printk("======0x10======\n");
    wrdata[2] = 0x00;// 0x1d
    wrdata[3] = 0x02;// 0x1c
    wrdata[4] = 0x00;// 0x1b
    wrdata[5] = 0x00;// 0x1a
    wrdata[6] = 0x00;// 0x19
    wrdata[7] = 0x06;// 0x18
    wrdata[8] = 0x00;// 0x17
    wrdata[9] = 0x05;// 0x16                /* PLL control 1: Prescaler P, Bits[2:0] */
    wrdata[10] = 0x00;// 0x15               /* 13-bit B counter, Bits[12:8](MSB) */
    //wrdata[11] = 0x0d;// 0x14
    wrdata[11] = 0x0d;// 0x14
    //wrdata[12] = 0x08;// 0x13             
    wrdata[12] = 0x08;// 0x13
    wrdata[13] = 0x00;// 0x12  //           /* 14-bit R divider, Bits[13:8](MSB) */
    wrdata[14] = 0x01;// 0x11               /* 14-bit R divider, Bits[7:0](LSB) */
    wrdata[15] = 0x7c;// 0x10               /* PFD polarity */
    //return 0;
    wrdata[0] = 0x60;
    wrdata[1] = 0x1d;
    ret = SpiGpioWriteData(u32Ch, wrdata, 16);
    if(ret != HI_SUCCESS)
    {
        printk("SpiGpioWriteReadData fail.\n");
        return 1;
    }
    
    wrdata[0] = 0xe0;
    wrdata[1] = 0x1d;
    ret = SpiGpioWriteReadData(u32Ch, wrdata, 2, rddata, 14);
    if(ret != HI_SUCCESS)
    {
        printk("SpiGpioWriteReadData fail.\n");
        return 1;
    }
    for(i=0;i<14;i++)
    {
        printk("[%#x]:w.r -> %#x. %#x.\n", 0x1d-i,wrdata[i+2],rddata[i]);
    }


    printk("======0x199======\n");
    wrdata[2] = 0x00;// 0x1a2
    wrdata[3] = 0x00;// 0x1a1
    wrdata[4] = 0x21;// 0x1a0
    wrdata[5] = 0x00;// 0x19f
    wrdata[6] = 0x10;// 0x19e
    wrdata[7] = 0x00;// 0x19d
    wrdata[8] = 0x00;// 0x19c       //0x00       //0x20
    wrdata[9] = 0x21;// 0x19b
    wrdata[10] = 0x00;// 0x19a
    wrdata[11] = 0x10;// 0x199     //0x10        //0x44
    wrdata[0] = 0x61;
    wrdata[1] = 0xa2;
    ret = SpiGpioWriteData(u32Ch, wrdata, 12);
    if(ret != HI_SUCCESS)
    {
        printk("SpiGpioWriteReadData fail.\n");
        return 1;
    }
    
    wrdata[0] = 0xe1;
    wrdata[1] = 0xa2;
    ret = SpiGpioWriteReadData(u32Ch, wrdata, 2, rddata, 10);
    if(ret != HI_SUCCESS)
    {
        printk("SpiGpioWriteReadData fail.\n");
        return 1;
    }
    for(i=0;i<10;i++)
    {
        printk("[%d]:w.r -> %#x. %#x.\n", i,wrdata[i+2],rddata[i]);
    }


    printk("======0x1e0======\n");
    wrdata[2] = 0x02;// 0x1e1
    //wrdata[3] = 0x03;// 0x1e0
    wrdata[3] = 0x03;// 0x1e0
    wrdata[0] = 0x21;
    wrdata[1] = 0xe1;
    ret = SpiGpioWriteData(u32Ch, wrdata, 4);
    if(ret != HI_SUCCESS)
    {
        printk("SpiGpioWriteReadData fail.\n");
        return 1;
    }
    
    wrdata[0] = 0xa1;
    wrdata[1] = 0xe1;
    ret = SpiGpioWriteReadData(u32Ch, wrdata, 2, rddata, 2);
    if(ret != HI_SUCCESS)
    {
        printk("SpiGpioWriteReadData fail.\n");
        return 1;
    }
    for(i=0;i<2;i++)
    {
        printk("[%#x]:w.r -> %#x. %#x.\n", 0x1a2-i,wrdata[i+2],rddata[i]);
    }



    printk("======0x18======\n");
    wrdata[2] = 0x07;// 0x18
    wrdata[0] = 0x0;
    wrdata[1] = 0x18;
    ret = SpiGpioWriteData(u32Ch, wrdata, 3);
    if(ret != HI_SUCCESS)
    {
        printk("SpiGpioWriteReadData fail.\n");
        return 1;
    }
    
    wrdata[0] = 0x80;
    wrdata[1] = 0x18;
    ret = SpiGpioWriteReadData(u32Ch, wrdata, 2, rddata, 1);
    if(ret != HI_SUCCESS)
    {
        printk("SpiGpioWriteReadData fail.\n");
        return 1;
    }
    for(i=0;i<1;i++)
    {
        printk("[%#x]:w.r -> %#x. %#x.\n", 0x18,wrdata[i+2],rddata[i]);
    }

    /*update register*/
    printk("======0x232======\n");
    wrdata[2] = 0x01;// 0x232
    wrdata[0] = 0x02;
    wrdata[1] = 0x32;
    ret = SpiGpioWriteData(u32Ch, wrdata, 3);
    if(ret != HI_SUCCESS)
    {
        printk("SpiGpioWriteReadData fail.\n");
        return 1;
    }
    
    wrdata[0] = 0x82;
    wrdata[1] = 0x32;
    ret = SpiGpioWriteReadData(u32Ch, wrdata, 2, rddata, 1);
    if(ret != HI_SUCCESS)
    {
        printk("SpiGpioWriteReadData fail.\n");
        return 1;
    }
    for(i=0;i<1;i++)
    {
        printk("[%#x]:w.r -> %#x. %#x.\n", 0x232,wrdata[i+2],rddata[i]);
    }

    
    /* PLL Settings. */
    printk("======0x10======\n");
    wrdata[2] = 0x00;// 0x1d
    wrdata[3] = 0x02;// 0x1c
    wrdata[4] = 0x00;// 0x1b
    wrdata[5] = 0x00;// 0x1a
    wrdata[6] = 0x00;// 0x19
    wrdata[7] = 0x06;// 0x18
    wrdata[8] = 0x00;// 0x17
    wrdata[9] = 0x05;// 0x16                /* PLL control 1: Prescaler P, Bits[2:0] */
    wrdata[10] = 0x00;// 0x15               /* 13-bit B counter, Bits[12:8](MSB) */
    //wrdata[11] = 0x0d;// 0x14
    wrdata[11] = 0x0d;// 0x14
    //wrdata[12] = 0x08;// 0x13             
    wrdata[12] = 0x08;// 0x13
    wrdata[13] = 0x00;// 0x12  //           /* 14-bit R divider, Bits[13:8](MSB) */
    wrdata[14] = 0x01;// 0x11               /* 14-bit R divider, Bits[7:0](LSB) */
    wrdata[15] = 0x7c;// 0x10               /* PFD polarity */

    wrdata[0] = 0xe0;
    wrdata[1] = 0x1d;
    ret = SpiGpioWriteReadData(u32Ch, wrdata, 2, rddata, 14);
    if(ret != HI_SUCCESS)
    {
        printk("SpiGpioWriteReadData fail.\n");
        return 1;
    }
    for(i=0;i<14;i++)
    {
        printk("[%#x]:w.r -> %#x. %#x.\n", 0x1d-i,wrdata[i+2],rddata[i]);
    }

    printk("======0x199======\n");
    wrdata[2] = 0x00;// 0x1a2
    wrdata[3] = 0x00;// 0x1a1
    wrdata[4] = 0x21;// 0x1a0
    wrdata[5] = 0x00;// 0x19f
    wrdata[6] = 0x10;// 0x19e
    wrdata[7] = 0x00;// 0x19d
    wrdata[8] = 0x00;// 0x19c       //0x00       //0x20
    wrdata[9] = 0x21;// 0x19b
    wrdata[10] = 0x00;// 0x19a
    wrdata[11] = 0x10;// 0x199     //0x10        //0x44

    wrdata[0] = 0xe1;
    wrdata[1] = 0xa2;
    ret = SpiGpioWriteReadData(u32Ch, wrdata, 2, rddata, 10);
    if(ret != HI_SUCCESS)
    {
        printk("SpiGpioWriteReadData fail.\n");
        return 1;
    }
    for(i=0;i<10;i++)
    {
        printk("[%d]:w.r -> %#x. %#x.\n", i,wrdata[i+2],rddata[i]);
    }







    /*destroy spi channel*/
    SpiGpioDestroyChan(u32Ch);
    return HI_SUCCESS;
}


HI_S32 SocADCADS62023Init(HI_VOID)
{
    HI_S32 ret;
    HI_U32 u32Ch;
    HI_U32 i, wrnum;
    HI_SPI_GPIO_CH_ATTR stSpiAttr;
    
    /*format: register addr(1B) , register data(1B)*/
    HI_CHAR wrdata[][2] = 
        {
            {0x00, 0x02},
            //{0x12, 0x1d},
            #if 1
            {0x10, 0xc0},
            {0x11, 0x03},
            {0x12, 0x1d},
            {0x13, 0x00},
            //{0x14, 0xa8},
            {0x14, 0x90},
            //{0x16, 0x10},
            {0x16, 0x10},/*0x16: [2~0] out patern*/
            {0x17, 0x0c},
            {0x18, 0x54},/*0x18: [7~2] low 6bit*/
            {0x19, 0x15},/*0x19: [5~0] high 6bit*/
            {0x1a, 0x00},
            {0x1b, 0x03},
            {0x1d, 0x00},
            {0x1e, 0x00},
            {0x1f, 0x00},
            {0x20, 0x00},
            {0x21, 0x00},
            {0x22, 0x00},
            {0x23, 0x00},
            {0x24, 0x00},
            {0x25, 0x00},
            {0x26, 0x00},
            {0x27, 0x00},
            {0x28, 0x00},
            {0x29, 0x00},
            {0x2a, 0x00},
            {0x2b, 0x00},
            {0x2c, 0x00},
            {0x2d, 0x00},
            {0x2e, 0x00},
            {0x2f, 0x00},
#endif


        };
    
    /*
    *SCK -- GPIO0_3
    *SDO -- NULL
    *SDI -- GPIO0_4
    *CS  -- GPIO0_2
    */
 
    stSpiAttr.u32SpiClkGpio = 0;
    stSpiAttr.u32SpiClkBit  = 3;
    stSpiAttr.u32SpiCsGpio = 0;
    stSpiAttr.u32SpiCsBit  = 2;
    stSpiAttr.u32SpiDIGpio = 0;
    stSpiAttr.u32SpiDIBit  = 4;
    stSpiAttr.u32SpiDOGpio = 0;
    stSpiAttr.u32SpiDOBit  = 4;
    /*
    stSpiAttr.u32SpiClkGpio = 1;
    stSpiAttr.u32SpiClkBit  = 0;
    stSpiAttr.u32SpiCsGpio = 1;
    stSpiAttr.u32SpiCsBit  = 2;
    stSpiAttr.u32SpiDIGpio = 1;
    stSpiAttr.u32SpiDIBit  = 1;
    stSpiAttr.u32SpiDOGpio = 1;
    stSpiAttr.u32SpiDOBit  = 1;
*/
    /*创建SPI通道*/
    ret = SpiGpioCreateChan(&stSpiAttr, &u32Ch);
    if(ret != HI_SUCCESS)
    {
        printk("SpiGpioCreateChan fail.\n");
        return 1;
    }
    printk("ch = %d\n", u32Ch);

    wrnum = sizeof(wrdata) / (sizeof(HI_CHAR) * 2);
    printk("wrnum = %d.\n", wrnum);
    
    for(i = 0; i < wrnum; i++)
    {
        printk("[%d],reg:%#x, val:%#x\n", i, wrdata[i][0], wrdata[i][1]);
        ret = SpiGpioWriteData(u32Ch, wrdata[i], 2);
        if(ret != HI_SUCCESS)
        {
            printk("SpiGpioWriteReadData fail.\n");
            return 1;
        }
    }
/*    
    printk("read.\n");
    
    ret = SpiGpioWriteData(u32Ch, rddata, 2);
    if(ret != HI_SUCCESS)
    {
        printk("SpiGpioWriteReadData fail.\n");
        return 1;
    }
    for(i = 0; i < wrnum; i++)
    {
        ret = SpiGpioWriteReadData(u32Ch, wrdata[i], 1, rddata, 1);
        if(ret != HI_SUCCESS)
        {
            printk("SpiGpioWriteReadData fail.\n");
            return 1;
        }
        printk("rd[%d],reg:%#x, val:%#x\n", i, wrdata[i][0], rddata[0]);
    }
 */   

    /*destroy spi channel*/
    SpiGpioDestroyChan(u32Ch);
    return HI_SUCCESS;
}

static HI_S32 __init SocSpiGpio_ModInit(HI_VOID)
{
    memset(&s_stGpioCh, 0, sizeof(HI_SPI_GPIO_CH_ATTR) * D_SPI_GPIO_MAX_CH);

    SocPllAD9517Init();
    SocADCADS62023Init();
    printk("Load spi_gpio success.  \t(%s)\n", VERSION_STRING);
    return 0;
}

static HI_VOID __exit SocSpiGpio_ModExit(HI_VOID)
{
    printk("unload spi_gpio success.  \n");
    return;
}


module_init(SocSpiGpio_ModInit);
module_exit(SocSpiGpio_ModExit);
MODULE_LICENSE("GPL");
MODULE_DESCRIPTION("HISILICON");
MODULE_AUTHOR("Soc Group");

