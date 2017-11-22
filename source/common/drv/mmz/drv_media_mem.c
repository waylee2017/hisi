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

#include <linux/kernel.h>
#include <linux/version.h>
#include <linux/module.h>
#include <linux/types.h>
#include <linux/errno.h>
#include <linux/fcntl.h>
#include <linux/mm.h>
#include <linux/mman.h>
#include <linux/miscdevice.h>
#include <linux/proc_fs.h>
#include <linux/device.h>
#include <linux/fs.h>
#include <linux/slab.h>
#include <linux/init.h>
#include <linux/delay.h>
#include <asm/uaccess.h>
#include <mach/hardware.h>
#include <asm/io.h>
#if LINUX_VERSION_CODE < KERNEL_VERSION(3, 18, 0)
#include <asm/system.h>
#endif
#include <linux/interrupt.h>
#include <linux/ioport.h>
#include <linux/spinlock.h>
#include <linux/vmalloc.h>
#include <linux/string.h>
#include <linux/list.h>
#include <asm/cacheflush.h>
#include <linux/time.h>
#include <asm/setup.h>

#include <asm/memory.h>
#include <linux/dma-contiguous.h>

#include <linux/dma-mapping.h>
#include <asm/memory.h>
#include <asm/highmem.h>
#include <asm/tlbflush.h>
#include <asm/pgtable.h>
#include <linux/seq_file.h>

#include "drv_media_mem.h"
#include "hi_kernel_adapt.h"
#include  "hi_debug.h"
#include "hi_drv_proc.h"

#define DEFAULT_ALLOC 0
#define SLAB_ALLOC 1
#define EQ_BLOCK_ALLOC 2

#define LOW_TO_HIGH 0
#define HIGH_TO_LOW 1

#define MMZ_DBG_LEVEL 0x0
#define mmz_trace(level, s, params...) do { if (level & MMZ_DBG_LEVEL) \
		PRINTK_CA(KERN_INFO "[%s, %d]: " s "\n", \
			__FUNCTION__, __LINE__, params);\
} while (0)
#define mmz_trace_func() mmz_trace(0x02, "%s", __FILE__)

#define MMZ_GRAIN PAGE_SIZE
#define mmz_bitmap_size(p) (mmz_align2(mmz_length2grain((p)->nbytes), 8) / 8)

#define mmz_get_bit(p, n) (((p)->bitmap[(n) / 8] >> ((n) & 0x7)) & 0x1)
#define mmz_set_bit(p, n) (p)->bitmap[(n) / 8] |= 1 << ((n) & 0x7)
#define mmz_clr_bit(p, n) (p)->bitmap[(n) / 8] &= ~(1 << ((n) & 0x7))

#define mmz_pos2phy_addr(p, n) ((p)->phys_start + (n) * MMZ_GRAIN)
#define mmz_phy_addr2pos(p, a) (((a) - (p)->phys_start) / MMZ_GRAIN)

#define mmz_align2low(x, g) (((x) / (g)) * (g))
#define mmz_align2(x, g) ((((x) + (g) - 1) / (g)) * (g))
#define mmz_grain_align(x) mmz_align2(x, MMZ_GRAIN)
#define mmz_length2grain(len) (mmz_grain_align(len) / MMZ_GRAIN)

#define begin_list_for_each_mmz(p, gfp, mmz_name) list_for_each_entry(p, &mmz_list, list) {\
        if (gfp == 0 ? 0 : (p)->gfp != (gfp)) \
            continue;\
        if (mmz_name != NULL) { \
            if ((*mmz_name != '\0') && strncmp(mmz_name, p->name,HIL_MMZ_NAME_LEN)) \
                continue;\
        } \
        if ((mmz_name == NULL) && (anony == 1)){ \
            if (strncmp("anonymous", p->name,HIL_MMZ_NAME_LEN)) \
                continue;\
        } \
        mmz_trace(1, HIL_MMZ_FMT_S, hil_mmz_fmt_arg(p));

#define end_list_for_each_mmz() }

char line[COMMAND_LINE_SIZE];

static int mmz_total_size = 0;

int zone_number = 0;
int block_number = 0;
unsigned int mmb_number=0; /*for mmb id*/

static unsigned long _strtoul_ex(const char *s, char **ep, unsigned int base)
{
    char *__end_p;
    unsigned long __value;

    __value = simple_strtoul(s, &__end_p, base);

    switch (*__end_p)
    {
    case 'm':
    case 'M':
        __value <<= 10;
    case 'k':
    case 'K':
        __value <<= 10;
        if (ep)
        {
            (*ep) = __end_p + 1;
        }

    default:
        break;
    }

    return __value;
}

static LIST_HEAD(mmz_list);
static HI_DECLARE_MUTEX(mmz_lock);

static int anony = 0;
static int mmz_info_phys_start = -1;

module_param(anony, int, S_IRUGO);

hil_mmz_t *hil_mmz_create(const char *name, unsigned long gfp, unsigned long phys_start, unsigned long nbytes)
{
    hil_mmz_t *p = NULL;

    mmz_trace_func();

    if (name == NULL)
    {
        PRINTK_CA(KERN_ERR "%s: 'name' can not be zero!", __FUNCTION__);
        return NULL;
    }

    p = kmalloc(sizeof(hil_mmz_t) + 1, GFP_KERNEL);
    if (p == NULL)
    {
        return NULL;
    }

    memset(p, 0, sizeof(hil_mmz_t) + 1);
    strlcpy(p->name, name, HIL_MMZ_NAME_LEN);
    p->gfp = gfp;
    p->phys_start = phys_start;
    p->nbytes = nbytes;

    INIT_LIST_HEAD(&p->list);
    INIT_LIST_HEAD(&p->mmb_list);

    p->destructor = kfree;

    return p;
}

