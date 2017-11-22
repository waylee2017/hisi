/******************************************************************************

  Copyright (C), 2011-2014, Hisilicon Tech. Co., Ltd.

 ******************************************************************************
  File Name     : drv_advca_intf.c
  Version       : Initial Draft
  Author        : Hisilicon hisecurity team
  Created       : 
  Last Modified :
  Description   : 
  Function List :
  History       :
******************************************************************************/
#include <linux/jiffies.h>
#include <linux/device.h>
#include <linux/module.h>
#include <linux/moduleparam.h>
#include <linux/fs.h>
#include <asm/uaccess.h>
#include <asm/io.h>
#include <asm/delay.h>
#include <linux/slab.h>
#include <linux/poll.h>
#include <linux/interrupt.h>
#include <linux/delay.h>
#include <linux/mm.h>
#ifdef DDR_WAKE_UP_CHECK_ENABLE
#include <mach/platform.h>
#include <mach/hardware.h>
#include <asm/memory.h>
#include <linux/linkage.h>
#endif
#include "hi_common.h"
#include "hi_module.h"
#include "hi_unf_advca.h"
#include "hi_drv_cipher.h"
#include "hi_drv_otp.h"
#include "hi_drv_sys.h"
//#include "hi_drv_dev.h"
#include "drv_dev_ext.h"
#include "hi_drv_proc.h"
//#include "hi_drv_reg.h"
#include "drv_reg_ext.h"
#include "drv_advca.h"
#include "drv_advca_ext.h"
#include "drv_otp_ext.h"
#include "drv_advca_ioctl.h"
#include "hi_drv_module.h"
#include "drv_advca_internal.h"
#include "drv_advca_external.h"

atomic_t g_CaRefCnt = ATOMIC_INIT(0);


#ifndef SDK_SECURITY_ARCH_VERSION_V3
#ifndef HI_REG_READ32
#define HI_REG_READ32(addr,result)  ((result) = *(volatile unsigned int *)(addr))
#endif
#ifndef HI_REG_WRITE32
#define HI_REG_WRITE32(addr,result)  (*(volatile unsigned int *)(addr) = (result))
#endif
#endif

#define MUTEX_MAX_NUMBER 2
#define MUTEX_NAME_MAX_LEN 100

typedef struct CA_Sema
{
    struct semaphore CaSem;
    HI_BOOL isUsed;
    /*char mutex_name[MUTEX_NAME_MAX_LEN];*/
}CA_Sema_S;

typedef struct CA_Mutex
{
    struct mutex  ca_oplock;
    CA_Sema_S ca_sema[MUTEX_MAX_NUMBER];
}CA_Mutex_S;

CA_Mutex_S g_ca_mutex;

static UMAP_DEVICE_S caUmapDev;

extern HI_S32  DRV_ADVCA_ModeInit_0(HI_VOID);
extern HI_VOID DRV_ADVCA_ModeExit_0(HI_VOID);
extern int DRV_ADVCA_Open(struct inode *inode, struct file *filp);
extern int DRV_ADVCA_Release(struct inode *inode, struct file *filp);
extern OTP_EXPORT_FUNC_S *g_pOTPExportFunctionList;

static HI_U32 g_CaVirAddr = 0;
#ifdef SDK_SECURITY_ARCH_VERSION_V2
#define CA_BASE      0x101c0000
#else
#define CA_BASE       0x10000000
#endif

#define REG_WAKEUP_CHECK_ADDR   0x600b7818
#define REG_WAKEUP_CHECK_LEN    0x600b781C

HI_S32 CA_Ioctl(struct inode *inode, struct file *file, unsigned int cmd, void* arg);

HI_U32 ca_io_address(HI_U32 u32Addr)
{
    return IO_ADDRESS(u32Addr);
}

HI_S32 ca_atomic_read(HI_U32 *pu32Value)
{
    if ( NULL == pu32Value )
    {
        HI_FATAL_CA("Error! Null pointer input in ca atomic read!\n");
        return HI_FAILURE;
    }
    
    *pu32Value = atomic_read(&g_CaRefCnt);

    return HI_SUCCESS;
}

