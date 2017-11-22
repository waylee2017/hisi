#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

#include "hi_type.h"
#include "hi_unf_ci.h"
#include "hi_unf_i2c.h"
#include "hi_common.h"
#if 0
#include "hi_common_id.h"
#include "hi_common_mem.h"
#include "hi_common_log.h"
#endif

#define HI_ERR_CI(fmt...) \
    HI_ERR_PRINT(HI_ID_CI, fmt)

#define HI_INFO_CI(fmt...) \
    HI_INFO_PRINT(HI_ID_CI, fmt)

#define HI_MALLOC_CI(size)  HI_MEM_Malloc(HI_ID_CI, size)
#define HI_FREE_CI(pAddr)   HI_MEM_Free(HI_ID_CI, pAddr)

#define USE_HI3716C_CIMAX_SOLUTION
//#define USE_HI3716C_CIMAXPLUS_SOLUTION
//#define USE_HI3716MV300_CIMAXPLUS_SOLUTION

#ifdef USE_HI3716C_CIMAX_SOLUTION
#define DEF_CIMAX_SMI_BITWIDTH (8)          /* CIMAX SMI bit width */
#define DEF_CIMAX_SMC_BANK0_BASE_ADDR (0x30000000)
#define DEF_CIMAX_I2CNum (3)                /* CIMaX I2C group */
#define DEF_CIMAX_ADDR (0x80)               /* CIMaX I2C address */
#endif

#ifdef USE_HI3716C_CIMAXPLUS_SOLUTION
#define DEF_CIMAXPLUS_RESET_GPIO (12)       /* Reset CIMaX+ GPIO: 1_4 */
#endif

#ifdef USE_HI3716MV300_CIMAXPLUS_SOLUTION
#define DEF_CIMAXPLUS_RESET_GPIO (68)       /* Reset CIMaX+ GPIO: 8_4 */
#endif

#define WAIT_TIME (300)
#define HOST_BUFFERSIZE (1024)

#define DEF_CI_DEVICE HI_UNF_CI_DEV_CIMAXPLUS

static HI_U8 *s_pBuffer[HI_UNF_CI_PCCD_BUTT] = {HI_NULL, HI_NULL};

