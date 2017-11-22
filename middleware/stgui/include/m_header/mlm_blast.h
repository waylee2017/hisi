/*****************************************************************************
* Copyright (c) 2010,MDVB
* All rights reserved.
* 
* FileName ：mlm_blast.h
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
#ifndef	__MLM_BLAST_H__ /* 防止头文件被重复引用 */
#define	__MLM_BLAST_H__
/*----------------------Standard Include-------------------------*/

/*---------------------User-defined Include----------------------*/

/* C++ support */
#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */


typedef enum _M_IrStatus_e
{
	MM_BLAST_PRESS = 0,
	MM_BLAST_REPEAT,
	MM_BLAST_RELEASE
}MMT_BLAST_Status_E;


/*------------------------Module Macors---------------------------*/
/*------------------------Module Constants---------------------------*/

/*------------------------Module Types---------------------------*/
/*-----------------------Module Variables-------------------------*/

/*-----------------------Module Functions-------------------------*/
/*
*说明：注册按键回调函数，在接收到遥控器按键时调此回调函数，如果用户按下键300ms没有放开，则开始重复发送上一键值，之后每收到一个repeate便发送一次，直到用户停止按键。
*因为遥控器个体有差异，所以在实现此功能时，一定要保证可以接收108ms上下波动10%的红外信号，同时也要把带高位掩码的完整32位码值传给回调函数。
*输入参数：
*pBCallback: 注册的回调函数指针。回调函数的格式：MBT_VOID BlastCallback(MBT_U32 key)，参数key：是按键值。
*输出参数:
*    无。
*		返回
*			MM_NO_ERROR:成功。
*			错误号：失败。
*/
extern MBT_VOID MLMF_Blast_RegisterCallback(MBT_VOID(* pBCallback)(MBT_U16 u16key,MMT_BLAST_Status_E eStatus));


extern MBT_VOID MLMF_Blast_SetSystemCode(MBT_U16 u16SystemCode);


/*------------------------Module Classes--------------------------*/

/* End C++ support */
#ifdef __cplusplus
}
#endif/* __cplusplus */

#endif /* #ifndef	__MLM_BLAST_H__ */

/*----------------------End of mlm_blast.h-------------------------*/

