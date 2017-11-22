#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <sys/time.h>
#include "hi_type.h"
#include "petimer.h"

HI_U32 MAX_REL_TM, MAX_ABS_TM;

petimer_t rel_tid[20000];
petimer_t abs_tid[20000];
typedef struct _Timer_Stru_
{
    HI_U32 TimerNo;
    petimer_t tid;
} Timer_S;

Timer_S *RelTimerArray;
Timer_S *AbsTimerArray;

HI_U32 RelCallBackTime = 0, RelAutoFreeBackTime = 0, RelAutoFreeStartTime = 0;
HI_U32 AbsCallBackTime = 0, AbsAutoFreeBackTime = 0, AbsAutoFreeStartTime = 0;

HI_VOID rel_timer_call_back(HI_VOID *arg)
{
    if( ((Timer_S *)arg)->TimerNo >= 2000)
    {
        //printf("Info: REL timer_call_back, tid = %d.\n", ((Timer_S *)arg)->TimerNo);
        RelAutoFreeBackTime ++;
    }
    RelCallBackTime ++;
    //printf("Info: REL timer_call_back, tid = %d.\n", ((Timer_S *)arg)->TimerNo);
    return;
}

HI_VOID abs_timer_call_back(HI_VOID *arg)
{
    if( ((Timer_S *)arg)->TimerNo >= 2000)
    {
        //printf("Info: ABS timer_call_back, tid = %d.\n", ((Timer_S *)arg)->TimerNo);
        AbsAutoFreeBackTime ++;
    }
    AbsCallBackTime ++;
    //printf("Info: ABS timer_call_back, tid = %d.\n", ((Timer_S *)arg)->TimerNo);
    return;
}