static HI_S32 CardInsert(HI_UNF_CI_PORT_E enCIPort, HI_UNF_CI_PCCD_E enCardId)
{
    HI_S32 s32Ret;
    HI_U32 u32WaitTimes;
    HI_UNF_CI_PCCD_READY_E enReady = HI_UNF_CI_PCCD_BUSY;
    HI_U16 u16BufferSize = HOST_BUFFERSIZE;

    HI_INFO_CI("Card %d inserted.\n", enCardId);

    /* Power ON */
    s32Ret = HI_UNF_CI_PCCD_CtrlPower(enCIPort, enCardId, HI_UNF_CI_PCCD_CTRLPOWER_ON);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_CI("HI_UNF_CI_PCCD_CtrlPower(%d, %d, ON) FAIL!!! 0x%08x.\n", enCIPort, enCardId, s32Ret);
        return s32Ret;
    }

    /* Reset Card */
    s32Ret = HI_UNF_CI_PCCD_Reset(enCIPort, enCardId);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_CI("HI_UNF_CI_PCCD_Reset(%d, %d) FAIL!!! 0x%08x.\n", enCIPort, enCardId, s32Ret);
        return s32Ret;
    }

    /* Wait ready, 3s, optional, automatically wait in HI_UNF_CI_PCCD_CheckCIS() */
    for (u32WaitTimes = 0; u32WaitTimes < WAIT_TIME; u32WaitTimes++)
    {
        s32Ret = HI_UNF_CI_PCCD_IsReady(enCIPort, enCardId, &enReady);
        if (HI_SUCCESS != s32Ret)
        {
            HI_ERR_CI("HI_UNF_CI_PCCD_IsReady(%d, %d) FAIL!!! 0x%08x.\n", enCIPort, enCardId, s32Ret);
            return s32Ret;
        }

        if (HI_UNF_CI_PCCD_READY == enReady)
        {
            HI_INFO_CI("HI_UNF_CI_PCCD_IsReady(%d, %d) Card ready.\n", enCIPort, enCardId);
            break;
        }

        /* 10ms */
        usleep(10000);
    }

    if (u32WaitTimes == WAIT_TIME)
    {
        HI_ERR_CI("HI_UNF_CI_PCCD_IsReady(%d, %d) Card ready timeout.\n", enCIPort, enCardId);
        return HI_FAILURE;
    }

    /* Check CIS */
    s32Ret = HI_UNF_CI_PCCD_CheckCIS(enCIPort, enCardId);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_CI("HI_UNF_CI_PCCD_CheckCIS(%d, %d) FAIL!!! 0x%08x.\n", enCIPort, enCardId, s32Ret);
        return s32Ret;
    }

    /* Configure COR */
    s32Ret = HI_UNF_CI_PCCD_WriteCOR(enCIPort, enCardId);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_CI("HI_UNF_CI_PCCD_WriteCOR(%d, %d) FAIL!!! 0x%08x.\n", enCIPort, enCardId, s32Ret);
        return s32Ret;
    }

    /* Reset IO interface */
    s32Ret = HI_UNF_CI_PCCD_IOReset(enCIPort, enCardId);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_CI("HI_UNF_CI_PCCD_IOReset(%d, %d) FAIL!!! 0x%08x.\n", enCIPort, enCardId, s32Ret);
        return s32Ret;
    }

    /* Negotiate buffer size */
    s32Ret = HI_UNF_CI_PCCD_NegBufferSize(enCIPort, enCardId, &u16BufferSize);
    if (HI_SUCCESS == s32Ret)
    {
        HI_INFO_CI("HI_UNF_CI_PCCD_NegBufferSize(%d, %d) SUCCESS: %d Bytes.\n", enCIPort, enCardId, u16BufferSize);
    }
    else
    {
        HI_ERR_CI("HI_UNF_CI_PCCD_NegBufferSize(%d, %d) FAIL!!! 0x%08x.\n", enCIPort, enCardId, s32Ret);
        return s32Ret;
    }

    s_pBuffer[enCardId] = (HI_U8*)HI_MALLOC_CI(u16BufferSize);
    if (HI_NULL == s_pBuffer[enCardId])
    {
        HI_ERR_CI("memory alloc fail\n");
        return s32Ret;
    }

    return HI_SUCCESS;
}

static HI_S32 CardRemove(HI_UNF_CI_PORT_E enCIPort, HI_UNF_CI_PCCD_E enCardId)
{
    HI_INFO_CI("Card %d removed.\n", enCardId);
    
    if (HI_NULL != s_pBuffer[enCardId])
    {
        HI_FREE_CI(s_pBuffer[enCardId]);
        s_pBuffer[enCardId] = HI_NULL;
    }

    /* Power OFF */
    return HI_UNF_CI_PCCD_CtrlPower(enCIPort, enCardId, HI_UNF_CI_PCCD_CTRLPOWER_OFF);
}

