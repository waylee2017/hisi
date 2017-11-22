/******************************************************************************
     Copyright (C), 2001-2013, Hisilicon Tech. Co., Ltd.
******************************************************************************
File Name     : ddrt_test.c
Version       : Initial Draft
Author        : Hisilicon  device chipset key technologies platform development
Created       : 2013/08/08
Description   :
*****************************************************************************/

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <sys/time.h>

#include "hi_type.h"
#include "hi_common.h"

#include "ddrt_test.h"

#define MAX_CMD_NUM     0x1fffff
#define MEM_MAX_SIZE    ((MAX_CMD_NUM + 1) * 256)
#define MEM_MIN_SIZE    (1 * 1024 * 1024)
#if 0 
#define pr_line()\
    do{\
        printf("%s->%d\n",__func__,__LINE__);\
    }while(0)
#else 
#define pr_line()\
    do{}while(0)
#endif
HI_U32 HiGetTimeMs(HI_VOID)
{
    HI_U32          ret = 0;
    struct timeval  tv;

    if (0 == gettimeofday(&tv, HI_NULL))
    {
        ret = (HI_U32)tv.tv_sec * 1000 + (HI_U32)tv.tv_usec / 1000;
    }

    return ret;
}

#ifdef DDRT_TEST_V1
HI_VOID ddrt_qos(HI_VOID)
{
#if 0 //llz
    HI_SYS_WriteRegister(PERI_QOS_GLOB_CTRL, 0x1);
    HI_SYS_WriteRegister(PERI_QOS_CFG0, 0x55110066);
    HI_SYS_WriteRegister(PERI_QOS_CFG1, 0x33000000);
    HI_SYS_WriteRegister(PERI_QOS_CFG2, 0x00222222);
    HI_SYS_WriteRegister(PERI_QOS_CFG3, 0x44422006);
    HI_SYS_WriteRegister(PERI_QOS_CFG4, 0x66622774);
    HI_SYS_WriteRegister(PERI_QOS_CFG5, 0x50000500);
    HI_SYS_WriteRegister(PERI_QOS_CFG6, 0x50055000);
    HI_SYS_WriteRegister(PERI_QOS_CFG7, 0x00000005);
#endif
}

HI_VOID ddrt_efficiency(HI_VOID)
{
#if 1 //llz
    HI_U32  test_over;
    HI_U32  temp0;
    HI_U32  temp1;
    double  efficiency;

    HI_SYS_WriteRegister(0x10101270, 0x1fffffff);
    HI_SYS_WriteRegister(0x10101010, 0x1);

    do
    {
        HI_SYS_ReadRegister(0x10101010, &test_over);
    } while (test_over);

    HI_SYS_ReadRegister(REG_DDRT_BASE_CRG + DDRT_STATUS, &test_over);
    if (test_over)
    {
        printf("The Send data is to small pls increase LoopNum or CmdNum\n");
    }

    printf("The ddr reg test_over = 0x%X\n", test_over);

    HI_SYS_ReadRegister(0x10101380, &temp0);
    HI_SYS_ReadRegister(0x10101384, &temp1);

    efficiency = (double)(temp0 + temp1);
    efficiency /= 4294967280.0;

    printf("The ddr reg 0x10101380 = 0x%X\n", temp0);
    printf("The ddr reg 0x10101384 = 0x%X\n", temp1);
    printf("The ddr efficiency is %f\n", efficiency);
#endif
}
#endif