#ifndef CFG_MMZ_MINI
hil_mmz_t *hil_mmz_create_v2(const char *name, unsigned long gfp, unsigned long phys_start,
                             unsigned long nbytes, unsigned int alloc_type, unsigned long block_align)
{
    hil_mmz_t *p;

    mmz_trace_func();

    if (name == NULL)
    {
        PRINTK_CA(KERN_ERR "%s: 'name' can not be zero!", __FUNCTION__);
        return NULL;
    }

    p = kmalloc(sizeof(hil_mmz_t), GFP_KERNEL);
    if (p == NULL)
    {
        return NULL;
    }

    memset(p, 0, sizeof(hil_mmz_t));
    strlcpy(p->name, name, HIL_MMZ_NAME_LEN);
    p->gfp = gfp;
    p->phys_start = phys_start;
    p->nbytes = nbytes;
    p->alloc_type  = alloc_type;
    p->block_align = block_align;

    INIT_LIST_HEAD(&p->list);
    INIT_LIST_HEAD(&p->mmb_list);

    p->destructor = kfree;

    return p;
}
#endif

int hil_mmz_destroy(hil_mmz_t *zone)
{
    if (zone == NULL)
    {
        return -1;
    }

    if (zone->destructor)
    {
        zone->destructor(zone);
    }

    return 0;
}

static int _check_mmz(hil_mmz_t *zone)
{
    hil_mmz_t *p;

    unsigned long new_start = zone->phys_start;
    unsigned long new_end = zone->phys_start + zone->nbytes;

    if (zone->nbytes == 0)
    {
        return -1;
    }

    if (!((new_start >= __pa(high_memory)) || ((new_start < PHYS_OFFSET) && (new_end <= PHYS_OFFSET))))
    {
        PRINTK_CA(KERN_ERR "ERROR: Conflict MMZ:\n");
        PRINTK_CA(KERN_ERR HIL_MMZ_FMT_S "\n", hil_mmz_fmt_arg(zone));
#ifdef CONFIG_ARM64
        PRINTK_CA(KERN_ERR "MMZ conflict to kernel memory (0x%llX, 0x%llX)\n", PHYS_OFFSET,
               __pa(high_memory) - 1);
#else
        PRINTK_CA(KERN_ERR "MMZ conflict to kernel memory (0x%08lX, 0x%08lX)\n", PHYS_OFFSET,
               __pa(high_memory) - 1);	
#endif

        return -1;
    }

    list_for_each_entry(p, &mmz_list, list)
    {
        unsigned long start, end;

        start = p->phys_start;
        end = p->phys_start + p->nbytes;

        if (new_start >= end)
        {
            continue;
        }
        else if ((new_start < start) && (new_end <= start))
        {
            continue;
        }
        else
        {}

        PRINTK_CA(KERN_ERR "ERROR: Conflict MMZ:\n");
        PRINTK_CA(KERN_ERR "MMZ new:   " HIL_MMZ_FMT_S "\n", hil_mmz_fmt_arg(zone));
        PRINTK_CA(KERN_ERR "MMZ exist: " HIL_MMZ_FMT_S "\n", hil_mmz_fmt_arg(p));
        PRINTK_CA(KERN_ERR "Add new MMZ failed!\n");
        return -1;
    }

    return 0;
}

int hil_mmz_register(hil_mmz_t *zone)
{
    int ret = 0;

    mmz_trace(1, HIL_MMZ_FMT_S, hil_mmz_fmt_arg(zone));

    if (zone == NULL)
    {
        return -1;
    }

    down(&mmz_lock);

    ret = _check_mmz(zone);
    if (ret)
    {
        up(&mmz_lock);
        return ret;
    }


    INIT_LIST_HEAD(&zone->mmb_list);

    list_add(&zone->list, &mmz_list);

    up(&mmz_lock);

    return 0;
}

int hil_mmz_unregister(hil_mmz_t *zone)
{
    int losts = 0;
    hil_mmb_t *p;

    if (zone == NULL)
    {
        return -1;
    }

    mmz_trace_func();

    down(&mmz_lock);
    list_for_each_entry(p, &zone->mmb_list, list)
    {
        PRINTK_CA(KERN_WARNING "          MB Lost: " HIL_MMB_FMT_S "\n", hil_mmb_fmt_arg(p));
        losts++;
    }

    if (losts)
    {
        PRINTK_CA(KERN_ERR "%d mmbs not free, mmz<%s> can not be deregistered!\n", losts, zone->name);
        up(&mmz_lock);
        return -1;
    }

    list_del(&zone->list);


    //hil_mmz_destroy(zone);

    up(&mmz_lock);

    return 0;
}

