/*********************************************************************************
*
*  Copyright (C) 2014 Hisilicon Technologies Co., Ltd.  All rights reserved. 
*
*  This program is confidential and proprietary to Hisilicon Technologies Co., Ltd.
*  (Hisilicon), and may not be copied, reproduced, modified, disclosed to
*  others, published or used, in whole or in part, without the express prior
*  written permission of Hisilicon.
*
***********************************************************************************/

/*include header files*/
#include "hi_type.h"
#include <pthread.h>
#include "petimer.h" 





#ifdef __cplusplus
#if __cplusplus
extern "C"{
#endif
#endif /* __cplusplus */



static void * g_timerEntry = NULL;


/******************************************************************************
value of mode reference below:
#define PETF_AUTO_RESTART   0x0  //the timer re-arms itself
#define PETF_ONE_SHOOT      0x1   //the timer start once and then stop 
#define PETF_AUTO_FREE      0x2   // the timer start once and then free 
******************************************************************************/
petimer_t  stb_svr_timer_create(HI_VOID (*timeout)(HI_VOID *), int mode)
{
    pthread_t tid = (pthread_t)NULL;    

    if(NULL == g_timerEntry)
    {
        petimer_start(&tid, NULL, &g_timerEntry);
    }

    return  petimer_create_reltimer(timeout, mode);
    
}

int  stb_svr_timer_destroy(petimer_t timer)
{
    
    return  petimer_free_reltimer(g_timerEntry, timer);

}


int   stb_svr_timer_disable(petimer_t timer)
{

    return petimer_stop_reltimer_safe(g_timerEntry, timer, NULL, NULL);    

}


int   stb_svr_timer_enable (petimer_t timer, unsigned int msec)
{
    
   return  petimer_start_reltimer(g_timerEntry, timer, msec, (HI_VOID *)timer);

}

int   stb_svr_timer_enable_ex (petimer_t timer, unsigned int msec, HI_VOID * args)
{
    
   return  petimer_start_reltimer(g_timerEntry, timer, msec, args);

}

#ifdef __cplusplus
#if __cplusplus
}
#endif  
#endif  /* __cplusplus */


