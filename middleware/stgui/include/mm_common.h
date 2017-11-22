/*
 * Source file name : APPLTYPE.H
 *
 * Purpose: All	the application	specific typedefs & enums are defined
 *	    here
 *
 * Original Work:  None
 *
 * =======================
 * IMPROVEMENTS	THOUGHT	OF
 * =======================
 *
 * =====================
 * MODIFICATION	HISTORY:
 * =====================
 *
 * Date	       Initials	Modification										
 * ----	       --------	------------										
 */
#ifndef	 __MM_COMMON_H__
#define	 __MM_COMMON_H__


#include "mapi_main.h"
/* T U N E R D A T A T Y P E S ******************************************************************************/
enum
{
	MMR_LANGUAGE_NO = 0,
	ENG_LANGUAGE_NO = 1,
};

enum
{
    m_PALMode = 0,
    m_NTSCMode = 1
};

#define MM_CRC_SIZE 4
#define NETWORK_LOCK 0//close network function
#define USE_GLOBLEVOLUME 0
#define START_MULTIDES 1
#define FTA_LOCK 0
#define SULM_IN
#define SULM_OUT
#define SULM_INOUT
#define TFCONFIG 0

#define ENABLE_FAKE_STANDBY 0

typedef struct TIMER_I  
{
    MBT_U8 durationhour;                         
    MBT_U8 durationMinute;            
    MBT_U16 u16ServiceID;	

    MBT_U32 uTimerProgramNo;		
    MBT_U32 u32UtcTimeSecond;		
    MBT_U8 year;
    MBT_U8 dateofWeek;		
                                                                    /*
                                                                    *这里规定
                                                                    *0      =  关闭
                                                                    *1-7  =  周一~周日
                                                                    *8      =  EPGTimer 只按年月日触发一次 
                                                                    *9      =  定时开机
                                                                    *10    = 定时关机
                                                                    */
    MBT_U8 Weekday;											
    MBT_U8 month;
    MBT_U8 date;
    MBT_U8 hour;
    MBT_U8 minute;   
    MBT_U8 second;        
    MBT_U8 uTimeZone;	
	MBT_U8 bRecord;		//0: view, 1 record
    MBT_U8 u8reserved[2];		
} TIMER_M;

#if(OVT_FAC_MODE == 1)
#define   FAC_TEST_PROCESS_PRIORITY               17
#define   FAC_MONITOR_PROCESS_PRIORITY               16
#endif

#define   TIMER_PROCESS_PRIORITY               15
#define   DBASE_BUILDER_PROCESS_PRIORITY	    14
#define   USIF_PROCESS_PRIORITY			        6
#define   CACDNOTIFY_PROCESS_PRIORITY	        9
#define   TOP_OSD_PRIORITY	        10
#define   BOTTOM_OSD_PRIORITY	        11
#define   CACDLIB_PROCESS_HIGH_PRIORITY	        12
#define   CACDLIB_MSG_TASK_PRIORITY	            13
#define   CACDLIB_PROCESS_MID_PRIORITY	        8
#define   CACDLIB_PROCESS_LOW_PRIORITY	        7
#define   UI_STARUP_PROCESS_PRIORITY	        10
#define   CHCKENTITLE_PROCESS_PRIORITY	        2

#define   DBASE_BUILDER_PROCESS_WORKSPACE	  (80*1024 )
#define   CAS_ECM_PROCESS_WORKSPACE	                    (80*1024  )
#define   USIF_PROCESS_WORKSPACE			 (512*1024)
#define   KEYBOARD_PROCESS_WORKSPACE		    	( 1024 )
#define   DHCP_PROCESS_STACK_SIZE				(8192 )
#define   TIMER_PROCESS_WORKSPACE                       (30*1024  ) // 2
#define   CACDNOTIFY_PROCESS_WORKSPACE			 (8192 )
#define   CACDNVM_PROCESS_WORKSPACE			 (8192 )
#define   HARDTEST_PROCESS_WORKSPACE			 (512*1024)

#define M_PRINT_ECMCARDTIME 0



#define STAPI_ASSERT_ENABLED

#ifdef STAPI_ASSERT_ENABLED
#define MMF_SYS_Assert(expr)                                                \
     do {                                                            \
         if(!(expr)) {                                     \
             MLMF_Print("Assertion failed! %s,%s,%s,line=%d\n",#expr,__FILE__,__FUNCTION__,__LINE__);\
             while(1);              \
        }                                                           \
     } while (0)
#else
#define MMF_SYS_Assert(expr)
#endif

 extern MBT_U32 MMF_Common_TimeMinus(MBT_U32 u32EndTime,MBT_U32 u32StartTime);
 
 extern MBT_U32 MMF_Common_TimePlus(MBT_U32 u32BaseTime,MBT_U32 u32OffsetTime);
 
 extern MBT_U32 MMF_Common_CRC(MBT_U32* pdata, MBT_U32 size);
 
 extern MBT_U32 MMF_Common_CRCU8(MBT_U8* pdata, MBT_U32 size);
 #endif	 /* __MM_COMMON_H__  */
