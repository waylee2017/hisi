#include <linux/delay.h>
#include <linux/semaphore.h>

#include "linux/kernel.h"

#include <hi_debug.h>
#include "hi_type.h"
#include "hi_drv_i2c.h"

#include "drv_tuner_ext.h"
#include "drv_demod.h"


#include "tmNxTypes.h"
#include "tmCompId.h"
#include "tmFrontEnd.h"
#include "tmbslFrontEndTypes.h"
#include "tmbslTDA182I5a.h"
#include "tmbslTDA182I5a_RegDef.h"

static HI_U32 s_u32Tda18215TunerPort = 0;

static Bool tda_read (UInt8 uAddress, UInt8 uSubAddress, UInt32 uNbData, UInt8 * pDataBuff);
static Bool tda_write (UInt8 uAddress, UInt8 uSubAddress, UInt32 uNbData, UInt8 * pDataBuff);
static Bool tda_wait (UInt32 ms);

//*--------------------------------------------------------------------------------------
//* Prototype of function to be provided by customer
//*--------------------------------------------------------------------------------------
tmErrorCode_t TDA18215_I2cRead(tmUnitSelect_t tUnit, UInt32 AddrSize, UInt8 * pAddr, UInt32 ReadLen, UInt8 * pData);
tmErrorCode_t TDA18215_I2cWrite(tmUnitSelect_t tUnit, UInt32 AddrSize, UInt8 * pAddr, UInt32 WriteLen, UInt8 * pData);
tmErrorCode_t TDA18215_Wait(tmUnitSelect_t tUnit, UInt32 tms);
tmErrorCode_t TDA18215_Print(UInt32 level, const char *format, ...);


tmErrorCode_t TDA18215_I2cRead(tmUnitSelect_t tUnit, UInt32 AddrSize, UInt8 * pAddr, UInt32 ReadLen, UInt8 * pData)
{
	/* Variable declarations */
	tmErrorCode_t err = TM_OK;

	err = tda_read (g_stTunerOps[s_u32Tda18215TunerPort].u32TunerAddress, *pAddr, ReadLen, pData);

	return err;
}

tmErrorCode_t TDA18215_I2cWrite(tmUnitSelect_t tUnit, UInt32 AddrSize, UInt8 * pAddr, UInt32 WriteLen, UInt8 * pData)
{
	/* Variable declarations */
	tmErrorCode_t err = TM_OK;

	err = tda_write (g_stTunerOps[s_u32Tda18215TunerPort].u32TunerAddress, *pAddr, WriteLen, pData);
	return err;
}

tmErrorCode_t TDA18215_Wait(tmUnitSelect_t tUnit, UInt32 tms)
{
    msleep(tms);

    return TM_OK;
}

tmErrorCode_t TDA18215_Print(UInt32 level, const char *format, ...)
{
		/* Variable declarations */
		tmErrorCode_t err = TM_OK;
#if 0
		char string[256];
		
		va_list args;
	
		va_start(args, format);
		vsnprintf(string, 256, format, args);
		va_end(args);
		
		
		
	/* Customer code here */
	/* ...*/
	
	/* ...*/
	/* End of Customer code here */
#endif
    
    return TM_OK;
}

