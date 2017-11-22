#ifndef __KEYLED_H__
#define __KEYLED_H__


//#define KEYLED_CT1642
#define KEYLED_CT1642_INNER
//#define KEYLED_ET16315
//define KEYLED_FD650

/*
#define KEYLED_PT6964
#define KEYLED_TM1618A
#define KEYLED_CT1642
#define KEYLED_CT1628
#define KEYLED_ET16315
*/

#define NO_DISPLAY 0
#define DIGITAL_DISPLAY 1
#define TIME_DISPLAY 2

extern HI_U8  kltype;  
extern HI_U8  klPmocVal;

/*variable*/
extern HI_U8  time_hour;
extern HI_U8  time_minute;
extern HI_U8  time_second;
extern HI_U8  time_dot;
extern HI_U8  time_type;
extern HI_U32 channum;

extern HI_VOID keyled_resetParam(HI_VOID);
extern HI_VOID early_display(HI_VOID);
extern HI_VOID timer_display(HI_VOID);
extern HI_VOID chan_display(HI_VOID);
extern HI_VOID no_display(HI_VOID); 
extern HI_VOID dbg_display(HI_U16 val);

extern HI_VOID keyled_reset(HI_VOID);
extern HI_VOID keyled_enable(HI_U8 type);
extern HI_VOID keyled_disable(HI_U8 type);
extern HI_VOID keyled_isr(HI_VOID);

#endif
