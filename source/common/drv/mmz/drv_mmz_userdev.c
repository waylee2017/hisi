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
#include <linux/mman.h>
#include <linux/proc_fs.h>
#include <linux/delay.h>
#include <linux/sched.h>
#include <linux/seq_file.h>
#include <asm/uaccess.h>
#include <asm/cacheflush.h>
#include <linux/version.h>
#include <linux/slab.h>
#include <linux/seq_file.h>
#include <linux/mm.h>

#include "drv_dev_ext.h"
#include "drv_media_mem.h"
#include "drv_mmz_ioctl.h"
#include "hi_kernel_adapt.h"

#define error(s...) do{ PRINTK_CA(KERN_ERR "mmz_userdev:%s: ", __FUNCTION__); PRINTK_CA(s); }while(0)
#define warning(s...) do{ PRINTK_CA(KERN_WARNING "mmz_userdev:%s: ", __FUNCTION__); PRINTK_CA(s); }while(0)


/****************************fops*********************************/

struct mmz_userdev_info {
	pid_t tgid;
	pid_t mmap_tgid;
	struct semaphore sem;
	struct list_head list;
};

static int mmz_flush_dcache_mmb(struct mmb_info *pmi)
{
	hil_mmb_t *mmb;
	unsigned long flags;

	DEFINE_SPINLOCK(cache_lock);

	if (pmi == NULL)
		return -EINVAL;

	mmb = pmi->mmb;
	if (mmb == NULL || pmi->map_cached == 0){
		PRINTK_CA("%s->%d,error!\n", __func__,__LINE__);
		return -EINVAL;
	}
	spin_lock_irqsave(&cache_lock, flags);

	/* flush l1 cache, use vir addr */
	__cpuc_flush_dcache_area((void *)pmi->mapped, pmi->size);
	/* flush l2 cache, use phy addr */
	outer_flush_range(mmb->phys_addr, mmb->phys_addr + mmb->length);

	spin_unlock_irqrestore(&cache_lock, flags);

	return 0;
}

static int mmz_flush_dcache_all(void)
{
	/* flush l1 all cache */
#ifdef CONFIG_SMP
	on_each_cpu((smp_call_func_t)__cpuc_flush_kern_all, NULL, 1);
#else
	__cpuc_flush_kern_all();
#endif
	/* flush l2 all cache */
	outer_flush_all();
	return 0;
}

int mmz_userdev_open(struct inode *inode, struct file *file)
{
	struct mmz_userdev_info *pmu;

	pmu = kmalloc(sizeof(*pmu), GFP_KERNEL);
	if(pmu ==NULL) {
		error("alloc mmz_userdev_info failed!\n");
		return -ENOMEM;
	}
	pmu->tgid = current->tgid;
	pmu->mmap_tgid = 0;
	HI_INIT_MUTEX(&pmu->sem);
	INIT_LIST_HEAD(&pmu->list);

	file->private_data = (void*)pmu;

	return 0;
}

static int ioctl_mmb_alloc(struct file *file, unsigned int iocmd, struct mmb_info *pmi)
{
	struct mmz_userdev_info *pmu = file->private_data;
	struct mmb_info *new_mmbinfo;
	hil_mmb_t *mmb;

	mmb = hil_mmb_alloc(pmi->mmb_name, pmi->size, pmi->align, pmi->gfp, pmi->mmz_name);
	if(mmb ==NULL) {
			  /* error("hil_mmb_alloc(%s, %lu, 0x%08lX, %lu, %s) failed!\n",
				pmi->mmb_name, pmi->size, pmi->align, pmi->gfp, pmi->mmz_name);  */
		return -ENOMEM;
	}

	new_mmbinfo = kmalloc(sizeof(*new_mmbinfo), GFP_KERNEL);
	if(new_mmbinfo ==NULL) {
		hil_mmb_free(mmb);
		error("alloc mmb_info failed!\n");
		return -ENOMEM;
	}

	memcpy(new_mmbinfo, pmi, sizeof(*new_mmbinfo));
	new_mmbinfo->phys_addr = hil_mmb_phys(mmb);
	new_mmbinfo->mmb = mmb;
	new_mmbinfo->prot = PROT_READ;
	new_mmbinfo->flags = MAP_SHARED;
	new_mmbinfo->tgid = current->tgid;
	list_add_tail(&new_mmbinfo->list, &pmu->list);

	pmi->phys_addr = new_mmbinfo->phys_addr;

	hil_mmb_get(mmb);

	return 0;
}

