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
#include <stdio.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>
#include <sys/ioctl.h>
#include <pthread.h>

#include "drv_ci_ioctl.h"
#include "drv_cimax+_ioctl.h"

/* Status register bits */
#define PCCD_RE 0x01    /* Read error */
#define PCCD_WE 0x02    /* Write error */
#define PCCD_FR 0x40    /* Free */
#define PCCD_DA 0x80    /* Data available */

static HI_S32 s_CIDevFd = -1;
static pthread_mutex_t s_CIMutex = PTHREAD_MUTEX_INITIALIZER;

#define HI_CI_LOCK() (void)pthread_mutex_lock(&s_CIMutex);
#define HI_CI_UNLOCK() (void)pthread_mutex_unlock(&s_CIMutex);

#define CHECK_CI_OPEN() \
    do {\
        HI_CI_LOCK(); \
        if (s_CIDevFd < 0)\
        {\
            HI_ERR_CI("CI is not open.\n"); \
            HI_CI_UNLOCK(); \
            return HI_ERR_CI_NOT_INIT; \
        } \
        HI_CI_UNLOCK(); \
    } while (0)

HI_S32 HI_UNF_CI_Init(HI_VOID)
{
    HI_CI_LOCK();

    /* reopen will direct return success*/
    if (s_CIDevFd > 0)
    {
        HI_CI_UNLOCK();
        return HI_SUCCESS;
    }

    /* open device */
    s_CIDevFd = open("/dev/" UMAP_DEVNAME_CI, O_RDWR);
    if (s_CIDevFd < 0)
    {
        HI_FATAL_CI("open CI err.\n");
        HI_CI_UNLOCK();
        return HI_ERR_CI_OPEN_ERR;
    }

    HI_CI_UNLOCK();

    return HI_SUCCESS;
}

HI_S32 HI_UNF_CI_DeInit(HI_VOID)
{
    HI_S32 s32Ret = HI_SUCCESS;

    HI_CI_LOCK();

    if (s_CIDevFd < 0)
    {
        HI_CI_UNLOCK();
        return HI_SUCCESS;
    }

    s32Ret = close(s_CIDevFd);
    if (HI_SUCCESS != s32Ret)
    {
        HI_FATAL_CI("Close CI err.\n");
        HI_CI_UNLOCK();
        return HI_ERR_CI_CLOSE_ERR;
    }

    s_CIDevFd = -1;

    HI_CI_UNLOCK();

    return HI_SUCCESS;
}

/* Added begin 2012-04-24 l00185424: support various CI device */
HI_S32 HI_UNF_CI_SetAttr(HI_UNF_CI_PORT_E enCIPort, const HI_UNF_CI_ATTR_S *pstCIAttr)
{
    HI_S32 s32Ret;
    CI_ATTR_S stAttr;

    if (enCIPort >= HI_UNF_CI_PORT_BUTT)
    {
        HI_ERR_CI("Invalid enCIPort.\n");
        return HI_ERR_CI_INVALID_PARA;
    }

    if (HI_NULL == pstCIAttr)
    {
        HI_ERR_CI("Invalid pstCIAttr.\n");
        return HI_ERR_CI_INVALID_PARA;
    }

    if (pstCIAttr->enDevType >= HI_UNF_CI_DEV_BUTT)
    {
        HI_ERR_CI("Invalid enDevType.\n");
        return HI_ERR_CI_INVALID_PARA;
    }

    if (pstCIAttr->enTSIMode >= HI_UNF_CI_TSI_BUTT)
    {
        HI_ERR_CI("Invalid enTSIMode.\n");
        return HI_ERR_CI_INVALID_PARA;
    }

    CHECK_CI_OPEN();

    stAttr.enCIPort = enCIPort;
    stAttr.stCIAttr = *pstCIAttr;
    s32Ret = ioctl(s_CIDevFd, CMD_CI_SETATTR, &stAttr);

    return s32Ret;
}

