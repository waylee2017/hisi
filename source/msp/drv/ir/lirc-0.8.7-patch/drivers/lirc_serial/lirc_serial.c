/*      $Id: lirc_hi.c,v 5.90 2009/03/04  lirc Exp $      */

/****************************************************************************
 ** lirc_hi.c ***********************************************************
 ****************************************************************************
 *
 * lirc_hi - Device driver that records pulse- and pause-lengths
 *	       (space-lengths) between DDCD event on a serial port.
 *
 * Copyright (C) 1996,97 Ralph Metzler <rjkm@thp.uni-koeln.de>
 * Copyright (C) 1998 Trent Piepho <xyzzy@u.washington.edu>
 * Copyright (C) 1998 Ben Pfaff <blp@gnu.org>
 * Copyright (C) 1999 Christoph Bartelmus <lirc@bartelmus.de>
 * Copyright (C) 2007 Andrei Tanas <andrei@tanas.ca> (suspend/resume support)
 *  This program is free software; you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation; either version 2 of the License, or
 *  (at your option) any later version.
 *
 *  This program is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License
 *  along with this program; if not, write to the Free Software
 *  Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 *
 */

/* Steve's changes to improve transmission fidelity:
     - for systems with the rdtsc instruction and the clock counter, a
       send_pule that times the pulses directly using the counter.
       This means that the LIRC_SERIAL_TRANSMITTER_LATENCY fudge is
       not needed. Measurement shows very stable waveform, even where
       PCI activity slows the access to the UART, which trips up other
       versions.
     - For other system, non-integer-microsecond pulse/space lengths,
       done using fixed point binary. So, much more accurate carrier
       frequency.
     - fine tuned transmitter latency, taking advantage of fractional
       microseconds in previous change
     - Fixed bug in the way transmitter latency was accounted for by
       tuning the pulse lengths down - the send_pulse routine ignored
       this overhead as it timed the overall pulse length - so the
       pulse frequency was right but overall pulse length was too
       long. Fixed by accounting for latency on each pulse/space
       iteration.

   Steve Davies <steve@daviesfam.org>  July 2001
*/
/* History:
*      04-03-2009 Start of Hi3560E CPU support
*
*/

#include <config.h>
#include <linux/version.h>
#if LINUX_VERSION_CODE < KERNEL_VERSION(2, 6, 33)
#include <linux/autoconf.h>
#endif
#include <linux/module.h>
#include <linux/errno.h>
#include <linux/signal.h>
#include <linux/sched.h>
#include <linux/fs.h>
#include <linux/interrupt.h>
#include <linux/ioport.h>
#include <linux/kernel.h>
#include <linux/major.h>
#include <linux/serial_reg.h>
#include <linux/time.h>
#include <linux/string.h>
#include <linux/types.h>
#include <linux/wait.h>
#include <linux/mm.h>
#include <linux/delay.h>
#include <linux/poll.h>
#include <asm/system.h>
#include <asm/uaccess.h>
#include <asm/io.h>
#include <linux/fcntl.h>
#include <linux/moduleparam.h>
#include <asm/delay.h>
#include <mach/hardware.h>
#include <linux/vmalloc.h>


#include <linux/init.h>
#include <linux/platform_device.h>
#include <linux/workqueue.h>
#include <linux/proc_fs.h>
#include <linux/ioctl.h>
#include <linux/seq_file.h>
#include <linux/ptrace.h>
#include <linux/log2.h>
#include <linux/mii.h>
#include <linux/syscalls.h> 
#include <linux/slab.h>
#include <asm/byteorder.h>
#include <asm/irq.h>
#include <asm/memory.h>
#include <linux/input.h>


/*begin for test  Terry**************************/
#include <linux/netfilter_ipv4.h>

#define IMP1_OPS_BASIC  128
#define IMP1_SET        IMP1_OPS_BASIC
#define IMP1_GET        IMP1_OPS_BASIC
#define IMP1_MAX        IMP1_OPS_BASIC+1

#define KMSG      "a message from kernel\n"
#define KMSG_LEN   sizeof("a message from kernel\n")

/*end for test****************************/

/**********For event input*****************/

typedef struct {
	struct input_dev *input;
	int irq;
	unsigned int addr; 
	char *name;
}hi_event_dev;

static hi_event_dev *g_irkeypad_edev  = NULL;