static unsigned long _find_fixed_region(unsigned long *region_len, hil_mmz_t *mmz,
                                        unsigned long size, unsigned long align)
{
		unsigned long start;
		unsigned long fixed_start = 0;
		unsigned long fixed_len = -1;
		unsigned long len =0;
		unsigned long blank_len =0;
		hil_mmb_t *p = NULL; 

		mmz_trace_func();

		/* align to phys address first! */
		start = mmz_align2(mmz->phys_start, align);
		len = mmz_grain_align(size); //size to align to 4K	
		//mmz_trace(4,"##################################################################\n", NULL);
		
		list_for_each_entry(p,&mmz->mmb_list, list)
		{
				hil_mmb_t *next;
				mmz_trace(4,"p->phys_addr=0x%08lX p->length = %luKB \t",p->phys_addr, p->length/SZ_1K);
				next = list_entry(p->list.next, typeof(*p), list);
				mmz_trace(4,",next = 0x%08lX\n\n", next->phys_addr);
				
				/*if p is the first entry or not*/
				if(list_first_entry(&mmz->mmb_list,typeof(*p),list) == p) {
						blank_len = p->phys_addr - start; 
						if((blank_len < fixed_len) && (blank_len>=len)) {
								fixed_len = blank_len;
								fixed_start = start;
								mmz_trace(4,"%d: fixed_region: start=0x%08lX, len=%luKB\n",__LINE__, fixed_start, fixed_len/SZ_1K);
						}
				}

				start = mmz_align2((p->phys_addr + p->length),align); //start align to usr's align
				BUG_ON( (start < mmz->phys_start) || (start > (mmz->phys_start + mmz->nbytes)) );
				/*if we have to alloc after the last node*/	
				if ( list_is_last(&p->list, &mmz->mmb_list) )
				{
						blank_len = mmz->phys_start + mmz->nbytes - start;
						if ((blank_len < fixed_len) && (blank_len >= len)){
								fixed_len = blank_len; 
								fixed_start = start;
								mmz_trace(4,"%d: fixed_region: start=0x%08lX, len=%luKB\n",__LINE__, fixed_start, fixed_len/SZ_1K);
								break;
						}
						else {
								if(fixed_len != -1)
											goto out;		
								fixed_start = 0;
								mmz_trace(4,"%d: fixed_region: start=0x%08lX, len=%luKB\n",__LINE__, fixed_start, fixed_len/SZ_1K);
								goto out;
						}	
				}

				//blank is too little 
				if ((start + len) > next->phys_addr)
				{
						mmz_trace(4,"start=0x%08lX ,len=%lu,next=0x%08lX\n",start,len,next->phys_addr);	
						continue;
				}
				blank_len = next->phys_addr - start;
				if((blank_len < fixed_len) && (blank_len >= len)) {
						fixed_len = blank_len;
						fixed_start = start;
						mmz_trace(4,"%d: fixed_region: start=0x%08lX, len=%luKB\n",__LINE__, fixed_start, fixed_len/SZ_1K);
				}
		}
		if ((mmz_grain_align(start+len) <= (mmz->phys_start + mmz->nbytes)) && (start >= mmz->phys_start) && (start < (mmz->phys_start + mmz->nbytes))  ){
				fixed_start = start;
				mmz_trace(4,"%d: fixed_region: start=0x%08lX, len=%luKB\n",__LINE__, fixed_start, len/SZ_1K);
		}else
		{
				fixed_start = 0;
				mmz_trace(4,"%d: fixed_region: start=0x%08lX, len=%luKB\n",__LINE__, fixed_start, len/SZ_1K);
		}
out:
		*region_len = len;

		return fixed_start;
}

#ifndef CFG_MMZ_MINI
static unsigned long _find_fixed_region_from_highaddr(unsigned long *region_len, hil_mmz_t *mmz,
                                                      unsigned long size, unsigned long align)
{
    int i, j;
    unsigned long fixed_start = 0;
    unsigned long fixed_len = ~1;

    mmz_trace_func();

    i = mmz_length2grain(mmz->nbytes);

    for (; i > 0; i--)
    {
        unsigned long start;
        unsigned long len;
        unsigned long start_highaddr;

        if (mmz_get_bit(mmz, i))
        {
            continue;
        }

        len = 0;
        start_highaddr = mmz_pos2phy_addr(mmz, i);
        for (; i > 0; i--)
        {
            if (mmz_get_bit(mmz, i))
            {
                break;
            }

            len += MMZ_GRAIN;
        }

        if (len >= size)
        {
            j = mmz_phy_addr2pos(mmz, mmz_align2low(start_highaddr - size, align));

            //align = mmz_grain_align(align)/MMZ_GRAIN;
            //start = mmz_pos2phy_addr(mmz, j - align);
            start = mmz_pos2phy_addr(mmz, j);
            if ((start_highaddr - len <= start) && (start <= start_highaddr - size))
            {
                fixed_len   = len;
                fixed_start = start;
                break;
            }

            mmz_trace(1, "fixed_region: start=0x%08lX, len=%luKB", fixed_start, fixed_len / SZ_1K);
        }
    }

    *region_len = fixed_len;

    return fixed_start;
}
#endif

static int _do_mmb_alloc(hil_mmb_t *mmb)
{
    hil_mmb_t *p = NULL;

    mmz_trace_func();


    /* add mmb sorted */
    list_for_each_entry(p, &mmb->zone->mmb_list, list)
    {
        if (mmb->phys_addr < p->phys_addr)
        {
            break;
        }

        if (mmb->phys_addr == p->phys_addr)
        {
            PRINTK_CA(KERN_ERR "ERROR: media-mem allocator bad in %s! (%s, %d)",
                   mmb->zone->name, __FUNCTION__, __LINE__);
	    return -1;
        }
    }
    list_add(&mmb->list, p->list.prev);

    mmz_trace(1, HIL_MMB_FMT_S, hil_mmb_fmt_arg(mmb));

    return 0;
}

static hil_mmb_t *__mmb_alloc(const char *name, unsigned long size, unsigned long align,
                              unsigned long gfp, const char *mmz_name, hil_mmz_t *_user_mmz)
{
    hil_mmz_t *mmz;
    hil_mmb_t *mmb;

    unsigned long start;
    unsigned long region_len;

    unsigned long fixed_start = 0;
    unsigned long fixed_len = -1;
    hil_mmz_t *fixed_mmz = NULL;

    mmz_trace_func();

    if ((size <= 0) || (size > 0x40000000UL))
    {
        return NULL;
    }

#ifdef MMZ_USER_ALIGN
    if (align == 0)
    {
        align = MMZ_GRAIN;
    }
#else
    align = MMZ_GRAIN;
#endif

    size = mmz_grain_align(size);

    mmz_trace(1, "size=%luKB, align=%lu", size / SZ_1K, align);

    begin_list_for_each_mmz(mmz, gfp, mmz_name)
    if ((_user_mmz != NULL) && (_user_mmz != mmz))
    {
        continue;
    }

    start = _find_fixed_region(&region_len, mmz, size, align);
    if ((fixed_len > region_len) && (start != 0))
    {
        fixed_len   = region_len;
        fixed_start = start;
        fixed_mmz = mmz;
    }

    end_list_for_each_mmz()

    if (fixed_mmz == NULL)
    {
        return NULL;
    }

    mmb = kmalloc(sizeof(hil_mmb_t), GFP_KERNEL);
    if (!mmb)
    {
        return NULL;
    }

    memset(mmb, 0, sizeof(hil_mmb_t));
    mmb->zone = fixed_mmz;
    mmb->phys_addr = fixed_start;
    mmb->length = size;
    mmb->id = ++mmb_number; 
    if (name)
    {
        strlcpy(mmb->name, name, HIL_MMB_NAME_LEN);
    }
    else
    {
        strncpy(mmb->name, "<null>", sizeof(mmb->name)-1);
    }

    if (_do_mmb_alloc(mmb))
    {
        kfree(mmb);
        mmb = NULL;
    }

    return mmb;
}