HI_S32 ca_atomic_dec_return(HI_U32 *pu32Value)
{
    if ( NULL == pu32Value )
    {
        HI_FATAL_CA("Error! Null pointer input in ca atomic read!\n");
        return HI_FAILURE;
    }
    
    *pu32Value = atomic_dec_return(&g_CaRefCnt);

    return HI_SUCCESS;
}

HI_S32 ca_atomic_inc_return(HI_U32 *pu32Value)
{
    if ( NULL == pu32Value )
    {
        HI_FATAL_CA("Error! Null pointer input in ca atomic inc return!\n");
        return HI_FAILURE;
    }
    
    *pu32Value = atomic_inc_return(&g_CaRefCnt);
    return HI_SUCCESS;
}


HI_S32 ca_down_interruptible(HI_U32 *pu32Value)
{
    struct semaphore *pCaSem = NULL; 
	
    
    pCaSem = (struct semaphore*)pu32Value; 
    
    if (NULL == pCaSem)
    {
        return HI_FAILURE;
    }

    if (down_interruptible(pCaSem))
    {
        return HI_FAILURE;
    }

    return HI_SUCCESS;
}

HI_S32 ca_down_trylock(HI_U32 *pu32Value)
{
    HI_S32 s32Ret = 0;
    struct semaphore *pCaSem = NULL;
	

    pCaSem = (struct semaphore*)pu32Value;  
    
    if(NULL == pCaSem)
    {
        return HI_FAILURE;
    }
    
    s32Ret = down_trylock(pCaSem);
    if( 0 != s32Ret)
    {
        return HI_FAILURE;
    }

    return HI_SUCCESS;
}

HI_VOID ca_up(HI_U32 *pu32Value)
{
    struct semaphore *pCaSem = NULL;    
	

    pCaSem = (struct semaphore*)pu32Value;    
    if(NULL == pCaSem)
    {
        return ;
    }

    up(pCaSem);
    return ;
}


HI_VOID ca_initMutex(HI_U32 *pu32Value)
{
    struct semaphore *pCaSem = NULL;

	if(NULL == pu32Value)
	{
		HI_FATAL_CA("Invalid Input param, NULL pointer in ca_initMutex.\n");
		return;
	}

    pCaSem = (struct semaphore*)pu32Value; 
    #ifndef SDK_SECURITY_ARCH_VERSION_V2
    #if (LINUX_VERSION_CODE > KERNEL_VERSION(2, 6, 36))
        sema_init(pCaSem,1);
    #else
        init_MUTEX(pCaSem);
    #endif
    #else
        init_MUTEX(pCaSem);
    #endif

    return;
}

HI_U32* ca_create_mutex(HI_VOID)
{
   HI_U8 i = 0;   
   HI_U32 *pu32Value = NULL;

   mutex_lock(&g_ca_mutex.ca_oplock);
   for (i=0; i< MUTEX_MAX_NUMBER; i++)
   {
      if (g_ca_mutex.ca_sema[i].isUsed == HI_FALSE)
      {
         break;
      }     
   }
   
   if (i < MUTEX_MAX_NUMBER)
   {
       pu32Value = (HI_U32 *)&g_ca_mutex.ca_sema[i].CaSem;
       g_ca_mutex.ca_sema[i].isUsed = HI_TRUE;
   }
   else
   {
       HI_FATAL_CA("Error! fail to create ca mutex!\n");
       pu32Value = NULL;
   }   
   mutex_unlock(&g_ca_mutex.ca_oplock);

   return pu32Value;
}



HI_VOID *ca_ioremap_nocache(HI_U32 u32Addr, HI_U32 u32Len)
{
    return ioremap_nocache(u32Addr, u32Len);
}

HI_VOID ca_iounmap(HI_VOID *pAddr)
{
    iounmap(pAddr);
    return;
}


