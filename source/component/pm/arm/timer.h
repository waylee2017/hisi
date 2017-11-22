#ifndef __TIMER_H__
#define __TIMER_H__


/* function */
extern void timer_resetParam(void);
extern void timer_enable(void);
extern void timer_disable(void);
extern void timer_reset(void);
extern void timer_getParam(void);
extern void timer_isr(void);
extern void do_wdgon(void);

#endif