
/******************************************************************************
*
* Copyright (C) 2014 Hisilicon Technologies Co., Ltd.  All rights reserved.
*
* This program is confidential and proprietary to Hisilicon  Technologies Co., Ltd. (Hisilicon),
*  and may not be copied, reproduced, modified, disclosed to others, published or used, in
* whole or in part, without the express prior written permission of Hisilicon.
*
******************************************************************************
File Name     : optm_depend.h
Version       : Initial Draft
Author        : Hisilicon multimedia software group
Created       : 2009/1/16
Last Modified :
Description   :
Function List :
History       :
******************************************************************************/
#include "hi_debug.h"

#ifndef __OPTM_DEBUG_H__
#define __OPTM_DEBUG_H__

#ifdef HI_ADVCA_FUNCTION_RELEASE
#define DEBUG_PRINTK(fmt, args...)
#else
#define DEBUG_PRINTK(fmt,args...)  HI_PRINT(fmt,##args)
#endif


#define _OPTM_FUNC_FRC_ENABLE_ 1

#ifndef OPTM_VO_SELF_DEBUG
#define _OPTM_FUNC_SYNC_ENABLE_ 1
#endif

/* flag for VO-code transplant completeness. Before it is complete,
 * the calls of VO in DISP should be screened temporarily,
 * to make sure that DISP can be debuged in advance.
 */
#define OPTM_PILOT_VO_OK 1
#define OPTM_PILOT_GFX_OK 1

/* main switch for Debug */
#define _OPTM_DEBUG_ 1

/* enable of VIDEO MIXER */
#define  OPTM_VIDEO_MIXER_ENABLE 1


#ifdef _OPTM_DEBUG_

/* #define OPTM_DEBUG_DIE_LIST_VD1_PRINT_INFO 1 */
/* #define OPTM_DEBUG_VZME_FILTER_DISABLE 1 */

/* print overlapped debug information */
/* #define _OPTM_DEBUG_WBC0_ 1 */
/* #define _OPTM_DEBUG_WBC1_ 1 */

#ifdef OPTM_PLATFORM_PILOT_FPGA
#define _OPTM_DEBUG_DHD_FOR_FPGA_ 1
#endif

#define _OPTM_DEBUG_VO_VIRTUAL_ 1

/* print FRC debug information, including number of field and init-flag of FRC */
/* #define _OPTM_DEBUG_FRC_ 1 */

/* print DIE debug information, including flag for prohibition of DIE and init-flag of DIE */
/* #define _OPTM_DEBUG_DIE_ 1 */

/* print debug information for window settings, including dynamic setting of output window */
/* #define _OPTM_DEBUG_SETRECT_ 1 */


/* print overlapped debug information */
/* #define _OPTM_DEBUG_MIXER_ 1 */



/* print function of field sequence */
/* #define _OPTM_DEBUG_PRINT_FOD_ 1 */

/* function of BF DEBUG */
/* #define _OPTM_DEBUG_BF_ 1 */

/* print mask info */
/* #define _OPTM_DEBUG_MASK_LAYER_ 1 */



/* test the time of interrupt service program */
/* #define _OPTM_DEBUG_IRQ_TIME_ 1 */


/* test the frequency of error interrupt occurrence in registers' update */
/* #define _OPTM_DEBUG_REG_UP_ERR_ 1 */


/* decoder sends images to VO initiatively, for debug */
/* #define _OPTM_DEBUG_PUSH_YUVFRAME_ 1 */


/* function of logging */
/* #define _OPTM_DEBUG_WRITE_LOG_ 1 */


/* debug function for algorithm */
/* #define _OPTM_DEBUG_ALG_ 1 */


/* print function of field sequence */
/* #define _OPTM_DEBUG_PRINT_FOD_ 1 */


/* FRC print function */
/* #define _OPTM_DEBUG_PRINT_FRC_ 1 */

#define	    DEBUG_FRAMEINFO_VALID_BIT		    (1<<0)
#define	    DEBUG_FRAMEINFO_CIRCUM_BIT		    (1<<1)
#define	    DEBUG_FRAMEINFO_PROG_BIT		    (1<<2)
#define	    DEBUG_FRAMEINFO_TOPFIRST_BIT	    (1<<3)
#define	    DEBUG_FRAMEINFO_RWZB_BIT		    (1<<4)
#define	    DEBUG_FRAMEINFO_PRINTK_BIT		    (1<<5)
#define	    DEBUG_FRAME_DEBUG_BIT		        (1<<6)

#endif



/************************************************************************/
/* file: open/close/write                                               */
/************************************************************************/
struct file *vo_klib_fopen(const char *filename, int flags, int mode);
void vo_klib_fclose(struct file *filp);
int vo_klib_fread(char *buf, unsigned int len, struct file *filp);
int vo_klib_fwrite(char *buf, int len, struct file *filp);
unsigned int *vo_klib_mmap(unsigned int phyaddr, unsigned int len, unsigned int *virbaseadd, unsigned int *Ooffset);
unsigned int *vo_klib_unmap(unsigned int phyaddr, unsigned int offset);

HI_VOID vo_debug_init(void);
HI_VOID vo_debug_deinit(void);
HI_U32  VO_SetDbgOption ( HI_U32 opt, HI_U32* p_args );
HI_S32 VO_DebugCtrl(HI_U32 u32Para1, HI_U32 u32Para2);

HI_VOID vo_debug_frame(HI_U32 layer, HI_VOID *pFrame, HI_U32 VoDevMode);

extern int printk(const char *fmt, ...);

#endif /* __OPTM_DEBUG_H__ */

