/*****************************************************************************
* Copyright (c) 2010,MDVB
* All rights reserved.
* 
* FileName ：mlm_tuner.h
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
* 		Date ：2010-08-11
*		Record : Create File 
****************************************************************************/
#ifndef	__MLM_TUNER_H__ /* 防止头文件被重复引用 */
#define	__MLM_TUNER_H__

/*----------------------Standard Include-------------------------*/

/*---------------------User-defined Include----------------------*/

/* C++ support */
#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */

/*------------------------Module Macors---------------------------*/

/*------------------------Module Constants---------------------------*/

/*------------------------Module Types---------------------------*/
typedef enum _M_TunerStatus_e
{
	MM_TUNER_UNLOCKED,//未锁上
	MM_TUNER_LOCKED//已锁上
}MMT_TUNER_TunerStatus_E;


typedef enum _M_TpQamType_e
{
	MM_TUNER_QAM_16 = 0,
	MM_TUNER_QAM_32,
	MM_TUNER_QAM_64,
	MM_TUNER_QAM_128,
	MM_TUNER_QAM_256,
    MM_TUNER_QAM_MAX
}MMT_TUNER_QamType_E;




/*-----------------------Module Functions-------------------------*/
/*
*说明：锁一个频点，为非阻塞式调用，此函数应在保证新的频点数据设入tuner（必须保证此函数结束后不会再接收到上一个频点的任何数据流）的前提下返回，不必等待锁频结果，锁频结果应该通过调用回调函数来告知上层。
*输入参数：
*u32TunerID: 输入参数，tuner的ID ，用于多个tuner的情况，如果只有一路tuner，则传0。
*u32Frenq：输入参数，是频率，单位为KHz。
*u32Sym：输入参数，是符号率，单位是Mbds，通常为6875。
*stQam：输入参数，是调制方式。
*MBT_VOID (*TUNER_ScanCallback_T)(
*MMT_TUNER_TunerStatus_E stTunerState, 
*MBT_U32 u32TunerID，
*MBT_U32 iFrenq, 
*MBT_U32 iSym, 
*MMT_TUNER_QAMMode_E stQam)：为状态返回调函数，在驱动经过一轮尝试以后调用此函数返回当前状态。平时驱动要对tuner状态进行监控（每隔两秒钟考察一次），如果当前状态为锁定状态则不做任何操作，如果当前状态为未锁定状态则调用此函数告知上层同时驱动尝试重新锁频。此回调函数在每次调用锁频函数MLMF_Tuner_Lock时都有可能更换。其参数含义如下：
*u32TunerID: 输入参数，返回MLMF_Tuner_Lock传入的的ID。
*u32Frenq：输入参数，是频率，单位为KHz，返回MLMF_Tuner_Lock传入的的频率。
*u32Sym：输入参数，是符号率，单位是Mbds，通常为6875，返回MLMF_Tuner_Lock传入的的符号率。
*stQam：输入参数，是调制方式，返回MLMF_Tuner_Lock传入的调制方式。
*输出参数:
*			无。
*		返回：
*			MM_NO_ERROR:成功。
*			错误号：失败。
*/
extern MMT_STB_ErrorCode_E MLMF_Tuner_Lock(MBT_U32 u32TunerID, 
                                                MBT_U32 u32Frenq, 
                                                MBT_U32 u32Sym, 
                                                MMT_TUNER_QamType_E eQamType,
                                                MBT_VOID (*TUNER_ScanCallback_T)(
                                                                                    MMT_TUNER_TunerStatus_E stTunerState, 
                                                                                    MBT_U32 u32TunerID,
                                                                                    MBT_U32 u32Frenq, 
                                                                                    MBT_U32 u32Sym, 
                                                                                    MMT_TUNER_QamType_E eQamType)
                                                    );


/*
*说明：获取tuner的状态，如果不需要取相关的参数，直接传MBT_NULL。
*输入参数：
*			u32TunerID：输入参数，tuner的ID。
*输出参数:
*			无。			
*		返回：
*			锁定状态。。
*/                                                                                                                                            
extern MMT_TUNER_TunerStatus_E MLMF_Tuner_GetLockStatus(MBT_U32 u32TunerID);

/*
*说明：获取tuner的状态，如果不需要取相关的参数，直接传MBT_NULL。
*输入参数：
*			u32TunerID：输入参数，tuner的ID。
*输出参数:
*			signal_ber：输出参数， 频点的误码率, Bit error rate (x 10000000)。为一个含有三个元素的整型数组。
*			Signal_ber指向当前TUNER 误码率的指针。该指针指向一个包含三个元素的数组，三个元素含义如下:
*				 signal_ber[0]:误码率底数的整数部分
*				 signal_ber[1]:误码率底数的小数部分乘以1000
*				 signal_ber[2]:误码率指数部分取绝对值(这个值为非正数，因为误码率不可能大于1) 例如:误码率为2.156E-7，
*				 那么三个元素的取值分别为 2、156和7。
*			signal_quality：输出参数，信号质量 , Carrier to noise ratio (dB x 10)。
*			signal_strength：输出参数，信号强度, Power of the RF signal (dBm x 10)。
*		返回：
*			MM_NO_ERROR:成功。
*			错误号：失败。
*/
extern MMT_STB_ErrorCode_E MLMF_Tuner_GetStatus(MBT_U32 u32TunerID, MBT_U32 *signal_strength,MBT_U32 *signal_quality, MBT_U32 *signal_ber);


/*
*说明：获取当前频率信息。
*输入参数：
*			无。
*输出参数:
*u32TunerID: 输入参数，tuner的ID ，用于多个tuner的情况，如果只有一路tuner，则传0。
*u32Frenq：输入参数，是频率，单位为KHz。
*u32Sym：输入参数，是符号率，单位是Mbds，通常为6875。
*stQam：输入参数，是调制方式。
*		返回：
*			MM_NO_ERROR:成功。
*			错误号：失败。
*/
extern MMT_STB_ErrorCode_E MLMF_Tuner_CurTrans(MBT_U32 u32TunerID, MBT_U32 * pu32Frenq, MBT_U32 * pu32Sym, MMT_TUNER_QamType_E* peQamType);


/*
u8Mute == 1  关掉环出 
u8Mute == 0  打开环出 
开机默认是关掉的，如果用户设置了打开，需要以初始化时打开
*/

extern MBT_VOID MLMF_Tuner_SetLoopOutMode(MBT_U8 u8Mute);


/*------------------------Module Classes--------------------------*/

/* End C++ support */
#ifdef __cplusplus
}
#endif/* __cplusplus */

#endif /* #ifndef	__MLM_TUNER_H__ */

/*----------------------End of mlm_tuner.h-------------------------*/

