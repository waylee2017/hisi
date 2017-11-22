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
#ifndef __DRV_MEM_IOCTL_H__
#define __DRV_MEM_IOCTL_H__

#include "hi_type.h"
#include "mpi_mmz.h"
#include "hi_debug.h"

#ifdef __cplusplus
extern "C"{
#endif /* End of #ifdef __cplusplus */

#ifndef __KERNEL_
struct hiMEM_LLI_S
{
    HI_MMZ_BUF_S  buf;
    struct hiMEM_LLI_S  *next;
};

#else
struct hiMEM_LLI_S
{
    HI_MMZ_BUF_S  buf;
    atomic_t    cnt;
    struct hiMEM_LLI_S  *next;
};
#endif

typedef struct hiMEM_LLI_S MEM_LLI_S;

#define MEM_IOCTL(fd...)   ioctl(fd)

#if 1
#define MEM_LOCK_DECLARE(p_mutex)                 \
        static pthread_mutex_t p_mutex = PTHREAD_MUTEX_INITIALIZER;

#define MEM_LOCK_DESTROY(p_mutex)                  \
        (void)pthread_mutex_destroy(p_mutex)

#define MEM_LOCK(p_mutex)                          \
        (void)pthread_mutex_lock(p_mutex)

#define MEM_UNLOCK(p_mutex)                        \
        (void)pthread_mutex_unlock(p_mutex)
#else
#define MEM_LOCK_DECLARE(p_mutex);

#define MEM_LOCK_DESTROY(p_mutex)

#define MEM_LOCK(p_mutex)

#define MEM_UNLOCK(p_mutex)

#endif

#define UMAPC_MEM_MALLOC                _IOWR(HI_ID_MEM,101, HI_MMZ_BUF_S)
#define UMAPC_MEM_FREE                  _IOW (HI_ID_MEM,102, HI_MMZ_BUF_S)

/*MPI error code*/
#define HI_ERR_MEM_OPEN_FAILED            HI_DEF_ERR(HI_ID_MEM, HI_LOG_LEVEL_ERROR, 41)
#define HI_ERR_MEM_CLOSE_FAILED           HI_DEF_ERR(HI_ID_MEM, HI_LOG_LEVEL_ERROR, 42)
#define HI_ERR_MEM_INVALID_PARA           HI_DEF_ERR(HI_ID_MEM, HI_LOG_LEVEL_ERROR, 43)
#define HI_ERR_MEM_MALLOC_FAILED          HI_DEF_ERR(HI_ID_MEM, HI_LOG_LEVEL_ERROR, 44)
#define HI_ERR_MEM_NOT_OPEN               HI_DEF_ERR(HI_ID_MEM, HI_LOG_LEVEL_ERROR, 45)

/*Define Debug Level For MEM                     */
#define HI_FATAL_MEM(fmt...) HI_FATAL_PRINT(HI_ID_MEM, fmt)

#define HI_ERR_MEM(fmt...) HI_ERR_PRINT(HI_ID_MEM, fmt)

#define HI_WARN_MEM(fmt...) HI_WARN_PRINT(HI_ID_MEM, fmt)

#define HI_INFO_MEM(fmt...) HI_INFO_PRINT(HI_ID_MEM, fmt)

#ifdef __cplusplus
}
#endif /* End of #ifdef __cplusplus */

#endif /* End of #ifndef __DRV_MEM_IOCTL_H__ */


