/**
 * Copyright (C), 2005, Huawei Tech. Co., Ltd.
 * 
 * Kenneth Lee (llee@huawei.com)
 */

#include <sys/time.h>

#include <errno.h>
#include <assert.h>
#include <stdio.h>
#include <time.h>
#include <stdlib.h>

#include "config.h"
#include "petimeri.h"
#include "petimer.h"
#include "list.h"
#include "tsklet.h"
#include "peabstm.h"


struct abs_timer_t {
    struct list_head list;
    struct list_head list2;
    HI_VOID (*timeout)(HI_VOID *);
    int flag;
    struct tm tm;       /* time to start */
    HI_VOID * arg;
};

#define timer_entry(item) list_entry((item), struct abs_timer_t, list)
#define leave_queue(item) do { \
    list_remove(item); \
    list_init(item); \
}while(0)

extern int petimer_register_tickhook(sync_block_t *sync_blk, HI_VOID (*hook)(sync_block_t *,long), long tick);

static HI_VOID _abstm_trigger(sync_block_t *sync_blk, long escape);

int init_abstm(sync_block_t *sync_blk) {
    int ret;

    list_init(&sync_blk->_activate_timers);

    ret = tsklet_init(&sync_blk->abs_tsklets);
    if(ret) {
        return ret;
    }

    return petimer_register_tickhook(sync_blk, _abstm_trigger, TICKS_PER_SECOND);
}

extern petimer_t petimer_create_abstimer(HI_VOID (*timeout)(HI_VOID *), int flag) {
    struct abs_timer_t * timercb;

    if(!timeout) {
        errno = EINVAL;
        return NULL;
    }

    SAFE_MALLOC_RETURNABLE(timercb, struct abs_timer_t, NULL);

    list_init(&timercb->list);
    timercb->timeout = timeout;
    timercb->flag = flag;

    return (petimer_t)timercb;
}

struct abs_timer_start_info {
    struct abs_timer_t * timer;
    struct tm tm;       /* time to start */
    HI_VOID * arg;
};

static HI_VOID _starttimer(sync_block_t *sync_blk, struct abs_timer_start_info * info) {
    info->timer->tm = info->tm;
    info->timer->arg = info->arg;

    if(!list_isinqueue(&info->timer->list)) {
        list_add(&info->timer->list, &sync_blk->_activate_timers);
    }

    free(info);
}

extern int petimer_start_abstimer(HI_VOID *sync_block, petimer_t timer, struct tm * tm, HI_VOID * arg) {
    struct abs_timer_start_info * info;
    int ret;
    sync_block_t *sync_blk = (sync_block_t *)sync_block;

    SAFE_MALLOC_RETURNABLE(info, struct abs_timer_start_info, ENOMEM);
    info->timer = (struct abs_timer_t *)timer;
    info->tm = *tm;
    info->arg = arg;
    ret = tsklet_invokelater(&sync_blk->abs_tsklets, (HI_VOID (*)(HI_VOID*))_starttimer, info);
    if(ret) {
        free(info);
    }
    return ret;

}

struct abs_timer_stop_info {
    struct abs_timer_t * timer;
    HI_VOID (*finallize)(HI_VOID *);
    HI_VOID * arg;
};

static HI_VOID _stoptimer(sync_block_t *sync_blk, struct abs_timer_stop_info * info) {
    if(list_isinqueue(&info->timer->list)) {
        leave_queue(&info->timer->list);
    }

    if(info->finallize) {
        info->finallize(info->arg);
    }
    free(info);
}

extern int petimer_stop_abstimer_safe(HI_VOID *sync_block, petimer_t timer, HI_VOID (*finallize)(HI_VOID *), HI_VOID * arg) {
    int ret;
    struct abs_timer_stop_info * info;
    sync_block_t *sync_blk = (sync_block_t *)sync_block;

    SAFE_MALLOC_RETURNABLE(info, struct abs_timer_stop_info, ENOMEM);
    info->timer = (struct abs_timer_t *)timer;
    info->finallize = finallize;
    info->arg = arg;
    ret = tsklet_invokelater(&sync_blk->abs_tsklets, (HI_VOID (*)(HI_VOID*))_stoptimer, info);
    if(ret) {
        free(info);
    }
    return ret;
}

static HI_VOID _rmtimer(sync_block_t *sync_blk, struct abs_timer_t * timer) {
    if(list_isinqueue(&timer->list)) {
        leave_queue(&timer->list);
    }
    free(timer);
}

extern int petimer_free_abstimer(HI_VOID *sync_block, petimer_t timer) {
    sync_block_t *sync_blk = (sync_block_t *)sync_block;
    return tsklet_invokelater(&sync_blk->abs_tsklets, (HI_VOID (*)(HI_VOID*))_rmtimer, timer);
}

static HI_VOID _trigger_a_timer(sync_block_t *sync_blk, struct abs_timer_t * timer, time_t t1, time_t t2) {
    struct timeval tv;
    struct tm tm1;

#define TIME_MATCH(t, t1) ( (t)==-1 || (t) == (t1) )

    for(tv.tv_sec=t1+1; tv.tv_sec<=t2; tv.tv_sec++) {
        localtime_r(&tv.tv_sec, &tm1);
        if( TIME_MATCH(timer->tm.tm_sec,  tm1.tm_sec)  &&
                TIME_MATCH(timer->tm.tm_min,  tm1.tm_min)  &&
                TIME_MATCH(timer->tm.tm_hour, tm1.tm_hour) &&
                TIME_MATCH(timer->tm.tm_mday, tm1.tm_mday) &&
                TIME_MATCH(timer->tm.tm_mon,  tm1.tm_mon)  &&
                TIME_MATCH(timer->tm.tm_year, tm1.tm_year)) {

            pthread_mutex_unlock(&sync_blk->lock);
            timer->timeout(timer->arg);
            pthread_mutex_lock(&sync_blk->lock);

            if(timer->flag & PETF_AUTO_FREE) {
                _rmtimer(sync_blk, timer);
		  break;
            }else if(timer->flag & PETF_ONE_SHOOT) {
                leave_queue(&timer->list);
            }
        }
    }
}

/**
 * for the begining, i trigger all timers within (now-escape, now]. but
 * because the small diffrence of the time to calculate escape and to
 * gettimeofday(), the argorithm may lost some chance to trigger timers.
 * therefore, i change the stratege to trigger all timers within (last_time,
 * now]
 */
static HI_VOID _abstm_trigger(sync_block_t *sync_blk, long escape) {
    static struct timeval last_tv={-1, -1}, now;
    struct list_head * temp, *item;
    int sec_diff;

    assert(escape >= TICKS_PER_SECOND);

    pthread_mutex_lock(&sync_blk->lock);

    tsklet_invokeall((HI_VOID *)sync_blk, &sync_blk->abs_tsklets);

    gettimeofday(&now, NULL);
    sec_diff = now.tv_sec - last_tv.tv_sec;
    if(sec_diff > 60 || sec_diff < 0) {
        /* the timer just change or delay too much */
        last_tv = now;
        assert(last_tv.tv_sec>1);
        last_tv.tv_sec -= 1;
    }

    for_each_list_item_safe(item, temp, &sync_blk->_activate_timers) {
        _trigger_a_timer(sync_blk, timer_entry(item), last_tv.tv_sec, now.tv_sec);
    }
    pthread_mutex_unlock(&sync_blk->lock);

    last_tv=now;
}

/**
 * 20030614 0.1 kenny create
 *
 * vim: set et ts=4 tw=78 sw=4:
 */