HI_S32 HI_UNF_CI_GetAttr(HI_UNF_CI_PORT_E enCIPort, HI_UNF_CI_ATTR_S *pstCIAttr)
{
    HI_S32 s32Ret;
    CI_ATTR_S stAttr;

    if (enCIPort >= HI_UNF_CI_PORT_BUTT)
    {
        HI_ERR_CI("Invalid enCIPort.\n");
        return HI_ERR_CI_INVALID_PARA;
    }

    if (HI_NULL == pstCIAttr)
    {
        HI_ERR_CI("Invalid pstCIAttr.\n");
        return HI_ERR_CI_INVALID_PARA;
    }

    CHECK_CI_OPEN();

    stAttr.enCIPort = enCIPort;
    s32Ret = ioctl(s_CIDevFd, CMD_CI_GETATTR, &stAttr);
    if (HI_SUCCESS == s32Ret)
    {
        *pstCIAttr = stAttr.stCIAttr;
    }

    return s32Ret;
}

/* Added end 2012-04-24 l00185424: support various CI device */

HI_S32 HI_UNF_CI_Open(HI_UNF_CI_PORT_E enCIPort)
{
    HI_S32 s32Ret;

    if (enCIPort >= HI_UNF_CI_PORT_BUTT)
    {
        HI_ERR_CI("Invalid enCIPort.\n");
        return HI_ERR_CI_INVALID_PARA;
    }

    CHECK_CI_OPEN();
    s32Ret = ioctl(s_CIDevFd, CMD_CI_OPEN, &enCIPort);

    return s32Ret;
}

HI_S32 HI_UNF_CI_Close(HI_UNF_CI_PORT_E enCIPort)
{
    HI_S32 s32Ret;

    if (enCIPort >= HI_UNF_CI_PORT_BUTT)
    {
        HI_ERR_CI("Invalid enCIPort.\n");
        return HI_ERR_CI_INVALID_PARA;
    }

    CHECK_CI_OPEN();
    s32Ret = ioctl(s_CIDevFd, CMD_CI_CLOSE, &enCIPort);

    return s32Ret;
}

HI_S32 HI_UNF_CI_PCCD_Open(HI_UNF_CI_PORT_E enCIPort, HI_UNF_CI_PCCD_E enCardId)
{
    HI_S32 s32Ret;
    CI_PCCD_S stPCCD;

    if (enCIPort >= HI_UNF_CI_PORT_BUTT)
    {
        HI_ERR_CI("Invalid enCIPort.\n");
        return HI_ERR_CI_INVALID_PARA;
    }

    if (enCardId >= HI_UNF_CI_PCCD_BUTT)
    {
        HI_ERR_CI("Invalid enCardId.\n");
        return HI_ERR_CI_INVALID_PARA;
    }

    CHECK_CI_OPEN();

    stPCCD.enCIPort = enCIPort;
    stPCCD.enCardId = enCardId;

    s32Ret = ioctl(s_CIDevFd, CMD_CI_PCCD_OPEN, &stPCCD);

    return s32Ret;
}

HI_S32 HI_UNF_CI_PCCD_Close(HI_UNF_CI_PORT_E enCIPort, HI_UNF_CI_PCCD_E enCardId)
{
    HI_S32 s32Ret;
    CI_PCCD_S stPCCD;

    if (enCIPort >= HI_UNF_CI_PORT_BUTT)
    {
        HI_ERR_CI("Invalid enCIPort.\n");
        return HI_ERR_CI_INVALID_PARA;
    }

    if (enCardId >= HI_UNF_CI_PCCD_BUTT)
    {
        HI_ERR_CI("Invalid enCardId.\n");
        return HI_ERR_CI_INVALID_PARA;
    }

    CHECK_CI_OPEN();

    stPCCD.enCIPort = enCIPort;
    stPCCD.enCardId = enCardId;

    s32Ret = ioctl(s_CIDevFd, CMD_CI_PCCD_CLOSE, &stPCCD);

    return s32Ret;
}

