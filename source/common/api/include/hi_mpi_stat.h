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
/** @defgroup USR_MODE In user mode 
    @brief The following interfaces should be only called in user mode. */

/** @{ */

/** @defgroup H_MPI_MEM Memory operation
    @brief Memory operation interfaces for other CBB in user mode */
    
/** @defgroup H_MPI_STAT Stat opertation 
    @brief Simple stat operation interfaces in user mode */

/** @} */



#ifndef __HI_MPI_STAT_H__
#define __HI_MPI_STAT_H__

#ifdef __cplusplus
extern "C"{
#endif

/** @addtogroup H_MPI_STAT */
/** @{ */
typedef enum tagSTAT_EVENT
{
    STAT_EVENT_KEYIN,
    STAT_EVENT_KEYOUT,
    STAT_EVENT_ASTOP,
    STAT_EVENT_VSTOP,
    STAT_EVENT_CONNECT,
    STAT_EVENT_LOCKED,
    STAT_EVENT_ASTART,
    STAT_EVENT_VSTART,
    STAT_EVENT_CWSET,
    STAT_EVENT_STREAMIN,
    STAT_EVENT_ISTREAMGET,
    STAT_EVENT_IFRAMEOUT,
    STAT_EVENT_PRESYNC,
    STAT_EVENT_BUFREADY,
    STAT_EVENT_FRAMEDISP,
    STAT_EVENT_IFRAMEINTER,
    STAT_EVENT_BUTT
    
}STAT_EVENT_E;

typedef char THREAD_NAME[64];

/* for userspace stat */
typedef struct
{
    HI_BOOL bUsed;
    HI_U32 min_time;    // us
    HI_U32 max_time;    // us
    HI_U32 avg_time;    // us

    THREAD_NAME name;
}STAT_USERSPACE_S;



typedef struct
{
    HI_U32 stat_thread_phyaddr;
    STAT_USERSPACE_S * stat_thread_uvirtaddr;

    HI_U32 counter;
    struct timeval tv_last;
    HI_U64 time_total;    // us
}*HI_STAT_HANDLE, HI_STAT_HANDLE_S;

//typedef HI_U32 HI_STAT_HANDLE;
#define HI_STAT_INVALID_HANDLE (-1)

extern HI_S32 HI_MPI_STAT_Init(HI_VOID);
extern HI_S32 HI_MPI_STAT_DeInit(HI_VOID);

extern HI_S32 HI_MPI_STAT_ThreadReset(HI_STAT_HANDLE handle);
extern HI_S32 HI_MPI_STAT_ThreadResetAll(HI_VOID);

extern HI_S32 HI_MPI_STAT_ThreadRegister(char * name, HI_STAT_HANDLE * pHandle);
extern HI_S32 HI_MPI_STAT_ThreadUnregister(HI_STAT_HANDLE * pHandle);

extern HI_S32 HI_MPI_STAT_ThreadProbe(HI_STAT_HANDLE handle);

extern HI_S32 HI_MPI_STAT_Event(STAT_EVENT_E enEvent, HI_U32 Value);
extern HI_U32 HI_MPI_STAT_GetTick(HI_VOID);

/** @} */

#ifdef __cplusplus
}
#endif


#endif /* __HI_MPI_STAT_H__ */

