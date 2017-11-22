/*****************************************************************************************
 *
 * FILE NAME          : MxL661_OEM_Drv.c
 * 
 * AUTHOR             : Dong Liu 
 *
 * DATE CREATED       : 01/23/2011  
 *
 * DESCRIPTION        : This file contains I2C driver and Sleep functins that 
 *                      OEM should implement for MxL661 APIs
 *                             
 *****************************************************************************************
 *                Copyright (c) 2010, MaxLinear, Inc.
 ****************************************************************************************/
#include <linux/delay.h>

#include "hi_type.h"
#include "hi_drv_i2c.h"

#include "drv_tuner_ext.h"
#include "drv_demod.h"

#include "MxL661_OEM_Drv.h"
#include "MxL661_TunerApi.h"

static HI_U32 g_Mxl661TunerPort;
static HI_U32 g_Mxl661I2cChnNum;
static HI_U32 g_Mxl661I2cAddr;

/*----------------------------------------------------------------------------------------
--| FUNCTION NAME : MxLWare661_OEM_WriteRegister
--| 
--| AUTHOR        : Brenndon Lee
--|
--| DATE CREATED  : 7/30/2009
--|
--| DESCRIPTION   : This function does I2C write operation.
--|
--| RETURN VALUE  : True or False
--|
--|-------------------------------------------------------------------------------------*/

MXL_STATUS MxLWare661_OEM_WriteRegister(UINT8 I2cSlaveAddr, UINT8 RegAddr, UINT8 RegData)
{
  //MXL_STATUS status = MXL_FALSE;
   
  // OEM should implement I2C write protocol that complies with MxL661 I2C
  // format.

  // 8 bit Register Write Protocol:
  // +------+-+-----+-+-+----------+-+----------+-+-+
  // |MASTER|S|SADDR|W| |RegAddr   | |RegData(L)| |P|
  // +------+-+-----+-+-+----------+-+----------+-+-+
  // |SLAVE |         |A|          |A|          |A| |
  // +------+---------+-+----------+-+----------+-+-+
  // Legends: SADDR (I2c slave address), S (Start condition), A (Ack), N(NACK), 
  // P(Stop condition)

  	HI_S32 s32Ret = 0;
	UINT8 pArray[2];
	TUNER_I2C_DATA_S stI2cData;

	//pArray[0] = RegAddr;
	//pArray[1] = RegData;
	
	HI_U32 u32RegAddr =0;
	HI_U8 u32Data =0;
	u32RegAddr = RegAddr;
	u32Data = RegData;

	qam_config_i2c_out(g_Mxl661TunerPort,1);

	stI2cData.pu8ReceiveBuf = NULL;
	stI2cData.u32ReceiveLength = 0;
	stI2cData.pu8SendBuf = pArray;
	stI2cData.u32SendLength = 2;

       s32Ret = HI_DRV_I2C_Write(g_Mxl661I2cChnNum,g_Mxl661I2cAddr, u32RegAddr, 1, &u32Data, 1);

	if(s32Ret != HI_SUCCESS)
	{
	    HI_ERR_TUNER("i2c write error\n");
	    return MXL_FALSE;
	}
	else
	{
	   return MXL_TRUE;
	}  
}

/*------------------------------------------------------------------------------
--| FUNCTION NAME : MxLWare661_OEM_ReadRegister
--| 
--| AUTHOR        : Brenndon Lee
--|
--| DATE CREATED  : 7/30/2009
--|
--| DESCRIPTION   : This function does I2C read operation.
--|
--| RETURN VALUE  : True or False
--|
--|---------------------------------------------------------------------------*/

MXL_STATUS MxLWare661_OEM_ReadRegister(UINT8 I2cSlaveAddr, UINT8 RegAddr, UINT8 *DataPtr)
{
 // MXL_STATUS status = MXL_TRUE;
  
  // OEM should implement I2C read protocol that complies with MxL661 I2C
  // format.

  // 8 bit Register Read Protocol:
  // +------+-+-----+-+-+----+-+----------+-+-+
  // |MASTER|S|SADDR|W| |0xFB| |RegAddr   | |P|
  // +------+-+-----+-+-+----+-+----------+-+-+
  // |SLAVE |         |A|    |A|          |A| |
  // +------+-+-----+-+-+----+-+----------+-+-+
  // +------+-+-----+-+-+-----+--+-+
  // |MASTER|S|SADDR|R| |     |MN|P|
  // +------+-+-----+-+-+-----+--+-+
  // |SLAVE |         |A|Data |  | |
  // +------+---------+-+-----+--+-+
  // Legends: SADDR(I2c slave address), S(Start condition), MA(Master Ack), MN(Master NACK), 
  // P(Stop condition)
    //typedef HI_S32 (*FN_I2C_READ)(HI_U32, HI_U8, HI_U32, HI_U32, HI_U8 *, HI_U32);
 
 	HI_S32 s32Ret = 0;

	HI_U32 u32RegAddr = 0;
       HI_U8 addrbuf[2] = {0};
	addrbuf[0] = 0xfb;
	addrbuf[1] = RegAddr;
	u32RegAddr = (addrbuf[0]<< 8) + addrbuf[1];

	qam_config_i2c_out(g_Mxl661TunerPort,1);

        s32Ret = HI_DRV_I2C_Read(g_Mxl661I2cChnNum,g_Mxl661I2cAddr, u32RegAddr, 2, DataPtr, 1);
		
	if(s32Ret != HI_SUCCESS)
	{
	    HI_ERR_TUNER("i2c read error\n");
	    return MXL_FALSE;
	}
	else
	{
	   return MXL_TRUE;
	}
}

/*------------------------------------------------------------------------------
--| FUNCTION NAME : MxLWare661_OEM_Sleep
--| 
--| AUTHOR        : Dong Liu
--|
--| DATE CREATED  : 01/10/2010
--|
--| DESCRIPTION   : This function complete sleep operation. WaitTime is in ms unit
--|
--| RETURN VALUE  : None
--|
--|-------------------------------------------------------------------------------------*/

void MxLWare661_OEM_Sleep(UINT16 DelayTimeInMs)
{
  // OEM should implement sleep operation 
  //DelayTimeInMs = DelayTimeInMs;
   msleep(DelayTimeInMs);
}

void MxL661_I2C_SetChn(UINT32 I2CChn,UINT32 I2CAddr)
{
    g_Mxl661I2cChnNum = I2CChn;
    g_Mxl661I2cAddr = I2CAddr; 
}

void MxL661_I2C_SetPort(UINT32 TunerPort)
{
    g_Mxl661TunerPort = TunerPort;
}