/**************************/

/******************************added by wkf45780 for ir module suspend and resume start **/
static unsigned int IR_CFG_Val;
static unsigned int IR_LEADS_Val;
static unsigned int IR_LEADE_Val;
static unsigned int IR_SLEADE_Val;
static unsigned int IR_B0_Val;
static unsigned int IR_B1_Val;
static unsigned int IR_DATAH_Val;
static unsigned int IR_DATAL_Val;
/******************************added by wkf45780 for ir module suspend and resume end **/


#include "drivers/lirc.h"
#include "drivers/kcompat.h"
#include "drivers/lirc_dev/lirc_dev.h"

//#define USE_TIMER  1
#define USE_TIMER  0//Terry
#define HILIRC_DEVICE_NAME "lirc_serial"
/*ir freq is 27Mhz*/
#define HIIR_DEFAULT_FREQ 24
#define HIIR_MAX_FREQ 128
/* irq */
#define HILIRC_DEVICE_IRQ_NO (55 + 32)
/* define ir IO */
#define IR_REG_BASE  IO_ADDRESS(0x101e1000)
#define IR_ENABLE   (IR_REG_BASE + 0x00)
#define IR_CONFIG   (IR_REG_BASE + 0x04)
#define CNT_LEADS   (IR_REG_BASE + 0x08)
#define CNT_LEADE   (IR_REG_BASE + 0x0c)
#define CNT_SLEADE  (IR_REG_BASE + 0x10)
#define CNT0_B      (IR_REG_BASE + 0x14)
#define CNT1_B      (IR_REG_BASE + 0x18)
#define IR_BUSY     (IR_REG_BASE + 0x1c)
#define IR_DATAH    (IR_REG_BASE + 0x20)
#define IR_DATAL    (IR_REG_BASE + 0x24)
#define IR_INTM     (IR_REG_BASE + 0x28)
#define IR_INTS     (IR_REG_BASE + 0x2c)
#define IR_INTC     (IR_REG_BASE + 0x30)
#define IR_START    (IR_REG_BASE + 0x34)
/* interrupt mask */
#define INTMS_SYMBRCV  ((1L << 24)|(1L << 8))
#define INTMS_TIMEOUT  ((1L << 25)|(1L << 9))
#define INTMS_OVERFLOW  ((1L << 26)|(1L << 10))
#define INT_CLR_OVERFLOW      ((1L << 18))
#define INT_CLR_TIMEOUT       ((1L << 17))
#define INT_CLR_RCV           ((1L << 16))
#define INT_CLR_RCVTIMEOUT    ((1L << 16)|(1L << 17))


/*ir parameter*/
#define RBUF_LEN 256
#define DEFAULT_SYMB_LEN 0x3E80
#define HI_MAX_SYMB_LEN 0xFFFF

#define DEFAULT_INT_LEVEL 1 //[1,16]
#define DEFAULT_SYMB_BUF_LEN 2000
#define HI_IR_MAX_BUF 256
#define DEFAULT_BUF_LEN 256//Terry 128
#define DEFAULT_DELAYTIME 200
#define DEFAULT_SYMBOL_FORMAT 0

/*init module parameters*/
static int hi_symbol_width= DEFAULT_SYMB_LEN;
module_param_named(symbol_width, hi_symbol_width, int, S_IRUGO);

static int hi_symbol_format = DEFAULT_SYMBOL_FORMAT;
module_param_named(symbol_format, hi_symbol_format, int, S_IRUGO);

static int hi_int_level = DEFAULT_INT_LEVEL;
module_param_named(int_level, hi_int_level, int, S_IRUGO);

static int hi_frequence= HIIR_DEFAULT_FREQ;
module_param_named(freq, hi_frequence, int, S_IRUGO);

static int hi_buf_len = DEFAULT_BUF_LEN;
module_param_named(buf_len, hi_buf_len, int, S_IRUGO);

/* device parameter */
typedef struct
{
	unsigned  int symbol_width;
	unsigned  int symbol_format;
	unsigned  int int_level;
	unsigned  int frequence;
}hilirc_dev_param;

typedef struct
{
    hilirc_dev_param dev_parm;
    unsigned int head;
    unsigned int tail;
    lirc_t buf[HI_IR_MAX_BUF + 1];
    unsigned int buf_len;
    wait_queue_head_t irkey_wait;
}hiir_dev_struct;
static hiir_dev_struct hiir_dev;