#ifndef CFG_MMZ_MINI
static int ioctl_mmb_alloc_v2(struct file *file, unsigned int iocmd, struct mmb_info *pmi)
{
	struct mmz_userdev_info *pmu = file->private_data;
	struct mmb_info *new_mmbinfo;
	hil_mmb_t *mmb;

	mmb = hil_mmb_alloc_v2(pmi->mmb_name, pmi->size, pmi->align, pmi->gfp, pmi->mmz_name, pmi->order);
	if(mmb ==NULL) {
		error("hil_mmb_alloc(%s, %lu, 0x%08lX, %lu, %s) failed!\n",
				pmi->mmb_name, pmi->size, pmi->align, pmi->gfp, pmi->mmz_name);
		return -ENOMEM;
	}

	//new_mmbinfo = kmalloc(sizeof(*new_mmbinfo), GFP_KERNEL);
	new_mmbinfo = kmalloc(sizeof(struct mmb_info), GFP_KERNEL);
	if(new_mmbinfo ==NULL) {
		hil_mmb_free(mmb);
		error("alloc mmb_info failed!\n");
		return -ENOMEM;
	}

	memcpy(new_mmbinfo, pmi, sizeof(*new_mmbinfo));
	new_mmbinfo->phys_addr = hil_mmb_phys(mmb);
	new_mmbinfo->mmb = mmb;
	new_mmbinfo->prot = PROT_READ;
	new_mmbinfo->flags = MAP_SHARED;
	new_mmbinfo->tgid = current->tgid;
	list_add_tail(&new_mmbinfo->list, &pmu->list);

	pmi->phys_addr = new_mmbinfo->phys_addr;

	hil_mmb_get(mmb);

	return 0;
}
#endif

static struct mmb_info* get_mmbinfo(unsigned long addr, struct mmz_userdev_info *pmu)
{
	struct mmb_info *p;

	list_for_each_entry(p, &pmu->list, list) {
		if(p->phys_addr ==addr)
			break;
	}
	if( &p->list == &pmu->list)
		return NULL;

	return p;
}

static struct mmb_info* get_mmbinfo_safe(unsigned long addr, struct mmz_userdev_info *pmu)
{
	struct mmb_info *p;

	p = get_mmbinfo(addr, pmu);

	if( p ==NULL) {
		error("mmb(0x%08lX) not found!\n", addr);
		return NULL;
	}

	return p;
}

static int ioctl_mmb_user_unmap(struct file *file, unsigned int iocmd, struct mmb_info *pmi);

static int _usrdev_mmb_free(struct mmb_info *p)
{
	int ret = 0;

	list_del(&p->list);
	hil_mmb_put(p->mmb);
	ret = hil_mmb_free(p->mmb);
	kfree(p);

	return ret;
}

static int ioctl_mmb_free(struct file *file, unsigned int iocmd, struct mmb_info *pmi)
{
	int ret = 0;
	struct mmz_userdev_info *pmu = file->private_data;
	struct mmb_info *p;

	if ( (p=get_mmbinfo_safe(pmi->phys_addr, pmu)) ==NULL)
		return -EPERM;

	if(p->delayed_free) {
		warning("mmb<%s> is delayed_free, can not free again!\n", p->mmb->name);
		return -EBUSY;
	}

	if(p->map_ref>0 || p->mmb_ref>0) {
		warning("mmb<%s> is still used!\n", p->mmb->name);
		p->delayed_free = 1;
		return -EBUSY;
	}

	ret = _usrdev_mmb_free(p);

	return ret;
}

static int ioctl_mmb_attr(struct file *file, unsigned int iocmd, struct mmb_info *pmi)
{
	struct mmz_userdev_info *pmu = file->private_data;
	struct mmb_info *p;

	if ( (p=get_mmbinfo_safe(pmi->phys_addr, pmu)) ==NULL)
		return -EPERM;

	memcpy(pmi, p, sizeof(*pmi));
	return 0;
}

