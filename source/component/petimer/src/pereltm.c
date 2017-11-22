/**
 * Copyright (C), 1999-2005, Huawei Tech. Co., Ltd.
 * 
 * Kenneth Lee (llee@huawei.com)
 */


#include <errno.h>
#include <stdlib.h>

#include "config.h"
#include "petimeri.h"
#include "petimer.h"
#include "pereltm.h"
#include "list.h"
#include "tsklet.h"


#define RELTM_LINK_ZERO     0
#define RELTM_LINK_SORTED   1

/* reltimer structure */
struct tm_cb_t
{
    struct list_head list;
    unsigned int msec;          /* expire time in ms */
    unsigned int ticks_left;    /* time passed, used in hash link */
    HI_VOID (*timeout)(HI_VOID *);
    HI_VOID * arg;
    int mode;                   /* PETF_AUTO_RESTART, PETF_ONE_SHOOT, PETF_AUTO_FREE */
    int link;                   /* RELTM_LINK_ZERO or RELTM_LINK_SORTED */
};
#define tm_list_entry(item) list_entry((item), struct tm_cb_t, list)

struct tm_hash_t
{
    struct list_head zero_link;
    struct list_head sorted_link;
};

#define TM_HASH_LEN (1 << PERELTM_HASH_BITS)
#define TM_HASH_MASK (TM_HASH_LEN - 1)
#define TM_TMLEN_MASK (~TM_HASH_MASK)

#define TM_HASH_FUNC(value) ((value) & TM_HASH_MASK)

#define TM_STATE_IDLE            0x5A
#define TM_STATE_TICKING         0xA5
#define TM_STATE_OUT             0xAA
#define TM_STATE_DELETED         0x55
#define TM_STATE_PAUSED          0xAE


static HI_VOID _reltm_trigger(sync_block_t *, long);
static HI_VOID _trigger_a_timer(sync_block_t *, struct tm_cb_t *);
static HI_VOID _add2hash(sync_block_t *, struct tm_cb_t *);
static HI_VOID _del_from_hash(sync_block_t *, struct tm_cb_t *);

extern int petimer_register_tickhook(sync_block_t *sync_blk, HI_VOID (*hook)(sync_block_t *,long), long tick);

int init_reltm(sync_block_t *sync_blk) {
    int i, ret;

    ret = petimer_register_tickhook(sync_blk, _reltm_trigger, 1);
    if(ret) {
        return ret;
    }

    ret = tsklet_init(&sync_blk->rel_tsklets);
    if(ret) {
        /* the hook is not free, this may cause memory leak, 
         * but If this happen, you can do nothing */
        return ret;
    }

	/* add by yebucai fix bug:breakdown in stock*/ 
	ret = tsklet_init(&sync_blk->rel_inter_tsklets);
	if(ret) {
	    return ret;
	}
     

	
    sync_blk->_tick_last  = 0;

    sync_blk->_tm_hash = (struct tm_hash_t *)malloc( sizeof(struct tm_hash_t) * TM_HASH_LEN);
    if(!sync_blk->_tm_hash) {
        errno = ENOMEM;
        return ENOMEM;
    }

    for(i = 0; i<TM_HASH_LEN; i++)
    {
        list_init(&sync_blk->_tm_hash[i].zero_link);
        list_init(&sync_blk->_tm_hash[i].sorted_link);
    }

    return 0;
}


extern petimer_t petimer_create_reltimer(HI_VOID (*timeout)(HI_VOID *), int mode) {
    struct tm_cb_t * tmcb;

    if(!timeout) {
        errno = EINVAL;
        return NULL;
    }

    SAFE_MALLOC_RETURNABLE(tmcb, struct tm_cb_t, NULL);

    list_init(&tmcb->list);
    tmcb->mode = (unsigned char)mode;
    tmcb->timeout = timeout;

    return (petimer_t)tmcb;
}

struct tm_start_info {
    struct tm_cb_t * timer;
    unsigned long msec;
    HI_VOID * arg;
};


