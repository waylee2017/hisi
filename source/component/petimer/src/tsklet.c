/**
 * Copyright (C), 2005, Huawei Tech. Co., Ltd.
 * 
 * Kenneth Lee (llee@huawei.com)
 */


#include <pthread.h>
#include <stdlib.h>
#include <errno.h>

#include "config.h"
#include "tsklet.h"
#include "list.h"
#include "petimeri.h"

int tsklet_init(struct task_let * tasklet) {
    list_init(&tasklet->head);
    return pthread_mutex_init(&tasklet->lock, NULL);
}

int tsklet_invokelater(struct task_let * tasklet, HI_VOID (*task)(HI_VOID *), 
        HI_VOID * arg) {
    struct task_let_item_t * item;

    item = (struct task_let_item_t *)malloc(sizeof(struct task_let_item_t));

    if(!item) {
        errno = ENOMEM;
        return ENOMEM;
    }
    item->task = (HI_VOID (*)(HI_VOID *, HI_VOID *))task;
    item->arg = arg;

    pthread_mutex_lock(&tasklet->lock);
    list_add_before(&item->list, &tasklet->head);
    pthread_mutex_unlock(&tasklet->lock);

    return 0;
}

HI_VOID tsklet_invokeall(HI_VOID *sync_blk, struct task_let * tasklet) {
    struct list_head *i, *temp;
    struct task_let_item_t * item;

    pthread_mutex_lock(&tasklet->lock);
    for_each_list_item_safe(i, temp, &tasklet->head) {
        item = list_entry(i, struct task_let_item_t, list);
        item->task(sync_blk, item->arg);
        list_remove(i);
        free(i);
    }
    pthread_mutex_unlock(&tasklet->lock);
}

/**
 * 20030615 0.1 kenny create
 *
 * vim: set et ts=4 tw=78 sw=4:
 */