HI_VOID ddrt_init(HI_U32 Base, HI_U32 CmdNum, HI_U32 LoopNum, HI_U32 PhyAddr)
{
    HI_SYS_WriteRegister(Base + DDRT_BURST_CONFIG, 0x4f);
    HI_SYS_WriteRegister(Base + DDRT_MEM_CONFIG, 0x142);
    HI_SYS_WriteRegister(Base + DDRT_BURST_NUM, CmdNum);
    HI_SYS_WriteRegister(Base + DDRT_ADDR_NUM, 0xffffffff);
    HI_SYS_WriteRegister(Base + DDRT_LOOP_NUM, LoopNum);
    HI_SYS_WriteRegister(Base + DDRT_DDR_BASE_ADDR, 0x80000000);
    HI_SYS_WriteRegister(Base + DDRT_REVERSED_DQ, 0xFFFFFFFF);
    HI_SYS_WriteRegister(Base + DDRT_ADDR, PhyAddr);
}

HI_S32 main(int argc , char* argv[])
{
    HI_S32          ret;
    HI_U32          TestMode    = 1;
    HI_U32          TestTime    = 1;
    HI_U32          CmdNum      = MAX_CMD_NUM;
    HI_U32          LoopNum     = 0x1000;
    HI_U32          Prbs        = 0x0;
    HI_U32          DdrtQos     = 0;
    HI_U32          MaxCmdNum   = MAX_CMD_NUM;
    HI_U32          MemSize     = MEM_MAX_SIZE;
    HI_MMZ_BUF_S    MmzMem;
    HI_U32          TestCount;
    HI_U32          Start;
    HI_U32          End;

    if (argc < 2)
    {
        printf("Usage: %s TestMode [TestTime] [CmdNum] [LoopNum] [Prbs]\n", argv[0]);
        printf("\tTestMode: 1 = press, 0 = train\n");
        printf("\tTestTime: defualt =1, 0 all run\n");
        printf("\tCmdNum: default:0xfffff  \n");
        printf("\tLoopNum: default: 0x1000\n");
        printf("\tPrbs: 0=prbs9, 1=prbs7, 2=prbs11 3=k28.5  default: prbs9\n");
        printf("\nExample:\n\t%s 0\n", argv[0]);
        printf("\t%s 0 0\n", argv[0]);
        printf("\t%s 0 0 0xffff 0x1000 0\n", argv[0]);

        return 0;
    }

    TestMode = strtoul(argv[1], NULL, 0);

    if (argc >= 3)
    {
        TestTime = strtoul(argv[2], NULL, 0);
    }

    if (argc >= 4)
    {
        CmdNum = strtoul(argv[3], NULL, 0);

        MaxCmdNum   = CmdNum;
        MemSize     = (MaxCmdNum + 1) * 256;
    }

    if (argc >= 5)
    {
        LoopNum = strtoul(argv[4], NULL, 0);
    }

    if (argc >= 6)
    {
        Prbs = strtoul(argv[5], NULL, 0);
    }

    ret = HI_SYS_Init();
    if (HI_SUCCESS != ret)
    {
        printf("HI_SYS_Init failed 0x%x\n", ret);

        return 1;
    }

    strncpy(MmzMem.bufname, "ddrt", sizeof(MmzMem.bufname));

    do
    {
        MmzMem.bufsize = MemSize;

        ret = HI_MMZ_Malloc(&MmzMem);
        if (HI_SUCCESS == ret)
        {
            printf("PhyAddress=0x%x, Size=%uMB\n", MmzMem.phyaddr, MmzMem.bufsize / 1024 / 1024);

            if (CmdNum > MaxCmdNum)
            {
                CmdNum = MaxCmdNum;
            }

            break;
        }

        MemSize     /= 2;
        MaxCmdNum   /= 2;
    } while (MemSize >= MEM_MIN_SIZE);

    if (MemSize < MEM_MIN_SIZE)
    {
        printf("allocate memory failure(%d)\n", MemSize);

        HI_SYS_DeInit();

        return 1;
    }
    CmdNum = MemSize/256 - 1;//CmdNum 应该和实际分配的内存大小保持一致
    printf("TestMode=%u, TestTime=%u, CmdNum=0x%x, LoopNum=0x%x, Prbs=0x%x\n",
        TestMode, TestTime, CmdNum, LoopNum, Prbs);

    Start = HiGetTimeMs();
    pr_line();
#ifdef DDRT_TEST_V1
    if (0 == DdrtQos)
        ddrt_qos();
#endif

    pr_line();
#ifdef DDRT_TEST_V1
    ddrt_init(REG_DDRT_BASE_CRG, CmdNum, LoopNum, MmzMem.phyaddr);
    printf("== ddrt_init ===\n");
#elif defined(DDRT_TEST_V2)
    pr_line();
    // phy 0
    ddrt_init(REG_DDRT0_BASE_CRG, CmdNum / 2, LoopNum, MmzMem.phyaddr);

    pr_line();
    // phy 1
    ddrt_init(REG_DDRT1_BASE_CRG, CmdNum / 2, LoopNum, MmzMem.phyaddr + MemSize / 2);
    pr_line();
#endif

    if (0 == TestTime)
    {
        TestCount = 1;
    }
    else
    {
        TestCount = TestTime;
    }

    pr_line();
    while (TestCount)
    {
        HI_U32  state0 = 0;
        HI_U32  state1 = 0;

    pr_line();
        if (TestTime)
        {
            --TestCount;
        }

#ifdef DDRT_TEST_V1

        HI_SYS_WriteRegister(REG_DDRT_BASE_CRG + DDRT_OP, RW_COMPRARE_MODE | (Prbs << 12) | 0x11);

        do
        {
            if (0 == TestMode)
            {
                ddrt_efficiency();
            }
        pr_line();

            HI_SYS_ReadRegister(REG_DDRT_BASE_CRG + DDRT_OP, &state0);
        } while (state0 & 0x1);

#elif defined(DDRT_TEST_V2)

        HI_SYS_WriteRegister(REG_DDRT0_BASE_CRG + DDRT_OP, RW_COMPRARE_MODE | (Prbs << 12) | 0x11);
        HI_SYS_WriteRegister(REG_DDRT1_BASE_CRG + DDRT_OP, RW_COMPRARE_MODE | (Prbs << 12) | 0x11);

        pr_line();
        do
        {
            sleep(1);

            pr_line();
            HI_SYS_ReadRegister(REG_DDRT0_BASE_CRG + DDRT_STATUS, &state0);
            HI_SYS_ReadRegister(REG_DDRT1_BASE_CRG + DDRT_STATUS, &state1);
        } while (!(state0 & 0x1) || !(state1 & 0x1));

#endif

#ifdef DDRT_TEST_V1
        HI_SYS_ReadRegister(REG_DDRT_BASE_CRG + DDRT_STATUS, &state0);
#elif defined(DDRT_TEST_V2)
        HI_SYS_ReadRegister(REG_DDRT0_BASE_CRG + DDRT_STATUS, &state0);
        HI_SYS_ReadRegister(REG_DDRT1_BASE_CRG + DDRT_STATUS, &state1);
#endif

    pr_line();
        End = HiGetTimeMs();

    pr_line();
        printf("==== state0=0x%x, state1=0x%x\n", state0, state1);

        if (0x3 == state0)
        {
            printf("==== The DDR0 test is OK, tm=%u ====\n\n", End - Start);
        }
        else
        {
            printf("==== The DDR0 test is FAIL, tm=%u ====\n\n", End - Start);
            if (1 == TestMode)
            {
                printf("==== start reboot ====\n");
                system("reboot");
            }
        }

#ifdef DDRT_TEST_V2
        if (0x3 == state1)
        {
            printf("==== The DDR1 test is OK, tm=%u ====\n\n", End - Start);
        }
        else
        {
            printf("==== The DDR1 test is FAIL, tm=%u ====\n\n", End - Start);
            if (1 == TestMode)
            {
                printf("==== start reboot ====\n");
                system("reboot");
            }
        }
#endif

        Start = End;
    }

    HI_MMZ_Free(&MmzMem);

    HI_SYS_DeInit();

    return 0;
}