static int ioctl_mmb_user_remap(struct file *file, unsigned int iocmd, struct mmb_info *pmi, int cached)
{
	struct mmz_userdev_info *pmu = file->private_data;
	struct mmb_info *p;
	#if !(LINUX_VERSION_CODE < KERNEL_VERSION(3, 10, 0))
	unsigned long round_up_len;
	#endif

	unsigned long addr, len, prot, flags, pgoff;

	if ( (p=get_mmbinfo_safe(pmi->phys_addr, pmu)) ==NULL)
		return -EPERM;

	if( p->mapped && p->map_ref>0) {
		if(cached != p->map_cached) {
			error("mmb<%s> already mapped %s, can not be remap to %s.\n", p->mmb->name,
					p->map_cached ? "cached" : "non-cached",
					cached ? "cached" : "non-cached");
			return -EINVAL;
		}

		p->map_ref++;
		p->mmb_ref++;

		hil_mmb_get(p->mmb);

		pmi->mapped = p->mapped;

		return 0;
	}

	if(p->phys_addr & ~PAGE_MASK)
		return -EINVAL;

	addr = 0;
	pgoff = p->phys_addr >> PAGE_SHIFT;

	len = PAGE_ALIGN(p->size);

	prot = pmi->prot;
	flags = pmi->flags;
	if(prot ==0)
		prot = p->prot;
	if(flags ==0)
		flags = p->flags;

	down_write(&current->mm->mmap_sem);
	pmu->mmap_tgid = current->tgid;
	p->map_cached = cached;

	#if LINUX_VERSION_CODE < KERNEL_VERSION(3, 10, 0)
	addr = do_mmap_pgoff(file, addr, len, prot, flags, pgoff);
	#else
	addr = do_mmap_pgoff(file, addr, len, prot, flags, pgoff,&round_up_len);
	#endif

	pmu->mmap_tgid = 0;
	up_write(&current->mm->mmap_sem);

	if(IS_ERR_VALUE(addr)) {
		error("do_mmap_pgoff(file, 0, %lu, 0x%08lX, 0x%08lX, 0x%08lX) return 0x%08lX\n",
				len, prot, flags, pgoff, addr);
		return addr;
	}

	p->mapped = (void *)addr;
	p->prot = prot;
	p->flags = flags;

	p->map_ref++;
	p->mmb_ref++;
	hil_mmb_get(p->mmb);

	pmi->mapped = p->mapped;

	return 0;
}

static int ioctl_mmb_user_unmap(struct file *file, unsigned int iocmd, struct mmb_info *pmi)
{
	int ret;
	unsigned long addr, len;
	struct mmb_info *p;
	struct mmz_userdev_info *pmu = file->private_data;

	if ( (p=get_mmbinfo_safe(pmi->phys_addr, pmu)) ==NULL)
		return -EPERM;

	if(!p->mapped) {
		PRINTK_CA(KERN_WARNING "mmb(0x%08lx) have'nt been user-mapped yet!\n", p->phys_addr);
		pmi->mapped = 0;
		return -EIO;
	}

	if(!(p->map_ref>0 && p->mmb_ref>0)) {
		error("mmb<%s> has invalid refer: map_ref = %d, mmb_ref = %d.\n", p->mmb->name, p->map_ref, p->mmb_ref);
		return -EIO;
	}

	p->map_ref--;
	p->mmb_ref--;
	hil_mmb_put(p->mmb);

	if(p->map_ref >0)
		return 0;

	addr = (unsigned long)p->mapped;
	len  = PAGE_ALIGN(p->size);

        down_write(&current->mm->mmap_sem);
	ret = do_munmap(current->mm, addr, len);
	up_write(&current->mm->mmap_sem);

	if(!IS_ERR_VALUE(ret)) {
		/** the memory may be used by system later so clean the L2 cache(L1 cache is guaranted by do_munmap)  **/
		if(p->map_cached)
			outer_flush_range(pmi->phys_addr,len);
		p->mapped = 0;
		pmi->mapped = 0;
	}

	if(p->delayed_free && p->mmb_ref==0 && p->mmb_ref==0) {
		_usrdev_mmb_free(p);
	}

	return ret;
}


// find mmbinfo by use addr
static struct mmb_info* get_mmbinfo_byusraddr(unsigned long addr, struct mmz_userdev_info *pmu)
{
	struct mmb_info *p;

	list_for_each_entry(p, &pmu->list, list) {
		if( ((unsigned long)p->mapped <= addr) &&
			((unsigned long)p->mapped + p->size > addr) &&
			(p->tgid == current->tgid) )
				break;
	}
	if( &p->list == &pmu->list)
		return NULL;

	return p;
}

/*To make sure ref get and release, both get and put interface shoude be exist,
	but customers make sure theirselves, will not release in using */