HI_VOID ca_msleep(HI_U32 u32Time)
{
    msleep(u32Time);
    return;
}

HI_VOID ca_udelay(HI_U32 us)
{
    udelay(us);
    return;
}

HI_VOID ca_mdelay(HI_U32 u32Time)
{
    mdelay(u32Time);
    return;
}

HI_VOID * ca_memset(void * s, int c, HI_S32 count)
{
    return memset(s, c, count);
}

HI_S32 ca_memcmp(void *pBufferA, void *pBufferB, HI_U32 len)
{
    return memcmp(pBufferA, pBufferB, len);
}

HI_S32 ca_snprintf(char * buf, HI_U32 size, const char * fmt, ...)
{
    return snprintf(buf, size, fmt);
}

/*****************************************************************************
 Prototype    :
 Description  : CA V200 Module suspend function
 Input        : None
 Output       : None
 Return Value : None
*****************************************************************************/
int  ca_v200_pm_suspend(PM_BASEDEV_S *pdev, pm_message_t state)
{
    int ret;
    HI_U32 u32Value = 0;

    ret = ca_atomic_read(&u32Value);
    if ((HI_SUCCESS != ret) || (0 != u32Value))
    {
        //CA driver may need to do something after resume
		HI_FATAL_CA("not close! \n");
        return 0;
    }
    
	HI_FATAL_CA("ok! \n");
 
    return 0;
}

int  ca_v200_pm_resume(PM_BASEDEV_S *pdev)
{
    HI_S32 ret = 0;
    HI_U32 u32Value = 0;

	if(NULL == pdev)
	{
		return HI_FAILURE;
	}

    ret = ca_atomic_read(&u32Value);
    if ((HI_SUCCESS != ret) || (0 != u32Value))
    {
		//CA driver may need to do something after resume
		HI_FATAL_CA("not close! \n");
        return 0;
    }
    
	HI_FATAL_CA("ok! \n");

    return 0;
}

HI_VOID CA_readReg(HI_U32 addr, HI_U32 *pu32Result)
{
    HI_REG_READ32(addr, *pu32Result);
    return;
}

HI_VOID CA_writeReg(HI_U32 addr, HI_U32 u32Result)
{
    HI_REG_WRITE32(addr, u32Result);
    return;
}

HI_VOID Sys_rdReg(HI_U32 addr, HI_U32 *pu32Result)
{
    HI_REG_READ32(addr, *pu32Result);
    return;
}

HI_VOID Sys_wtReg(HI_U32 addr, HI_U32 u32Result)
{
    HI_REG_WRITE32(addr, u32Result);
    return;
}

HI_VOID ca_v200_ReadReg(HI_U32 addr, HI_U32 *pu32Result)
{
    HI_U32 temp_addr = g_CaVirAddr + (addr - CA_BASE);
    HI_REG_READ32(temp_addr, *pu32Result);
    return;
}

HI_VOID ca_v200_WriteReg(HI_U32 addr, HI_U32 u32Result)
{
    HI_U32 temp_addr = g_CaVirAddr + (addr - CA_BASE);
    HI_REG_READ32(temp_addr, u32Result);
    return;
}

HI_VOID CA_OTP_READ_REG(HI_U32 addr, HI_U32 *pu32Result)
{
    HI_U32 addr_temp = ca_io_address(addr);
    HI_REG_READ32(addr_temp, *pu32Result);
    return;
}

HI_VOID CA_OTP_WRITE_REG(HI_U32 addr, HI_U32 u32Result)
{
    HI_U32 addr_temp = ca_io_address(addr);
    HI_REG_READ32(addr_temp, u32Result);
    return;
}