#ifndef CFG_MMZ_MINI
static hil_mmb_t *__mmb_alloc_v2(const char *name, unsigned long size, unsigned long align, unsigned long gfp,
                                 const char *mmz_name, hil_mmz_t *_user_mmz, unsigned int order)
{
    hil_mmz_t *mmz;
    hil_mmb_t *mmb;
    int i;

    unsigned long start = 0;
    unsigned long region_len = 0;

    unsigned long fixed_start = 0;
    unsigned long fixed_len = ~1;
    hil_mmz_t *fixed_mmz = NULL;

    mmz_trace_func();

    if ((size == 0) || (size > 0x40000000UL))
    {
        return NULL;
    }

    if (align == 0)
    {
        align = 1;
    }

    size = mmz_grain_align(size);

    mmz_trace(1, "size=%luKB, align=%lu", size / SZ_1K, align);

    begin_list_for_each_mmz(mmz, gfp, mmz_name)
    if ((_user_mmz != NULL) && (_user_mmz != mmz))
    {
        continue;
    }

    if (mmz->alloc_type == SLAB_ALLOC)
    {
        if ((size - 1) & size)
        {
            for (i = 1; i <= 32; i++)
            {
                if (!((size >> i) & ~0))
                {
                    size = 1 << i;
                    break;
                }
            }
        }
    }
    else if (mmz->alloc_type == EQ_BLOCK_ALLOC)
    {
        size = mmz_align2(size, mmz->block_align);
    }

    if (order == LOW_TO_HIGH)
    {
        start = _find_fixed_region(&region_len, mmz, size, align);
    }
    else if (order == HIGH_TO_LOW)
    {
        start = _find_fixed_region_from_highaddr(&region_len, mmz, size, align);
    }

    if ((fixed_len > region_len) && (start != 0))
    {
        fixed_len   = region_len;
        fixed_start = start;
        fixed_mmz = mmz;
    }

    end_list_for_each_mmz()

    if (fixed_mmz == NULL)
    {
        return NULL;
    }

    mmb = kmalloc(sizeof(hil_mmb_t), GFP_KERNEL);
    if (!mmb)
    {    
	    return NULL;
    }

    memset(mmb, 0, sizeof(hil_mmb_t));
    mmb->zone = fixed_mmz;
    mmb->phys_addr = fixed_start;
    mmb->length = size;
    mmb->order = order;
    if (name)
    {
        strlcpy(mmb->name, name, HIL_MMB_NAME_LEN);
    }
    else
    {
        strcpy(mmb->name, "<null>", sizeof(mmb->name) - 1);
    }

    if (_do_mmb_alloc(mmb))
    {
        kfree(mmb);
        mmb = NULL;
    }

    return mmb;
}

#endif

hil_mmb_t *hil_mmb_alloc(const char *name, unsigned long size, unsigned long align,
                         unsigned long gfp, const char *mmz_name)
{
    hil_mmb_t *mmb;

    down(&mmz_lock);
    mmb = __mmb_alloc(name, size, align, gfp, mmz_name, NULL);
    up(&mmz_lock);

    return mmb;
}

#ifndef CFG_MMZ_MINI
hil_mmb_t *hil_mmb_alloc_v2(const char *name, unsigned long size, unsigned long align,
                            unsigned long gfp, const char *mmz_name, unsigned int order)
{
    hil_mmb_t *mmb;

    down(&mmz_lock);
    mmb = __mmb_alloc_v2(name, size, align, gfp, mmz_name, NULL, order);
    up(&mmz_lock);

    return mmb;
}
#endif

hil_mmb_t *hil_mmb_alloc_in(const char *name, unsigned long size, unsigned long align,
                            hil_mmz_t *_user_mmz)
{
    hil_mmb_t *mmb;

    if (_user_mmz == NULL)
    {
        return NULL;
    }

    down(&mmz_lock);
    mmb = __mmb_alloc(name, size, align, _user_mmz->gfp, _user_mmz->name, _user_mmz);
    up(&mmz_lock);

    return mmb;
}

#ifndef CFG_MMZ_MINI
hil_mmb_t *hil_mmb_alloc_in_v2(const char *name, unsigned long size, unsigned long align,
                               hil_mmz_t *_user_mmz, unsigned int order)
{
    hil_mmb_t *mmb;

    if (_user_mmz == NULL)
    {
        return NULL;
    }

    down(&mmz_lock);
    mmb = __mmb_alloc_v2(name, size, align, _user_mmz->gfp, _user_mmz->name, _user_mmz, order);
    up(&mmz_lock);

    return mmb;
}
#endif

