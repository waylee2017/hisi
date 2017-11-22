/*********************************************************************************
*
*  Copyright (C) 2014 Hisilicon Technologies Co., Ltd.  All rights reserved. 
*
*  This program is confidential and proprietary to Hisilicon Technologies Co., Ltd.
*  (Hisilicon), and may not be copied, reproduced, modified, disclosed to
*  others, published or used, in whole or in part, without the express prior
*  written permission of Hisilicon.
*
***********************************************************************************/


#include "drv_i2c_ext.h"
#include "hi_boot_common.h"
#include "hi_reg.h"
#include "hi_boot_common.h"

#define I2C_DFT_CLK       (100000000)
//#define I2C_DFT_RATE      (100000)
#define I2C_DFT_RATE      (400000)

#if  defined(CHIP_TYPE_hi3716mv310) || defined(CHIP_TYPE_hi3110ev500) || defined (CHIP_TYPE_hi3716mv320)|| defined (CHIP_TYPE_hi3716mv330)
#define I2C_CRG_ADDR 	(0x101f506c)     //I2c clock & soft reset control register 
#else
#define I2C0_CRG_ADDR 	(0x101f50d8)     //I2c0 clock & soft reset control register 
#define I2C1_CRG_ADDR 	(0x101f50dc)		//I2c1 clock & soft reset control register 
#define I2C2_CRG_ADDR 	(0x101f50e0)		//I2c2 clock & soft reset control register 
#define I2C3_CRG_ADDR 	(0x101f50e4)		//I2c3 clock & soft reset control register 
#define QAMI2C_CRG_ADDR (0x101f50a0)		//QAM/ADC/I2C clock & soft reset control register 
#endif

#if  defined(CHIP_TYPE_hi3716mv310) || defined(CHIP_TYPE_hi3110ev500) || defined (CHIP_TYPE_hi3716mv320)|| defined (CHIP_TYPE_hi3716mv330)
#define I2C0_PHY_ADDR     (0x101F7000)
#define I2C1_PHY_ADDR     (0x101F8000)
#define ADCI2C_PHY_ADDR     (0x101FA000)
#define QAMI2C_PHY_ADDR     (0x101F6000)
#else
#define I2C0_PHY_ADDR     (0x101F7000)
#define I2C1_PHY_ADDR     (0x101F8000)
#define I2C2_PHY_ADDR     (0x101F9000)
#define I2C3_PHY_ADDR     (0x101FA000)
#define QAMI2C_PHY_ADDR     (0x101F6000)
#endif

#define I2C_CTRL_REG      (0x000)
#define I2C_COM_REB       (0x004)
#define I2C_ICR_REG       (0x008)
#define I2C_SR_REG        (0x00C)
#define I2C_SCL_H_REG     (0x010)
#define I2C_SCL_L_REG     (0x014)
#define I2C_TXR_REG       (0x018)
#define I2C_RXR_REG       (0x01C)


#define READ_OPERATION     (1)
#define WRITE_OPERATION    0xfe



/* I2C_CTRL_REG */
#define I2C_ENABLE             (1 << 8)
#define I2C_UNMASK_TOTAL       (1 << 7)
#define I2C_UNMASK_START       (1 << 6)
#define I2C_UNMASK_END         (1 << 5)
#define I2C_UNMASK_SEND        (1 << 4)
#define I2C_UNMASK_RECEIVE     (1 << 3)
#define I2C_UNMASK_ACK         (1 << 2)
#define I2C_UNMASK_ARBITRATE   (1<< 1)
#define I2C_UNMASK_OVER        (1 << 0)
#define I2C_UNMASK_ALL         (I2C_UNMASK_START | I2C_UNMASK_END | \
                                I2C_UNMASK_SEND | I2C_UNMASK_RECEIVE | \
                                I2C_UNMASK_ACK | I2C_UNMASK_ARBITRATE | \
                                I2C_UNMASK_OVER)


/* I2C_COM_REB */
#define I2C_SEND_ACK (~(1 << 4))
#define I2C_START (1 << 3)
#define I2C_READ (1 << 2)
#define I2C_WRITE (1 << 1)
#define I2C_STOP (1 << 0)