HI_S32 HI_UNF_CI_PCCD_CtrlPower(HI_UNF_CI_PORT_E enCIPort, HI_UNF_CI_PCCD_E enCardId,
                                HI_UNF_CI_PCCD_CTRLPOWER_E enCtrlPower)
{
    HI_S32 s32Ret;
    CI_PCCD_CTRLPOWER_S stCtrlPower;

    if (enCIPort >= HI_UNF_CI_PORT_BUTT)
    {
        HI_ERR_CI("Invalid enCIPort.\n");
        return HI_ERR_CI_INVALID_PARA;
    }

    if (enCardId >= HI_UNF_CI_PCCD_BUTT)
    {
        HI_ERR_CI("Invalid enCardId.\n");
        return HI_ERR_CI_INVALID_PARA;
    }

    if (enCtrlPower >= HI_UNF_CI_PCCD_CTRLPOWER_BUFF)
    {
        HI_ERR_CI("Invalid enCtrlPower.\n");
        return HI_ERR_CI_INVALID_PARA;
    }

    CHECK_CI_OPEN();

    stCtrlPower.enCIPort = enCIPort;
    stCtrlPower.enCardId = enCardId;
    stCtrlPower.enCtrlPower = enCtrlPower;

    s32Ret = ioctl(s_CIDevFd, CMD_CI_PCCD_CTRLPOWER, &stCtrlPower);

    return s32Ret;
}

HI_S32 HI_UNF_CI_PCCD_Reset(HI_UNF_CI_PORT_E enCIPort, HI_UNF_CI_PCCD_E enCardId)
{
    HI_S32 s32Ret;
    CI_PCCD_S stPCCD;

    if (enCIPort >= HI_UNF_CI_PORT_BUTT)
    {
        HI_ERR_CI("Invalid enCIPort.\n");
        return HI_ERR_CI_INVALID_PARA;
    }

    if (enCardId >= HI_UNF_CI_PCCD_BUTT)
    {
        HI_ERR_CI("Invalid enCardId.\n");
        return HI_ERR_CI_INVALID_PARA;
    }

    CHECK_CI_OPEN();

    stPCCD.enCIPort = enCIPort;
    stPCCD.enCardId = enCardId;

    s32Ret = ioctl(s_CIDevFd, CMD_CI_PCCD_RESET, &stPCCD);

    return s32Ret;
}

HI_S32 HI_UNF_CI_PCCD_IsReady(HI_UNF_CI_PORT_E enCIPort, HI_UNF_CI_PCCD_E enCardId,
                              HI_UNF_CI_PCCD_READY_E_PTR penCardReady)
{
    HI_S32 s32Ret;
    CI_PCCD_READY_S stReady;

    if (enCIPort >= HI_UNF_CI_PORT_BUTT)
    {
        HI_ERR_CI("Invalid enCIPort.\n");
        return HI_ERR_CI_INVALID_PARA;
    }

    if (enCardId >= HI_UNF_CI_PCCD_BUTT)
    {
        HI_ERR_CI("Invalid enCardId.\n");
        return HI_ERR_CI_INVALID_PARA;
    }

    if (HI_NULL == penCardReady)
    {
        HI_ERR_CI("Invalid penCardReady.\n");
        return HI_ERR_CI_INVALID_PARA;
    }

    CHECK_CI_OPEN();

    stReady.enCIPort = enCIPort;
    stReady.enCardId = enCardId;
    stReady.penCardReady = penCardReady;

    s32Ret = ioctl(s_CIDevFd, CMD_CI_PCCD_READY, &stReady);

    return s32Ret;
}

HI_S32 HI_UNF_CI_PCCD_Detect(HI_UNF_CI_PORT_E enCIPort, HI_UNF_CI_PCCD_E enCardId,
                             HI_UNF_CI_PCCD_STATUS_E_PTR penCardStatus)
{
    HI_S32 s32Ret;
    CI_PCCD_DETECT_S stDetect;

    if (enCIPort >= HI_UNF_CI_PORT_BUTT)
    {
        HI_ERR_CI("Invalid enCIPort.\n");
        return HI_ERR_CI_INVALID_PARA;
    }

    if (enCardId >= HI_UNF_CI_PCCD_BUTT)
    {
        HI_ERR_CI("Invalid enCardId.\n");
        return HI_ERR_CI_INVALID_PARA;
    }

    if (HI_NULL == penCardStatus)
    {
        HI_ERR_CI("Invalid penCardStatus.\n");
        return HI_ERR_CI_INVALID_PARA;
    }

    CHECK_CI_OPEN();

    stDetect.enCIPort = enCIPort;
    stDetect.enCardId = enCardId;
    stDetect.penCardStatus = penCardStatus;

    s32Ret = ioctl(s_CIDevFd, CMD_CI_PCCD_DETECT, &stDetect);

    return s32Ret;
}

