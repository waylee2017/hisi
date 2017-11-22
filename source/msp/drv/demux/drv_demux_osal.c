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

#ifdef __cplusplus
#if __cplusplus
extern "C"{
#endif
#endif /*cplusplus*/
#include "drv_demux_osal.h"
#include <linux/hrtimer.h>

#if 0
HI_VOID DMX_AcrtUsSleep(HI_U32 us)
{
    ktime_t expires;
    expires = ktime_add_ns(ktime_get(), us*1000);
    set_current_state(TASK_UNINTERRUPTIBLE);
    schedule_hrtimeout(&expires, HRTIMER_MODE_ABS);
}
#endif

#ifdef __cplusplus
#if __cplusplus
}
#endif
#endif /*cplusplus*/