static Bool tda_write (UInt8 uAddress, UInt8 uSubAddress, UInt32 uNbData, UInt8 * pDataBuff)
{
	HI_U8  i;
	HI_S32 s32Ret;
	TUNER_I2C_DATA_S stI2cDataStr = { 0 };
	//HI_U8 au8SendData[65] = { 0 };
	HI_U8 au8SendData[TDA182I5a_REG_MAP_NB_BYTES] = { 0 };
	HI_U8 *pu8Tmp = NULL;


	if (NULL == pDataBuff)
	{
		HI_ERR_TUNER( "pointer is null\n");
		return HI_FAILURE;
	}

	qam_config_i2c_out (s_u32Tda18215TunerPort, 1);

	pu8Tmp = pDataBuff;
	au8SendData[0] = uSubAddress;
	for (i = 0; i < uNbData; i++)
	{
		au8SendData[i + 1] = *pu8Tmp;
		pu8Tmp++;
	}

	stI2cDataStr.pu8ReceiveBuf = 0;
	stI2cDataStr.u32ReceiveLength = 0;
	stI2cDataStr.pu8SendBuf = au8SendData;
	stI2cDataStr.u32SendLength = uNbData + 1;	//subaddress + data
	s32Ret = tuner_i2c_send_data (g_stTunerOps[s_u32Tda18215TunerPort].enI2cChannel, uAddress, &stI2cDataStr);
	if (HI_SUCCESS != s32Ret)
	{
		HI_ERR_TUNER("[tda18215 error]%s %d IIC write err!status:0x%x\n", __FUNCTION__, __LINE__, s32Ret);
		return HI_FAILURE;
	}

	return HI_SUCCESS;

}

static Bool tda_read (UInt8 uAddress, UInt8 uSubAddress, UInt32 uNbData, UInt8 * pDataBuff)
{
	HI_S32 i;
	HI_S32 s32Ret;
	TUNER_I2C_DATA_S stI2cDataStr = { 0 };
	//HI_U8 au8RcvData[65] = { 0 };
	HI_U8 au8RcvData[TDA182I5a_REG_MAP_NB_BYTES] = { 0 };


	qam_config_i2c_out (s_u32Tda18215TunerPort, 1);
	memset ((void *) au8RcvData, 0, sizeof (au8RcvData));

	stI2cDataStr.pu8ReceiveBuf = au8RcvData;
	stI2cDataStr.pu8SendBuf = &uSubAddress;
	stI2cDataStr.u32ReceiveLength = uNbData;
	stI2cDataStr.u32SendLength = 1;

	s32Ret = tuner_i2c_receive_data (g_stTunerOps[s_u32Tda18215TunerPort].enI2cChannel, uAddress /*|0x01 */ ,
		&stI2cDataStr);
	if (HI_SUCCESS != s32Ret)
	{
		HI_ERR_TUNER("[tda18215 error]%s %d IIC read err! status:0x%x\n", __FUNCTION__, __LINE__, s32Ret);
		return HI_FAILURE;
	}

	for (i = 0; i < uNbData; i++)
	{
		pDataBuff[i] = au8RcvData[i];
	}

	return HI_SUCCESS;
}

#define SK_TRACE() HI_FATAL_TUNER("__file__:%s,__function__:%s, __line__:%d\n", __FILE__,__FUNCTION__,__LINE__)

HI_S32 tda18215_init_tuner(HI_U32 u32TunerPort)
{
    UInt32 u32RF = 0;
    //UInt32 u32IF = 0;
    tmErrorCode_t err = TM_OK;
    tmbslFrontEndDependency_t sSrvTunerFunc;
    s_u32Tda18215TunerPort = u32TunerPort;
    
    sSrvTunerFunc.sIo.Write = TDA18215_I2cWrite;
    sSrvTunerFunc.sIo.Read = TDA18215_I2cRead;
    sSrvTunerFunc.sTime.Get = Null;
    sSrvTunerFunc.sTime.Wait = TDA18215_Wait;
    sSrvTunerFunc.sDebug.Print = TDA18215_Print;
    sSrvTunerFunc.sMutex.Acquire = Null;
    sSrvTunerFunc.sMutex.Release = Null;
    sSrvTunerFunc.dwAdditionalDataSize = 0;
    sSrvTunerFunc.pAdditionalData = Null;

	tmbslTDA182I5a_Close(u32TunerPort);

    /* Open TDA18275 driver instance */
    err = tmbslTDA182I5a_Open(u32TunerPort, &sSrvTunerFunc);
    if(err != TM_OK)
    {
        HI_ERR_TUNER("Call tmbslTDA182I5a_Open failure!\n");
        return HI_FAILURE;
    }
    
    /* TDA18275 Hardware initialization */
    err = tmbslTDA182I5a_HwInit(u32TunerPort);
    if(err != TM_OK)
    {
        HI_ERR_TUNER("Call tmbslTDA182I5a_HwInit failure!\n");
        goto TUNER_CLOSE;
    }

    /* Put TDA18275 in Poweon mode: */
    err = tmbslTDA182I5a_SetPowerState(u32TunerPort, tmPowerOn);
    if(err != TM_OK)
    {
        HI_ERR_TUNER("Call tmbslTDA182I5a_SetPowerState failure!\n");
        goto TUNER_CLOSE;
    }
    

    return HI_SUCCESS;

/*TUNER_POWERDOWN:
    err = tmbslTDA18275SetPowerState(u32TunerPort, tmPowerOff);
    if(err != TM_OK)
    {
        HI_ERR_TUNER("Call tmbslTDA18275SetPowerState failure!\n"); 
    }*/

TUNER_CLOSE:
    err = tmbslTDA182I5a_Close(u32TunerPort);
    if(err != TM_OK)
    {
        HI_ERR_TUNER("Call tmbslTDA182I5a_Close failure!\n");
    }    
    
    return HI_FAILURE;    
}