#ifdef DDR_WAKE_UP_CHECK_ENABLE
/*
In linux/kernel/printk/printk.c, console_suspend_enabled is control to set console to disable during suspend.
*/
//UART1 UART_DR:UART_DR 为UART 数据寄存器，存放接收数据和发送数据
//[7:0] RW data 接收数据和发送数据。
#if   defined (CHIP_TYPE_hi3716mv410) \
   || defined (CHIP_TYPE_hi3716mv420) \
   || defined (CHIP_TYPE_hi3716cv200) \
   || defined (CHIP_TYPE_hi3719cv100) \
   || defined (CHIP_TYPE_hi3719mv100) \
   || defined (CHIP_TYPE_hi3798mv100) \
   || defined (CHIP_TYPE_hi3796mv100) \
   || defined (CHIP_TYPE_hi3798cv200)
#define UART_PRINT_OUT  0xf8b00000
#endif
#if  defined (CHIP_TYPE_hi3716mv310) \
  || defined (CHIP_TYPE_hi3110ev500) \
  || defined (CHIP_TYPE_hi3716mv330)
#define UART_PRINT_OUT  0x101e5000
#define SRAM_BASE_ADDRESS   0
#endif

typedef int (*PM_FUN)(int type, void *param);
typedef struct
{
    PM_FUN pmfun;
}FN_PM_FUN;

extern int (* ca_pm_suspend)(void);
asmlinkage void hi_ca_pm_sleep(void);

int locate_ca_pm_suspend(void)
{
    volatile int i = 0;
#ifndef HI_ADVCA_FUNCTION_RELEASE
    void __iomem *uart0_virtbase;
	uart0_virtbase = (void __iomem *)IO_ADDRESS(UART_PRINT_OUT);
    writel(0x68, uart0_virtbase);i = 0;while(i++ < 0x1fff); //output message to UART1:a
#endif
    hi_ca_pm_sleep();
}

//Below varialble define in hi_ca_pm.S
extern char _ca_pm_code_begin[];
extern char _ca_pm_code_end[];
extern unsigned int _ddr_wakeup_check_code_begin;
extern unsigned int _ddr_wakeup_check_code_end;
extern unsigned int hi_sram_virtbase;


int CA_PM_FUN(void)
{
	char *src_ptr = NULL;
	unsigned int length = 0;
    
	//transfer ddr_wakeup_check.bin to buffer.
	src_ptr = _ca_pm_code_begin;
	length  = _ca_pm_code_end - src_ptr;
	
	/*for Advca to calc the ddr hash value*/
	hi_sram_virtbase = (unsigned int)ioremap_nocache(SRAM_BASE_ADDRESS, length);
	//allocate a ddr memory for the code.
	_ddr_wakeup_check_code_begin = (unsigned int)kzalloc(length, GFP_DMA | GFP_KERNEL);
	/*
	 * Because _ddr_wakeup_check_code_begin is saved in .text of hi_pm_sleep.S, the kmemleak,
	 * which not check the .text, reports a mem leak here ,
	 * so we suppress kmemleak messages.
	 */
	kmemleak_not_leak((void *)_ddr_wakeup_check_code_begin);
	
	memcpy((void*)_ddr_wakeup_check_code_begin, src_ptr, length);
	_ddr_wakeup_check_code_end = _ddr_wakeup_check_code_begin + length;

	return 0;
}

#endif

#ifdef RUNTIME_CHECK_ENABLE
extern void Config_LPC_Setting(void);
#endif
int ADVCA_PM_Resume(PM_BASEDEV_S *pdev)
{
	HI_DRV_ADVCA_Resume();
#ifdef RUNTIME_CHECK_ENABLE
	Config_LPC_Setting();
#endif
    HI_PRINT("ADVCA resume OK\n");
    return HI_SUCCESS;
}

int ADVCA_PM_Suspend(PM_BASEDEV_S *pdev, pm_message_t state)
{
	HI_DRV_ADVCA_Suspend();
    HI_PRINT("ADVCA suspend OK\n");

#ifdef DDR_WAKE_UP_CHECK_ENABLE
    ca_pm_suspend = locate_ca_pm_suspend;
#endif    
    return HI_SUCCESS;
}