HI_S32 HI_UNF_CI_PCCD_SetAccessMode(HI_UNF_CI_PORT_E enCIPort, HI_UNF_CI_PCCD_E enCardId,
                                    HI_UNF_CI_PCCD_ACCESSMODE_E enAccessMode)
{
    HI_S32 s32Ret;
    CI_PCCD_ACCESSMODE_S stAccessMode;

    if (enCIPort >= HI_UNF_CI_PORT_BUTT)
    {
        HI_ERR_CI("Invalid enCIPort.\n");
        return HI_ERR_CI_INVALID_PARA;
    }

    if (enCardId >= HI_UNF_CI_PCCD_BUTT)
    {
        HI_ERR_CI("Invalid enCardId.\n");
        return HI_ERR_CI_INVALID_PARA;
    }

    if (enAccessMode >= HI_UNF_CI_PCCD_ACCESS_BUTT)
    {
        HI_ERR_CI("Invalid enAccessMode.\n");
        return HI_ERR_CI_INVALID_PARA;
    }

    CHECK_CI_OPEN();

    stAccessMode.enCIPort = enCIPort;
    stAccessMode.enCardId = enCardId;
    stAccessMode.enAccessMode = enAccessMode;

    s32Ret = ioctl(s_CIDevFd, CMD_CI_PCCD_SET_ACCESSMODE, &stAccessMode);

    return s32Ret;
}

HI_S32 HI_UNF_CI_PCCD_GetStatus(HI_UNF_CI_PORT_E enCIPort, HI_UNF_CI_PCCD_E enCardId,
                                HI_UNF_CI_PCCD_STATUS_BIT_E enStatus, HI_U8 *pu8Value)
{
    HI_S32 s32Ret;
    CI_PCCD_STATUS_S stStatus;

    if (enCIPort >= HI_UNF_CI_PORT_BUTT)
    {
        HI_ERR_CI("Invalid enCIPort.\n");
        return HI_ERR_CI_INVALID_PARA;
    }

    if (enCardId >= HI_UNF_CI_PCCD_BUTT)
    {
        HI_ERR_CI("Invalid enCardId.\n");
        return HI_ERR_CI_INVALID_PARA;
    }

    if (enStatus >= HI_UNF_CI_PCCD_STATUS_BIT_BUTT)
    {
        HI_ERR_CI("Invalid enStatus.\n");
        return HI_ERR_CI_INVALID_PARA;
    }

    if (HI_NULL == pu8Value)
    {
        HI_ERR_CI("Invalid pu8Value.\n");
        return HI_ERR_CI_INVALID_PARA;
    }

    CHECK_CI_OPEN();

    stStatus.enCIPort = enCIPort;
    stStatus.enCardId = enCardId;
    stStatus.pu8Value = pu8Value;

    s32Ret = ioctl(s_CIDevFd, CMD_CI_PCCD_GET_STATUS, &stStatus);

    /* Convert status */
    switch (enStatus)
    {
    case HI_UNF_CI_PCCD_STATUS_BIT_ALL:
        break;

    case HI_UNF_CI_PCCD_STATUS_BIT_DA:
        *pu8Value = (*pu8Value & PCCD_DA) ? 1 : 0;
        break;

    case HI_UNF_CI_PCCD_STATUS_BIT_FR:
        *pu8Value = (*pu8Value & PCCD_FR) ? 1 : 0;
        break;

    case HI_UNF_CI_PCCD_STATUS_BIT_RE:
        *pu8Value = (*pu8Value & PCCD_RE) ? 1 : 0;
        break;

    case HI_UNF_CI_PCCD_STATUS_BIT_WE:
        *pu8Value = (*pu8Value & PCCD_WE) ? 1 : 0;
        break;

    default:
        return HI_ERR_CI_INVALID_PARA;
    }

    return s32Ret;
}