/* I2C_ICR_REG */
#define I2C_CLEAR_START (1 << 6)
#define I2C_CLEAR_END (1 << 5)
#define I2C_CLEAR_SEND (1 << 4)
#define I2C_CLEAR_RECEIVE (1 << 3)
#define I2C_CLEAR_ACK (1 << 2)
#define I2C_CLEAR_ARBITRATE (1 << 1)
#define I2C_CLEAR_OVER (1 << 0)
#define I2C_CLEAR_ALL (I2C_CLEAR_START | I2C_CLEAR_END | \
                       I2C_CLEAR_SEND | I2C_CLEAR_RECEIVE | \
                       I2C_CLEAR_ACK | I2C_CLEAR_ARBITRATE | \
                       I2C_CLEAR_OVER)

/* I2C_SR_REG */
//#define I2C_BUSY (1 << 7)
//#define I2C_START_INTR (1 << 6)
//#define I2C_END_INTR (1 << 5)
//#define I2C_SEND_INTR (1 << 4)
#define I2C_RECEIVE_INTR (1 << 3)
#define I2C_ACK_INTR (1 << 2)
//#define I2C_ARBITRATE_INTR (1 << 1)
#define I2C_OVER_INTR (1 << 0)


#define I2C_WAIT_TIME_OUT   0x1000

#define I2C_WRITE_REG(Addr, Value) ((*(volatile HI_U32 *)(Addr)) = (Value))
#define I2C_READ_REG(Addr)         (*(volatile HI_U32 *)(Addr))

static int  i2cState = 0;
static HI_U32 g_I2cKernelAddr[HI_I2C_MAX_NUM];

#ifdef HI_ADVCA_FUNCTION_RELEASE
#define I2C_DEGUB(format...) 
#else
#define I2C_DEGUB(format...)    HI_INFO_BOOT(3, format)
#endif

HI_S32 HI_DRV_I2C_SetRate(HI_U32 I2cNum, HI_U32 I2cRate)
{
	if (I2cNum > 3 )
	{
		I2C_DEGUB("I2C_SetRate Para I2cNum Error! \n ");
		return HI_ERR_I2C_INVALID_PARA;
	}

	if (I2cRate < 100000 || I2cNum > 400000 )
	{
		I2C_DEGUB("I2C_SetRate Para I2cRate Error! \n ");
		return HI_ERR_I2C_INVALID_PARA;
	}
	
    HI_U32  Value = 0;
    HI_U32  SclH = 0;
    HI_U32  SclL = 0;

    /* read i2c I2C_CTRL register*/
    Value = I2C_READ_REG((g_I2cKernelAddr[I2cNum] + I2C_CTRL_REG));

    /* close all i2c  interrupt */
    I2C_WRITE_REG((g_I2cKernelAddr[I2cNum] + I2C_CTRL_REG), (Value & (~I2C_UNMASK_TOTAL)));

    SclH = (I2C_DFT_CLK / (I2cRate * 2)) / 2 - 1;
    I2C_WRITE_REG((g_I2cKernelAddr[I2cNum] + I2C_SCL_H_REG), SclH);

    SclL = (I2C_DFT_CLK / (I2cRate * 2)) / 2 - 1;
    I2C_WRITE_REG((g_I2cKernelAddr[I2cNum] + I2C_SCL_L_REG), SclL);

    /*enable i2c interrupt£¬resume original  interrupt*/
    I2C_WRITE_REG((g_I2cKernelAddr[I2cNum] + I2C_CTRL_REG), Value);	

    return HI_SUCCESS;
}

HI_S32 DRV_WaitWriteEnd(HI_U32 I2cNum)
{
    HI_U32  I2cSrReg;
    HI_U32  i = 0;

	do
	{
        	I2cSrReg = I2C_READ_REG((g_I2cKernelAddr[I2cNum] + I2C_SR_REG));

	        if (i > I2C_WAIT_TIME_OUT)
	        {
	            I2C_DEGUB("wait write data timeout!\n");
	            return HI_ERR_I2C_WRITE_TIMEOUT;
	        }
        	i++;
	}while((I2cSrReg & I2C_OVER_INTR) != I2C_OVER_INTR);

    if (I2cSrReg & I2C_ACK_INTR)
    {
        return HI_ERR_I2C_READ_ACK_ERR;
    }
    I2C_WRITE_REG((g_I2cKernelAddr[I2cNum] + I2C_ICR_REG), I2C_CLEAR_ALL);

	return HI_SUCCESS;
}