int main(int argc, char * argv[])
{
    pthread_t pid;
    HI_S32 i, CurRelTimer, CurAbsTimer, ret = 0;
    HI_U32 Err = 0;
    HI_VOID *sync = HI_NULL;
    struct timeval CurTime;
    struct tm CurAbsTime;

    if(argc != 2)
    {
        printf("use:petimer_demo count(count > 2000)\n");
        return -1;
    }

    MAX_REL_TM = atoi(argv[1]);
    MAX_ABS_TM = MAX_REL_TM;

    RelTimerArray = malloc(MAX_REL_TM * sizeof(Timer_S));
    AbsTimerArray = malloc(MAX_ABS_TM * sizeof(Timer_S));

    /* mode init */
    petimer_start(&pid, NULL, &sync);

    while(1)
    {
        // create rel timer
        CurRelTimer = MAX_REL_TM;
        for(i=0; i<MAX_REL_TM; i++)
        {
            if(i<1000)
                rel_tid[i] = petimer_create_reltimer(rel_timer_call_back, 0);
            else if(i<2000)
                rel_tid[i] = petimer_create_reltimer(rel_timer_call_back, 1);
            else
                rel_tid[i] = petimer_create_reltimer(rel_timer_call_back, 2);

            if (!rel_tid[i])
            {
                printf("Info: petimer_create_reltimer error: i = %d.\n", i);
                CurRelTimer = i;
                break;
            }
            else
            {
                RelTimerArray[i].TimerNo = i;
                RelTimerArray[i].tid = rel_tid[i];

                if(i>=2000)
                    ret = petimer_start_reltimer(sync, rel_tid[i], 10, (HI_VOID *)(&(RelTimerArray[i])));
                else
                    ret = petimer_start_reltimer(sync, rel_tid[i], i*10, (HI_VOID *)(&(RelTimerArray[i])));
                if (ret)
                {
                    petimer_free_reltimer(sync, rel_tid[i]);
                    printf("Error: petimer_start_reltimer error, i = %d, ret = %d.\n", i, ret);
                    Err = 1;
                    break;
                }
            }
        }

        if(Err == 1)
            break;

        if(CurRelTimer >= 2000)
            RelAutoFreeStartTime += CurRelTimer - 2000;

        // create abs timer
        gettimeofday(&CurTime, NULL);
        memcpy( &CurAbsTime, gmtime( &(CurTime.tv_sec) ), sizeof(struct tm) );
        CurAbsTime.tm_sec += 1;
        if(CurAbsTime.tm_sec >= 60)
        {
            CurAbsTime.tm_sec -= 60;
            CurAbsTime.tm_min ++;
            if(CurAbsTime.tm_min >= 60)
            {
                CurAbsTime.tm_min -= 60;
                CurAbsTime.tm_hour ++;
                if(CurAbsTime.tm_hour >= 24);
                    CurAbsTime.tm_hour -= 24;
            }
        }

        CurAbsTimer = MAX_ABS_TM;
        for(i=0; i<MAX_ABS_TM; i++)
        {
            if(i<1000)
                abs_tid[i] = petimer_create_abstimer(abs_timer_call_back, 0);
            else if(i<2000)
                abs_tid[i] = petimer_create_abstimer(abs_timer_call_back, 1);
            else
                abs_tid[i] = petimer_create_abstimer(abs_timer_call_back, 2);

            if (!abs_tid[i])
            {
                printf("Info: petimer_create_abstimer error: i = %d.\n", i);
                CurAbsTimer = i;
                break;
            }
            else
            {
                AbsTimerArray[i].TimerNo = i;
                AbsTimerArray[i].tid = abs_tid[i];

                if(i>=2000)
                    ret = petimer_start_abstimer(sync, abs_tid[i], &CurAbsTime, (HI_VOID *)(&(AbsTimerArray[i])));
                else
                    ret = petimer_start_abstimer(sync, abs_tid[i], &CurAbsTime, (HI_VOID *)(&(AbsTimerArray[i])));
                if (ret)
                {
                    petimer_free_abstimer(sync, abs_tid[i]);
                    printf("Error: petimer_start_abstimer error, i = %d, ret = %d.\n", i, ret);
                    Err = 1;
                    break;
                }
            }
        }

        if(Err == 1)
            break;

        if(CurAbsTimer >= 2000)
            AbsAutoFreeStartTime += CurAbsTimer - 2000;

        usleep(1000000);
        while(RelAutoFreeStartTime > RelAutoFreeBackTime || AbsAutoFreeStartTime > AbsAutoFreeBackTime)
            usleep(10000);

        printf("Info: CurAutoFreeRelTimer = %d, RelAutoFreeCallBack = %d.\n", RelAutoFreeStartTime, RelAutoFreeBackTime);
        printf("Info: CurAutoFreeAbsTimer = %d, AbsAutoFreeCallBack = %d.\n", AbsAutoFreeStartTime, AbsAutoFreeBackTime);
        //printf("Info: REL Timer %d remains.\n", RelAutoFreeStartTime - RelAutoFreeBackTime);
        //printf("Info: ABS Timer %d remains.\n\n", AbsAutoFreeStartTime - AbsAutoFreeBackTime);

        // stop rel timer
        for(i=0; i<CurRelTimer; i++)
        {
            if(i<2000)
            {
                ret = petimer_stop_reltimer_safe(sync, rel_tid[i], NULL, NULL);
                if (ret)
                {
                    petimer_free_reltimer(sync, rel_tid[i]);
                    printf("Error: petimer_stop_reltimer_safe error, i = %d, ret = %d.\n", i, ret);
                    if(Err == 1)
                        break;
                }
                else
                {
                    ret = petimer_free_reltimer(sync, rel_tid[i]);
                    if (ret)
                    {
                        printf("Error: petimer_free_reltimer error, i = %d, ret = %d.\n", i, ret);
                        if(Err == 1)
                            break;
                    }
                }
            }
            else
                break;
        }

        if(Err == 1)
            break;

        // stop abs timer
        for(i=0; i<CurAbsTimer; i++)
        {
            if(i<2000)
            {
                ret = petimer_stop_abstimer_safe(sync, abs_tid[i], NULL, NULL);
                if (ret)
                {
                    petimer_free_abstimer(sync, abs_tid[i]);
                    printf("Error: petimer_stop_abstimer_safe error, i = %d, ret = %d.\n", i, ret);
                    if(Err == 1)
                        break;
                }
                else
                {
                    ret = petimer_free_abstimer(sync, abs_tid[i]);
                    if (ret)
                    {
                        printf("Error: petimer_free_abstimer error, i = %d, ret = %d.\n", i, ret);
                        if(Err == 1)
                            break;
                    }
                }
            }
            else
                break;
        }

        if(Err == 1)
            break;
    }

    return 0;
}