HI_S32 HI_UNF_CI_PCCD_IORead(HI_UNF_CI_PORT_E enCIPort, HI_UNF_CI_PCCD_E enCardId,
                             HI_U8 *pu8Buffer, HI_U32 *pu32ReadLen)
{
    HI_S32 s32Ret;
    CI_PCCD_READ_S stRead;

    if (enCIPort >= HI_UNF_CI_PORT_BUTT)
    {
        HI_ERR_CI("Invalid enCIPort.\n");
        return HI_ERR_CI_INVALID_PARA;
    }

    if (enCardId >= HI_UNF_CI_PCCD_BUTT)
    {
        HI_ERR_CI("Invalid enCardId.\n");
        return HI_ERR_CI_INVALID_PARA;
    }

    if (HI_NULL == pu8Buffer)
    {
        HI_ERR_CI("Invalid pu8Buffer.\n");
        return HI_ERR_CI_INVALID_PARA;
    }

    if (HI_NULL == pu32ReadLen)
    {
        HI_ERR_CI("Invalid pu16ReadLen.\n");
        return HI_ERR_CI_INVALID_PARA;
    }

    CHECK_CI_OPEN();

    stRead.enCIPort    = enCIPort;
    stRead.enCardId    = enCardId;
    stRead.pu8Buffer   = pu8Buffer;
    stRead.pu32ReadLen = pu32ReadLen;

    s32Ret = ioctl(s_CIDevFd, CMD_CI_PCCD_READ, &stRead);

    return s32Ret;
}

HI_S32 HI_UNF_CI_PCCD_IOWrite(HI_UNF_CI_PORT_E enCIPort, HI_UNF_CI_PCCD_E enCardId,
                              HI_U8 *pu8Buffer, HI_U32 u32WriteLen, HI_U32 *pu32WriteOKLen)
{
    HI_S32 s32Ret;
    CI_PCCD_WRITE_S stWrite;

    if (enCIPort >= HI_UNF_CI_PORT_BUTT)
    {
        HI_ERR_CI("Invalid enCIPort.\n");
        return HI_ERR_CI_INVALID_PARA;
    }

    if (enCardId >= HI_UNF_CI_PCCD_BUTT)
    {
        HI_ERR_CI("Invalid enCardId.\n");
        return HI_ERR_CI_INVALID_PARA;
    }

    if (HI_NULL == pu8Buffer)
    {
        HI_ERR_CI("Invalid pu8Buffer.\n");
        return HI_ERR_CI_INVALID_PARA;
    }

    if (HI_NULL == pu32WriteOKLen)
    {
        HI_ERR_CI("Invalid pu16WriteOKLen.\n");
        return HI_ERR_CI_INVALID_PARA;
    }

    CHECK_CI_OPEN();

    stWrite.enCIPort    = enCIPort;
    stWrite.enCardId    = enCardId;
    stWrite.pu8Buffer   = pu8Buffer;
    stWrite.u32WriteLen = u32WriteLen;
    stWrite.pu32WriteOKLen = pu32WriteOKLen;

    s32Ret = ioctl(s_CIDevFd, CMD_CI_PCCD_WRITE, &stWrite);

    return s32Ret;
}

HI_S32 HI_UNF_CI_PCCD_CheckCIS(HI_UNF_CI_PORT_E enCIPort, HI_UNF_CI_PCCD_E enCardId)
{
    HI_S32 s32Ret;
    CI_PCCD_S stPCCD;

    if (enCIPort >= HI_UNF_CI_PORT_BUTT)
    {
        HI_ERR_CI("Invalid enCIPort.\n");
        return HI_ERR_CI_INVALID_PARA;
    }

    if (enCardId >= HI_UNF_CI_PCCD_BUTT)
    {
        HI_ERR_CI("Invalid enCardId.\n");
        return HI_ERR_CI_INVALID_PARA;
    }

    CHECK_CI_OPEN();

    stPCCD.enCIPort = enCIPort;
    stPCCD.enCardId = enCardId;

    s32Ret = ioctl(s_CIDevFd, CMD_CI_PCCD_CHECKCIS, &stPCCD);

    return s32Ret;
}