/*CNcomment: 应当有 get/put两个接口，保证ref的获取释放，不过用户对该接口暂时自己确认，使用中不进行释放*/
static int ioctl_mmb_user_getphyaddr(struct file *file, unsigned int iocmd, struct mmb_info *pmi)
{
	struct mmb_info *p;
	struct mmz_userdev_info *pmu = file->private_data;

	p = get_mmbinfo_byusraddr((unsigned long)pmi->mapped, pmu);
	if ( p ==NULL)
		return -EPERM;

	if(!(p->map_ref>0 && p->mmb_ref>0)) {
		error("mmb<%s> has invalid refer: map_ref = %d, mmb_ref = %d.\n", p->mmb->name, p->map_ref, p->mmb_ref);
		return -EIO;
	}

	pmi->phys_addr = p->phys_addr + ((unsigned long)pmi->mapped - (unsigned long)p->mapped);
	pmi->size = p->size - ((unsigned long)pmi->mapped - (unsigned long)p->mapped);
	return 0;
}

static int mmz_userdev_ioctl_m(struct inode *inode, struct file *file, unsigned int cmd, struct mmb_info *pmi)
{
	int ret = 0;
	switch(_IOC_NR(cmd)) {
		case _IOC_NR(IOC_MMB_ALLOC):
			ret = ioctl_mmb_alloc(file, cmd, pmi);
			break;
#ifndef CFG_MMZ_MINI
		case _IOC_NR(IOC_MMB_ALLOC_V2):
			ret = ioctl_mmb_alloc_v2(file, cmd, pmi);
			break;
#endif
		case _IOC_NR(IOC_MMB_ATTR):
			ret = ioctl_mmb_attr(file, cmd, pmi);
			break;
		case _IOC_NR(IOC_MMB_FREE):
			ret = ioctl_mmb_free(file, cmd, pmi);
			break;

		case _IOC_NR(IOC_MMB_USER_REMAP):
			ret = ioctl_mmb_user_remap(file, cmd, pmi, 0);
			break;
		case _IOC_NR(IOC_MMB_USER_REMAP_CACHED):
			ret = ioctl_mmb_user_remap(file, cmd, pmi, 1);
			break;
		case _IOC_NR(IOC_MMB_USER_UNMAP):
			ret = ioctl_mmb_user_unmap(file, cmd, pmi);
			break;
		case _IOC_NR(IOC_MMB_USER_GETPHYADDR):
			ret = ioctl_mmb_user_getphyaddr(file, cmd, pmi);
			break;
		default:
			error("invalid ioctl cmd = %08X\n", cmd);
			ret = -EINVAL;
			break;
	}

	return ret;
}

static int mmz_userdev_ioctl_r(struct inode *inode, struct file *file, unsigned int cmd, struct mmb_info *pmi)
{
	switch(_IOC_NR(cmd)) {
		case _IOC_NR(IOC_MMB_ADD_REF):
			pmi->mmb_ref++;
			hil_mmb_get(pmi->mmb);
			break;
		case _IOC_NR(IOC_MMB_DEC_REF):
			if(pmi->mmb_ref <=0) {
				error("mmb<%s> mmb_ref is %d!\n", pmi->mmb->name, pmi->mmb_ref);
				return -EPERM;
			}
			pmi->mmb_ref--;
			hil_mmb_put(pmi->mmb);
			if(pmi->delayed_free && pmi->mmb_ref==0 && pmi->mmb_ref==0) {
				_usrdev_mmb_free(pmi);
			}
			break;
		default:
			return -EINVAL;
			break;
	}

	return 0;
}

/* just for test */
static int mmz_userdev_ioctl_t(struct inode *inode, struct file *file, unsigned int cmd, struct mmb_info *pmi)
{
	return 0;
}