static void *_mmb_map2kern(hil_mmb_t *mmb, int cached)
{
    if (mmb->flags & HIL_MMB_MAP2KERN)
    {
        if ((cached * HIL_MMB_MAP2KERN_CACHED) != (mmb->flags & HIL_MMB_MAP2KERN_CACHED))
        {
            PRINTK_CA(KERN_ERR "mmb<%s> already kernel-mapped %s, can not be re-mapped as %s.",
                   mmb->name,
                   (mmb->flags & HIL_MMB_MAP2KERN_CACHED) ? "cached" : "non-cached",
                   (cached) ? "cached" : "non-cached" );
            return NULL;
        }

        mmb->map_ref++;

        return mmb->kvirt;
    }

    if (cached)
    {
        mmb->flags |= HIL_MMB_MAP2KERN_CACHED;
#if LINUX_VERSION_CODE < KERNEL_VERSION(3, 18, 0)
        mmb->kvirt = ioremap_cached(mmb->phys_addr, mmb->length);
#else
		mmb->kvirt = ioremap_cache(mmb->phys_addr, mmb->length);
#endif
    }
    else
    {
        mmb->flags &= ~HIL_MMB_MAP2KERN_CACHED;
        mmb->kvirt = ioremap_wc(mmb->phys_addr, mmb->length);
    }

    if (mmb->kvirt)
    {
        mmb->flags |= HIL_MMB_MAP2KERN;
        mmb->map_ref++;
    }

    return mmb->kvirt;
}

void *hil_mmb_map2kern(hil_mmb_t *mmb)
{
    void *p;

    if (mmb == NULL)
    {
        return NULL;
    }

    down(&mmz_lock);
    p = _mmb_map2kern(mmb, 0);
    up(&mmz_lock);

    return p;
}

void *hil_mmb_map2kern_cached(hil_mmb_t *mmb)
{
    void *p;

    if (mmb == NULL)
    {
        return NULL;
    }

    down(&mmz_lock);
    p = _mmb_map2kern(mmb, 1);
    up(&mmz_lock);

    return p;
}

static int _mmb_free(hil_mmb_t *mmb);

int hil_mmb_unmap(hil_mmb_t *mmb)
{
    int ref;

    if (mmb == NULL)
    {
        return -1;
    }

    down(&mmz_lock);

    if (mmb->flags & HIL_MMB_MAP2KERN_CACHED)
    {
	__cpuc_flush_dcache_area((void *)mmb->kvirt, (size_t)mmb->length); // flush l1cache
	outer_flush_range(mmb->phys_addr, mmb->phys_addr + mmb->length); // flush l2cache
    }

    if (mmb->flags & HIL_MMB_MAP2KERN)
    {
        ref = --mmb->map_ref;
        if (mmb->map_ref != 0)
        {
            up(&mmz_lock);
            return ref;
        }

        iounmap(mmb->kvirt);
    }

    mmb->kvirt  = NULL;
    mmb->flags &= ~HIL_MMB_MAP2KERN;
    mmb->flags &= ~HIL_MMB_MAP2KERN_CACHED;

    if ((mmb->flags & HIL_MMB_RELEASED) && (mmb->phy_ref == 0))
    {
        _mmb_free(mmb);
    }

    up(&mmz_lock);

    return 0;
}

int hil_mmb_get(hil_mmb_t *mmb)
{
    int ref;

    if (mmb == NULL)
    {
        return -1;
    }

    down(&mmz_lock);

    if (mmb->flags & HIL_MMB_RELEASED)
    {
        PRINTK_CA(KERN_WARNING "hil_mmb_get: amazing, mmb<%s> is released!\n", mmb->name);
    }

    ref = ++mmb->phy_ref;

    up(&mmz_lock);

    return ref;
}

static int _mmb_free(hil_mmb_t *mmb)
{
    if (mmb->flags & HIL_MMB_MAP2KERN_CACHED)
    {
	__cpuc_flush_dcache_area((void *)mmb->kvirt, (size_t)mmb->length); // flush l1cache
	outer_flush_range(mmb->phys_addr, mmb->phys_addr + mmb->length); // flush l2cache
    }

    list_del(&mmb->list);
    kfree(mmb);

    return 0;
}

int hil_mmb_put(hil_mmb_t *mmb)
{
    int ref;

    if (mmb == NULL)
    {
        return -1;
    }

    down(&mmz_lock);

    if (mmb->flags & HIL_MMB_RELEASED)
    {
        PRINTK_CA(KERN_WARNING "hil_mmb_put: amazing, mmb<%s> is released!\n", mmb->name);
    }

    ref = --mmb->phy_ref;

    if ((mmb->flags & HIL_MMB_RELEASED) && (mmb->phy_ref == 0) && (mmb->map_ref == 0))
    {
        _mmb_free(mmb);
    }

    up(&mmz_lock);

    return ref;
}

int hil_mmb_free(hil_mmb_t *mmb)
{
    mmz_trace_func();

    if (mmb == NULL)
    {
        return -1;
    }

    mmz_trace(1, HIL_MMB_FMT_S, hil_mmb_fmt_arg(mmb));

    down(&mmz_lock);

    if (mmb->flags & HIL_MMB_RELEASED)
    {
        PRINTK_CA(KERN_WARNING "hil_mmb_free: amazing, mmb<%s> is released before, but still used!\n", mmb->name);

        up(&mmz_lock);

        return 0;
    }

    if (mmb->phy_ref > 0)
    {
        PRINTK_CA(KERN_WARNING "hil_mmb_free: free mmb<%s> delayed for which ref-count is %d!\n",
               mmb->name, mmb->map_ref);
        mmb->flags |= HIL_MMB_RELEASED;
        up(&mmz_lock);

        return 0;
    }

    if (mmb->flags & HIL_MMB_MAP2KERN)
    {
        PRINTK_CA(KERN_WARNING "hil_mmb_free: free mmb<%s> delayed for which is kernel-mapped to 0x%p with map_ref %d!\n",
               mmb->name, mmb->kvirt, mmb->map_ref);
        mmb->flags |= HIL_MMB_RELEASED;
        up(&mmz_lock);

        return 0;
    }

    _mmb_free(mmb);

    up(&mmz_lock);

    return 0;
}

