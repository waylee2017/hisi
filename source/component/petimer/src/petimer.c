/**
 * Copyright (C), 2005, Huawei Tech. Co., Ltd.
 * 
 * Kenneth Lee (llee@huawei.com)
 */

#include "config.h"
#include <stdlib.h>
#include <stdio.h>
#include <errno.h>
#include <strings.h>
#include <sys/select.h>
#include "petimer.h"
#include "petimeri.h"


#ifdef ENABLE_ABSTIMER
# include "peabstm.h"
#endif

#ifdef ENABLE_RELTIMER
# include "pereltm.h"
#endif

struct petimer_hook_t {
    struct petimer_hook_t * next;

    HI_VOID (*hook)(sync_block_t *, long);
    long interval;
    long escape;
};

/** the petimer thread entry */
static HI_VOID * petimer(sync_block_t * arg);

extern int petimer_start(pthread_t * thread, pthread_attr_t * attr, HI_VOID **sync) {
    int ret;
    sync_block_t *sync_blk = (sync_block_t *)*sync;

    static int init_flag = 0;
    static sync_block_t *s_sync_blk;

    if(sync_blk) {
        errno = EBUSY;
        return EBUSY;
    }

    if(0 == init_flag)
    {
    SAFE_MALLOC_RETURNABLE(sync_blk, sync_block_t, ENOMEM);
    bzero(sync_blk, sizeof(sync_block_t));

    pthread_mutex_init(&sync_blk->lock, NULL);

#ifdef ENABLE_ABSTIMER
    ret = init_abstm(sync_blk);
    if(ret) {
	 pthread_mutex_destroy(&sync_blk->lock);
	 pthread_mutex_destroy(&sync_blk->abs_tsklets.lock);
        free(sync_blk);
        return ret;
    }
#endif

#ifdef ENABLE_RELTIMER
    ret = init_reltm(sync_blk);
    if(ret) {
	 pthread_mutex_destroy(&sync_blk->lock);
	 pthread_mutex_destroy(&sync_blk->rel_inter_tsklets.lock);
        free(sync_blk);
        return ret;
    }
#endif

    *sync = (HI_VOID *)sync_blk;

        s_sync_blk = sync_blk;
        init_flag = 1;

    return pthread_create(thread, attr, (void *(*)(void*))petimer, (HI_VOID *)sync_blk);
    }else
    {
       

        
        *sync = (HI_VOID *)s_sync_blk;
        
        return 0;
        
    }
}

extern int petimer_register_tickhook(sync_block_t *sync_blk, HI_VOID (*hook)(sync_block_t *,long), long tick) {
    struct petimer_hook_t * hookitem;

    if(hook == NULL || tick==0) {
        errno = EINVAL;
        return EINVAL;
    }

    SAFE_MALLOC_RETURNABLE(hookitem, struct petimer_hook_t, ENOMEM);

    hookitem->interval = tick;
    hookitem->hook     = hook;
    hookitem->escape   = 0;

    /* no protection of _hook_head, since the init is sequential */
    hookitem->next = sync_blk->_hook_head;

    sync_blk->_hook_head = hookitem;

    return 0;
}

static HI_VOID _trigger_timer(sync_block_t *sync_blk, long escape) {
    struct petimer_hook_t * i = sync_blk->_hook_head;
    while(i) {
        i->escape += escape;
        if(i->escape>=i->interval) {
            i->hook(sync_blk, i->escape);
            i->escape=0;
        }
        i = i->next;
    }
}

static HI_VOID * petimer(sync_block_t *sync_blk) {
    struct timeval tickval;

    while(1) {
        tickval.tv_sec = 0;
        tickval.tv_usec = USEC_PER_TICK;

        (HI_VOID)select(0, NULL, NULL, NULL, &tickval); /* I don't care if it is fail */

        _trigger_timer(sync_blk, 1);
    }

    return NULL;
}

/**
 * 20030614 0.1 kenny create
 *
 * vim: set et ts=4 tw=90 sw=4:
 */