#define BUF_HEAD hiir_dev.buf[hiir_dev.head]
#define BUF_TAIL hiir_dev.buf[hiir_dev.tail]
#define BUF_LAST hiir_dev.buf[(hiir_dev.head == 0)? (hiir_dev.buf_len - 1): (hiir_dev.head - 1)]
#define INC_BUF(x,len) ((++(x))%(len))
//#define BUF_FULL(x,len) ((((((x).head+len))%((x).buf_len))==((x).tail))?1:0)

/* in order to simulate the first long space as original 
   lirc_serial got on pc, use this in int_handler*/
static lirc_t static_delay_buf =(0xffff * 10);

/* Ioctl definitions */
#define IR_IOC_SET_SYMB_WIDTH    0x01
#define IR_IOC_SET_FORMAT            0x02
#define IR_IOC_SET_INT_LEVEL        0x03
#define IR_IOC_SET_FREQ                 0x04
#define IR_IOC_ENDBG                 0x31
#define IR_IOC_DISDBG                0x32

/* define macro */
#define WRITE_REG(Addr, Value) ((*(volatile unsigned int *)(Addr)) = (Value))
#define READ_REG(Addr)         (*(volatile unsigned int *)(Addr))

/* Communication with user-space */
static int lirc_open(struct inode *inode, struct file *file);
static int lirc_close(struct inode *inode, struct file *file);
static unsigned int lirc_poll(struct file *file, poll_table *wait);
static ssize_t lirc_read(struct file *file, char *buf, size_t count, loff_t *ppos);
#if LINUX_VERSION_CODE < KERNEL_VERSION(2, 6, 35)
static int lirc_ioctl(struct inode *node, struct file *filep, unsigned int cmd,
		unsigned long arg);
#else
static long lirc_ioctl(struct file *filep, unsigned int cmd, unsigned long arg);
#endif
int init_module(void);
void cleanup_module(void);

static DEFINE_SPINLOCK(dev_lock);
#if USE_TIMER
struct timer_list check_irq_timer;
static void ir_check_irq_handler(unsigned long data);
#else
static int ir_check_irq_handler(int irq, void *dev_id, struct pt_regs *regs);
#endif

static int hiir_config(void)
{
	unsigned int value = 0;

	/* init hiir_dev */
	if(((hi_symbol_width <= 0)||(hi_symbol_width > DEFAULT_SYMB_LEN))
		||((hi_symbol_format != 0)&&(hi_symbol_format != 1))
		||((hi_int_level <= 0)||(hi_int_level > DEFAULT_INT_LEVEL))
		||((hi_frequence <= 0)||(hi_frequence > HIIR_MAX_FREQ))
		||((hi_buf_len <= 0)||(hi_buf_len > HI_IR_MAX_BUF))){
		printk("module param beyond bound, config fail\n");
		return -1;
	}
	hiir_dev.dev_parm.symbol_width = hi_symbol_width;
	hiir_dev.dev_parm.symbol_format = hi_symbol_format;
	hiir_dev.dev_parm.int_level = hi_int_level;
	hiir_dev.dev_parm.frequence = hi_frequence;
	hiir_dev.buf_len = hi_buf_len;
	hiir_dev.head = 0;
	hiir_dev.tail = 0;

	WRITE_REG(IR_ENABLE, 0x01);
	while(READ_REG(IR_BUSY)){
	    printk("IR_BUSY. Wait...\n");
	}

	value = (hiir_dev.dev_parm.symbol_width << 16);
	value |= (hiir_dev.dev_parm.symbol_format << 14);
	value |= (hiir_dev.dev_parm.int_level - 1) << 8;
	value |= 1 << 7;
	value |= (hiir_dev.dev_parm.frequence - 1);
	WRITE_REG(IR_CONFIG, value);
	WRITE_REG(IR_INTM, 0x00);
	WRITE_REG(IR_START, 0x01);  /* write arbitrary value to start  */

	return 0;
}

static void hiir_reset(void)
{
	WRITE_REG(IR_INTM, 0x7000f);
	hiir_dev.head = 0;
	hiir_dev.tail = 0;
    WRITE_REG(IR_INTM, 0x00);
    return;
}

