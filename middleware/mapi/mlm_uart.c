/*****************************************************************************
* Copyright (c) 2005,SULDVB
* All rights reserved.
* 
* FileName ：ErrorCode.h
* Description ：Global define for error code base
* 
* Version ：Version ：1.0.0
* Author ：Jason   Reviewer : 
* Date ：2005-01-12
* Record : Change it into standard mode
*
* History :
* (1) 	Version ：1.0.0
* 		Author ：Jason   Reviewer : 
* 		Date ：2005-01-12
*		Record : Create File
****************************************************************************/
#include "string.h"
#include "mapi_inner.h"



/*----------------------Standard Include-------------------------*/

/*---------------------User-defined Include----------------------*/

/* C++ support */
#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */




/*
*说明：设置串口参数，波特率，校验位，停止位，数据位。
*输入参数：
*			Baud: 波特率。
*			Pairty: 校验位。
*			Sp: 停止位。
*			Db: 数据位。
*输出参数:
*			无。
*		返回：
*		MM_NO_ERROR:成功。
*			错误号：失败。
*/
MMT_STB_ErrorCode_E MLMF_Uart_SetParam (MBT_U32 Baud, MBT_U32 Pairty, MBT_U32 Sp, MBT_U32 Db)
{
	
}

/*
*说明：往串口写数据。
*输入参数：
*			Buf: 数据缓存指针。
*			Len: 数据长度，字节。
*			Time_ms: 设置超时时间，毫秒，time_ms=MM_SYS_TIME_INIFIE表示永久等待。
*输出参数:
*			无。
*		返回：
*		MM_NO_ERROR:成功。
*			错误号：失败。
*/
MMT_STB_ErrorCode_E MLMF_Uart_Write(MBT_U8* Buf, MBT_U32 len, MBT_U32 *pu32WrtieLen,MBT_U32 time_ms)
{
	
}

/*
*说明：从串口读取数据。
*输入参数：
*			Data: 输出参数，存放读取数据的缓存地址。
*			Wlen: 输入参数，想要读取的字节数。
*			Alen: 输出参数，实际读取的字节数。
*			Tm: 输入参数，超时时间，ms , Tm = MM_SYS_TIME_INIFIE表示永久等待。
*输出参数:
*			无。
*		返回：
*		MM_NO_ERROR:成功。
*			错误号：失败。
*/
MMT_STB_ErrorCode_E MLMF_Uart_Read(MBT_U8 *data, MBT_U32 Wlen, MBT_U32 *Alen, MBT_U32 tm)
{
	
}



/*
*说明：强制清除UART的缓冲数据。
*输入参数：
*			Data: 输出参数，存放读取数据的缓存地址。
*			Wlen: 输入参数，想要读取的字节数。
*			Alen: 输出参数，实际读取的字节数。
*			Tm: 输入参数，超时时间，ms , Tm = MM_SYS_TIME_INIFIE表示永久等待。
*输出参数:
*			无。
*		返回：
*		MM_NO_ERROR:成功。
*			错误号：失败。
*/
MMT_STB_ErrorCode_E MLMF_Uart_Flush(MBT_VOID)
{
    return MM_NO_ERROR;
}

MMT_STB_ErrorCode_E MLMF_Uart_Init(MBT_VOID)
{
	return MM_NO_ERROR;
}

/* End C++ support */
#ifdef __cplusplus
}
#endif/* __cplusplus */

/*----------------------End of ErrorCode.h-------------------------*/