static HI_VOID _do_start_tm(sync_block_t *sync_blk, struct tm_start_info * info) {

    if(list_isinqueue(&info->timer->list)) {
        /* the timer in queue? restart it */
        _del_from_hash(sync_blk, info->timer);
    }

    info->timer->msec = info->msec;
    info->timer->arg = info->arg;
    _add2hash(sync_blk, info->timer);

    free(info);
}


extern int petimer_start_reltimer(HI_VOID *sync_block, petimer_t timer, unsigned int msec, HI_VOID * arg)
{
    struct tm_start_info * info;
    int ret;
    sync_block_t *sync_blk = (sync_block_t *)sync_block;

    SAFE_MALLOC_RETURNABLE(info, struct tm_start_info, ENOMEM);

    info->timer = (struct tm_cb_t *)timer;
    info->msec = msec;
    info->arg = arg;

    ret = tsklet_invokelater(&sync_blk->rel_tsklets, (HI_VOID (*)(HI_VOID *))_do_start_tm, info);
    if(ret) {
        free(info);
    }

    return ret;
}

struct tm_stop_info {
    struct tm_cb_t * timer;
    HI_VOID (*finallize)(HI_VOID *);
    HI_VOID * arg;
};


static HI_VOID _do_stop_tm(sync_block_t *sync_blk, struct tm_stop_info * info) {

    if(list_isinqueue(&info->timer->list)) {
        _del_from_hash(sync_blk, info->timer);
    }

    if(info->finallize) {
        info->finallize(info->arg);
    }

    free(info);
}


extern int petimer_stop_reltimer_safe(HI_VOID *sync_block, petimer_t timer, HI_VOID (*finallize)(HI_VOID *), HI_VOID * arg) {
    int ret;
    struct tm_stop_info * info;
    sync_block_t *sync_blk = (sync_block_t *)sync_block;

    /* should allow NULL function pointer for finallize */

    SAFE_MALLOC_RETURNABLE(info, struct tm_stop_info, ENOMEM);
    info->timer = (struct tm_cb_t *)timer;
    info->finallize = finallize;
    info->arg = arg;
    ret = tsklet_invokelater(&sync_blk->rel_tsklets, (HI_VOID (*)(HI_VOID *))_do_stop_tm, info);
    if(ret) {
        free(info);
    }
    return ret;
}


static HI_VOID _do_free_tm(sync_block_t *sync_blk, struct tm_cb_t * timer) {

    if(list_isinqueue(&timer->list)) {
        _del_from_hash(sync_blk, timer);
    }

    free(timer);
}

extern int petimer_free_reltimer(HI_VOID *sync_block, petimer_t timer) {
    sync_block_t *sync_blk = (sync_block_t *)sync_block;
    return tsklet_invokelater(&sync_blk->rel_tsklets, (HI_VOID (*)(HI_VOID *))_do_free_tm, timer);
}



extern int petimer_start_reltimer_simple(HI_VOID *sync_block, unsigned int msec, HI_VOID (*timeout)(HI_VOID *), 
        HI_VOID * arg) {
    petimer_t timer = petimer_create_reltimer(timeout, PETF_AUTO_FREE);
    if(!timer) {
        return ENOMEM;
    }
    return petimer_start_reltimer((sync_block_t *)sync_block, timer, msec, arg);
} 

static HI_VOID _reltm_trigger(sync_block_t *sync_blk, long escape) {
    long i;
    struct list_head * item, * temp;

    pthread_mutex_lock(&sync_blk->lock);
    /* trigger for every tick */
    for(i=0; i<escape; i++, sync_blk->_tick_last++)
    {

        tsklet_invokeall(sync_blk, &sync_blk->rel_inter_tsklets); /*add by yebucai shoudle put before rel_tsklets*/

        tsklet_invokeall(sync_blk, &sync_blk->rel_tsklets);

       // sync_blk->_tick_last++;

        /* traval the zero link, all timers in it should be triggered.
         *
         * i use safe loop because _trigger_a_timer() may remove the item,
         * same as sorted link
         */
        for_each_list_item_safe(item, temp, &sync_blk->_tm_hash[TM_HASH_FUNC(sync_blk->_tick_last)].zero_link) {
            _trigger_a_timer(sync_blk, tm_list_entry(item));
        }

        /* traval the sorted link */
        for_each_list_item_safe(item, temp, &sync_blk->_tm_hash[TM_HASH_FUNC(sync_blk->_tick_last)].sorted_link) {
            if(tm_list_entry(item)->ticks_left < TM_HASH_LEN) {
                _trigger_a_timer(sync_blk, tm_list_entry(item));
            }else {
                tm_list_entry(item)->ticks_left -= TM_HASH_LEN;
                break;
            }
        }
    } /* for(i=0; i<escape; i++, tick++)... */
    pthread_mutex_unlock(&sync_blk->lock);
}