#if USE_TIMER
static void ir_check_irq_handler(unsigned long data)
{
	int i, value;
	unsigned int symb_num, symb_val, irq_sr;

    /*check irq and read data*/
    irq_sr = READ_REG(IR_INTS);
    if(irq_sr & INTMS_OVERFLOW){
	    /*we must read IR_DATAL first, then we can clean up IR_INTS availably
	     *since logic would not clear fifo when overflow, drv do the job*/
	    symb_num = READ_REG(IR_DATAH);
		for(i = 0; i<symb_num; i++){
			READ_REG(IR_DATAL);
		}

	    WRITE_REG(IR_INTC, INT_CLR_OVERFLOW);
	    printk("overflow int, int level=%d\n",hiir_dev.dev_parm.int_level);

	    /*auto adapt int_level*/
		if((hiir_dev.dev_parm.int_level > 1) &&
			(hiir_dev.dev_parm.int_level <= DEFAULT_INT_LEVEL)){
			value = READ_REG(IR_CONFIG);
			value |= (--(hiir_dev.dev_parm.int_level) - 1) << 8;//logic scope is [0,15]
			WRITE_REG(IR_CONFIG, value);
		}
		else{
			hiir_dev.dev_parm.int_level = 1;
			value = READ_REG(IR_CONFIG);
			value |= (--(hiir_dev.dev_parm.int_level)) << 8;
			WRITE_REG(IR_CONFIG, value);
			printk("int level is the less value!\n");
		}
	}
	else {
		symb_num = READ_REG(IR_DATAH);
		printk("symb_num =%d\n",symb_num);
		for(i = 0; i<symb_num; i++){
			symb_val = READ_REG(IR_DATAL);
			BUF_HEAD = static_delay_buf;
			hiir_dev.head = INC_BUF(hiir_dev.head, hiir_dev.buf_len);
			BUF_HEAD = ((symb_val & 0xffff) *10)| 0x01000000;
			hiir_dev.head = INC_BUF(hiir_dev.head, hiir_dev.buf_len);
			static_delay_buf = ((symb_val>>16) & 0xffff)*10;
		}
		if(irq_sr == INTMS_SYMBRCV)
			WRITE_REG(IR_INTC, INT_CLR_RCV);
		else if(irq_sr == INTMS_TIMEOUT)
			WRITE_REG(IR_INTC, INT_CLR_TIMEOUT);
		else
			WRITE_REG(IR_INTC, INT_CLR_RCVTIMEOUT);

		wake_up_interruptible(&(hiir_dev.irkey_wait));
	}

    check_irq_timer.expires=jiffies + msecs_to_jiffies(1);
	add_timer(&check_irq_timer);
}
#else
int ir_check_irq_handler(int irq, void *dev_id, struct pt_regs *regs)
{
	int i, value;
	unsigned int symb_num, symb_val, irq_sr;
	unsigned int data_l,data_h;

    /*check irq and read data*/
    irq_sr = READ_REG(IR_INTS);
    if(irq_sr & INTMS_OVERFLOW)
    {
	    /*we must read IR_DATAL first, then we can clean up IR_INTS availably
	     *since logic would not clear fifo when overflow, drv do the job*/
	    symb_num = READ_REG(IR_DATAH);
		for(i = 0; i<symb_num; i++)
		{
			READ_REG(IR_DATAL);
		}

	    WRITE_REG(IR_INTC, INT_CLR_OVERFLOW);
	    printk("overflow int, int level=%d\n",hiir_dev.dev_parm.int_level);
	}
	else if (irq_sr & INTMS_SYMBRCV || irq_sr & INTMS_TIMEOUT)
	{
		symb_num = READ_REG(IR_DATAH);
		for(i = 0; i<symb_num; i++)
		{
			symb_val = READ_REG(IR_DATAL);
			data_l = ((symb_val & 0xffff) *10) | (PULSE_BIT);
            //data_h = (((symb_val>>16) & 0xffff) == 0xffff)? 0xffff : (((symb_val>>16) & 0xffff) * 10);
            data_h = (((symb_val>>16) & 0xffff) == 0xffff)? (0xffff * 10) : (((symb_val>>16) & 0xffff) * 10);//Terry
            
	    if ((hiir_dev.head + 1) % hiir_dev.buf_len == hiir_dev.tail)
            {
                printk("ir symbol buffer overflow!\n");
                break;
            }
            else
            {
				BUF_HEAD = static_delay_buf;
				hiir_dev.head = INC_BUF(hiir_dev.head, hiir_dev.buf_len);
				BUF_HEAD = data_l;
				hiir_dev.head = INC_BUF(hiir_dev.head, hiir_dev.buf_len);
				static_delay_buf = data_h;
				wake_up_interruptible(&(hiir_dev.irkey_wait));
			}
		}
		
		if(irq_sr & INTMS_SYMBRCV)
		{
			WRITE_REG(IR_INTC, INT_CLR_RCV);
		}
		else if(irq_sr & INTMS_TIMEOUT)
		{
			WRITE_REG(IR_INTC, INT_CLR_TIMEOUT);
		}
	}

	return IRQ_HANDLED;
}
#endif