long mmz_userdev_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
{
	long ret = 0;
	struct mmz_userdev_info *pmu = file->private_data;

	down(&pmu->sem);

	if(_IOC_TYPE(cmd) == 'm') {

		struct mmb_info mi;

		if(_IOC_SIZE(cmd) > sizeof(mi) || arg==0) {
			error("_IOC_SIZE(cmd)=%d, arg==0x%08lX\n", _IOC_SIZE(cmd), arg);
			ret = -EINVAL;
			goto __error_exit;
		}
		memset(&mi, 0, sizeof(mi));
		if (copy_from_user(&mi, (void*)arg, _IOC_SIZE(cmd)))
		{
            PRINTK_CA("\nmmz_userdev_ioctl: copy_from_user error.\n");
            ret = -EFAULT;
			goto __error_exit;
		}

		ret = mmz_userdev_ioctl_m(file->f_path.dentry->d_inode,file, cmd, &mi);

		if(!ret && (cmd&IOC_OUT))
		{
			if (copy_to_user((void*)arg, &mi, _IOC_SIZE(cmd)))
			{
                PRINTK_CA("\nmmz_userdev_ioctl: copy_to_user error.\n");
                ret = -EFAULT;
			    goto __error_exit;
		    }
		}

	} else if(_IOC_TYPE(cmd) == 'r') {
		struct mmb_info *pmi;
		if ( (pmi=get_mmbinfo_safe(arg, pmu)) ==NULL) {
			ret = -EPERM;
			goto __error_exit;
		}

		ret = mmz_userdev_ioctl_r(file->f_path.dentry->d_inode, file, cmd, pmi);

	} else if(_IOC_TYPE(cmd) == 'c') {

		struct mmb_info *pmi;
		if (arg == 0){
			mmz_flush_dcache_all();
			goto __error_exit;
		}
		if ( (pmi=get_mmbinfo_safe(arg, pmu)) ==NULL) {
			ret = -EPERM;
			goto __error_exit;
		}

		switch(_IOC_NR(cmd)) {
			case _IOC_NR(IOC_MMB_FLUSH_DCACHE):
				mmz_flush_dcache_mmb(pmi);
				break;
			default:
				ret = -EINVAL;
				break;
		}

	} else if(_IOC_TYPE(cmd) == 't') {
		struct mmb_info mi;

		memset(&mi, 0, sizeof(mi));
		if (copy_from_user(&mi, (void*)arg, _IOC_SIZE(cmd)))
		{
            PRINTK_CA("\nmmz_userdev_ioctl: copy_from_user error.\n");
            ret = -EFAULT;
            goto __error_exit;
		}

		if ( (get_mmbinfo_safe(mi.phys_addr, pmu)) ==NULL) {
			ret = -EPERM;
			goto __error_exit;
		}

		ret = mmz_userdev_ioctl_t(file->f_path.dentry->d_inode, file, cmd, &mi);
	} else {
		ret = -EINVAL;
	}

__error_exit:

	up(&pmu->sem);

	return ret;
}

int mmz_userdev_mmap(struct file *file, struct vm_area_struct *vma)
{
	struct mmb_info *p;
	struct mmz_userdev_info *pmu = file->private_data;
	unsigned long offset = vma->vm_pgoff << PAGE_SHIFT;

	if(current->tgid != pmu->mmap_tgid) {
		error("do not call mmap() yourself!\n");
		return -EPERM;
	}

	p = get_mmbinfo(offset, pmu);
	if( p ==NULL) {
		error("I'm confused, mmb(0x%08lX) not found?!\n", offset);
		return -EPERM;
	}
	if(p->mapped) {
		error("I'm confused, mmb(0x%08lX) have been mapped yet?!\n", offset);
		return -EIO;
	}

	if(offset >= PHYS_OFFSET && offset <  __pa(high_memory) ) {
		error("map address 0x%08lX in kernel range!\n", offset);
		return -EINVAL;
	}

#if defined(pgprot_noncached)
	if (file->f_flags & O_SYNC) {
		vma->vm_page_prot = pgprot_noncached(vma->vm_page_prot);
	} else {
		if(p->map_cached)
#if (LINUX_VERSION_CODE < KERNEL_VERSION(2, 6, 36))
 			vma->vm_page_prot = __pgprot(pgprot_val(vma->vm_page_prot) | L_PTE_PRESENT | L_PTE_YOUNG | L_PTE_DIRTY | L_PTE_WRITE | L_PTE_MT_DEV_CACHED);
#else
			vma->vm_page_prot = __pgprot(pgprot_val(vma->vm_page_prot) | L_PTE_PRESENT | L_PTE_YOUNG | L_PTE_DIRTY | L_PTE_RDONLY | L_PTE_MT_DEV_CACHED);
#endif
		else
			vma->vm_page_prot = pgprot_writecombine(vma->vm_page_prot);
	}
#endif

	/* Remap-pfn-range will mark the range VM_IO and VM_RESERVED */
	if (remap_pfn_range(vma,
			    vma->vm_start,
			    vma->vm_pgoff,
			    vma->vm_end-vma->vm_start,
			    vma->vm_page_prot))
		return -EAGAIN;

	return 0;
}


