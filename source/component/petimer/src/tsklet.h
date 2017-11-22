/**
 * Copyright (C), 2005, Huawei Tech. Co., Ltd.
 * 
 * Kenneth Lee (llee@huawei.com)
 */

#ifndef __STB_TSKLET_H__
#define __STB_TSKLET_H__

#include <pthread.h>

//#include "stb_adp_api.h"

#include "list.h"



#define HI_VOID void
struct task_let {
    struct list_head head;
    pthread_mutex_t lock;
};

struct task_let_item_t {
    struct list_head list;
    HI_VOID (*task)(HI_VOID *, HI_VOID *);
    HI_VOID * arg;
};

#define tsklet_init stb_tsklet_init
#define tsklet_invokelater stb_tsklet_invokelater
#define tsklet_invokeall stb_tsklet_invokeall

extern int tsklet_init(struct task_let * tasklet);
extern int tsklet_invokelater(struct task_let * tasklet, 
        HI_VOID (*task)(HI_VOID *), HI_VOID * arg);
extern HI_VOID tsklet_invokeall(HI_VOID *sync_blk, struct task_let * tasklet);

#endif /* __TSKLET_H__ */

/**
 * 20030615 0.1 kenny create
 *
 * vim: set et ts=4 tw=78 sw=4:
 */