static HI_S32 CreateTC(HI_UNF_CI_PORT_E enCIPort, HI_UNF_CI_PCCD_E enCardId)
{
    HI_S32 s32Ret;
    HI_U32 i;
    HI_U32 u32WaitTimes;

    /* The command for Create a transport contection, id 1 */
    HI_U8 au8CreateTC[8] = {0x01, 0x00, 0x82, 0x01, 0x01, 0x0, 0x0, 0x0};
    HI_U32 u32WriteOKLen = 0;
    HI_U32 u32ReadLen = 0;
    HI_U8 u8StatusValue;

    /*
     * Wait FRee status, 300ms timeout
     */
    for (u32WaitTimes = 0; u32WaitTimes < WAIT_TIME; u32WaitTimes++)
    {
        s32Ret = HI_UNF_CI_PCCD_GetStatus(enCIPort, enCardId, HI_UNF_CI_PCCD_STATUS_BIT_FR, &u8StatusValue);
        if (HI_SUCCESS != s32Ret)
        {
            HI_ERR_CI("HI_UNF_CI_PCCD_GetStatus(%d, %d, FR) FAIL!!! 0x%08x.\n", enCIPort, enCardId, s32Ret);
            return s32Ret;
        }

        if (u8StatusValue)
        {
            break;
        }

        usleep(1000);
    }

    if (u32WaitTimes == WAIT_TIME)
    {
        HI_ERR_CI("CreateTC(%d, %d) FAIL!!! Wait FREE time out.\n", enCIPort, enCardId);
        return HI_FAILURE;
    }

    /*
     * Set access mode to IO
     * Optional, automatically set in HI_UNF_CI_PCCD_IOWrite()
     */
    s32Ret = HI_UNF_CI_PCCD_SetAccessMode(enCIPort, enCardId, HI_UNF_CI_PCCD_ACCESS_IO);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_CI("HI_UNF_CI_PCCD_SetAccessMode(%d, %d, IO) FAIL!!! 0x%08x.\n", enCIPort, enCardId, s32Ret);
        return s32Ret;
    }

    /* Write data */
    s32Ret = HI_UNF_CI_PCCD_IOWrite(enCIPort, enCardId, au8CreateTC, 5, &u32WriteOKLen);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_CI("HI_UNF_CI_PCCD_IOWrite(%d, %d) FAIL!!! 0x%08x.\n", enCIPort, enCardId, s32Ret);
        return s32Ret;
    }

    /*
     * Wait Data Avalible status, 300ms timeout.
     */
    for (u32WaitTimes = 0; u32WaitTimes < WAIT_TIME; u32WaitTimes++)
    {
        s32Ret = HI_UNF_CI_PCCD_GetStatus(enCIPort, enCardId, HI_UNF_CI_PCCD_STATUS_BIT_DA, &u8StatusValue);
        if (HI_SUCCESS != s32Ret)
        {
            HI_ERR_CI("HI_UNF_CI_PCCD_GetStatus(%d, %d, DA) FAIL!!! 0x%08x.\n", enCIPort, enCardId, s32Ret);
            return s32Ret;
        }

        if (u8StatusValue)
        {
            break;
        }

        usleep(1000);
    }

    if (u32WaitTimes == WAIT_TIME)
    {
        HI_ERR_CI("CreateTC(%d, %d) FAIL!!! Wait DA time out.\n", enCIPort, enCardId);
        return HI_FAILURE;
    }

    /* Read data */
    s32Ret = HI_UNF_CI_PCCD_IORead(enCIPort, enCardId, s_pBuffer[enCardId], &u32ReadLen);
    if (HI_SUCCESS == s32Ret)
    {
        HI_INFO_CI("HI_UNF_CI_PCCD_IORead(%d, %d) SUCCESS.\n", enCIPort, enCardId);
        for (i = 0; i < u32ReadLen; i++)
        {
            HI_INFO_CI("%02x\n", s_pBuffer[enCardId][i]);
        }
    }
    else
    {
        HI_ERR_CI("HI_UNF_CI_PCCD_IORead(%d, %d) FAIL!!! 0x%08x.\n", enCIPort, enCardId, s32Ret);
        return s32Ret;
    }

    return HI_SUCCESS;
}

static HI_S32 TSByPass(HI_UNF_CI_PORT_E enCIPort, HI_UNF_CI_PCCD_E enCardId, HI_BOOL bTSByPass)
{
    HI_S32 s32Ret;
    HI_UNF_CI_PCCD_TSCTRL_PARAM_U unParam;

    unParam.stByPass.bByPass = bTSByPass;
    s32Ret = HI_UNF_CI_PCCD_TSCtrl(enCIPort, enCardId, HI_UNF_CI_PCCD_TSCTRL_BYPASS, &unParam);

    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_CI("HI_UNF_CI_PCCD_TSCtrl(%d, %d) FAIL!!! 0x%08x.\n", enCIPort, enCardId, s32Ret);
    }

    return s32Ret;
}