int mmz_userdev_release(struct inode *inode, struct file *file)
{
	struct mmz_userdev_info *pmu = file->private_data;
	struct mmb_info *p, *n;

	list_for_each_entry_safe(p, n, &pmu->list, list) {
	    /*
		PRINTK_CA(KERN_ERR "MMB LEAK(pid=%d): 0x%08lX, %lu bytes, '%s'\n", \
				pmu->pid, hil_mmb_phys(p->mmb), \
				hil_mmb_length(p->mmb),
				hil_mmb_name(p->mmb));
		*/
		/* we do not need to release mapped-area here, system will do it for us */
		/*
		if(p->mapped)
			PRINTK_CA(KERN_WARNING "mmz_userdev_release: mmb<0x%08lX> mapped to userspace 0x%p will be force unmaped!\n", p->phys_addr, p->mapped);
		*/
		for(; p->mmb_ref>0; p->mmb_ref--)
			hil_mmb_put(p->mmb);
		_usrdev_mmb_free(p);
	}

	file->private_data = NULL;
	kfree(pmu);

	return 0;
}

static struct file_operations mmz_userdev_fops = {
	.owner	= THIS_MODULE,
	.open	= mmz_userdev_open,
	.release= mmz_userdev_release,
	.unlocked_ioctl  = mmz_userdev_ioctl,
#ifdef CONFIG_COMPAT
	.compat_ioctl = mmz_userdev_ioctl,
#endif
	.mmap	= mmz_userdev_mmap,
};

#if !(LINUX_VERSION_CODE < KERNEL_VERSION(3, 10, 0))

static int proc_mmz_read(struct inode *inode, struct file *file)
{
	return single_open(file, mmz_read_proc, PDE_DATA(inode));
}

static struct file_operations proc_mmz_fops = {
	.owner      = THIS_MODULE,
	.open       = proc_mmz_read,
	.read           = seq_read,
	.llseek         = seq_lseek,
	.write      = NULL,
	.release        = single_release,
};

#endif

/****************************proc**********************************/
#define MEDIA_MEM_NAME  "media-mem"
static int media_mem_proc_init(void)
{
#if !(0 == HI_PROC_SUPPORT)
	struct proc_dir_entry *p;
#if LINUX_VERSION_CODE < KERNEL_VERSION(3, 10, 0)
	p = create_proc_entry(MEDIA_MEM_NAME, 0444,NULL);
	if(p == NULL)
		return -1;
	p->read_proc = mmz_read_proc;
	p->write_proc = NULL;
#else
	p = proc_create(MEDIA_MEM_NAME, 0444, NULL,&proc_mmz_fops);
	if(p == NULL)
		return -1;
#endif

#endif
        return 0;
}


static void media_mem_proc_exit(void)
{
#if !(0 == HI_PROC_SUPPORT)
	remove_proc_entry(MEDIA_MEM_NAME, NULL);
#endif
}


/********************init**************************/

static PM_DEVICE_S mmz_userdev = {
	.minor	= HIMEDIA_DYNAMIC_MINOR,
	.name	= "mmz_userdev",
	.owner = THIS_MODULE,
	.app_ops= &mmz_userdev_fops
};

int DRV_MMZ_ModInit(void)
{
    HI_S32 s32Ret = 0;

	HI_DRV_MMZ_Init();

	media_mem_proc_init();
	s32Ret = HI_DRV_PM_Register(&mmz_userdev);
    if(s32Ret != HI_SUCCESS)
    {
        media_mem_proc_exit();
	    HI_DRV_MMZ_Exit();
        return HI_FAILURE;
    }

#ifdef MODULE
    HI_PRINT("Load hi_mmz.ko success.\t\t(%s)\n", VERSION_STRING);
#endif

	return 0;
}

void DRV_MMZ_ModExit(void)
{
	HI_DRV_PM_UnRegister(&mmz_userdev);
	media_mem_proc_exit();

	HI_DRV_MMZ_Exit();

#ifdef MODULE
    HI_PRINT("remove hi_mmz.ko success.\n");
#endif
}


#ifdef MODULE
module_init(DRV_MMZ_ModInit);
module_exit(DRV_MMZ_ModExit);
#endif

EXPORT_SYMBOL(DRV_MMZ_ModInit);
EXPORT_SYMBOL(DRV_MMZ_ModExit);


MODULE_LICENSE("GPL");
MODULE_AUTHOR("liu jiandong");