#if LINUX_VERSION_CODE < KERNEL_VERSION(2, 6, 35)
static int lirc_ioctl(struct inode *node, struct file *filep, unsigned int cmd,
		unsigned long arg)
#else
static long lirc_ioctl(struct file *filep, unsigned int cmd, unsigned long arg)
#endif
{
    unsigned int retval = 0;
    unsigned long value = 0;

    if (cmd == LIRC_GET_FEATURES)
		value = LIRC_CAN_SEND_PULSE | LIRC_CAN_REC_MODE2;

    switch(cmd){
		case LIRC_GET_FEATURES:
			retval = put_user(value, (unsigned long *) arg);
			return retval;
		case LIRC_SET_SEND_MODE:
		case LIRC_SET_REC_MODE:
			retval = get_user(value, (unsigned long *) arg);
			return retval;
        case LIRC_RESET:
        	hiir_reset();
		    break;		
		default:
		    printk(KERN_DEBUG "Error: Inappropriate ioctl for device. cmd=%d\n", cmd);
		    return -ENOTTY;
    }

    return 0;
}

static ssize_t lirc_read(struct file *file, char __user *buf, size_t count, loff_t *ppos)
{
	lirc_t irkey_to_user;
	int n = 0;
	int retval = 0;

	if (count % sizeof(lirc_t))
		return -EINVAL;

	while (n < count) {
		if ((hiir_dev.head)!=(hiir_dev.tail)) {
			irkey_to_user = BUF_TAIL;
			hiir_dev.tail = INC_BUF(hiir_dev.tail, hiir_dev.buf_len);
			if(copy_to_user((buf + n), &irkey_to_user, sizeof(irkey_to_user))){
				retval = -EFAULT;
				break;
			}
			n += sizeof(irkey_to_user);
		} 
		else {
			if (file->f_flags & O_NONBLOCK) {
				retval = -EAGAIN;
				break;
			}
			wait_event_interruptible(hiir_dev.irkey_wait,(hiir_dev.head != hiir_dev.tail));
		}
	}
	return (n ? n : retval);
}

static unsigned int lirc_poll(struct file *file, poll_table *wait)
{
	if ((hiir_dev.head)!=(hiir_dev.tail))
		return POLLIN | POLLRDNORM;
	poll_wait(file, &(hiir_dev.irkey_wait), wait);
	if ((hiir_dev.head)!=(hiir_dev.tail))
		return POLLIN | POLLRDNORM;
	return 0;
}

static int IR_Event_Probe(struct platform_device *pdev)
{
	hi_event_dev *edev;
	int i;
	int ret;

	/* 1. alloc input device resource*/
	edev = kzalloc(sizeof(hi_event_dev), GFP_KERNEL);
	if(!edev) {
		printk("events edev or hi_keypad_ input_dev alloc fail!\n");
		goto fail;
	}

	//edev->irq = IR_INT_NO; 
	edev->name = "HI_LIRC";
	edev->input = input_allocate_device();
	//edev->addr = IR_REG_BASE;   


	/* 2. indicate that we generate key events */
	set_bit(EV_KEY, edev->input->evbit);
	set_bit(EV_REL, edev->input->evbit);

	for(i=1; i<= 0x1ff; i++) {
		set_bit(i, edev->input->keybit);
	}

	set_bit(EV_SYN, edev->input->relbit);
	set_bit(EV_KEY, edev->input->relbit);

	/* 3. set input date and register device*/
	platform_set_drvdata(pdev, edev);

	edev->input->name = edev->name; 
	edev->input->id.bustype = BUS_HOST;
	edev->input->id.vendor = 0x0001;
	edev->input->id.product = 0x0001;
	edev->input->id.version = 0x0100;

	if(input_register_device(edev->input)) {
		printk("input_register_device fail!\n");
		goto fail;
	}
	/* 4. install edev */
	printk("irkeypad_deve_probe3333\n");
	g_irkeypad_edev = edev;


	//ret = hiir_config();
	//if(ret){
	//	return ret;
	//}
	
	return 0;
	fail:
	input_free_device(edev->input);
	kfree(edev);
	return -EINVAL;
}