HI_S32 main(HI_VOID)
{
    HI_S32 s32Ret = HI_SUCCESS;
    HI_UNF_CI_PORT_E enCIPort;
    HI_UNF_CI_PCCD_E enCardId;
    HI_UNF_CI_PCCD_STATUS_E enStatus;
    HI_UNF_CI_PCCD_STATUS_E aenCardStatus[HI_UNF_CI_PCCD_BUTT] =
    {HI_UNF_CI_PCCD_STATUS_ABSENT, HI_UNF_CI_PCCD_STATUS_ABSENT};
    HI_UNF_CI_ATTR_S stCIAttr;
    HI_BOOL bLoop = HI_TRUE;

    HI_SYS_Init();

    /* Open I2C */
    s32Ret = HI_UNF_I2C_Open();
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_CI("HI_UNF_I2C_Open() fail.\n");
        return HI_FAILURE;
    }

    /* Init CI */
    s32Ret = HI_UNF_CI_Init();
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_CI("HI_UNF_CI_Init() FAIL!!! 0x%08x.\n", s32Ret);
        goto CLOSE_I2C;
    }

    enCIPort = HI_UNF_CI_PORT_0;

    /* Need be invoked before HI_UNF_CI_Open(). */
#if defined(USE_HI3716C_CIMAX_SOLUTION)
    stCIAttr.enDevType = HI_UNF_CI_DEV_CIMAX;
    stCIAttr.enTSIMode = HI_UNF_CI_TSI_DAISY_CHAINED;
    stCIAttr.enTSMode[HI_UNF_CI_PCCD_A] = HI_UNF_CI_TS_SERIAL;
    stCIAttr.unDevAttr.stCIMaX.u32SMIBitWidth = DEF_CIMAX_SMI_BITWIDTH;
    stCIAttr.unDevAttr.stCIMaX.u32SMIBaseAddr = DEF_CIMAX_SMC_BANK0_BASE_ADDR;
    stCIAttr.unDevAttr.stCIMaX.u32I2cNum = DEF_CIMAX_I2CNum;
    stCIAttr.unDevAttr.stCIMaX.u8DevAddress = DEF_CIMAX_ADDR;
#elif defined(USE_HI3716C_CIMAXPLUS_SOLUTION)
    stCIAttr.enDevType = HI_UNF_CI_DEV_CIMAXPLUS;
    stCIAttr.enTSIMode = HI_UNF_CI_TSI_INDEPENDENT;
    stCIAttr.enTSMode[HI_UNF_CI_PCCD_A] = HI_UNF_CI_TS_PARALLEL;
    stCIAttr.enTSMode[HI_UNF_CI_PCCD_B] = HI_UNF_CI_TS_SERIAL;
    stCIAttr.unDevAttr.stCIMaXPlus.u32ResetGpioNo = DEF_CIMAXPLUS_RESET_GPIO;
#elif defined(USE_HI3716MV300_CIMAXPLUS_SOLUTION)
    stCIAttr.enDevType = HI_UNF_CI_DEV_CIMAXPLUS;
    stCIAttr.enTSIMode = HI_UNF_CI_TSI_INDEPENDENT;
    stCIAttr.enTSMode[HI_UNF_CI_PCCD_A] = HI_UNF_CI_TS_SERIAL;
    stCIAttr.enTSMode[HI_UNF_CI_PCCD_B] = HI_UNF_CI_TS_SERIAL;
    stCIAttr.unDevAttr.stCIMaXPlus.u32ResetGpioNo = DEF_CIMAXPLUS_RESET_GPIO;