HI_S32 I2C_DRV_WaitRead(HI_U32 I2cNum)
{
    HI_U32  I2cSrReg;
    HI_U32  i = 0;
	
	do
	{
		I2cSrReg = I2C_READ_REG((g_I2cKernelAddr[I2cNum] + I2C_SR_REG));

		if (i > I2C_WAIT_TIME_OUT)
        {
            I2C_DEGUB("wait write data timeout!\n");
            return HI_ERR_I2C_READ_TIMEOUT;
        }
        i++;
	}while((I2cSrReg & I2C_RECEIVE_INTR) != I2C_RECEIVE_INTR);

	return HI_SUCCESS;
}


/*
I2C write finished acknowledgement function
it use to e2prom device ,make sure it finished write operation.
i2c master start next write operation must waiting when it acknowledge e2prom write cycle finished.

*/
HI_S32 HI_DRV_I2C_WriteConfig(HI_U32 I2cNum, HI_U8 I2cDevAddr)
{
    HI_U32          i = 0;
    HI_U32          j = 0;
    HI_U32          I2cSrReg;

    do
    {
        I2C_WRITE_REG((g_I2cKernelAddr[I2cNum] + I2C_TXR_REG), (I2cDevAddr & WRITE_OPERATION));
        I2C_WRITE_REG((g_I2cKernelAddr[I2cNum] + I2C_COM_REB), (I2C_WRITE | I2C_START));

        j = 0;
    	do
    	{
            I2cSrReg = I2C_READ_REG((g_I2cKernelAddr[I2cNum] + I2C_SR_REG));

            if (j > I2C_WAIT_TIME_OUT)
            {
                I2C_DEGUB("wait write data timeout!\n");
                return HI_ERR_I2C_WRITE_TIMEOUT;
            }
            j++;
    	}while((I2cSrReg & I2C_OVER_INTR) != I2C_OVER_INTR);

        I2cSrReg = I2C_READ_REG((g_I2cKernelAddr[I2cNum] + I2C_SR_REG));
        I2C_WRITE_REG((g_I2cKernelAddr[I2cNum] + I2C_ICR_REG), I2C_CLEAR_ALL);

        i++;

        if (i > 0x200000) /*I2C_WAIT_TIME_OUT*/
        {
            I2C_DEGUB("wait write ack ok timeout!\n");
            return HI_ERR_I2C_WRITE_TIMEOUT;
        }
    }while ((I2cSrReg & I2C_ACK_INTR));

    return HI_SUCCESS;
}

HI_S32 HI_DRV_I2C_Write(HI_U32 I2cNum, HI_U8 I2cDevAddr, HI_U32 I2cRegAddr, HI_U32 I2cRegAddrByteNum, HI_U8 *pData, HI_U32 DataLen)
{
    HI_U32          i;
    HI_U32          RegAddr;

    /*  clear interrupt flag*/
    I2C_WRITE_REG((g_I2cKernelAddr[I2cNum] + I2C_ICR_REG), I2C_CLEAR_ALL);

    /* send devide address */
    I2C_WRITE_REG((g_I2cKernelAddr[I2cNum] + I2C_TXR_REG), (I2cDevAddr & WRITE_OPERATION));
    I2C_WRITE_REG((g_I2cKernelAddr[I2cNum] + I2C_COM_REB),(I2C_WRITE | I2C_START));

    if (DRV_WaitWriteEnd(I2cNum))
    {
        I2C_DEGUB("wait write data timeout!\n");
        return HI_ERR_I2C_WRITE_TIMEOUT;
    }

    /* send register address which will need to write */
    for(i=0; i<I2cRegAddrByteNum; i++)
    {
        RegAddr = I2cRegAddr >> ((I2cRegAddrByteNum -i -1) * 8);
        I2C_WRITE_REG((g_I2cKernelAddr[I2cNum] + I2C_TXR_REG), RegAddr);

        I2C_WRITE_REG((g_I2cKernelAddr[I2cNum] + I2C_COM_REB), I2C_WRITE);

        if (DRV_WaitWriteEnd(I2cNum))
        {
            I2C_DEGUB("wait write data timeout!\n");
            return HI_ERR_I2C_WRITE_TIMEOUT;
        }
    }

	/* send data */
	for (i=0; i<DataLen; i++)
	{
        I2C_WRITE_REG((g_I2cKernelAddr[I2cNum] + I2C_TXR_REG), (*(pData+i)));
    	I2C_WRITE_REG((g_I2cKernelAddr[I2cNum] + I2C_COM_REB), I2C_WRITE);

        if (DRV_WaitWriteEnd(I2cNum))
        {
            I2C_DEGUB("wait write data timeout!\n");
            return HI_ERR_I2C_WRITE_TIMEOUT;
        }
	}

	/*   send stop flag bit*/
	I2C_WRITE_REG((g_I2cKernelAddr[I2cNum] + I2C_COM_REB), I2C_STOP);
    if (DRV_WaitWriteEnd(I2cNum))
    {
        I2C_DEGUB("wait write data timeout!\n");
        return HI_ERR_I2C_WRITE_TIMEOUT;
    }

    return HI_SUCCESS;
}

