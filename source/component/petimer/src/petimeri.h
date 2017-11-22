/**
 * Copyright (C), 2005, Huawei Tech. Co., Ltd.
 * 
 * Kenneth Lee (llee@huawei.com)
 */

#ifndef __STB_PETIMERI_H__
#define __STB_PETIMERI_H__

#include "config.h"
#include "tsklet.h"



typedef struct {
    struct petimer_hook_t * _hook_head; 

    pthread_mutex_t lock;

    /* following 3 are for RELTIMER */
    struct task_let rel_tsklets;
    struct task_let rel_inter_tsklets; /*add by yebucai ,股票死机问题*/
    unsigned int _tick_last;        /* ticks last since the module start */
    struct tm_hash_t * _tm_hash;

    /* following 2 are for ABSTIMER */
    struct list_head _activate_timers;
    struct task_let abs_tsklets;
} sync_block_t;


#ifndef TICKS_PER_SECOND
# error define TICKS_PER_SECOND in configure.ac first
#endif

#define MSEC_PER_TICK (1000/TICKS_PER_SECOND)
#define USEC_PER_TICK (1000*MSEC_PER_TICK)
#define USEC_PER_SECOND 1000000

#define SAFE_MALLOC_RETURNABLE(result, type, fail_return) do { \
    result = (type *)malloc(sizeof(type)); \
    if(!(result)) { \
        errno = ENOMEM; \
        return fail_return; \
    } \
}while(0);


#endif /* __PETIMERI_H__ */

/**
 * 20030616 0.1 kenny create
 *
 * vi: set expandtab tabstop=4:
 */