static int lirc_open(struct inode *inode, struct file *file)
{
	int ret = 0;

	spin_lock(&dev_lock);
	if (MOD_IN_USE) {
		spin_unlock(&dev_lock);
		return -EBUSY;
	}
	MOD_INC_USE_COUNT;
	spin_unlock(&dev_lock);

	ret = hiir_config();
	if(ret){
		return ret;
	}
	init_waitqueue_head(&hiir_dev.irkey_wait);
#if USE_TIMER
	init_timer(&check_irq_timer);	
    check_irq_timer.function=&ir_check_irq_handler;
    check_irq_timer.expires=jiffies + msecs_to_jiffies(1);
    add_timer(&check_irq_timer);
#else
	ret = request_irq(HILIRC_DEVICE_IRQ_NO, (irq_handler_t)ir_check_irq_handler, IRQF_DISABLED, "hi_lirc", 0);
	if (ret != 0)
    {
        printk("register IR INT failed 0x%x.\n", ret);
    }
#endif
	return ret;
}

static int lirc_close(struct inode *inode, struct file *file)
{
	spin_lock(&dev_lock);
	MOD_DEC_USE_COUNT;
	spin_unlock(&dev_lock);
#if USE_TIMER
	del_timer(&check_irq_timer);
#else
	free_irq(HILIRC_DEVICE_IRQ_NO, 0);
#endif
	WRITE_REG(IR_ENABLE, 0x00);
	
	return 0;
}

static struct file_operations lirc_fops = {
	.owner      = THIS_MODULE,
	.read	    = lirc_read,
	.poll		= lirc_poll,
#if LINUX_VERSION_CODE < KERNEL_VERSION(2, 6, 35)
	.ioctl		= lirc_ioctl,
#else
	.unlocked_ioctl	= lirc_ioctl,
#endif
	.open		= lirc_open,
	.release	= lirc_close,
};

static struct lirc_driver plugin = {
	.name		    = HILIRC_DEVICE_NAME,
	.minor		    = -1,
	.code_length	= 1,
	.sample_rate	= 0,
	.data		    = NULL,
	.add_to_buf	    = NULL,
	.get_queue	    = NULL,
	.set_use_inc	= NULL,
	.set_use_dec	= NULL,
	.fops		    = &lirc_fops,
	.dev			= NULL,
	.owner		    = THIS_MODULE,
};

/*begin test Terry*****************/
static int data_to_kernel(struct sock *sk, int cmd, void *user,
			  unsigned int len)

{


hi_event_dev *edev = g_irkeypad_edev; 
  switch(cmd)
    {
    case IMP1_SET:
      {
  /*      char umsg[64];
	memset(umsg, 0, sizeof(char)*64);
	copy_from_user(umsg, user, sizeof(char)*64);
	printk("umsg: %s", umsg);
   */
	      unsigned int  key_val[2];
	      memset(key_val,0,sizeof(unsigned int)*2);
	      copy_from_user(key_val,user,sizeof(unsigned int)*2);                                                           
//	      printk("---Terry,Terry-key_val=%d,status=0x%x\n",key_val[0],key_val[1]);  
	      input_event(edev->input, EV_KEY, key_val[0], ( key_val[1] & 0x01));		
	      input_sync(edev->input);
	      
		
      }
      break;
    }
  return 0;
}

static int data_from_kernel(struct sock *sk, int cmd, void *user, int *len)
{
  switch(cmd)
    {
    case IMP1_GET:
      {
        copy_to_user(user, KMSG, KMSG_LEN);
      }
      break;
    }
  return 0;
}