HI_S32 HI_DRV_I2C_Read(HI_U32 I2cNum, HI_U8 I2cDevAddr, HI_U32 I2cRegAddr, HI_U32 I2cRegAddrByteNum, HI_U8 *pData, HI_U32 DataLen)
{
    HI_U32          dataTmp = 0xff;
    HI_U32          i;
    HI_U32          RegAddr;

    /* clear interrupt flag*/
    I2C_WRITE_REG((g_I2cKernelAddr[I2cNum] + I2C_ICR_REG), I2C_CLEAR_ALL);

    /* send devide address*/
    I2C_WRITE_REG((g_I2cKernelAddr[I2cNum] + I2C_TXR_REG), (I2cDevAddr & WRITE_OPERATION));
    I2C_WRITE_REG((g_I2cKernelAddr[I2cNum] + I2C_COM_REB),(I2C_WRITE | I2C_START));

    if (DRV_WaitWriteEnd(I2cNum))
    {
        I2C_DEGUB("wait write data timeout!\n");
        return HI_ERR_I2C_WRITE_TIMEOUT;
    }

    /* send register address which will need to write*/
    for(i=0; i<I2cRegAddrByteNum; i++)
    {
        RegAddr = I2cRegAddr >> ((I2cRegAddrByteNum -i -1) * 8);
        I2C_WRITE_REG((g_I2cKernelAddr[I2cNum] + I2C_TXR_REG), RegAddr);

        I2C_WRITE_REG((g_I2cKernelAddr[I2cNum] + I2C_COM_REB), I2C_WRITE);

        if (DRV_WaitWriteEnd(I2cNum))
        {
            I2C_DEGUB("wait write data timeout!\n");
            return HI_ERR_I2C_WRITE_TIMEOUT;
        }
    }

    /* send register address which will need to read */
    I2C_WRITE_REG((g_I2cKernelAddr[I2cNum] + I2C_TXR_REG), (I2cDevAddr | READ_OPERATION));
    I2C_WRITE_REG((g_I2cKernelAddr[I2cNum] + I2C_COM_REB), I2C_WRITE | I2C_START);

    if (DRV_WaitWriteEnd(I2cNum))
    {
        return HI_ERR_I2C_WRITE_TIMEOUT;
    }

    /* read data */
    for(i=0; i<DataLen; i++)
    {
        /*  the last byte don't need send ACK*/
        if (i == (DataLen - 1))
        {
            I2C_WRITE_REG((g_I2cKernelAddr[I2cNum] + I2C_COM_REB), (I2C_READ | (~I2C_SEND_ACK)));
        }
        /*  if i2c master receive data will send ACK*/
        else
        {
            I2C_WRITE_REG((g_I2cKernelAddr[I2cNum] + I2C_COM_REB), I2C_READ);
        }

        if (I2C_DRV_WaitRead(I2cNum))
        {
            I2C_DEGUB("wait read data timeout!\n");
            return HI_ERR_I2C_READ_TIMEOUT;
        }

        dataTmp = I2C_READ_REG((g_I2cKernelAddr[I2cNum] + I2C_RXR_REG));
        *(pData+i)= dataTmp & 0xff;

        if (DRV_WaitWriteEnd(I2cNum)) 
        {
            I2C_DEGUB("wait write data timeout!\n");
            return HI_ERR_I2C_WRITE_TIMEOUT;
        }
    }

    /* send stop flag bit*/
    I2C_WRITE_REG((g_I2cKernelAddr[I2cNum] + I2C_COM_REB), I2C_STOP);
    if (DRV_WaitWriteEnd(I2cNum))
    {
        I2C_DEGUB("wait write data timeout!\n");
        return HI_ERR_I2C_WRITE_TIMEOUT;
    }

    return HI_SUCCESS;
}

