#ifndef __IR_H__
#define __IR_H__

extern void IR_Isr(void);
extern void ir_resetParam(void);
extern void ir_getParam(void);
extern void ir_reset(void);

extern void ir_enable(void); 
extern void ir_disable(void); 
extern void ir_start(void); 
extern void IR_Init(void);
#endif