static struct nf_sockopt_ops imp1_sockops =
{
  .pf = PF_INET,
  .set_optmin = IMP1_SET,
  .set_optmax = IMP1_MAX,
  .set = data_to_kernel,
  .get_optmin = IMP1_GET,
  .get_optmax = IMP1_MAX,
  .get = data_from_kernel,
};

/*end test *************************/

/******for IR suspend and resume**************/


static int IR_Suspend(void)
{
	IR_CFG_Val=READ_REG(IR_CONFIG);
	IR_LEADS_Val=READ_REG(CNT_LEADS);
	IR_LEADE_Val=READ_REG(CNT_LEADE);
	IR_SLEADE_Val=READ_REG(CNT_SLEADE);
	IR_B0_Val=READ_REG(CNT0_B);
	IR_B1_Val=READ_REG(CNT1_B);
	IR_DATAH_Val=READ_REG(IR_DATAH);
	IR_DATAL_Val=READ_REG(IR_DATAL);
	return 0;
}


static int IR_Resume(void)
{
	hi_event_dev *edev = g_irkeypad_edev;
	WRITE_REG(IR_ENABLE,0x1); 
	WRITE_REG(IR_CONFIG,IR_CFG_Val); 
	WRITE_REG(CNT_LEADS,IR_LEADS_Val); 
	WRITE_REG(CNT_LEADE,IR_LEADE_Val); 
	WRITE_REG(CNT_SLEADE,IR_SLEADE_Val); 
	WRITE_REG(CNT0_B,IR_B0_Val); 
	WRITE_REG(CNT1_B,IR_B1_Val); 
	WRITE_REG(IR_DATAH,IR_DATAH_Val); 
	WRITE_REG(IR_DATAL,IR_DATAL_Val); 
	WRITE_REG(IR_INTM,0x6); 
	WRITE_REG(IR_INTC,0xf); 
	WRITE_REG(IR_START,0x0); 
	input_event(edev->input, EV_KEY, KEY_UNKNOWN, 0x01);
	input_event(edev->input, EV_KEY, KEY_UNKNOWN, 0x00);
	input_sync(edev->input);
	return 0;
}

static int IR_Close()
{
	WRITE_REG(IR_ENABLE, 0x0); 
	input_free_device(g_irkeypad_edev->input);
	kfree(g_irkeypad_edev);
	return 0;
}


static struct platform_driver irevent_driver = {
	.probe = IR_Event_Probe,
	.remove = IR_Close,
	.suspend =IR_Suspend,
	.resume = IR_Resume,
	.driver = {
		.name  = "Input_For_IR",
		.owner = THIS_MODULE,
	},
};
static void irevent_dev_release(struct device* dev){
}
static struct platform_device irevent_dev = {
	.name = "Input_For_IR",
	.id   = 0,
	.dev = {
		.platform_data  = NULL,
		.dma_mask = (u64*)~0,
		.coherent_dma_mask = (u64)~0,
		.release = irevent_dev_release,
	},
};


/********end for IR suspend and resume***********/



int init_module(void)
{


       
	/* disable ir */

	WRITE_REG(IR_ENABLE, 0x00);
	plugin.minor = lirc_register_driver(&plugin);
	if (plugin.minor < 0) {
		printk(KERN_ERR HILIRC_DEVICE_NAME ": init_chrdev() failed.\n");
		return -EIO;
	}

	printk("lirc_serial init ok\n");

		int retval;

	nf_register_sockopt(&imp1_sockops);//Terry
	
	retval = platform_device_register(&irevent_dev);
	if(retval) {
		return retval;
	}

	retval = platform_driver_register(&irevent_driver);
	if(retval) {
		goto fail2;
	}

	return retval;

	fail2:
	platform_device_unregister(&irevent_dev);
	return -1;
}

void cleanup_module(void)
{
       /*begin Terry**************/
        nf_unregister_sockopt(&imp1_sockops);
	platform_driver_unregister(&irevent_driver);
        platform_device_unregister(&irevent_dev);
	   	 /*end test***************/
		
	lirc_unregister_driver(plugin.minor);
	printk(KERN_INFO HILIRC_DEVICE_NAME ": Uninstalled.\n");
	
}

MODULE_LICENSE("GPL");
MODULE_DESCRIPTION("Hisilicon Infrared remoter(LIRC) Device Driver");
EXPORT_NO_SYMBOLS;