HI_S32 HI_DRV_I2C_Read_SiLabs(HI_U32 I2cNum, HI_U8 I2cDevAddr, HI_U32 I2cRegAddr, HI_U32 I2cRegAddrByteNum, HI_U8 *pData, HI_U32 DataLen)
{
	HI_U32			dataTmp = 0xff;
	HI_U32			i;

	/* clear interrupt flag*/
	I2C_WRITE_REG((g_I2cKernelAddr[I2cNum] + I2C_ICR_REG), I2C_CLEAR_ALL);

	/* send devide address*/
	I2C_WRITE_REG((g_I2cKernelAddr[I2cNum] + I2C_TXR_REG), (I2cDevAddr & READ_OPERATION));
	I2C_WRITE_REG((g_I2cKernelAddr[I2cNum] + I2C_COM_REB),(I2C_WRITE | I2C_START));

	if (DRV_WaitWriteEnd(I2cNum))
	{
		I2C_DEGUB("wait write data timeout!\n");
		return HI_ERR_I2C_WRITE_TIMEOUT;
	}

	/* send register address which will need to write*/
	for(i=0; i<1; i++)
	{
		/*	the last byte don't need send ACK*/
		if (i == (DataLen - 1))
		{
			I2C_WRITE_REG((g_I2cKernelAddr[I2cNum] + I2C_COM_REB), (I2C_READ | (~I2C_SEND_ACK)));
		}
		/*	if i2c master receive data will send ACK*/
		else
		{
			I2C_WRITE_REG((g_I2cKernelAddr[I2cNum] + I2C_COM_REB), I2C_READ);
		}

		if (I2C_DRV_WaitRead(I2cNum))
		{
			I2C_DEGUB("wait read data timeout!\n");
			return HI_ERR_I2C_READ_TIMEOUT;
		}

		dataTmp = I2C_READ_REG((g_I2cKernelAddr[I2cNum] + I2C_RXR_REG));
		*(pData+i)= dataTmp & 0xff;

		if (DRV_WaitWriteEnd(I2cNum)) 
		{
			I2C_DEGUB("wait write data timeout!\n");
			return HI_ERR_I2C_WRITE_TIMEOUT;
		}
	}

	/* send register address which will need to read */
	I2C_WRITE_REG((g_I2cKernelAddr[I2cNum] + I2C_TXR_REG), (I2cDevAddr | READ_OPERATION));
	I2C_WRITE_REG((g_I2cKernelAddr[I2cNum] + I2C_COM_REB), I2C_WRITE | I2C_START);

	if (DRV_WaitWriteEnd(I2cNum))
	{
		return HI_ERR_I2C_WRITE_TIMEOUT;
	}

	/* read data */
	for(i=0; i<DataLen; i++)
	{
		/*	the last byte don't need send ACK*/
		if (i == (DataLen - 1))
		{
			I2C_WRITE_REG((g_I2cKernelAddr[I2cNum] + I2C_COM_REB), (I2C_READ | (~I2C_SEND_ACK)));
		}
		/*	if i2c master receive data will send ACK*/
		else
		{
			I2C_WRITE_REG((g_I2cKernelAddr[I2cNum] + I2C_COM_REB), I2C_READ);
		}

		if (I2C_DRV_WaitRead(I2cNum))
		{
			I2C_DEGUB("wait read data timeout!\n");
			return HI_ERR_I2C_READ_TIMEOUT;
		}

		dataTmp = I2C_READ_REG((g_I2cKernelAddr[I2cNum] + I2C_RXR_REG));
		*(pData+i)= dataTmp & 0xff;

		if (DRV_WaitWriteEnd(I2cNum)) 
		{
			I2C_DEGUB("wait write data timeout!\n");
			return HI_ERR_I2C_WRITE_TIMEOUT;
		}
	}

	/* send stop flag bit*/
	I2C_WRITE_REG((g_I2cKernelAddr[I2cNum] + I2C_COM_REB), I2C_STOP);
	if (DRV_WaitWriteEnd(I2cNum))
	{
		I2C_DEGUB("wait write data timeout!\n");
		return HI_ERR_I2C_WRITE_TIMEOUT;
	}

	return HI_SUCCESS;
}