#define MACH_MMB(p, val, member) do {\
        hil_mmz_t *__mach_mmb_zone__; \
        (p) = NULL; \
        list_for_each_entry(__mach_mmb_zone__, &mmz_list, list) { \
            hil_mmb_t *__mach_mmb__; \
            list_for_each_entry(__mach_mmb__, &__mach_mmb_zone__->mmb_list, list) { \
                if (__mach_mmb__->member == (val)){ \
                    (p) = __mach_mmb__; \
                    break; \
                } \
            } \
            if (p) break;\
        } \
    } while (0)

hil_mmb_t *hil_mmb_getby_phys(unsigned long addr)
{
    hil_mmb_t *p;

    down(&mmz_lock);
    MACH_MMB(p, addr, phys_addr);
    up(&mmz_lock);

    return p;
}

hil_mmb_t *hil_mmb_getby_kvirt(void *virt)
{
    hil_mmb_t *p;

    if (virt == NULL)
    {
        return NULL;
    }

    down(&mmz_lock);
    MACH_MMB(p, virt, kvirt);
    up(&mmz_lock);

    return p;
}

#define MACH_MMB_2(p, val, Outoffset) do {\
        hil_mmz_t *__mach_mmb_zone__; \
        (p) = NULL; \
        list_for_each_entry(__mach_mmb_zone__, &mmz_list, list) { \
            hil_mmb_t *__mach_mmb__; \
            list_for_each_entry(__mach_mmb__, &__mach_mmb_zone__->mmb_list, list) { \
                if ((__mach_mmb__->phys_addr <= (val)) && ((__mach_mmb__->length + __mach_mmb__->phys_addr) > (val))){ \
                    (p) = __mach_mmb__; \
                    Outoffset = val - __mach_mmb__->phys_addr; \
                    break; \
                } \
            } \
            if (p) break;\
        } \
    } while (0)

hil_mmb_t *hil_mmb_getby_phys_2(unsigned long addr, unsigned long *Outoffset)
{
    hil_mmb_t *p;

    down(&mmz_lock);
    MACH_MMB_2(p, addr, *Outoffset);
    up(&mmz_lock);
    return p;
}

hil_mmz_t *hil_mmz_find(unsigned long gfp, const char *mmz_name)
{
    hil_mmz_t *p;

    down(&mmz_lock);
    begin_list_for_each_mmz(p, gfp, mmz_name)
    up(&mmz_lock);
    return p;
    end_list_for_each_mmz()
    up(&mmz_lock);

    return NULL;
}

/*
 * name,gfp,phys_start,nbytes,alloc_type;...
 * All param in hex mode, except name.
 */
static int media_mem_parse_cmdline(char *s)
{
    hil_mmz_t *zone = NULL;
    char *line;

    while ((line = strsep(&s, ":")) != NULL)
    {
        int i;
        char *argv[6];

        /*
         * FIXME: We got 4 args in "line", formated "argv[0],argv[1],argv[2],argv[3],argv[4]".
         * eg: "<mmz_name>,<gfp>,<phys_start_addr>,<size>,<alloc_type>"
         * For more convenient, "hard code" are used such as "arg[0]", i.e.
         */
        for (i = 0; (argv[i] = strsep(&line, ",")) != NULL;)
        {
            if (++i == ARRAY_SIZE(argv))
            {
                break;
            }
        }

        if (i == 4)
        {
            zone = hil_mmz_create("null", 0, 0, 0);
	     if(NULL == zone)
	     {
	     	   continue;
	     }
            strlcpy(zone->name, argv[0], HIL_MMZ_NAME_LEN);
            zone->gfp = _strtoul_ex(argv[1], NULL, 0);
            zone->phys_start = _strtoul_ex(argv[2], NULL, 0);
            zone->nbytes = _strtoul_ex(argv[3], NULL, 0);
        }
#ifndef CFG_MMZ_MINI
        else if (i == 6)
        {
            zone = hil_mmz_create_v2("null", 0, 0, 0, 0, 0);
	     if(NULL == zone)
	     {
	     	   continue;
	     }		
            strlcpy(zone->name, argv[0], HIL_MMZ_NAME_LEN);
            zone->gfp = _strtoul_ex(argv[1], NULL, 0);
            zone->phys_start = _strtoul_ex(argv[2], NULL, 0);
            zone->nbytes = _strtoul_ex(argv[3], NULL, 0);
            zone->alloc_type  = _strtoul_ex(argv[4], NULL, 0);
            zone->block_align = _strtoul_ex(argv[5], NULL, 0);
        }
#endif
        else
        {
            PRINTK_CA(KERN_ERR "MMZ: your parameter num is not correct!\n");
            continue;
        }

        mmz_info_phys_start = zone->phys_start + zone->nbytes - 0x2000;
        if (hil_mmz_register(zone))
        {
            PRINTK_CA(KERN_WARNING "Add MMZ failed: " HIL_MMZ_FMT_S "\n", hil_mmz_fmt_arg(zone));
            hil_mmz_destroy(zone);
        }

        zone = NULL;
    }

    return 0;
}

int get_mmz_info_phys_start(void)
{
    return mmz_info_phys_start;
}

#define MAX_MMZ_INFO_LEN 20*1024

#if LINUX_VERSION_CODE < KERNEL_VERSION(3, 10, 0)
#define CHECK_BUFF_OVERFLOW() \
do{\
	if (p_mmz_info_buf + len - mmz_info_buf > MAX_MMZ_INFO_LEN){\
		PRINTK_CA(KERN_ERR"mmz_info_buff overflow(%d), more than 20k data!\n", p_mmz_info_buf + len - mmz_info_buf);\
		break;\
	};\
}while(0)
#else
#define CHECK_BUFF_OVERFLOW() \
do{\
	if (m->count > MAX_MMZ_INFO_LEN){\
		PRINTK_CA(KERN_ERR"mmz_info_buff overflow(%zu), more than 20k data!\n", m->count);\
		break;\
	};\
}while(0)
#endif

