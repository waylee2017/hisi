#ifndef __RDSDATA_H__
#define __RDSDATA_H__

#include "RDAFM_5807X_drv_V4.0.h"

#define	RDS_WAIT_TIME		2
#define	RDS_READY_TIME		30

#define	RDSCOMP             1

#define	UTCTIME		(1<<5)
#define	UTCDATA		(1<<4)
#define	RDSPS			(1<<2)
#define	RDSPTY			(1<<1)
#define	RDSRT			(1<<0)

#define RDS_TYPE_0A     ( 0 * 2 + 0)
#define RDS_TYPE_0B     ( 0 * 2 + 1)
#define RDS_TYPE_1A     ( 1 * 2 + 0)
#define RDS_TYPE_1B     ( 1 * 2 + 1)
#define RDS_TYPE_2A     ( 2 * 2 + 0)
#define RDS_TYPE_2B     ( 2 * 2 + 1)
#define RDS_TYPE_3A     ( 3 * 2 + 0)
#define RDS_TYPE_3B     ( 3 * 2 + 1)
#define RDS_TYPE_4A     ( 4 * 2 + 0)
#define RDS_TYPE_4B     ( 4 * 2 + 1)
#define RDS_TYPE_5A     ( 5 * 2 + 0)
#define RDS_TYPE_5B     ( 5 * 2 + 1)
#define RDS_TYPE_6A     ( 6 * 2 + 0)
#define RDS_TYPE_6B     ( 6 * 2 + 1)
#define RDS_TYPE_7A     ( 7 * 2 + 0)
#define RDS_TYPE_7B     ( 7 * 2 + 1)
#define RDS_TYPE_8A     ( 8 * 2 + 0)
#define RDS_TYPE_8B     ( 8 * 2 + 1)
#define RDS_TYPE_9A     ( 9 * 2 + 0)
#define RDS_TYPE_9B     ( 9 * 2 + 1)
#define RDS_TYPE_10A    (10 * 2 + 0)
#define RDS_TYPE_10B    (10 * 2 + 1)
#define RDS_TYPE_11A    (11 * 2 + 0)
#define RDS_TYPE_11B    (11 * 2 + 1)
#define RDS_TYPE_12A    (12 * 2 + 0)
#define RDS_TYPE_12B    (12 * 2 + 1)
#define RDS_TYPE_13A    (13 * 2 + 0)
#define RDS_TYPE_13B    (13 * 2 + 1)
#define RDS_TYPE_14A    (14 * 2 + 0)
#define RDS_TYPE_14B    (14 * 2 + 1)
#define RDS_TYPE_15A    (15 * 2 + 0)
#define RDS_TYPE_15B    (15 * 2 + 1)

#define BLOCK_A 0
#define BLOCK_B 1
#define BLOCK_C 2
#define BLOCK_D 3
#define RDS_PTY_VALIDATE_LIMIT 4
#define PS_VALIDATE_LIMIT 2
#define RDS_CNT	 8

/////////////////////////////
typedef struct UTC_struct_tag 
{
	HI_U32 year;
	HI_U8 day;
	HI_U8 month;
	HI_U32 weekday;
	HI_U32 weeknumbers;
	HI_U8  hour;
	HI_U8  minutes;
	HI_S8  local_time_difference;
} UTC_struct;

#define RT_VALIDATE_LIMIT       2
#define RDS_PI_VALIDATE_LIMIT   4
#define RDS_PTY_VALIDATE_LIMIT  4
#define PS_VALIDATE_LIMIT       2
#define	RT_LENTH                64
#define	RT_BLENTH               16

typedef	struct
{
	HI_U8	str[2048];
	HI_U8	head;
	HI_U8	tail;
    HI_U8	len[RT_BLENTH];
}RT_INFO;


//////////////////////////////

typedef	enum
{
	RDS_STA_IDLE,
	RDS_STA_START,
	RDS_STA_WAIT,
	RDS_STA_READY,
	RDS_STA_STOP
}RDS_TASK_STATUS;

HI_U8 RdsSyn(HI_VOID);
HI_VOID UpdateRDSText(HI_U16* group);
HI_VOID update_pty(HI_U8 current_pty);
HI_VOID update_ps(HI_U8 addr, HI_U8 byte);
HI_VOID update_rt(HI_U8 abFlag, HI_U8 count, HI_U8 addr, HI_U8* byte, HI_U8 errorFlags);
//HI_VOID display_rt(HI_VOID);

HI_VOID ParseRdsTask(HI_VOID);
HI_VOID StartRdsParse(HI_VOID);

HI_VOID Reset_RDS_Data(HI_VOID);
HI_VOID StopRdsParse(HI_VOID);
HI_VOID Get_RDS_PS(HI_U8 *str,HI_U8 *len);
HI_VOID Get_RDS_Pty(HI_U8 *pty);
HI_VOID Get_RDS_RT(HI_U8 *str,HI_U8*len);
HI_S32 RDS_Open(HI_VOID);
HI_S32 RDS_Close(HI_VOID);
#endif