static HI_VOID _do_restart_tm(sync_block_t *sync_blk, struct tm_cb_t * timer) {
    _add2hash(sync_blk, timer);
}

/*
 * sync_blk->lock held on entrance and exit
 */
static HI_VOID _trigger_a_timer(sync_block_t *sync_blk, struct tm_cb_t * timer) {
    pthread_mutex_unlock(&sync_blk->lock);

    timer->timeout(timer->arg);

    pthread_mutex_lock(&sync_blk->lock);

    list_remove(&timer->list);

    list_init(&timer->list);
    if(timer->mode & PETF_AUTO_FREE) {
        free(timer);
    }else if(!(timer->mode & PETF_ONE_SHOOT)) {
       /* fix bug: breakdown in stock y47609*/
        //tsklet_invokelater(&sync_blk->rel_tsklets, (HI_VOID (*)(HI_VOID *))_do_restart_tm, timer);
        tsklet_invokelater(&sync_blk->rel_inter_tsklets, (HI_VOID (*)(HI_VOID *))_do_restart_tm, timer);
    }
}

static HI_VOID _add2hash(sync_block_t *sync_blk, struct tm_cb_t *timer)
{
    unsigned int ttick, i;
    struct list_head * item;

    /* milliseconds to ticks */
    ttick = (timer->msec + MSEC_PER_TICK/2)/MSEC_PER_TICK;
    ttick = ttick ? ttick : 1;

    i = TM_HASH_FUNC(sync_blk->_tick_last + ttick);

    /* ticks left for this timer is equal to the hash index plus how many
     * times the "ttick" is greater than the size of hash pool. 
     *
     * one tick is removed from "ttick" is to aHI_VOID travalling extra cycle on
     * the the hash pool */
    timer->ticks_left = i + ((ttick-1) & TM_TMLEN_MASK);

    if( ttick > TM_HASH_LEN )
    {
        for_each_list_item(item, &sync_blk->_tm_hash[i].sorted_link) {
            if(timer->ticks_left < tm_list_entry(item)->ticks_left) {
                break;
            }else {
                timer->ticks_left -= tm_list_entry(item)->ticks_left & TM_TMLEN_MASK;
            }
        }

        timer->link = RELTM_LINK_SORTED;
        list_add_before(&timer->list, item);
        if(item != &sync_blk->_tm_hash[i].sorted_link) {
            tm_list_entry(item)->ticks_left -= timer->ticks_left & TM_TMLEN_MASK;
        }
    }
    else
    {
        timer->link = RELTM_LINK_ZERO;
        list_add_before(&timer->list, &sync_blk->_tm_hash[i].zero_link);
    }
}

static HI_VOID _del_from_hash(sync_block_t *sync_blk, struct tm_cb_t * timer)
{
    list_remove(&timer->list);
    if(RELTM_LINK_SORTED == timer->link) {
        if(timer->list.next != &sync_blk->_tm_hash[TM_HASH_FUNC(timer->ticks_left)].sorted_link) {
            tm_list_entry(timer->list.next)->ticks_left += timer->ticks_left & TM_TMLEN_MASK;
        }
    }

    list_init(&timer->list); /* add by yebucai, AI7D03329 synchronise with HuiZhou  */
}

/**
 * 19991217 0.1 dopra create and update from 1999-2001
 * 20040920 0.2 leo port from dopra to dorado
 * 20030615 0.3 kenny port from dorado to petimer
 *
 * vim: set et ts=4 tw=100 sw=4:
 */