#define SPLIT_LINE "-------------------------------------------------------------------------------------------------------\n"

#if LINUX_VERSION_CODE < KERNEL_VERSION(3, 10, 0)
int mmz_read_proc(char *page, char **start, off_t off,
                  int count, int *eof, void *data)
{
	unsigned long ret = 0;
#if !(0 == HI_PROC_SUPPORT)
    int nZoneCnt = 0;
	hil_mmz_t *p;
	unsigned int used_size = 0, free_size = 0;
	unsigned long len = 0;
	char * mmz_info_buf = (char*)__get_free_pages(GFP_TEMPORARY, get_order(MAX_MMZ_INFO_LEN));
	char * p_mmz_info_buf = mmz_info_buf;
    unsigned int u32Number = 0;
    
	memset(mmz_info_buf, 0, MAX_MMZ_INFO_LEN);
	
	down(&mmz_lock);

    len = snprintf(page , count, SPLIT_LINE);
    memcpy(p_mmz_info_buf, page, len);
    p_mmz_info_buf += len;

    
    len = snprintf(page , count, "|                   PHYS           |  ID  |   KVIRT   |    FLAGS    |  LENGTH(KB)  |       NAME        |\n");
    memcpy(p_mmz_info_buf, page, len);
    p_mmz_info_buf += len;
    
    len = snprintf(page , count, SPLIT_LINE);
    memcpy(p_mmz_info_buf, page, len);
    p_mmz_info_buf += len;

	// Collect all mmb info into mmz_info_buff
	list_for_each_entry(p, &mmz_list, list){
		hil_mmb_t *mmb;

        list_for_each_entry(mmb, &p->mmb_list, list){
			u32Number++;
		}

		len = snprintf(page , count, "|ZONE[%d]: (0x%08lx, 0x%08lx)   %d                 0x%08lx      %-10lu   \"%s%-14s|\n",nZoneCnt, \
                       (p)->phys_start,(p)->phys_start+(p)->nbytes-1, u32Number, (p)->gfp,(p)->nbytes/SZ_1K,(p)->name, "\"");
		CHECK_BUFF_OVERFLOW();
		memcpy(p_mmz_info_buf, page, len);
		p_mmz_info_buf += len;

        nZoneCnt++;

		mmz_total_size += p->nbytes / 1024;
		zone_number++;

		list_for_each_entry(mmb, &p->mmb_list, list){
			len = snprintf(page, count, "|" HIL_MMB_FMT_S "|\n", hil_mmb_fmt_arg(mmb));
			CHECK_BUFF_OVERFLOW();
			memcpy(p_mmz_info_buf, page, len);
			p_mmz_info_buf += len;
			used_size += mmb->length/1024;
			block_number++;
		}
	}

    len = snprintf(page , count, SPLIT_LINE);
    memcpy(p_mmz_info_buf, page, len);
    p_mmz_info_buf += len;

    len = snprintf(page , count, "|%-102s|\n", "Summary:");
    memcpy(p_mmz_info_buf, page, len);
    p_mmz_info_buf += len;

    len = snprintf(page , count, SPLIT_LINE);
    memcpy(p_mmz_info_buf, page, len);
    p_mmz_info_buf += len;

    
    len = snprintf(page , count, "|  MMZ Total Size  |      Used      |     Idle        |  Zone Number  |   BLock Number                 |\n");
    memcpy(p_mmz_info_buf, page, len);
    p_mmz_info_buf += len;

    len = snprintf(page , count, SPLIT_LINE);
    memcpy(p_mmz_info_buf, page, len);
    p_mmz_info_buf += len;
	
	if(0 != mmz_total_size){
		free_size = mmz_total_size - used_size;
	    len = snprintf(page, count, "|       %d%-8s       %d%-8s      %d%-6s          %d                  %d                      |\n",
				 mmz_total_size/1024, "MB", used_size/1024, "MB", free_size/1024, "MB", zone_number, block_number);
		CHECK_BUFF_OVERFLOW();
		memcpy(p_mmz_info_buf, page, len);
		p_mmz_info_buf += len;
		
		mmz_total_size = 0;
		zone_number = 0;
		block_number = 0;
	}

    len = snprintf(page , count, SPLIT_LINE);
    memcpy(p_mmz_info_buf, page, len);
    p_mmz_info_buf += len;

	// transfer info to proc buff page
	if (off +  count > p_mmz_info_buf - mmz_info_buf){
		memcpy(page, mmz_info_buf + off, p_mmz_info_buf - mmz_info_buf - off);
		*eof = 1;
		ret = p_mmz_info_buf - mmz_info_buf - off;
	}else{
		memcpy(page, mmz_info_buf + off, count);
		ret = count;
	}
	*start = page;

	up(&mmz_lock);

	free_pages((unsigned long)mmz_info_buf, get_order(MAX_MMZ_INFO_LEN) );
#endif

	return ret;
}
#else

