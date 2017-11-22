#include <string.h>
#include <stdarg.h>
#include "mapi_inner.h"


/*----------------------Standard Include-------------------------*/

/*---------------------User-defined Include----------------------*/

/* C++ support */
#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */

#define ClOCKS_PER_SECOND (1000)
#define SECONDS_ONE_DAY   (86400)           /* Restraints number of seconds to last day (86400s in 1 day) */

static MBT_S32 mlmv_s32PrintSem = -1;

/*
*说明：获取当前OS时间。
*输入参数：
*无。
*输出参数: 
*无。
*返回：
*当前系统运行的毫秒数(若数据溢出，从0开始重计)。
*/
MBT_U32 MLMF_SYS_GetMS(MBT_VOID)
{
	struct timeval   tv;
	clock_t          Clk = 1;	    /* Default value */
//	int              USecPerClk;    /* Micro seconds per clock (typically 64) */

//	USecPerClk = 1000000/ClOCKS_PER_SECOND;

	if (gettimeofday(&tv, NULL) == 0)
	{

		Clk = ((tv.tv_sec*1000000 + tv.tv_usec)/1000);
		/* Restraints number of seconds */
		/* This restriction is due to unsigned int maximum value which may be overflowed if no constraint was introduced */
	}
	return (Clk);
}


MBT_VOID MLMF_SYS_DcacheFlush(MBT_VOID *p_addr, MBT_U32 len)
{
	
}


MBT_VOID MLMF_SYS_DcachInvalid(MBT_VOID *p_addr, MBT_U32 len)
{
	
}


MBT_VOID *MLMF_SYS_CacheAddr2NCach(MBT_VOID *p_addr)
{
	
}


MBT_BOOL MLMF_Get_ChipID(MBT_U8 * pbyChipID,MBT_U8 * pbyChipIDLen)
{
	
}


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

MBT_VOID MLMF_SYS_WatchDog(MBT_U32 u32TimeOut)
{
	
}


MMT_STB_ErrorCode_E MLMF_SYS_ResetSecModule(MBT_VOID)
{
    return MM_ERROR_FEATURE_NOT_SUPPORTED;
}



/*
*说明：系统打印函数。
*输入参数：
*打印参数。
*输出参数: 
*无。
*返回：
*无。
*/
MBT_VOID MLMF_Print(const MBT_CHAR* fmt, ...)
{
	
}



/*
*说明：进入待机
*/

MBT_VOID MLMF_SYS_EnterStandby(MM_STANDBY_MODE eMode,MBT_U32 u32WakeupTime,MBT_U32 u32Powerkey)
{
	
}


MBT_VOID MLMF_SYS_FakeWakeup(MBT_VOID)
{
	
}


MMT_STB_ErrorCode_E MLF_SysInit(MBT_VOID)
{
	
}


/* End C++ support */
#ifdef __cplusplus
}
#endif/* __cplusplus */