HI_S32 tda18215_set_tuner (HI_U32 u32TunerPort, HI_UNF_TUNER_I2cChannel_E enI2cChannel, HI_U32 u32PuRF)
{
	UInt32 TunerUnit = 0;
	tmErrorCode_t err = TM_OK;
	TDA182I5aStandardMode_t TDA182I5aStdMode = TDA182I5a_QAM_8MHz;
	
    UInt32 uRFMaster = u32PuRF * 1000;
    s_u32Tda18215TunerPort = u32TunerPort;
	
    if (HI_UNF_DEMOD_DEV_TYPE_J83B == g_stTunerOps[u32TunerPort].enDemodDevType)
    {
		 TDA182I5aStdMode = TDA182I5a_QAM_6MHz;
    }
    else
    {
		TDA182I5aStdMode = TDA182I5a_QAM_8MHz;
	} 

	
    err = tmbslTDA182I5a_SetStandardMode (u32TunerPort, TDA182I5aStdMode);
    if (err != TM_OK)
    {
        SK_TRACE ();
        return err;
    }

	err = tmbslTDA182I5a_SetRF(u32TunerPort, uRFMaster);
	if(err != TM_OK)
	{
		SK_TRACE ();
	    return HI_FAILURE;
	}

    return HI_SUCCESS;
}

HI_S32 tda18215_get_signal_strength(HI_U32 u32TunerPort, HI_U32 *pu32SignalStrength)
{
    tmErrorCode_t err = ( CUInt32 )TM_OK;
    Int32 s32SignalStrength = 0;

    err =  tmbslTDA182I5a_GetPowerLevel(u32TunerPort , &s32SignalStrength);
    if(TM_OK != err)
    {
        SK_TRACE ();
        return err;
    }
    pu32SignalStrength[1] = (HI_U32)( (s32SignalStrength)/2 + 2 );
    
    return HI_SUCCESS;
}

HI_VOID tda18215_tuner_resume(HI_U32 u32TunerPort)
{
    s_u32Tda18215TunerPort = u32TunerPort;
    	
    tda18215_init_tuner(s_u32Tda18215TunerPort);
    
    return;


}

HI_VOID tda18215_tuner_standby(HI_U32 u32TunerPort, HI_U32 u32Status)
{
    tmErrorCode_t err = ( CUInt32 )TM_OK;
    	
    /* TDA18215 Master Hardware power state */
    err = tmbslTDA182I5a_SetPowerState  (u32TunerPort, tmPowerStandby);
    if (err != TM_OK)
    {
       HI_ERR_TUNER("tmbslTDA182I5a_SetPowerState err 0x%x\n",err);
    }

    return;
}