int mmz_read_proc(struct seq_file *m, void *v) {
	int nZoneCnt = 0;
	hil_mmz_t *p;
	unsigned int used_size = 0, free_size = 0;
	unsigned int u32Number = 0;

#if !(0 == HI_PROC_SUPPORT)
	down(&mmz_lock);
	seq_puts(m,SPLIT_LINE);
	seq_puts(m, "|                   PHYS           |  ID  |   KVIRT   |    FLAGS    |  LENGTH(KB)  |       NAME        |\n");
	seq_puts(m,SPLIT_LINE);

	// Collect all mmb info into mmz_info_buff
	list_for_each_entry(p, &mmz_list, list){
		hil_mmb_t *mmb;

		list_for_each_entry(mmb, &p->mmb_list, list){
			u32Number++;
		}

		seq_printf(m, "|ZONE[%d]: (0x%08lx, 0x%08lx)   %d                 0x%08lx      %-10lu   \"%s%-14s|\n",nZoneCnt, \
			(p)->phys_start,(p)->phys_start+(p)->nbytes-1, u32Number, (p)->gfp,(p)->nbytes/SZ_1K,(p)->name, "\"");
		CHECK_BUFF_OVERFLOW();

		nZoneCnt++;

		mmz_total_size += p->nbytes / 1024;
		zone_number++;

		list_for_each_entry(mmb, &p->mmb_list, list){
			seq_printf(m, "|" HIL_MMB_FMT_S "|\n", hil_mmb_fmt_arg(mmb));
			CHECK_BUFF_OVERFLOW();
			used_size += mmb->length/1024;
			block_number++;
		}
	}

	seq_puts(m, SPLIT_LINE);
	seq_printf(m, "|%-102s|\n", "Summary:");
	seq_puts(m, SPLIT_LINE);
	seq_puts(m, "|  MMZ Total Size  |      Used      |     Idle        |  Zone Number  |   BLock Number                 |\n");
	seq_puts(m, SPLIT_LINE);

#if 0
    if (zone_number == 1) {
 //       struct cma *cma;

        p = list_first_entry(&mmz_list, hil_mmz_t, list);

        if (p->cma_dev) {
            cma = p->cma_dev->cma_area;
            if (cma && cma->count)
                used_size = bitmap_weight(cma->bitmap, cma->count) * 4;
        }
	used_size = 0;
    }
#endif

	if(0 != mmz_total_size){
		free_size = mmz_total_size - used_size;
		seq_printf(m, "|       %d%-8s       %d%-8s      %d%-6s          %d                  %d                      |\n",
			mmz_total_size/1024, "MB", used_size/1024, "MB", free_size/1024, "MB", zone_number, block_number);
		CHECK_BUFF_OVERFLOW();

		mmz_total_size = 0;
		zone_number = 0;
		block_number = 0;
	}

	seq_puts(m, SPLIT_LINE);

	up(&mmz_lock);

#endif
	return 0;
}
#endif


int mmz_write_proc(struct file *file, const char __user *buffer,
                   unsigned long count, void *data)
{
    char buf[256];

    if (count >= sizeof(buf))
    {
        PRINTK_CA(KERN_ERR "MMZ: your parameter string is too long!\n");
        return -EIO;
    }

    memset(buf, 0, sizeof(buf));
    if (copy_from_user(buf, buffer, count))
    {
        PRINTK_CA(KERN_ERR "MMZ: copy_from_user failed!\n");
        return -EIO;
    }

    media_mem_parse_cmdline(buf);

    return count;
}

#define MMZ_SETUP_CMDLINE_LEN 256

#ifndef MODULE
static char __initdata setup_zones[MMZ_SETUP_CMDLINE_LEN] = "ddr,0,0x86000000,160M"; // CONFIG_HISILICON_MMZ_DEFAULT;
static int __init parse_kern_cmdline(char *line)
{
    strlcpy(setup_zones, line, sizeof(setup_zones));
    PRINTK_CA("000000------setup_zones=%s------000000\n", setup_zones);
    return 1;
}

__setup("mmz=", parse_kern_cmdline);

#else
static char __initdata setup_zones[MMZ_SETUP_CMDLINE_LEN] = {'\0'};
module_param_string(mmz, setup_zones, MMZ_SETUP_CMDLINE_LEN, 0600);
MODULE_PARM_DESC(mmz, "mmz=name,0,start,size,type,eqsize:[others]");
#endif

static void mmz_exit_check(void)
{
    hil_mmz_t *p;

    mmz_trace_func();
    for (p = hil_mmz_find(0, NULL); p != NULL; p = hil_mmz_find(0, NULL))
    {
        //PRINTK_CA(KERN_WARNING "MMZ force removed: " HIL_MMZ_FMT_S "\n", hil_mmz_fmt_arg(p));
        hil_mmz_unregister(p);
    }
}

static int init_done = 0;

int HI_DRV_MMZ_Init(void)
{
    char *s;
    char *p = NULL;
    char *q;
    int len;

    if (init_done)
        return 0;

    //PRINTK_CA(KERN_INFO "Hisilicon Media Memory Zone Manager state 0\n");

    len = strlen(setup_zones);
    if (len == 0)
    {
        strlcpy(line, saved_command_line, COMMAND_LINE_SIZE);
        q = strstr(line, "mmz=");
        if (q)
        {
            s = strsep(&q, "=");
            if (s)
            {
                p = strsep(&q, " ");
            }
            if (p)
            {
                strlcpy(setup_zones, p, MMZ_SETUP_CMDLINE_LEN);
            }
        }
    }

    media_mem_parse_cmdline(setup_zones);

    init_done = 1;

    return 0;
}

void HI_DRV_MMZ_Exit(void)
{
    mmz_exit_check();
    init_done = 0;
    return;
}

//EXPORT_SYMBOL(hil_mmb_alloc);
#ifndef CFG_MMZ_MINI
//EXPORT_SYMBOL(hil_mmb_alloc_v2);
#endif
//EXPORT_SYMBOL(hil_mmb_free);
//EXPORT_SYMBOL(hil_mmb_get);
//EXPORT_SYMBOL(hil_mmb_put);
//EXPORT_SYMBOL(mmz_read_proc);
//EXPORT_SYMBOL(mmz_write_proc);
EXPORT_SYMBOL(HI_DRV_MMZ_Init);
EXPORT_SYMBOL(HI_DRV_MMZ_Exit);