HI_S32 HI_DRV_I2C_Init(HI_VOID)
{ 
    HI_U32  i;
#if  defined(CHIP_TYPE_hi3716mv310) || defined(CHIP_TYPE_hi3110ev500) || defined (CHIP_TYPE_hi3716mv320)|| defined (CHIP_TYPE_hi3716mv330)
#else
    HI_CHIP_TYPE_E enChipType;
    HI_CHIP_VERSION_E u32ChipVersion = 0;
#endif	
    HI_U32 u32RegVal = 0;
    
    //*pReg;
	
    if (1 == i2cState)
    {
        return HI_SUCCESS;
    }

#if  defined(CHIP_TYPE_hi3716mv310) || defined(CHIP_TYPE_hi3110ev500) || defined (CHIP_TYPE_hi3716mv320)|| defined (CHIP_TYPE_hi3716mv330)
    g_I2cKernelAddr[0] = (I2C0_PHY_ADDR);
    g_I2cKernelAddr[1] = (I2C1_PHY_ADDR);
    g_I2cKernelAddr[2] = (ADCI2C_PHY_ADDR);
    g_I2cKernelAddr[3] = (QAMI2C_PHY_ADDR);
	
	u32RegVal = I2C_READ_REG((I2C_CRG_ADDR));
    u32RegVal |= (0x1 << 4);
    u32RegVal &= ~(0x1 << 5);
    I2C_WRITE_REG((I2C_CRG_ADDR),u32RegVal);    /*open i2c0 clk, rmove i2c0 soft reset*/

    u32RegVal = I2C_READ_REG((I2C_CRG_ADDR));
    u32RegVal |= (0x1 << 8);
    u32RegVal &= ~(0x1 << 9);
    I2C_WRITE_REG((I2C_CRG_ADDR),u32RegVal);    /*open i2c1 clk, rmove i2c1 soft reset*/

    u32RegVal = I2C_READ_REG((I2C_CRG_ADDR));
    u32RegVal |= (0x1 << 12);
    u32RegVal &= ~(0x1 << 13);
    I2C_WRITE_REG((I2C_CRG_ADDR),u32RegVal);    /*open i2c_adc clk, rmove i2c_adc soft reset*/

	u32RegVal = I2C_READ_REG(I2C_CRG_ADDR);
	u32RegVal |= (0x1 << 0);
    u32RegVal &= ~(0x1 << 1);                   /*open i2c_qam clk, rmove i2c_qam soft reset*/
	I2C_WRITE_REG(I2C_CRG_ADDR, u32RegVal);
#else
	g_I2cKernelAddr[0] = (I2C0_PHY_ADDR);
    g_I2cKernelAddr[1] = (I2C1_PHY_ADDR);
    g_I2cKernelAddr[2] = (I2C2_PHY_ADDR);
    g_I2cKernelAddr[3] = (I2C3_PHY_ADDR);
    g_I2cKernelAddr[4] = (QAMI2C_PHY_ADDR);
    u32RegVal = I2C_READ_REG((I2C0_CRG_ADDR));
    u32RegVal |= (0x1 << 8);
    u32RegVal &= ~0x1;
    I2C_WRITE_REG((I2C0_CRG_ADDR),u32RegVal);    /*open i2c0 clk, rmove i2c0 soft reset*/

    u32RegVal = I2C_READ_REG((I2C1_CRG_ADDR));
    u32RegVal |= (0x1 << 8);
    u32RegVal &= ~0x1;
    I2C_WRITE_REG((I2C1_CRG_ADDR),u32RegVal);    /*open i2c1 clk, rmove i2c1 soft reset*/

    u32RegVal = I2C_READ_REG((I2C2_CRG_ADDR));
    u32RegVal |= (0x1 << 8);
    u32RegVal &= ~0x1;
    I2C_WRITE_REG((I2C2_CRG_ADDR),u32RegVal);    /*open i2c2 clk, rmove i2c2 soft reset*/

    u32RegVal = I2C_READ_REG((I2C3_CRG_ADDR));
    u32RegVal |= (0x1 << 8);
    u32RegVal &= ~0x1;
    I2C_WRITE_REG((I2C3_CRG_ADDR),u32RegVal);    /*open i2c3 clk, rmove i2c3 soft reset*/

    /* add by chenqiang at 20110930, fix QAM's clock  */
    {

        u32RegVal = I2C_READ_REG(QAMI2C_CRG_ADDR);
        HI_DRV_SYS_GetChipVersion( &enChipType, &u32ChipVersion );
        if ( HI_CHIP_TYPE_HI3716M == enChipType)
        {
            /* QAM clock: 62.5M */
            u32RegVal = (((((u32RegVal & ~(0x3)) | (0x7 << 8)) | (0x1 << 16)) & ~(0x3 << 17)) | (0x1 << 19));
            I2C_WRITE_REG(QAMI2C_CRG_ADDR, u32RegVal);
        }
        else
        {
            /* QAM clock: 74.25M */
            u32RegVal = ((((u32RegVal & ~(0x3)) | (0x7 << 8)) | (0x1 << 16)) & ~(0x7 << 17));
            I2C_WRITE_REG(QAMI2C_CRG_ADDR, u32RegVal); 
        }
    } 

#endif


    for (i=0; i<HI_I2C_MAX_NUM; i++)
    {
    
#if 0
        if (i > HI_UNF_I2C_CHANNEL_QAM)
        {
            break;
        }
#endif
        /* disable all i2c interrupt */
        I2C_WRITE_REG((g_I2cKernelAddr[i] + I2C_CTRL_REG), 0x0);

        /*  config scl clk rate*/
        HI_DRV_I2C_SetRate(i, I2C_DFT_RATE);

        /* clear all i2c interrupt*/
        I2C_WRITE_REG((g_I2cKernelAddr[i] + I2C_ICR_REG), I2C_CLEAR_ALL);

        /*enable relative interrupt*/
        I2C_WRITE_REG((g_I2cKernelAddr[i] + I2C_CTRL_REG), (I2C_ENABLE | I2C_UNMASK_TOTAL | I2C_UNMASK_ALL));
    }
    i2cState = 1;

	
    //I2C_DEGUB("hi_i2c init success.  \t \n");

    return HI_SUCCESS;
}