#endif

    s32Ret = HI_UNF_CI_SetAttr(enCIPort, &stCIAttr);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_CI("HI_UNF_CI_SetAttr() FAIL!!! 0x%08x.\n", s32Ret);
        goto DEINIT_CI;
    }

    /* Open CI Port */
    s32Ret = HI_UNF_CI_Open(enCIPort);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_CI("HI_UNF_CI_Open(%d) FAIL!!! 0x%08x.\n", enCIPort, s32Ret);
        goto DEINIT_CI;
    }
    
    /* Open card A */
    enCIPort = HI_UNF_CI_PORT_0;
    enCardId = HI_UNF_CI_PCCD_A;
    s32Ret = HI_UNF_CI_PCCD_Open(enCIPort, enCardId);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_CI("HI_UNF_CI_PCCD_Open(%d, %d) FAIL!!! 0x%08x.\n", enCIPort, enCardId, s32Ret);
        goto CLOSE_CI_PORT_0;
    }

    /* Open card B */
    enCardId = HI_UNF_CI_PCCD_B;
    s32Ret = HI_UNF_CI_PCCD_Open(enCIPort, enCardId);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_CI("HI_UNF_CI_PCCD_Open(%d, %d) FAIL!!! 0x%08x.\n", enCIPort, enCardId, s32Ret);
        goto CLOSE_PCCD_A;
    }

    /* Only support HI_UNF_CI_PORT_0 */
    enCIPort = HI_UNF_CI_PORT_0;
    while (bLoop)
    {
        for (enCardId = HI_UNF_CI_PCCD_A; enCardId < HI_UNF_CI_PCCD_BUTT; enCardId++)
        {
            /* Detect card  */
            s32Ret = HI_UNF_CI_PCCD_Detect(enCIPort, enCardId, &enStatus);
            if (HI_SUCCESS != s32Ret)
            {
                HI_ERR_CI("HI_UNF_CI_PCCD_Detect(%d, %d) fail: 0x%08x.\n", enCIPort, enCardId, s32Ret);
            }
            else
            {
                /* Insert or remove */
                if (enStatus != aenCardStatus[enCardId])
                {
                    /* Remove */
                    if (HI_UNF_CI_PCCD_STATUS_ABSENT == enStatus)
                    {
                        aenCardStatus[enCardId] = enStatus;
                        s32Ret = CardRemove(enCIPort, enCardId);
                        if (HI_SUCCESS != s32Ret)
                        {
                            HI_ERR_CI("CardRemove(%d, %d) fail: 0x%08x.\n", enCIPort, enCardId, s32Ret);
                            goto CLOSE_PCCD_B;
                        }
                    }
                    /* Insert */
                    else if (HI_UNF_CI_PCCD_STATUS_PRESENT == enStatus)
                    {
                        aenCardStatus[enCardId] = enStatus;
                        s32Ret = CardInsert(enCIPort, enCardId);
                        if (HI_SUCCESS != s32Ret)
                        {
                            HI_ERR_CI("CardInsert(%d, %d) fail: 0x%08x.\n", enCIPort, enCardId, s32Ret);
                            goto CLOSE_PCCD_B;
                        }

                        /* Create a transport connection */
                        s32Ret = CreateTC(enCIPort, enCardId);

                        if (HI_SUCCESS != s32Ret)
                        {
                            HI_ERR_CI("CreateTC(%d, %d) fail: 0x%08x.\n", enCIPort, enCardId, s32Ret);
                            goto CLOSE_PCCD_B;
                        }

                        /* Control TS pass card or not */
                        s32Ret = TSByPass(enCIPort, enCardId, HI_FALSE);
                        if (HI_SUCCESS != s32Ret)
                        {
                            HI_ERR_CI("TSByPass(%d, %d) fail: 0x%08x.\n", enCIPort, enCardId, s32Ret);
                            goto CLOSE_PCCD_B;
                        }
                    }
                }
            }
        }

        /* 100ms */
        usleep(100000);
    }

    /* Close card B */
CLOSE_PCCD_B:
    enCIPort = HI_UNF_CI_PORT_0;
    enCardId = HI_UNF_CI_PCCD_B;
    s32Ret |= HI_UNF_CI_PCCD_Close(enCIPort, enCardId);

    /* Close card A */
CLOSE_PCCD_A:
    enCIPort = HI_UNF_CI_PORT_0;
    enCardId = HI_UNF_CI_PCCD_A;
    s32Ret |= HI_UNF_CI_PCCD_Close(enCIPort, enCardId);

    /* Close card CI Port */
CLOSE_CI_PORT_0:
    enCIPort = HI_UNF_CI_PORT_0;
    s32Ret |= HI_UNF_CI_Close(enCIPort);

    /* Deinit CI */
DEINIT_CI:
    s32Ret |= HI_UNF_CI_DeInit();

CLOSE_I2C:
    s32Ret |= HI_UNF_I2C_Close();

    HI_SYS_DeInit();

    return s32Ret;
}
