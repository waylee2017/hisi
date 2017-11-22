/*****************************************************************************
* Copyright (c) 2010,MDVB
* All rights reserved.
* 
* FileName ：mlm_system.h
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

#ifndef	__MLM_SYSTEM_H__ /* 防止头文件被重复引用 */
#define	__MLM_SYSTEM_H__

/*----------------------Standard Include-------------------------*/

/*---------------------User-defined Include----------------------*/

/* C++ support */
#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */

typedef enum _MM_STANDBY_MODE_
{
    MM_STANDBY_MODE_NORMAL,
    MM_STANDBY_MODE_FAST,
    MM_STANDBY_MODE_FAKE,
    MM_STANDBY_MODE_MAX
}MM_STANDBY_MODE;


/*
*说明：获取当前OS时间。
*输入参数：
*无。
*输出参数: 
*无。
*返回：
*当前系统运行的毫秒数(若数据溢出，从0开始重计)。
*/
extern MBT_U32 MLMF_SYS_GetMS(MBT_VOID);

extern MBT_VOID MLMF_SYS_DcacheFlush(MBT_VOID *p_addr, MBT_U32 len);
extern MBT_VOID MLMF_SYS_DcachInvalid(MBT_VOID *p_addr, MBT_U32 len);
extern MBT_VOID *MLMF_SYS_CacheAddr2NCach(MBT_VOID *p_addr);

extern MBT_BOOL MLMF_Get_ChipID(MBT_U8 * pbyChipID,MBT_U8 * pbyChipIDLen);

/*
*说明：调用此函数喂养看门狗，在参数给定的时间内如果不喂养则自动重启，
*如果参数为MM_SYS_TIME_INIFIE则表示关闭看门狗，如果为MM_SYS_TIME_IMEDIEA则表示立即重启。
*输入参数：
*u32TimeOut：喂狗的时间，单位为ms。
*输出参数: 
*无。
*返回：
*无。
*/
extern MBT_VOID MLMF_SYS_WatchDog(MBT_U32 u32TimeOut);

extern MMT_STB_ErrorCode_E MLMF_SYS_ResetSecModule(MBT_VOID);

/*
*说明：系统打印函数。
*输入参数：
*打印参数。
*输出参数: 
*无。
*返回：
*无。
*/
extern MBT_VOID MLMF_Print(const MBT_CHAR* fmt, ...);



/*
*说明：待机函数。
*输入参数：
*无
*输出参数: 
*无。
*返回：
*无。
*/
extern MBT_VOID MLMF_SYS_EnterStandby(MM_STANDBY_MODE eMode,MBT_U32 u32WakeupTime,MBT_U32 u32Powerkey);

extern MBT_VOID MLMF_SYS_FakeWakeup(MBT_VOID);

/* End C++ support */
#ifdef __cplusplus
}
#endif/* __cplusplus */

#endif /* #ifndef	__MLM_SYSTEM_H__ */

/*----------------------End of mlm_system.h-------------------------*/

