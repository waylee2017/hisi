/**********************************************************************************

File Name   : mml_entry.c

Description : <Describe what the file is for>

COPYRIGHT (C) 2005 STMicroelectronics - HES System Competence Center (Singapore)

Date               Modification                                             Name
----               ------------                                             ----
12/22/2005        Created                                                  Louie
<$ModMark> (do not move/delete)
***********************************************************************************/

/* C++ support */
#ifdef __cplusplus
extern "C" {
#endif

/* Includes ----------------------------------------------------------------- */
#include "mm_common.h"

#define CRC_POLY                   0x04C14BD7

MBT_U32 MMF_Common_TimeMinus(MBT_U32 u32EndTime,MBT_U32 u32StartTime)
{
    MBT_U32 u32Ret = 0;
    if(u32EndTime < u32StartTime)
    {
        if(u32StartTime - u32EndTime > 0x0fffffff)
        {
            u32Ret = 0xffffffff - u32StartTime + u32EndTime;
        }
        else
        {
            u32Ret = 0;
        }
    }
    else
    {
        u32Ret = u32EndTime - u32StartTime;
    }

    return u32Ret;    
}

MBT_U32 MMF_Common_TimePlus(MBT_U32 u32BaseTime,MBT_U32 u32OffsetTime)
{
    return  ( u32BaseTime + u32OffsetTime);
}

MBT_U32 MMF_Common_CRC(MBT_U32* pdata, MBT_U32 size)
{
    MBT_U32 crc = 0xFFFFFFFF;
    MBT_U32 i;
    MBT_S32 j;
    MBT_U32 prev, this;
    MBT_U32 val;
    for (i = 0; i < size; i++)
    {
        val = *pdata++;
        prev = crc;
        for (j = 0; j < 32; j++)
        {
            this = ((prev << 1) + ((val & 0x80000000) ? 1 : 0)) ^ ((prev & 0x80000000) ? CRC_POLY : 0);
            val <<= 1;
            prev = this;
        }
        crc = this;
    }

    return crc ^ 0xFFFFFFFF;
}

MBT_U32 MMF_Common_CRCU8(MBT_U8* pdata, MBT_U32 size)
{
    MBT_U32 crc = 0xFFFFFFFF;
    MBT_U32 i;
    MBT_S32 j;
    MBT_U32 prev, this;
    MBT_U32 val;
    for (i = 0; i < size; i++)
    {
        val = *pdata++;
        prev = crc;
        for (j = 0; j < 8; j++)
        {
            this = ((prev << 1) + ((val & 0x80) ? 1 : 0)) ^ ((prev & 0x80000000) ? CRC_POLY : 0);
            val <<= 1;
            prev = this;
        }
        crc = this;
    }

    return crc ^ 0xFFFFFFFF;
}


/* end C++ support */
#ifdef __cplusplus
}
#endif

/* ----------------------------- End of file (mml_entry.c) ------------------------- */
