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
#ifndef __DRV_LOG_EXT_H__
#define __DRV_LOG_EXT_H__
#include <linux/kernel.h>
#include "hi_debug.h"
#include "drv_log_ioctl.h"

#ifdef __cplusplus
#if __cplusplus
extern "C"
{
#endif
#endif /* End of #ifdef __cplusplus */

#define DRV_LOG_DEVICE_NAME "sys/log"

#define MSG_FROM_USER   0
#define MSG_FROM_KERNEL 1


typedef struct hiLOG_BUFFER_INFO_S
{
    HI_U32 u32StartAddrPhy; /*start physic address*/	/*CNcomment:��������ʼ������ַ*/
    HI_U8 *pu8StartAddrVir; /*start virtual address*/	/*CNcomment:��������ʼ�����ַ*/
    HI_U32 u32BufSize;      /*buffer size*/				/*CNcomment:��������С*/
    HI_U32 u32WriteAddr;    /*write offset*/			/*CNcomment:д��ַƫ��*/
    HI_U32 u32ReadAddr;     /*read offset*/				/*CNcomment:����ַƫ��*/
    HI_U32 u32ResetFlag;    /*reset count*/				/*CNcomment:��λ����*/
    HI_U32 u32WriteCount;   /*write count*/				/*CNcomment:д�����*/
    wait_queue_head_t wqNoData;    /*no wait queque*/	/*CNcomment:û�����ݵȴ�����*/
	struct semaphore semWrite;     /*write semaphore*/	/*CNcomment:дbuffer�ź���*/
}LOG_BUFFER_INFO_S;

#ifdef __cplusplus
#if __cplusplus
}
#endif
#endif /* End of #ifdef __cplusplus */

#endif /*__CMPI_LOG_H__*/