HI_VOID HI_DRV_I2C_Exit(HI_VOID)
{
    HI_U32 u32RegVal;

#if  defined(CHIP_TYPE_hi3716mv310) || defined(CHIP_TYPE_hi3110ev500) || defined (CHIP_TYPE_hi3716mv320)|| defined (CHIP_TYPE_hi3716mv330)
	u32RegVal = I2C_READ_REG((I2C_CRG_ADDR));
	u32RegVal |= ((0x1 << 4) | (0x1<<5));
    I2C_WRITE_REG((I2C_CRG_ADDR),u32RegVal);    /*open i2c0 clk,  i2c0 soft reset*/

    u32RegVal = I2C_READ_REG((I2C_CRG_ADDR));
   	u32RegVal |= ((0x1 << 8) | (0x1<<9));
    I2C_WRITE_REG((I2C_CRG_ADDR),u32RegVal);    /*open i2c1 clk,  i2c1 soft reset*/

    u32RegVal = I2C_READ_REG((I2C_CRG_ADDR));
    u32RegVal |= ((0x1 << 12) | (0x1<<13));
    I2C_WRITE_REG((I2C_CRG_ADDR),u32RegVal);    /*open i2c_adc clk,  i2c_adc soft reset*/

	u32RegVal = I2C_READ_REG(I2C_CRG_ADDR);
	u32RegVal |= ((0x1 << 0) | (0x1 << 1));     /*open i2c_qam clk,  i2c_qam soft reset*/
    I2C_WRITE_REG(I2C_CRG_ADDR, u32RegVal);

	 u32RegVal = I2C_READ_REG((I2C_CRG_ADDR));
    u32RegVal &= (~(0x1 << 4));
    I2C_WRITE_REG((I2C_CRG_ADDR),u32RegVal);    /*close i2c0 clk,  i2c0 soft reset*/

    u32RegVal = I2C_READ_REG((I2C_CRG_ADDR));
    u32RegVal &= (~(0x1 << 8));
    I2C_WRITE_REG((I2C_CRG_ADDR),u32RegVal);    /*close i2c1 clk,  i2c1 soft reset*/

    u32RegVal = I2C_READ_REG((I2C_CRG_ADDR));
    u32RegVal &= (~(0x1 << 12));
    I2C_WRITE_REG((I2C_CRG_ADDR),u32RegVal);    /*close i2c_adc clk,  i2c_adc soft reset*/

	u32RegVal = I2C_READ_REG(I2C_CRG_ADDR);
	u32RegVal &= (~(0x1 << 0));
	u32RegVal |= (0x1 << 1);                    /*close i2c_qam clk,  i2c_qam soft reset*/
    I2C_WRITE_REG(I2C_CRG_ADDR, u32RegVal);
#else
    u32RegVal = I2C_READ_REG((I2C0_CRG_ADDR));
    u32RegVal |= ((0x1 << 8) | (0x1<<0));
    I2C_WRITE_REG((I2C0_CRG_ADDR),u32RegVal);    /*open i2c0 clk,  i2c0 soft reset*/

    u32RegVal = I2C_READ_REG((I2C1_CRG_ADDR));
    u32RegVal |= ((0x1 << 8) | (0x1<<0));
    I2C_WRITE_REG((I2C1_CRG_ADDR),u32RegVal);    /*open i2c1 clk,  i2c1 soft reset*/

    u32RegVal = I2C_READ_REG((I2C2_CRG_ADDR));
    u32RegVal |= ((0x1 << 8) | (0x1<<0));
    I2C_WRITE_REG((I2C2_CRG_ADDR),u32RegVal);    /*open i2c2 clk,  i2c2 soft reset*/

    u32RegVal = I2C_READ_REG((I2C3_CRG_ADDR));
    u32RegVal |= ((0x1 << 8) | (0x1<<0));
    I2C_WRITE_REG((I2C3_CRG_ADDR),u32RegVal);    /*open i2c3 clk,  i2c3 soft reset*/

    /* add by chenqiang at 20110930*/
	u32RegVal = I2C_READ_REG(QAMI2C_CRG_ADDR);
	u32RegVal |= ((0x1 << 10) | (0x1 << 1));
    I2C_WRITE_REG(QAMI2C_CRG_ADDR, u32RegVal);

    u32RegVal = I2C_READ_REG((I2C0_CRG_ADDR));
    u32RegVal &= (~(0x1 << 8));
    I2C_WRITE_REG((I2C0_CRG_ADDR),u32RegVal);    /*close i2c0 clk,  i2c0 soft reset*/

    u32RegVal = I2C_READ_REG((I2C1_CRG_ADDR));
    u32RegVal &= (~(0x1 << 8));
    I2C_WRITE_REG((I2C1_CRG_ADDR),u32RegVal);    /*close i2c1 clk,  i2c1 soft reset*/

    u32RegVal = I2C_READ_REG((I2C2_CRG_ADDR));
    u32RegVal &= (~(0x1 << 8));
    I2C_WRITE_REG((I2C2_CRG_ADDR),u32RegVal);    /*close i2c2 clk,  i2c2 soft reset*/

    u32RegVal = I2C_READ_REG((I2C3_CRG_ADDR));
    u32RegVal &= (~(0x1 << 8));
    I2C_WRITE_REG((I2C3_CRG_ADDR),u32RegVal);    /*close i2c3 clk,  i2c3 soft reset*/

    /* add by chenqiang at 20110930*/
	u32RegVal = I2C_READ_REG(QAMI2C_CRG_ADDR);
	u32RegVal &= (~(0x1 << 10));
	u32RegVal |= (0x1 << 1);
    I2C_WRITE_REG(QAMI2C_CRG_ADDR, u32RegVal);
#endif

    i2cState = 0;
     I2C_DEGUB("hi_i2c Release success.  \t \n");

    return;
}