static long DRV_ADVCA_Ioctl(struct file *ffile, unsigned int cmd, unsigned long arg)
{
    long ret;

    ret = (long)HI_DRV_UserCopy(ffile->f_path.dentry->d_inode, ffile, cmd, arg, CA_Ioctl);

    return ret;
}

static struct file_operations ca_fpops =
{
    .owner = THIS_MODULE,
    .open = DRV_ADVCA_Open,
    .release = DRV_ADVCA_Release,
	.unlocked_ioctl = DRV_ADVCA_Ioctl,
};

static PM_BASEOPS_S ca_drvops =
{
    .probe        = NULL,
    .remove       = NULL,
    .shutdown     = NULL,
    .prepare      = NULL,
    .complete     = NULL,
    .suspend      = ADVCA_PM_Suspend,
    .suspend_late = NULL,
    .resume_early = NULL,
    .resume       = ADVCA_PM_Resume,
};

/*****************************************************************************
 Prototype    :
 Description  : CA模块 proc 函数
 Input        : None
 Output       : None
 Return Value : None
*****************************************************************************/
extern HI_S32 DRV_ADVCA_GetChipVersion(HI_CHIP_TYPE_E *penChipType, HI_CHIP_VERSION_E *penChipVersion);
/*****************************************************************************
 Prototype    :
 Description  : CA模块 注册函数
 Input        : None
 Output       : None
 Return Value : None
*****************************************************************************/
HI_S32 ADVCA_DRV_ModeInit(HI_VOID)
{
    HI_S32 ret = HI_SUCCESS;
    HI_U8 i = 0;
    mutex_init(&g_ca_mutex.ca_oplock);

    for (i=0; i< MUTEX_MAX_NUMBER; i++)
    {
        g_ca_mutex.ca_sema[i].isUsed = HI_FALSE;
    }

	ret = DRV_ADVCA_ModeInit_0();
	if(ret != HI_SUCCESS)
    {
		return HI_FAILURE;
	}

	ca_snprintf(caUmapDev.devfs_name, sizeof(caUmapDev.devfs_name), UMAP_DEVNAME_CA);
	caUmapDev.minor  = UMAP_MIN_MINOR_CA;
	caUmapDev.owner  = THIS_MODULE;
	caUmapDev.fops   = &ca_fpops;
	caUmapDev.drvops = &ca_drvops;
    if (HI_DRV_DEV_Register(&caUmapDev) < 0)
    {
        HI_FATAL_CA("register CA failed.\n");
		goto err0;
    }
#ifdef RUNTIME_CHECK_ENABLE
    ret = RuntimeModule_Init();
	if(ret != HI_SUCCESS)
    {
	    DRV_ADVCA_ModeExit_0();
		return HI_FAILURE;
	}
#endif
#ifdef DDR_WAKE_UP_CHECK_ENABLE
    CA_PM_FUN();
#endif
#ifdef MODULE
    HI_PRINT("Load hi_advca.ko success.\t(%s)\n", VERSION_STRING);
#endif

    return HI_SUCCESS;

err0:

	DRV_ADVCA_ModeExit_0();
	return HI_FAILURE;
}

HI_VOID ADVCA_DRV_ModeExit(HI_VOID)
{
    HI_DRV_DEV_UnRegister(&caUmapDev);

#ifdef RUNTIME_CHECK_ENABLE
    RuntimeModule_Exit();
#endif
    DRV_ADVCA_ModeExit_0();

#ifdef DDR_WAKE_UP_CHECK_ENABLE
    if (HI_NULL != hi_sram_virtbase)
    {
        iounmap((void*)hi_sram_virtbase);
    }
    
    if (HI_NULL != _ddr_wakeup_check_code_begin)
    {
        kfree(_ddr_wakeup_check_code_begin);
    }
#endif
    return;
}
#ifdef MODULE
module_init(ADVCA_DRV_ModeInit);
module_exit(ADVCA_DRV_ModeExit);
#endif

MODULE_LICENSE("GPL");
MODULE_DESCRIPTION("HISILICON");