HI_S32 HI_UNF_CI_PCCD_WriteCOR(HI_UNF_CI_PORT_E enCIPort, HI_UNF_CI_PCCD_E enCardId)
{
    HI_S32 s32Ret;
    CI_PCCD_S stPCCD;

    if (enCIPort >= HI_UNF_CI_PORT_BUTT)
    {
        HI_ERR_CI("Invalid enCIPort.\n");
        return HI_ERR_CI_INVALID_PARA;
    }

    if (enCardId >= HI_UNF_CI_PCCD_BUTT)
    {
        HI_ERR_CI("Invalid enCardId.\n");
        return HI_ERR_CI_INVALID_PARA;
    }

    CHECK_CI_OPEN();

    stPCCD.enCIPort = enCIPort;
    stPCCD.enCardId = enCardId;

    s32Ret = ioctl(s_CIDevFd, CMD_CI_PCCD_WRITECOR, &stPCCD);

    return s32Ret;
}

HI_S32 HI_UNF_CI_PCCD_IOReset(HI_UNF_CI_PORT_E enCIPort, HI_UNF_CI_PCCD_E enCardId)
{
    HI_S32 s32Ret;
    CI_PCCD_S stPCCD;

    if (enCIPort >= HI_UNF_CI_PORT_BUTT)
    {
        HI_ERR_CI("Invalid enCIPort.\n");
        return HI_ERR_CI_INVALID_PARA;
    }

    if (enCardId >= HI_UNF_CI_PCCD_BUTT)
    {
        HI_ERR_CI("Invalid enCardId.\n");
        return HI_ERR_CI_INVALID_PARA;
    }

    CHECK_CI_OPEN();

    stPCCD.enCIPort = enCIPort;
    stPCCD.enCardId = enCardId;

    s32Ret = ioctl(s_CIDevFd, CMD_CI_PCCD_IORESET, &stPCCD);

    return s32Ret;
}

HI_S32 HI_UNF_CI_PCCD_NegBufferSize(HI_UNF_CI_PORT_E enCIPort, HI_UNF_CI_PCCD_E enCardId,
                                    HI_U16 *pu16BufferSize)
{
    HI_S32 s32Ret;
    CI_PCCD_BUFFERSIZE_S stBufferSize;

    if (enCIPort >= HI_UNF_CI_PORT_BUTT)
    {
        HI_ERR_CI("Invalid enCIPort.\n");
        return HI_ERR_CI_INVALID_PARA;
    }

    if (enCardId >= HI_UNF_CI_PCCD_BUTT)
    {
        HI_ERR_CI("Invalid enCardId.\n");
        return HI_ERR_CI_INVALID_PARA;
    }

    if (HI_NULL == pu16BufferSize)
    {
        HI_ERR_CI("Invalid pu16BufferSize.\n");
        return HI_ERR_CI_INVALID_PARA;
    }

    CHECK_CI_OPEN();

    stBufferSize.enCIPort = enCIPort;
    stBufferSize.enCardId = enCardId;
    stBufferSize.pu16BufferSize = pu16BufferSize;

    s32Ret = ioctl(s_CIDevFd, CMD_CI_PCCD_NEG_BUFFERSIZE, &stBufferSize);

    return s32Ret;
}

HI_S32 HI_UNF_CI_PCCD_TSCtrl(HI_UNF_CI_PORT_E enCIPort, HI_UNF_CI_PCCD_E enCardId,
                             HI_UNF_CI_PCCD_TSCTRL_E enCMD, HI_UNF_CI_PCCD_TSCTRL_PARAM_U *pParam)
{
    HI_S32 s32Ret;
    CI_PCCD_TSCTRL_S stTSCtrl;

    if (enCIPort >= HI_UNF_CI_PORT_BUTT)
    {
        HI_ERR_CI("Invalid enCIPort\n");
        return HI_ERR_CI_INVALID_PARA;
    }

    if (enCardId >= HI_UNF_CI_PCCD_BUTT)
    {
        HI_ERR_CI("Invalid enCardId.\n");
        return HI_ERR_CI_INVALID_PARA;
    }

    if (enCMD >= HI_UNF_CI_PCCD_TSCTRL_BUTT)
    {
        HI_ERR_CI("Invalid enCMD.\n");
        return HI_ERR_CI_INVALID_PARA;
    }

    CHECK_CI_OPEN();

    stTSCtrl.enCIPort = enCIPort;
    stTSCtrl.enCardId = enCardId;
    stTSCtrl.enCMD  = enCMD;
    stTSCtrl.pParam = pParam;

    s32Ret = ioctl(s_CIDevFd, CMD_CI_PCCD_TSCTRL, &stTSCtrl);

    return s32Ret;
}
