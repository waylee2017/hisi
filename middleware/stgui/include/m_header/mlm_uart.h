/*****************************************************************************
* Copyright (c) 2010,MDVB
* All rights reserved.
* 
* FileName ：mlm_uart.h
* Description ：Global define for error code base
* 
* Version ：Version ：1.0.0
* Author ：wangyafeng : 
* Date ：2010-08-11
* Record : Change it into standard mode
*
* History :
* (1) 	Version ：1.0.0
* 		Author ：wangyafeng  : 
* 		Date ：2010-08-14
*		Record : Create File 
****************************************************************************/
#ifndef	__MLM_UART_H__ /* 防止头文件被重复引用 */
#define	__MLM_UART_H__

/*----------------------Standard Include-------------------------*/

/*---------------------User-defined Include----------------------*/

/* C++ support */
#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */

/*------------------------Module Macors---------------------------*/
/*------------------------Module Constants---------------------------*/

/*------------------------Module Types---------------------------*/

/*-----------------------Module Variables-------------------------*/

/*-----------------------Module Functions-------------------------*/
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
extern MMT_STB_ErrorCode_E MLMF_Uart_SetParam (MBT_U32 Baud, MBT_U32 Pairty, MBT_U32 Sp, MBT_U32 Db);

/*
*说明：往串口写数据。
*输入参数：
*			Buf: 数据缓存指针。
*			Len: 数据长度，字节。
*			Time_ms: 设置超时时间，毫秒，time_ms=0表示永久等待。
*输出参数:
*			无。
*		返回：
*		MM_NO_ERROR:成功。
*			错误号：失败。
*/
extern MMT_STB_ErrorCode_E MLMF_Uart_Write(MBT_U8 * Buf,MBT_U32 len,MBT_U32 * pu32WrtieLen,MBT_U32 time_ms);

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
extern MMT_STB_ErrorCode_E MLMF_Uart_Read(MBT_U8 *data, MBT_U32 Wlen, MBT_U32 *Alen, MBT_U32 tm);

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
extern MMT_STB_ErrorCode_E MLMF_Uart_Flush(MBT_VOID);
/*------------------------Module Classes--------------------------*/

/* End C++ support */
#ifdef __cplusplus
}
#endif/* __cplusplus */

#endif /* #ifndef	__MLM_UART_H__ */

/*----------------------End of mlm_uart.h-------------------------*/

