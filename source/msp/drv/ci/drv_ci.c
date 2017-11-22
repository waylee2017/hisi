/******************************************************************************

  Copyright (C), 2001-2011, Hisilicon Tech. Co., Ltd.

 ******************************************************************************
  File Name     : drv_ci.c
  Version       : Initial Draft
  Author        : Hisilicon multimedia software group
  Created       : 2011/05/17
  Description   :
  History       :
  1.Date        : 2011/05/17
    Author      : l00185424
    Modification: Created file

 *******************************************************************************/

/**
 * \file
 * \brief Provide the realization of the CI driver interface
 */

/*----------------------------- INCLUDE FILES ------------------------------------------*/

#include <linux/delay.h>
#include <asm/uaccess.h>
#include <linux/semaphore.h>

#include "hi_debug.h"
#include "hi_kernel_adapt.h"
#include "hi_drv_mem.h"
#include "drv_ci_ext.h"

/*--------------------------- MACRO DECLARATIONS ---------------------------------------*/

#define MAX_TUPPLE_BUFFER 0x100     /* Maximum Tupple Buffer Size */

/* Status register bits */
#define PCCD_RE 0x01    /* Read error */
#define PCCD_WE 0x02    /* Write error */
#define PCCD_FR 0x40    /* Free */
#define PCCD_DA 0x80    /* Data available */

/* Command register bits */
#define PCCD_SETHC 0x01    /* Host control bit set */
#define PCCD_SETSW 0x02    /* Size write set */
#define PCCD_SETSR 0x04    /* Size read set  */
#define PCCD_SETRS 0x08    /* Interface reset */
#define PCCD_CLEAR 0x00    /* Clear Command Register */

/* EN50221 Specific Constants */
#define STCE_EV1 "DVB_HOST"
#define STCE_PD1 "DVB_CI_MODULE"
#define STCE_EV2 "DTV_HOST"
#define STCE_PD2 "DTV_CI_MODULE"
#define STCF_LIB "DVB_CI_V1.00"
#define STCF_LIB_LEN (12)
#define TPCE_IO 0x22
#define TPCE_IF 0x04
#define COR_BASE_ADDRESS_UPPERLIMIT 0xFFE
#define STCI_IFN 0x41
#define STCI_IFN_1 0x02
#define TPLLV1_MINOR 0x00
#define TPLLV1_MAJOR 0x05
#define TPLLMANFID_SIZE 0x04
#define TPCC_RFSZ_MASK 0xC0
#define TPCC_RMSZ_MASK 0x3C
#define TPCC_RASZ_MASK 0x03
#define TPCE_INDX_MASK 0x3F
#define DTYPE_NULL 0x00
#define DTYPE_RESERVED 0x0F
#define DSPEED_MASK 0x07
#define TPCE_TD_WAIT_SCALE_MASK 0x03
#define TPCE_TD_READY_SCALE_MASK 0x1C
#define TPCE_IO_RD_LENSIZE_MASK 0xC0
#define TPCE_IO_RD_ADDRSIZE_MASK 0x30
#define TPCE_IO_RD_ARNUM_MASK 0x0F
#define TPCE_MS_WINDOW_MASK 0x07
#define TPCE_MS_LENSIZE_MASK 0x18
#define TPCE_MS_CARDADDRSIZE_MASK 0x60
#define STCE_EV_TAG 0xC0
#define STCE_PD_TAG 0xC1

/* Tupple tag of CIS */
#define CISTPL_DEVICE 0x01
#define CISTPL_CHECKSUM 0x10
#define CISTPL_LINKTARGET 0x13
#define CISTPL_NO_LINK 0x14
#define CISTPL_VERS_1 0x15
#define CISTPL_ALTSTR 0x16
#define CISTPL_DEVICE_A 0x17
#define CISTPL_CONFIG 0x1a
#define CISTPL_CFTABLE_ENTRY 0x1b
#define CISTPL_DEVICE_OC 0x1c
#define CISTPL_DEVICE_OA 0x1d
#define CISTPL_MANFID 0x20
#define CISTPL_FUNCID 0x21
#define CISTPL_END 0xff

/* Masking bit */
#define MASK_BIT_0 0x01
#define MASK_BIT_1 0x02
#define MASK_BIT_2 0x04
#define MASK_BIT_3 0x08
#define MASK_BIT_4 0x10
#define MASK_BIT_5 0x20
#define MASK_BIT_6 0x40
#define MASK_BIT_7 0x80

#define INVALID_DATA_SIZE 0xFFFF
#define DBG_DUMP_LINE_SIZE (16)

#define CIPORT_LOCK(enCIPort) \
    do \
    { \
        HI_S32 lockRet; \
        if (1) \
        { \
            lockRet = down_interruptible(&s_astCIDrvParam[enCIPort].semCIPort); \
        } \
    } while (0)
#define CIPORT_UNLOCK(enCIPort) do {up(&s_astCIDrvParam[enCIPort].semCIPort);} while (0)

#define CHECK_CIPORT_VALID(enCIPort) \
    { \
        if (enCIPort >= HI_UNF_CI_PORT_BUTT) \
        { \
            HI_ERR_CI("Invalid CI Port:%d.\n", enCIPort); \
            return HI_ERR_CI_INVALID_PARA; \
        } \
    }

#define CHECK_PCCD_VALID(enCardId) \
    { \
        if (enCardId >= HI_UNF_CI_PCCD_BUTT) \
        { \
            HI_ERR_CI("Invalid Card Id:%d.\n", enCardId); \
            return HI_ERR_CI_INVALID_PARA; \
        } \
    }

#define CHECK_CI_OPENED(enCIPort) \
    { \
        if (!s_astCIDrvParam[enCIPort].bOpen) \
        { \
            CIPORT_UNLOCK(enCIPort); \
            HI_ERR_CI("enCIPort %d didn't init.\n", enCIPort); \
            return HI_ERR_CI_NOT_INIT; \
        } \
    }

#define CHECK_CI_PCCD_OPENED(enCIPort, enCardId) \
    { \
        if ((!s_astCIDrvParam[enCIPort].bOpen) \
            || (!s_astCIDrvParam[enCIPort].astCardParam[enCardId].bCardOpen)) \
        { \
            CIPORT_UNLOCK(enCIPort); \
            HI_ERR_CI("enCIPort %d enCardId %d didn't init.\n", enCIPort, enCardId); \
            return HI_ERR_CI_NOT_INIT; \
        } \
    }

/*-------------------- STATIC STRUCTURE DECLARATIONS -----------------------------------*/

/*Private Data Structures***********************************************/

/* CI PC CARD configure and management structure */
typedef struct hiCI_DRV_PCCD_PARAMETER
{
    HI_BOOL          bCardOpen;
    HI_BOOL          bPrintIOData;  /* Print IO data */
    CI_PCCD_ATTR_S   stAttr;        /* Voltage, speed, ... */
    HI_U32           u32TPCC_RADR;  /* TPCC_RADR, will be evaluated when check CIS */
    HI_U8            u8TPCE_INDX;   /* TPCE_INDX, will be evaluated when check CIS */
    HI_U8            u8Reserve;
    HI_U16           u16BufferSize; /* Save buffer size, prevent read ro write overflow */
    HI_U8           *pu8Buffer;     /* buffer use to save IO data */
} CI_DRV_PCCD_PARAMETER_S;

/* CI driver configure structure */
typedef struct hiCI_DRV_PARAMETER_S
{
    HI_BOOL bOpen;

    /* Mutex on CI Port, multi card on the same CI port can't operate the same time */
    struct semaphore semCIPort;
    CI_DRV_PCCD_PARAMETER_S astCardParam[HI_UNF_CI_PCCD_BUTT];
    HI_UNF_CI_ATTR_S        stAttr;
    CI_OPS_S                stOP;
} CI_DRV_PARAMETER_S;

/* Tupple Data Structure */
typedef struct hiCI_PCCD_TUPPLE_S
{
    HI_U8 u8TuppleTag;
    HI_U8 u8TuppleLink;
    HI_U8 u8TuppleData[MAX_TUPPLE_BUFFER];
} CI_PCCD_TUPPLE_S, *CI_PCCD_TUPPLE_S_PTR;

/*------------------------- GLOBAL DECLARATIONS ----------------------------------------*/

/*------------------------- STATIC DECLARATIONS ----------------------------------------*/

static CI_DRV_PARAMETER_S s_astCIDrvParam[HI_UNF_CI_PORT_BUTT];

static HI_VOID DBG_Dump(HI_U8 * pu8Data, HI_U32 u32Len);
static HI_VOID CI_Device_Init(HI_UNF_CI_PORT_E enCIPort);
static HI_VOID CI_Device_CIMaX(HI_UNF_CI_PORT_E enCIPort);
static HI_VOID CI_Device_CIMaXPlus(HI_UNF_CI_PORT_E enCIPort);
static HI_VOID CI_Device_HICI(HI_UNF_CI_PORT_E enCIPort);
static HI_VOID CI_Device_StarCI2Win(HI_UNF_CI_PORT_E enCIPort);

/*------------------------------------ CODE --------------------------------------------*/

static HI_VOID DBG_Dump(HI_U8 * pu8Data, HI_U32 u32Len)
{
    HI_U32 i;
    HI_U8 au8Line[64];

    au8Line[0] = 0;

    for (i = 0; i < u32Len; i++)
    {
        sprintf(au8Line, "%s%.2x ", au8Line, pu8Data[i]);
        if (!((i + 1) % DBG_DUMP_LINE_SIZE))
        {
            HI_ERR_CI("%s\n", au8Line);
            au8Line[0] = 0;
        } /* if */
    } /* for */

    if (i % DBG_DUMP_LINE_SIZE)
    {
        HI_ERR_CI("%s\n", au8Line);
    } /* if */
} /* DBG_Dump */

static HI_VOID CI_Device_Init(HI_UNF_CI_PORT_E enCIPort)
{
    s_astCIDrvParam[enCIPort].stOP.ci_device_open = HI_NULL;
    s_astCIDrvParam[enCIPort].stOP.ci_device_close = HI_NULL;
    s_astCIDrvParam[enCIPort].stOP.ci_pccd_open = HI_NULL;
    s_astCIDrvParam[enCIPort].stOP.ci_pccd_close = HI_NULL;
    s_astCIDrvParam[enCIPort].stOP.ci_pccd_read_byte = HI_NULL;
    s_astCIDrvParam[enCIPort].stOP.ci_pccd_write_byte = HI_NULL;
    s_astCIDrvParam[enCIPort].stOP.ci_pccd_detect = HI_NULL;
    s_astCIDrvParam[enCIPort].stOP.ci_pccd_ready_or_busy = HI_NULL;
    s_astCIDrvParam[enCIPort].stOP.ci_pccd_reset = HI_NULL;
    s_astCIDrvParam[enCIPort].stOP.ci_pccd_set_access_mode = HI_NULL;
    s_astCIDrvParam[enCIPort].stOP.ci_pccd_get_access_mode = HI_NULL;
    s_astCIDrvParam[enCIPort].stOP.ci_pccd_get_rw_status = HI_NULL;
    s_astCIDrvParam[enCIPort].stOP.ci_pccd_ts_bypass = HI_NULL;
    s_astCIDrvParam[enCIPort].stOP.ci_pccd_get_bypass_mode = HI_NULL;
    s_astCIDrvParam[enCIPort].stOP.ci_pccd_set_attr = HI_NULL;
    s_astCIDrvParam[enCIPort].stOP.ci_pccd_ctrl_power = HI_NULL;
    s_astCIDrvParam[enCIPort].stOP.ci_standby = HI_NULL;
    s_astCIDrvParam[enCIPort].stOP.ci_resume = HI_NULL;
    s_astCIDrvParam[enCIPort].stOP.ci_pccd_set_ts_mode = HI_NULL;
    s_astCIDrvParam[enCIPort].stOP.ci_pccd_get_cis = HI_NULL;
    s_astCIDrvParam[enCIPort].stOP.ci_pccd_write_cor = HI_NULL;
    s_astCIDrvParam[enCIPort].stOP.ci_pccd_negotiate = HI_NULL;
    s_astCIDrvParam[enCIPort].stOP.ci_pccd_io_reset = HI_NULL;
    s_astCIDrvParam[enCIPort].stOP.ci_pccd_io_write = HI_NULL;
    s_astCIDrvParam[enCIPort].stOP.ci_pccd_io_read = HI_NULL;
    s_astCIDrvParam[enCIPort].stOP.ci_pccd_ts_write = HI_NULL;
}

static HI_VOID CI_Device_CIMaX(HI_UNF_CI_PORT_E enCIPort)
{
#if defined (CIMAX_SUPPORT)
    CI_Device_Init(enCIPort);
    s_astCIDrvParam[enCIPort].stOP.ci_device_open = CIMAX_Open;
    s_astCIDrvParam[enCIPort].stOP.ci_device_close = CIMAX_Close;
    s_astCIDrvParam[enCIPort].stOP.ci_pccd_open = CIMAX_PCCD_Open;
    s_astCIDrvParam[enCIPort].stOP.ci_pccd_close = CIMAX_PCCD_Close;
    s_astCIDrvParam[enCIPort].stOP.ci_pccd_read_byte = CIMAX_PCCD_ReadByte;
    s_astCIDrvParam[enCIPort].stOP.ci_pccd_write_byte = CIMAX_PCCD_WriteByte;
    s_astCIDrvParam[enCIPort].stOP.ci_pccd_detect = CIMAX_PCCD_Detect;
    s_astCIDrvParam[enCIPort].stOP.ci_pccd_ready_or_busy = CIMAX_PCCD_ReadyOrBusy;
    s_astCIDrvParam[enCIPort].stOP.ci_pccd_reset = CIMAX_PCCD_Reset;
    s_astCIDrvParam[enCIPort].stOP.ci_pccd_set_access_mode = CIMAX_PCCD_SetAccessMode;
    s_astCIDrvParam[enCIPort].stOP.ci_pccd_get_access_mode = CIMAX_PCCD_GetAccessMode;
    s_astCIDrvParam[enCIPort].stOP.ci_pccd_get_rw_status = CIMAX_PCCD_GetRWStatus;
    s_astCIDrvParam[enCIPort].stOP.ci_pccd_ts_bypass = CIMAX_PCCD_TSByPass;
    s_astCIDrvParam[enCIPort].stOP.ci_pccd_set_ts_mode = CIMAX_PCCD_SetTSMode;
    s_astCIDrvParam[enCIPort].stOP.ci_pccd_get_bypass_mode = CIMAX_PCCD_GetBypassMode;
    s_astCIDrvParam[enCIPort].stOP.ci_pccd_set_attr = CIMAX_PCCD_SetAttr;
    s_astCIDrvParam[enCIPort].stOP.ci_pccd_ctrl_power = CIMAX_PCCD_CtrlPower;
    s_astCIDrvParam[enCIPort].stOP.ci_standby = CIMAX_Standby;
    s_astCIDrvParam[enCIPort].stOP.ci_resume = CIMAX_Resume;
#endif
}

static HI_VOID CI_Device_CIMaXPlus(HI_UNF_CI_PORT_E enCIPort)
{
#if defined (CIMAXPLUS_SUPPORT)
    CI_Device_Init(enCIPort);
    s_astCIDrvParam[enCIPort].stOP.ci_device_open = CIMAXPLUS_Open;
    s_astCIDrvParam[enCIPort].stOP.ci_device_close = CIMAXPLUS_Close;
    s_astCIDrvParam[enCIPort].stOP.ci_pccd_open = CIMAXPLUS_PCCD_Open;
    s_astCIDrvParam[enCIPort].stOP.ci_pccd_close = CIMAXPLUS_PCCD_Close;
    s_astCIDrvParam[enCIPort].stOP.ci_pccd_detect = CIMAXPLUS_PCCD_Detect;
    s_astCIDrvParam[enCIPort].stOP.ci_pccd_ready_or_busy = CIMAXPLUS_PCCD_ReadyOrBusy;
    s_astCIDrvParam[enCIPort].stOP.ci_pccd_reset = CIMAXPLUS_PCCD_Reset;
    s_astCIDrvParam[enCIPort].stOP.ci_pccd_set_access_mode = CIMAXPLUS_PCCD_SetAccessMode;
    s_astCIDrvParam[enCIPort].stOP.ci_pccd_get_access_mode = CIMAXPLUS_PCCD_GetAccessMode;
    s_astCIDrvParam[enCIPort].stOP.ci_pccd_get_rw_status = CIMAXPLUS_PCCD_GetRWStatus;
    s_astCIDrvParam[enCIPort].stOP.ci_pccd_ts_bypass = CIMAXPLUS_PCCD_TSByPass;
    s_astCIDrvParam[enCIPort].stOP.ci_pccd_get_bypass_mode = CIMAXPLUS_PCCD_GetBypassMode;
    s_astCIDrvParam[enCIPort].stOP.ci_pccd_set_attr = CIMAXPLUS_PCCD_SetAttr;
    s_astCIDrvParam[enCIPort].stOP.ci_pccd_ctrl_power = CIMAXPLUS_PCCD_CtrlPower;
    s_astCIDrvParam[enCIPort].stOP.ci_standby = CIMAXPLUS_Standby;
    s_astCIDrvParam[enCIPort].stOP.ci_resume = CIMAXPLUS_Resume;
    s_astCIDrvParam[enCIPort].stOP.ci_pccd_set_ts_mode = CIMAXPLUS_PCCD_SetTSMode;
    s_astCIDrvParam[enCIPort].stOP.ci_pccd_get_cis = CIMAXPLUS_PCCD_GetCIS;
    s_astCIDrvParam[enCIPort].stOP.ci_pccd_write_cor = CIMAXPLUS_PCCD_WriteCOR;
    s_astCIDrvParam[enCIPort].stOP.ci_pccd_negotiate = CIMAXPLUS_PCCD_Negotiate;
    s_astCIDrvParam[enCIPort].stOP.ci_pccd_io_reset = CIMAXPLUS_PCCD_IOReset;
    s_astCIDrvParam[enCIPort].stOP.ci_pccd_io_write = CIMAXPLUS_PCCD_IOWrite;
    s_astCIDrvParam[enCIPort].stOP.ci_pccd_io_read = CIMAXPLUS_PCCD_IORead;
    s_astCIDrvParam[enCIPort].stOP.ci_pccd_ts_write = CIMAXPLUS_PCCD_TSWrite;
#endif
}

static HI_VOID CI_Device_HICI(HI_UNF_CI_PORT_E enCIPort)
{
#if defined (HICI_SUPPORT)
    CI_Device_Init(enCIPort);
    s_astCIDrvParam[enCIPort].stOP.ci_device_open  = HI_NULL;
    s_astCIDrvParam[enCIPort].stOP.ci_device_close = HI_NULL;
#endif
}

static HI_VOID CI_Device_StarCI2Win(HI_UNF_CI_PORT_E enCIPort)
{
#if defined (STARCI2WIN_SUPPORT)
    CI_Device_Init(enCIPort);
    s_astCIDrvParam[enCIPort].stOP.ci_device_open  = HI_NULL;
    s_astCIDrvParam[enCIPort].stOP.ci_device_close = HI_NULL;
#endif
}

HI_S32 CI_Init(HI_VOID)
{
    HI_UNF_CI_PORT_E enCIPort;

    memset(s_astCIDrvParam, 0, sizeof(s_astCIDrvParam));

    for (enCIPort = HI_UNF_CI_PORT_0; enCIPort < HI_UNF_CI_PORT_BUTT; enCIPort++)
    {
        HI_INIT_MUTEX(&s_astCIDrvParam[enCIPort].semCIPort);

        CIPORT_LOCK(enCIPort);

        /* Default CI device */
#if defined (CIMAX_SUPPORT)
        s_astCIDrvParam[enCIPort].stAttr.enDevType = HI_UNF_CI_DEV_CIMAX;
        s_astCIDrvParam[enCIPort].stAttr.enTSIMode = HI_UNF_CI_TSI_DAISY_CHAINED;
        s_astCIDrvParam[enCIPort].stAttr.enTSMode[HI_UNF_CI_PCCD_A] = HI_UNF_CI_TS_SERIAL;
        s_astCIDrvParam[enCIPort].stAttr.unDevAttr.stCIMaX.u32SMIBitWidth = DEF_CIMAX_SMI_BITWIDTH;
        s_astCIDrvParam[enCIPort].stAttr.unDevAttr.stCIMaX.u32SMIBaseAddr = DEF_CIMAX_SMC_BANK0_BASE_ADDR;
        s_astCIDrvParam[enCIPort].stAttr.unDevAttr.stCIMaX.u32I2cNum = DEF_CIMAX_I2CNum;
        s_astCIDrvParam[enCIPort].stAttr.unDevAttr.stCIMaX.u8DevAddress = DEF_CIMAX_ADDR;
        CI_Device_CIMaX(enCIPort);
#elif defined (CIMAXPLUS_SUPPORT)
        s_astCIDrvParam[enCIPort].stAttr.enDevType = HI_UNF_CI_DEV_CIMAXPLUS;
        s_astCIDrvParam[enCIPort].stAttr.enTSIMode = HI_UNF_CI_TSI_INDEPENDENT;
        s_astCIDrvParam[enCIPort].stAttr.enTSMode[HI_UNF_CI_PCCD_A] = HI_UNF_CI_TS_PARALLEL;
        s_astCIDrvParam[enCIPort].stAttr.enTSMode[HI_UNF_CI_PCCD_B] = HI_UNF_CI_TS_SERIAL;
        //s_astCIDrvParam[enCIPort].stAttr.unDevAttr.stCIMaXPlus.u32ResetGpioNo = DEF_CIMAXPLUS_RESET_GPIO;
        CI_Device_CIMaXPlus(enCIPort);
#elif defined (HICI_SUPPORT)
        s_astCIDrvParam[enCIPort].stAttr.enDevType = HI_UNF_CI_DEV_HICI;
        CI_Device_HICI(enCIPort);
#elif defined (STARCI2WIN_SUPPORT)
        s_astCIDrvParam[enCIPort].stAttr.enDevType = HI_UNF_CI_DEV_STARCI2WIN;
        CI_Device_StarCI2Win(enCIPort);
#else
        #error You need to define at least one type of CI devices!
#endif
        CIPORT_UNLOCK(enCIPort);
    }

    return HI_SUCCESS;
}

HI_VOID CI_DeInit(HI_VOID)
{
    memset(s_astCIDrvParam, 0, sizeof(s_astCIDrvParam));
}

/* Added begin 2012-04-24 l00185424: support various CI device */
HI_S32 CI_SetAttr(HI_UNF_CI_PORT_E enCIPort, HI_UNF_CI_ATTR_S stCIAttr)
{
    HI_S32 s32Ret = HI_SUCCESS;

    CHECK_CIPORT_VALID(enCIPort);

    if (HI_UNF_CI_DEV_BUTT <= stCIAttr.enDevType)
    {
        return HI_ERR_CI_INVALID_PARA;
    }

    if (HI_UNF_CI_TSI_BUTT <= stCIAttr.enTSIMode)
    {
        return HI_ERR_CI_INVALID_PARA;
    }

    if (HI_UNF_CI_TS_BUTT <= stCIAttr.enTSMode[HI_UNF_CI_PCCD_A])
    {
        return HI_ERR_CI_INVALID_PARA;
    }

    /* Only CIMAXPLUS support TS B now */
    if ((HI_UNF_CI_DEV_CIMAXPLUS==stCIAttr.enDevType) && (HI_UNF_CI_TS_BUTT<=stCIAttr.enTSMode[HI_UNF_CI_PCCD_B]))
    {
        return HI_ERR_CI_INVALID_PARA;
    }

    CIPORT_LOCK(enCIPort);
    s_astCIDrvParam[enCIPort].stAttr = stCIAttr;

    switch (stCIAttr.enDevType)
    {
        /* CIMaX, default */
    case HI_UNF_CI_DEV_CIMAX:
    default:
        CI_Device_CIMaX(enCIPort);
        break;

        /* CIMaX+ */
    case HI_UNF_CI_DEV_CIMAXPLUS:
        CI_Device_CIMaXPlus(enCIPort);
        break;

        /* HICI */
    case HI_UNF_CI_DEV_HICI:
        CI_Device_HICI(enCIPort);
        break;

        /* StarCI2Win */
    case HI_UNF_CI_DEV_STARCI2WIN:
        CI_Device_StarCI2Win(enCIPort);
        break;
    }

    /*
     * Normally, user should call this function after open CI device
     * Once they open device earlier, close and open the device again.
     */
    if (s_astCIDrvParam[enCIPort].bOpen)
    {
        s_astCIDrvParam[enCIPort].stOP.ci_device_close(enCIPort);
        s32Ret = s_astCIDrvParam[enCIPort].stOP.ci_device_open(enCIPort, s_astCIDrvParam[enCIPort].stAttr);
    }

    CIPORT_UNLOCK(enCIPort);
    return s32Ret;
}

HI_S32 CI_GetAttr(HI_UNF_CI_PORT_E enCIPort, HI_UNF_CI_ATTR_S *pstCIAttr)
{
    CHECK_CIPORT_VALID(enCIPort);
    if (HI_NULL == pstCIAttr)
    {
        return HI_ERR_CI_INVALID_PARA;
    }

    CIPORT_LOCK(enCIPort);
    *pstCIAttr = s_astCIDrvParam[enCIPort].stAttr;
    CIPORT_UNLOCK(enCIPort);

    return HI_SUCCESS;
}

/* Added end 2012-04-24 l00185424: support various CI device */

HI_S32 CI_Open(HI_UNF_CI_PORT_E enCIPort)
{
    HI_S32 s32Ret = HI_SUCCESS;

    CHECK_CIPORT_VALID(enCIPort);

    CIPORT_LOCK(enCIPort);

    /* Make sure open once */
    if (s_astCIDrvParam[enCIPort].bOpen)
    {
        HI_ERR_CI("CI PORT %d had been opened.\n", enCIPort);
        CIPORT_UNLOCK(enCIPort);
        return HI_SUCCESS;
    }

    if (s_astCIDrvParam[enCIPort].stOP.ci_device_open)
    {
        s32Ret = s_astCIDrvParam[enCIPort].stOP.ci_device_open(enCIPort, s_astCIDrvParam[enCIPort].stAttr);
    }

    if (HI_SUCCESS == s32Ret)
    {
        /* Init parameters */
        s_astCIDrvParam[enCIPort].bOpen = HI_TRUE;
    }
    else
    {
        HI_ERR_CI("CI %d open fail:%08x\n", enCIPort, s32Ret);
    }

    CIPORT_UNLOCK(enCIPort);
    return s32Ret;
}

HI_VOID CI_Close(HI_UNF_CI_PORT_E enCIPort)
{
    HI_UNF_CI_PCCD_E enCardId;

    if (enCIPort >= HI_UNF_CI_PORT_BUTT)
    {
        return;
    }

    CIPORT_LOCK(enCIPort);
    if (!s_astCIDrvParam[enCIPort].bOpen)
    {
        CIPORT_UNLOCK(enCIPort);
        return;
    }

    /* Close all cards of this group. */
    for (enCardId = HI_UNF_CI_PCCD_A; enCardId < HI_UNF_CI_PCCD_BUTT; enCardId++)
    {
        if (s_astCIDrvParam[enCIPort].astCardParam[enCardId].bCardOpen)
        {
            s_astCIDrvParam[enCIPort].stOP.ci_pccd_close(enCIPort, enCardId);
            s_astCIDrvParam[enCIPort].astCardParam[enCardId].bCardOpen = HI_FALSE;
        }
    }

    if (s_astCIDrvParam[enCIPort].stOP.ci_device_close)
    {
        s_astCIDrvParam[enCIPort].stOP.ci_device_close(enCIPort);
        s_astCIDrvParam[enCIPort].bOpen = HI_FALSE;
    }

    CIPORT_UNLOCK(enCIPort);
}

HI_S32 CI_Standby(HI_UNF_CI_PORT_E enCIPort)
{
    HI_S32 s32Ret = HI_SUCCESS;

    CHECK_CIPORT_VALID(enCIPort);
    CIPORT_LOCK(enCIPort);
    CHECK_CI_OPENED(enCIPort);

    if (s_astCIDrvParam[enCIPort].stOP.ci_standby)
    {
        s32Ret = s_astCIDrvParam[enCIPort].stOP.ci_standby(enCIPort);
    }

    CIPORT_UNLOCK(enCIPort);

    return s32Ret;
}

HI_S32 CI_Resume(HI_UNF_CI_PORT_E enCIPort)
{
    HI_S32 s32Ret = HI_SUCCESS;

    CHECK_CIPORT_VALID(enCIPort);
    CIPORT_LOCK(enCIPort);
    CHECK_CI_OPENED(enCIPort);

    if (s_astCIDrvParam[enCIPort].stOP.ci_resume)
    {
        s32Ret = s_astCIDrvParam[enCIPort].stOP.ci_resume(enCIPort);
    }

    CIPORT_UNLOCK(enCIPort);

    return s32Ret;
}

HI_S32 CI_PCCD_Open(HI_UNF_CI_PORT_E enCIPort, HI_UNF_CI_PCCD_E enCardId)
{
    HI_S32 s32Ret;

    CHECK_CIPORT_VALID(enCIPort);
    CHECK_PCCD_VALID(enCardId);
    CIPORT_LOCK(enCIPort);
    CHECK_CI_OPENED(enCIPort);

    /* Make sure open once */
    if (s_astCIDrvParam[enCIPort].astCardParam[enCardId].bCardOpen)
    {
        HI_ERR_CI("CI PORT %d PCCD %d had been opened.\n", enCIPort, enCardId);
        CIPORT_UNLOCK(enCIPort);
        return HI_SUCCESS;
    }

    if (s_astCIDrvParam[enCIPort].stOP.ci_pccd_open)
    {
        s32Ret = s_astCIDrvParam[enCIPort].stOP.ci_pccd_open(enCIPort, enCardId);

        if (HI_SUCCESS == s32Ret)
        {
            /* Init buffer */
            s_astCIDrvParam[enCIPort].astCardParam[enCardId].pu8Buffer =
                HI_VMALLOC_CI(CI_PCCD_MAX_BUFFERSIZE);
            if (HI_NULL == s_astCIDrvParam[enCIPort].astCardParam[enCardId].pu8Buffer)
            {
                HI_FATAL_CI("CI %d PCCD %d alloc memory fail.\n", enCIPort, enCardId);
                CIPORT_UNLOCK(enCIPort);
                return HI_ERR_CI_NO_MEMORY;
            }

            s_astCIDrvParam[enCIPort].astCardParam[enCardId].u16BufferSize = CI_PCCD_MAX_BUFFERSIZE;

            /* Init parameters */
            s_astCIDrvParam[enCIPort].astCardParam[enCardId].bCardOpen = HI_TRUE;
            HI_INFO_CI("CI %d PCCD %d open success\n", enCIPort, enCardId);
        }
        else
        {
            HI_ERR_CI("CI %d PCCD %d open fail:%08x\n", enCIPort, enCardId, s32Ret);
        }
    }
    else
    {
        CIPORT_UNLOCK(enCIPort);
        return HI_FAILURE;
    }

    s_astCIDrvParam[enCIPort].astCardParam[enCardId].bPrintIOData = HI_FALSE;

    CIPORT_UNLOCK(enCIPort);
    return s32Ret;
}

HI_VOID CI_PCCD_Close(HI_UNF_CI_PORT_E enCIPort, HI_UNF_CI_PCCD_E enCardId)
{
    if ((enCIPort >= HI_UNF_CI_PORT_BUTT) || (enCardId >= HI_UNF_CI_PCCD_BUTT))
    {
        return;
    }

    CIPORT_LOCK(enCIPort);
    if ((!s_astCIDrvParam[enCIPort].bOpen)
       || (!s_astCIDrvParam[enCIPort].astCardParam[enCardId].bCardOpen))
    {
        CIPORT_UNLOCK(enCIPort);
        return;
    }

    /* free buffer */
    if (HI_NULL != s_astCIDrvParam[enCIPort].astCardParam[enCardId].pu8Buffer)
    {
        HI_VFREE_CI(s_astCIDrvParam[enCIPort].astCardParam[enCardId].pu8Buffer);
        s_astCIDrvParam[enCIPort].astCardParam[enCardId].pu8Buffer = HI_NULL;
        s_astCIDrvParam[enCIPort].astCardParam[enCardId].u16BufferSize = 0;
    }

    /* Hardware close */
    if (s_astCIDrvParam[enCIPort].stOP.ci_pccd_close)
    {
        s_astCIDrvParam[enCIPort].stOP.ci_pccd_close(enCIPort, enCardId);
    }

    s_astCIDrvParam[enCIPort].astCardParam[enCardId].bPrintIOData = HI_FALSE;

    /* Close flag */
    s_astCIDrvParam[enCIPort].astCardParam[enCardId].bCardOpen = HI_FALSE;

    CIPORT_UNLOCK(enCIPort);
}

HI_S32 CI_PCCD_CtrlPower(HI_UNF_CI_PORT_E enCIPort, HI_UNF_CI_PCCD_E enCardId,
                         HI_UNF_CI_PCCD_CTRLPOWER_E enCtrlPower)
{
    HI_S32 s32Ret = HI_SUCCESS;

    CHECK_CIPORT_VALID(enCIPort);
    CHECK_PCCD_VALID(enCardId);
    CIPORT_LOCK(enCIPort);
    CHECK_CI_PCCD_OPENED(enCIPort, enCardId);

    if (s_astCIDrvParam[enCIPort].stOP.ci_pccd_ctrl_power)
    {
        s32Ret = s_astCIDrvParam[enCIPort].stOP.ci_pccd_ctrl_power(enCIPort, enCardId, enCtrlPower);
    }

    CIPORT_UNLOCK(enCIPort);

    return s32Ret;
}

HI_S32 CI_PCCD_Reset(HI_UNF_CI_PORT_E enCIPort, HI_UNF_CI_PCCD_E enCardId)
{
    HI_S32 s32Ret = HI_SUCCESS;

    CHECK_CIPORT_VALID(enCIPort);
    CHECK_PCCD_VALID(enCardId);
    CIPORT_LOCK(enCIPort);
    CHECK_CI_PCCD_OPENED(enCIPort, enCardId);

    if (s_astCIDrvParam[enCIPort].stOP.ci_pccd_reset)
    {
        s32Ret = s_astCIDrvParam[enCIPort].stOP.ci_pccd_reset(enCIPort, enCardId);

        if (HI_SUCCESS == s32Ret)
        {
            HI_INFO_CI("CI %d PCCD %d reset success\n", enCIPort, enCardId);
        }
        else
        {
            HI_ERR_CI("CI %d PCCD %d reset fail:%08x\n", enCIPort, enCardId, s32Ret);
        }
    }
    else
    {
        s32Ret = HI_ERR_CI_UNKONWN;
    }

    CIPORT_UNLOCK(enCIPort);

    return s32Ret;
}

HI_S32 CI_PCCD_IsReady(HI_UNF_CI_PORT_E enCIPort, HI_UNF_CI_PCCD_E enCardId,
                       HI_UNF_CI_PCCD_READY_E_PTR penCardReady)
{
    HI_S32 s32Ret = HI_SUCCESS;
    HI_UNF_CI_PCCD_READY_E enCardReady = HI_UNF_CI_PCCD_BUSY;

    CHECK_CIPORT_VALID(enCIPort);
    CHECK_PCCD_VALID(enCardId);

    if (HI_NULL == penCardReady)
    {
        return HI_ERR_CI_INVALID_PARA;
    }

    CIPORT_LOCK(enCIPort);
    CHECK_CI_PCCD_OPENED(enCIPort, enCardId);

    if (s_astCIDrvParam[enCIPort].stOP.ci_pccd_ready_or_busy)
    {
        s32Ret = s_astCIDrvParam[enCIPort].stOP.ci_pccd_ready_or_busy(enCIPort, enCardId, &enCardReady);

        if (HI_SUCCESS == s32Ret)
        {
            if (copy_to_user(penCardReady, &enCardReady, sizeof(enCardReady)))
            {
                s32Ret = HI_FAILURE;
            }

            HI_INFO_CI("CI %d PCCD %d ready: %d\n", enCIPort, enCardId, enCardReady);
        }
        else
        {
            HI_ERR_CI("CI %d PCCD %d get ready status fail:%08x\n",
                      enCIPort, enCardId, s32Ret);
        }
    }

    CIPORT_UNLOCK(enCIPort);

    return s32Ret;
}

HI_S32 CI_PCCD_Detect(HI_UNF_CI_PORT_E enCIPort, HI_UNF_CI_PCCD_E enCardId,
                      HI_UNF_CI_PCCD_STATUS_E_PTR penCardIdStatus)
{
    HI_S32 s32Ret = HI_FAILURE;
    HI_UNF_CI_PCCD_STATUS_E enCardIdStatus = HI_UNF_CI_PCCD_STATUS_ABSENT;

    CHECK_CIPORT_VALID(enCIPort);
    CHECK_PCCD_VALID(enCardId);
    if (HI_NULL == penCardIdStatus)
    {
        return HI_ERR_CI_INVALID_PARA;
    }

    CIPORT_LOCK(enCIPort);
    CHECK_CI_PCCD_OPENED(enCIPort, enCardId);

    if (s_astCIDrvParam[enCIPort].stOP.ci_pccd_detect)
    {
        s32Ret = s_astCIDrvParam[enCIPort].stOP.ci_pccd_detect(enCIPort, enCardId, &enCardIdStatus);

        if (HI_SUCCESS == s32Ret)
        {
            if (copy_to_user(penCardIdStatus, &enCardIdStatus, sizeof(enCardIdStatus)))
            {
                s32Ret = HI_FAILURE;
            }

            HI_INFO_CI("CI %d PCCD %d detect: %d\n", enCIPort, enCardId, enCardIdStatus);
        }
        else
        {
            HI_ERR_CI("CI %d PCCD %d detect fail:%08x\n", enCIPort, enCardId, s32Ret);
        }
    }

    CIPORT_UNLOCK(enCIPort);

    return s32Ret;
}

HI_S32 CI_PCCD_SetAccessMode(HI_UNF_CI_PORT_E enCIPort, HI_UNF_CI_PCCD_E enCardId,
                             HI_UNF_CI_PCCD_ACCESSMODE_E enAccessMode)
{
    HI_S32 s32Ret = HI_SUCCESS;

    CHECK_CIPORT_VALID(enCIPort);
    CHECK_PCCD_VALID(enCardId);
    CIPORT_LOCK(enCIPort);
    CHECK_CI_PCCD_OPENED(enCIPort, enCardId);

    /* Registed SetAccessMode function */
    if (s_astCIDrvParam[enCIPort].stOP.ci_pccd_set_access_mode)
    {
        s32Ret = s_astCIDrvParam[enCIPort].stOP.ci_pccd_set_access_mode(enCIPort, enCardId, enAccessMode);

        if (HI_SUCCESS == s32Ret)
        {
            HI_INFO_CI("CI %d PCCD %d set access mode: %d\n", enCIPort, enCardId, enAccessMode);
        }
        else
        {
            HI_ERR_CI("CI %d PCCD %d detect fail:%08x\n", enCIPort, enCardId, s32Ret);
        }
    }

    /* If didn't registe, return HI_SUCCESS */
    CIPORT_UNLOCK(enCIPort);

    return s32Ret;
}

HI_S32 CI_PCCD_GetStatus(HI_UNF_CI_PORT_E enCIPort, HI_UNF_CI_PCCD_E enCardId,
                         HI_U8 *pu8Value)
{
    HI_S32 s32Ret = HI_SUCCESS;
    HI_U8 u8Value;

    CHECK_CIPORT_VALID(enCIPort);
    CHECK_PCCD_VALID(enCardId);
    if (HI_NULL == pu8Value)
    {
        return HI_ERR_CI_INVALID_PARA;
    }

    CIPORT_LOCK(enCIPort);
    CHECK_CI_PCCD_OPENED(enCIPort, enCardId);

    if (s_astCIDrvParam[enCIPort].stOP.ci_pccd_get_rw_status)
    {
        s32Ret = s_astCIDrvParam[enCIPort].stOP.ci_pccd_get_rw_status(enCIPort, enCardId, &u8Value);

        if (HI_SUCCESS == s32Ret)
        {
            if (copy_to_user(pu8Value, &u8Value, sizeof(u8Value)))
            {
                s32Ret = HI_FAILURE;
            }

            HI_INFO_CI("CI %d PCCD %d get status: %d\n", enCIPort, enCardId, u8Value);
        }
        else
        {
            HI_ERR_CI("CI %d PCCD %d get status fail:%08x\n", enCIPort, enCardId, s32Ret);
        }
    }
    else
    {
        s32Ret = HI_ERR_CI_UNKONWN;
    }

    CIPORT_UNLOCK(enCIPort);

    return s32Ret;
}

HI_S32 CI_PCCD_IORead(HI_UNF_CI_PORT_E enCIPort, HI_UNF_CI_PCCD_E enCardId,
                      HI_U8 *pu8Buffer, HI_U32 *pu32ReadLen)
{
    HI_S32 s32Ret = HI_SUCCESS;
    HI_U32 u32ReadOKLen = 0;
    HI_U16 u16ReadLen = 0;
    HI_U16 u16Counter = 0;
    HI_U16 u16BufferSize;
    HI_U8 u8Status   = 0;
    HI_U8 u8DataLow  = 0;
    HI_U8 u8DataHigh = 0;
    HI_U8 *pu8TempBuffer;

    /* Valid CI and card and make sure they are opened. */
    CHECK_CIPORT_VALID(enCIPort);
    CHECK_PCCD_VALID(enCardId);

    /* Check if the pointers are Initialised */
    if ((HI_NULL == pu8Buffer) || (HI_NULL == pu32ReadLen))
    {
        HI_ERR_CI("Invalid para\n");
        return HI_ERR_CI_INVALID_PARA;
    }

    CIPORT_LOCK(enCIPort);
    CHECK_CI_PCCD_OPENED(enCIPort, enCardId);

    /* Set *pu32ReadLen to 0 */
    if (copy_to_user(pu32ReadLen, &u32ReadOKLen, sizeof(u32ReadOKLen)))
    {
        CIPORT_UNLOCK(enCIPort);
        return HI_FAILURE;
    }

    /* Check buffer: If null, return. */
    if (HI_NULL == s_astCIDrvParam[enCIPort].astCardParam[enCardId].pu8Buffer)
    {
        CIPORT_UNLOCK(enCIPort);
        return HI_ERR_CI_IO_READ_ERR;
    }
    else
    {
        pu8TempBuffer = s_astCIDrvParam[enCIPort].astCardParam[enCardId].pu8Buffer;
    }

    /* If registe IORead function, use it to read directly */
    if (s_astCIDrvParam[enCIPort].stOP.ci_pccd_io_read)
    {
        s32Ret = s_astCIDrvParam[enCIPort].stOP.ci_pccd_io_read(enCIPort, enCardId, pu8TempBuffer, &u32ReadOKLen);
        if (HI_SUCCESS != s32Ret)
        {
            CIPORT_UNLOCK(enCIPort);
            HI_ERR_CI("IORead fail:%d.\n", s32Ret);
            return HI_FAILURE;
        }
    }
    /* Standard io read process */
    else
    {
        /* Check registed functions */
        if (!(s_astCIDrvParam[enCIPort].stOP.ci_pccd_set_access_mode)
           || !(s_astCIDrvParam[enCIPort].stOP.ci_pccd_read_byte))
        {
            CIPORT_UNLOCK(enCIPort);
            return HI_FAILURE;
        }

        /* Change to IO_ACCESS mode here. */
        s32Ret = s_astCIDrvParam[enCIPort].stOP.ci_pccd_set_access_mode(enCIPort, enCardId, HI_UNF_CI_PCCD_ACCESS_IO);
        if (HI_SUCCESS != s32Ret)
        {
            CIPORT_UNLOCK(enCIPort);
            HI_ERR_CI("SetAccessMode fail.\n");
            return s32Ret;
        }

        /* Check DATA_AVAILABLE */
        s32Ret = s_astCIDrvParam[enCIPort].stOP.ci_pccd_read_byte(enCIPort, enCardId, COM_STAT_REG, &u8Status);
        if (HI_SUCCESS != s32Ret)
        {
            CIPORT_UNLOCK(enCIPort);
            return s32Ret;
        }

        if (u8Status & PCCD_DA)
        {
            /* Read size */
            s_astCIDrvParam[enCIPort].stOP.ci_pccd_read_byte(enCIPort, enCardId, SIZE_L_REG, &u8DataLow);
            s_astCIDrvParam[enCIPort].stOP.ci_pccd_read_byte(enCIPort, enCardId, SIZE_H_REG, &u8DataHigh);
            u16ReadLen = u8DataLow | (u8DataHigh << 8);

            /* Change to IO_ACCESS mode here!!! Sometimes it change to ATTR mode automatically. */
            s32Ret = s_astCIDrvParam[enCIPort].stOP.ci_pccd_set_access_mode(enCIPort, enCardId,
                                                                            HI_UNF_CI_PCCD_ACCESS_IO);
            if (HI_SUCCESS != s32Ret)
            {
                CIPORT_UNLOCK(enCIPort);
                return s32Ret;
            }

            /*
             * Read len must be a safe length.
             * Please invoke CI_PCCD_NegBufferSize() to negotiate buffer size.
             */
            u16BufferSize = s_astCIDrvParam[enCIPort].astCardParam[enCardId].u16BufferSize;
            if (((u16BufferSize > 0) && (u16BufferSize >= u16ReadLen))
                || ((u16BufferSize == 0) && (u16ReadLen != INVALID_DATA_SIZE)))
            {
                for (u16Counter = 0; u16Counter < u16ReadLen; u16Counter++)
                {
                    /* Read */
                    s_astCIDrvParam[enCIPort].stOP.ci_pccd_read_byte(enCIPort, enCardId, DATA_REG, pu8TempBuffer
                                                                     + u16Counter);
                    u32ReadOKLen++;

                    /* Before read over, Read Error bit should be 1. */
                    s_astCIDrvParam[enCIPort].stOP.ci_pccd_read_byte(enCIPort, enCardId, COM_STAT_REG, &u8Status);
                    if (!(u8Status & PCCD_RE))
                    {
                        break;
                    }
                }
            }
            else
            {
                u32ReadOKLen = 0;
                s32Ret = HI_ERR_CI_IO_READ_ERR;
                HI_ERR_CI("CI[%d]Card[%d] read rror, length: %d\n",
                          enCIPort, enCardId, u16ReadLen);
            }
        }
        else
        {
            u32ReadOKLen = 0;
            s32Ret = HI_ERR_CI_IO_READ_ERR;
            HI_ERR_CI("CI[%d]Card[%d] error, I/O Status: %x\n",
                      enCIPort, enCardId, u8Status);
        }
    }

    if (s_astCIDrvParam[enCIPort].astCardParam[enCardId].bPrintIOData)
    {
        HI_ERR_CI("CI[%d, %d] IO read %dB:\n", enCIPort, enCardId, u32ReadOKLen);
        DBG_Dump(pu8TempBuffer, u32ReadOKLen);
    }

    CIPORT_UNLOCK(enCIPort);

    /* Copy data to user */
    if (copy_to_user(pu8Buffer, pu8TempBuffer, u32ReadOKLen))
    {
        return HI_FAILURE;
    }

    if (copy_to_user(pu32ReadLen, &u32ReadOKLen, sizeof(u32ReadOKLen)))
    {
        return HI_FAILURE;
    }

    return s32Ret;
}/* CI_PCCD_Read */

HI_S32 CI_PCCD_IOWrite(HI_UNF_CI_PORT_E enCIPort, HI_UNF_CI_PCCD_E enCardId,
                       const HI_U8 *pu8Buffer, HI_U32 u32WriteLen, HI_U32 *pu32WriteOKLen)
{
    HI_S32 s32Ret = HI_SUCCESS;
    HI_U32 u16Counter = 0;
    HI_U32 u32RetryTimes = 0;
    HI_U32 u32WriteOKLen = 0;
    HI_U16 u16BufferSize;
    HI_U8 u8Status = 0;

    /* Valid CI and card and make sure they are opened. */
    CHECK_CIPORT_VALID(enCIPort);
    CHECK_PCCD_VALID(enCardId);

    /* Check if the pointers are Initialised */
    if ((HI_NULL == pu8Buffer) || (HI_NULL == pu32WriteOKLen))
    {
        return HI_ERR_CI_INVALID_PARA;
    }

    /* No need to write, do nothing. */
    if (0 == u32WriteLen)
    {
        return HI_SUCCESS;
    }

    CIPORT_LOCK(enCIPort);
    CHECK_CI_PCCD_OPENED(enCIPort, enCardId);

    /* Set *pu32WriteOKLen to 0 */
    if (copy_to_user(pu32WriteOKLen, &u32WriteOKLen, sizeof(u32WriteOKLen)))
    {
        CIPORT_UNLOCK(enCIPort);
        return HI_FAILURE;
    }

    /* Check buffer: If null, return. */
    if (HI_NULL == s_astCIDrvParam[enCIPort].astCardParam[enCardId].pu8Buffer)
    {
        CIPORT_UNLOCK(enCIPort);
        HI_ERR_CI("CI %d PCCD %d invalid buffer.\n", enCIPort, enCardId);
        return HI_ERR_CI_NO_MEMORY;
    }

    /*
     * Write len must be a safe length.
     * Please invoke CI_PCCD_NegBufferSize() to negotiate buffer size.
     */
    u16BufferSize = s_astCIDrvParam[enCIPort].astCardParam[enCardId].u16BufferSize;
    if (((u16BufferSize > 0) && (u16BufferSize < u32WriteLen))
        || ((u16BufferSize == 0) && (u32WriteLen == INVALID_DATA_SIZE)))
    {
        CIPORT_UNLOCK(enCIPort);
        HI_ERR_CI("Invalid write len:%d\n", u32WriteLen);
        return HI_ERR_CI_IO_WRITE_ERR;
    }

    /* Copy user data */
    if (copy_from_user(s_astCIDrvParam[enCIPort].astCardParam[enCardId].pu8Buffer,
                       pu8Buffer, u32WriteLen))
    {
        CIPORT_UNLOCK(enCIPort);
        return HI_FAILURE;
    }

    /* If registe IOWrite function, use it to write directly */
    if (s_astCIDrvParam[enCIPort].stOP.ci_pccd_io_write)
    {
        s32Ret = s_astCIDrvParam[enCIPort].stOP.ci_pccd_io_write(enCIPort, enCardId, pu8Buffer, u32WriteLen);
        if (HI_SUCCESS != s32Ret)
        {
            CIPORT_UNLOCK(enCIPort);
            HI_ERR_CI("IOWrite fail:%d.\n", s32Ret);
            return HI_FAILURE;
        }

        u32WriteOKLen = u32WriteLen;
    }
    /* Standard io write process */
    else
    {
        /* Check registed functions */
        if (!(s_astCIDrvParam[enCIPort].stOP.ci_pccd_set_access_mode)
           || !(s_astCIDrvParam[enCIPort].stOP.ci_pccd_read_byte)
           || !(s_astCIDrvParam[enCIPort].stOP.ci_pccd_write_byte))
        {
            CIPORT_UNLOCK(enCIPort);
            return HI_FAILURE;
        }

        /* Change to IO_ACCESS mode here. */
        s32Ret = s_astCIDrvParam[enCIPort].stOP.ci_pccd_set_access_mode(enCIPort, enCardId, HI_UNF_CI_PCCD_ACCESS_IO);
        if (HI_SUCCESS != s32Ret)
        {
            CIPORT_UNLOCK(enCIPort);
            return s32Ret;
        }

        /* If the module has data avalaible, you should read first */
        s_astCIDrvParam[enCIPort].stOP.ci_pccd_read_byte(enCIPort, enCardId, COM_STAT_REG, &u8Status);
        if (u8Status & PCCD_DA)
        {
            CIPORT_UNLOCK(enCIPort);
            HI_ERR_CI("CI[%d]Card[%d] write error:Data is available!\n", enCIPort, enCardId);
            return HI_ERR_CI_PCCD_DEVICE_BUSY;
        }

        CIPORT_UNLOCK(enCIPort);

        /* If the module is free, set host control and wait for free again */
        for (u32RetryTimes = 0; u32RetryTimes < CI_PCCD_RW_TIMEOUT; u32RetryTimes++)
        {
            CIPORT_LOCK(enCIPort);
            s_astCIDrvParam[enCIPort].stOP.ci_pccd_write_byte(enCIPort, enCardId, COM_STAT_REG, PCCD_SETHC);
            CIPORT_UNLOCK(enCIPort);

            msleep(CI_TIME_1MS);

            CIPORT_LOCK(enCIPort);
            s_astCIDrvParam[enCIPort].stOP.ci_pccd_read_byte(enCIPort, enCardId, COM_STAT_REG, &u8Status);
            if (u8Status & PCCD_FR)
            {
                CIPORT_UNLOCK(enCIPort);
                break;
            }

            s_astCIDrvParam[enCIPort].stOP.ci_pccd_write_byte(enCIPort, enCardId, COM_STAT_REG, PCCD_CLEAR);
            CIPORT_UNLOCK(enCIPort);

            msleep(CI_TIME_10MS);
        }

        CIPORT_LOCK(enCIPort);
        s_astCIDrvParam[enCIPort].stOP.ci_pccd_read_byte(enCIPort, enCardId, COM_STAT_REG, &u8Status);
        if (u8Status & PCCD_FR)
        {
            /* The host writes the number of bytes he wants to send to the module */
            s_astCIDrvParam[enCIPort].stOP.ci_pccd_write_byte(enCIPort, enCardId, SIZE_L_REG, (HI_U8)(u32WriteLen
                                                                                                      & 0xff));
            s_astCIDrvParam[enCIPort].stOP.ci_pccd_write_byte(enCIPort, enCardId, SIZE_H_REG, (HI_U8)(u32WriteLen >> 8));

            for (u16Counter = 0, u32WriteOKLen = 0; u16Counter < u32WriteLen; u16Counter++)
            {
                s_astCIDrvParam[enCIPort].stOP.ci_pccd_write_byte(enCIPort, enCardId, DATA_REG, pu8Buffer[u16Counter]);
                u32WriteOKLen++;

                /* Before write over, Write Error bit should be 1. */
                s_astCIDrvParam[enCIPort].stOP.ci_pccd_read_byte(enCIPort, enCardId, COM_STAT_REG, &u8Status);
                if (!(u8Status & PCCD_WE))
                {
                    break;
                }
            }

            s_astCIDrvParam[enCIPort].stOP.ci_pccd_read_byte(enCIPort, enCardId, COM_STAT_REG, &u8Status);
            if ((u32WriteOKLen != u32WriteLen) || (u8Status & PCCD_WE))
            {
                s32Ret = HI_ERR_CI_IO_WRITE_ERR;
            }
            else
            {
                s32Ret = HI_SUCCESS;
            }

            /* Return control to the module */
            s_astCIDrvParam[enCIPort].stOP.ci_pccd_write_byte(enCIPort, enCardId, COM_STAT_REG, PCCD_CLEAR);
        }
        else
        {
            CIPORT_UNLOCK(enCIPort);
            HI_ERR_CI("CI_PCCD_Write() Error: Device is busy!\n");
            return HI_ERR_CI_PCCD_DEVICE_BUSY;
        }
    }

    if (s_astCIDrvParam[enCIPort].astCardParam[enCardId].bPrintIOData)
    {
        HI_ERR_CI("CI[%d, %d] IO write %dB:\n", enCIPort, enCardId, u32WriteOKLen);
        DBG_Dump(s_astCIDrvParam[enCIPort].astCardParam[enCardId].pu8Buffer, u32WriteOKLen);
    }

    CIPORT_UNLOCK(enCIPort);

    /* Set *pu32WriteOKLen to u32WriteOKLen */
    if (copy_to_user(pu32WriteOKLen, &u32WriteOKLen, sizeof(u32WriteOKLen)))
    {
        s32Ret = HI_FAILURE;
    }

    return s32Ret;
}/* CI_PCCD_Write */

static HI_S32 CI_PCCD_GetCIS(HI_UNF_CI_PORT_E enCIPort,
                             HI_UNF_CI_PCCD_E enCardId, HI_U8 *pu8CIS, HI_U32 *pu32Len)
{
    HI_S32 s32Ret = HI_SUCCESS;
    HI_U32 u32RetryTimes = 0;
    HI_UNF_CI_PCCD_READY_E enReady = HI_UNF_CI_PCCD_BUSY;
    HI_U32 u32TuppleOffset;
    HI_U16 u16Offset = 0;
    HI_U8 u8Num;

    /* Check registed functions */
    if (!(s_astCIDrvParam[enCIPort].stOP.ci_pccd_ready_or_busy)
       || !(s_astCIDrvParam[enCIPort].stOP.ci_pccd_set_access_mode)
       || !(s_astCIDrvParam[enCIPort].stOP.ci_pccd_read_byte))
    {
        HI_ERR_CI("Registed function err.\n");
        return HI_FAILURE;
    }

    /* Wait PCCARD ready */
    for (u32RetryTimes = 0; u32RetryTimes < CI_PCCD_IORESET_TIMEOUT; u32RetryTimes++)
    {
        s_astCIDrvParam[enCIPort].stOP.ci_pccd_ready_or_busy(enCIPort, enCardId, &enReady);
        if (HI_UNF_CI_PCCD_READY == enReady)
        {
            break;
        }

        msleep(CI_TIME_10MS);
    }

    if (u32RetryTimes == CI_PCCD_IORESET_TIMEOUT)
    {
        HI_ERR_CI("Card busy.\n");
        return HI_ERR_CI_PCCD_DEVICE_BUSY;
    }

    /* Change to HI_UNF_CI_PCCD_ACCESS_ATTR mode here. */
    s32Ret = s_astCIDrvParam[enCIPort].stOP.ci_pccd_set_access_mode(enCIPort, enCardId, HI_UNF_CI_PCCD_ACCESS_ATTR);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_CI("Set access mode fail.\n");
        return s32Ret;
    }

    u16Offset = 0;

    while (1)
    {
        /* CIS is valid in the even byte, so offset*2 */
        u32TuppleOffset = u16Offset * 2;

        /* Read tupple tag, 1 byte. */
        s_astCIDrvParam[enCIPort].stOP.ci_pccd_read_byte(enCIPort, enCardId, u32TuppleOffset, &(pu8CIS[u16Offset]));
        HI_INFO_CI("CI_PCCD_GetCIS: \n\tTag:\t%02x\n", pu8CIS[u16Offset]);

        /* Check tupple tag */
        switch (pu8CIS[u16Offset])
        {
        case CISTPL_DEVICE:
        case CISTPL_CHECKSUM:
        case CISTPL_LINKTARGET:
        case CISTPL_NO_LINK:
        case CISTPL_VERS_1:
        case CISTPL_ALTSTR:
        case CISTPL_DEVICE_A:
        case CISTPL_CONFIG:
        case CISTPL_CFTABLE_ENTRY:
        case CISTPL_DEVICE_OC:
        case CISTPL_DEVICE_OA:
        case CISTPL_MANFID:
        case CISTPL_FUNCID:
        case CISTPL_END:
            break;

        default:
            HI_ERR_CI("Tag err.\n");
            return HI_ERR_CI_PCCD_CIS_READ;
        } /* End switch */

        /* Read tupple link, 1 byte. */
        s_astCIDrvParam[enCIPort].stOP.ci_pccd_read_byte(enCIPort, enCardId,
                                                         u32TuppleOffset + 2, &(pu8CIS[u16Offset + 1]));
        HI_INFO_CI("\tLink:\t%02x\n", pu8CIS[u16Offset + 1]);

        /* If CISTPL_END, break; */
        if (pu8CIS[u16Offset] == CISTPL_END)
        {
            HI_INFO_CI("CISTPL_END break.\n");
            u16Offset += 1;
            break;
        }

        /* Reading the tupple data */
        for (u8Num = 0; u8Num < pu8CIS[u16Offset + 1]; u8Num++)
        {
            /* Tag and link 2 bytes, so add 4 */
            s_astCIDrvParam[enCIPort].stOP.ci_pccd_read_byte(enCIPort, enCardId,
                                                             u32TuppleOffset + 4 + u8Num
                                                             * 2, &(pu8CIS[u16Offset + 2 + u8Num]));
        }

        u16Offset += 2 + pu8CIS[u16Offset + 1];
    }

    *pu32Len = u16Offset;
    return HI_SUCCESS;
}

static HI_S32 CheckCIS_OA_OC(CI_PCCD_TUPPLE_S_PTR pstTupple,
                             CI_PCCD_VOLT_E *penVolt, CI_PCCD_SPEED_E *penSpeed)
{
    HI_U8 u8Bit1;
    HI_U8 u8Bit2;
    HI_U8 u8DeviceTypeCode;
    HI_U8 i = 0;

    /* Other Conditions Info */
    /* Ext voltage, unsupport now */
    if (MASK_BIT_7 & pstTupple->u8TuppleData[0])
    {
        *penVolt = CI_PCCD_VOLT_5V;
    }
    else
    {
        u8Bit1 = pstTupple->u8TuppleData[0] & MASK_BIT_1;
        u8Bit2 = pstTupple->u8TuppleData[0] & MASK_BIT_2;

        /* 00b, 5V */
        if ((!u8Bit2) && (!u8Bit1))
        {
            *penVolt = CI_PCCD_VOLT_5V;
        }
        /* 01b, 3V3 */
        else if ((!u8Bit2) && (u8Bit1))
        {
            *penVolt = CI_PCCD_VOLT_3V3;
        }
        /* 10b, X.X volt VCC, unsupport now */
        else if ((u8Bit2) && (!u8Bit1))
        {
            *penVolt = CI_PCCD_VOLT_5V;
        }
        /* 11b, CardBus PC Card Y.Y volt VCC, unsupport now */
        else
        {
            *penVolt = CI_PCCD_VOLT_5V;
        }

        HI_INFO_CI("CIS_OA_OC: Voltage=%d\n", *penVolt);
    }

    /* Device Info, from byte 1 */
    for (i = 1; i < pstTupple->u8TuppleLink; i++)
    {
        u8DeviceTypeCode = pstTupple->u8TuppleData[i] >> 4;
        HI_INFO_CI("CIS_OA_OC: DeviceTypeCode=%02x\n", u8DeviceTypeCode);

        if ((DTYPE_NULL == u8DeviceTypeCode) || (DTYPE_RESERVED == u8DeviceTypeCode))
        {
            continue;
        }

        /* Don't support DSPEED_EXT */
        *penSpeed = pstTupple->u8TuppleData[i] & DSPEED_MASK;
        HI_INFO_CI("CIS_OA_OC: Speed=%d\n", *penSpeed);
    }

    return HI_SUCCESS;
}

/* TPLLV1_MAJOR: 0x05  TPLLV1_MINOR: 0x00 */
static HI_S32 CheckCIS_Vers1(CI_PCCD_TUPPLE_S_PTR pstTupple)
{
    if ((TPLLV1_MAJOR != pstTupple->u8TuppleData[0])
        || (TPLLV1_MINOR != pstTupple->u8TuppleData[1]))
    {
        HI_INFO_CI("Invalid CISTPL_VERS_1\n");
        return HI_FAILURE;
    }

    return HI_SUCCESS;
}

/* Must has this tupple, just check length */
static HI_S32 CheckCIS_ManfID(CI_PCCD_TUPPLE_S_PTR pstTupple)
{
    if ((pstTupple->u8TuppleLink < TPLLMANFID_SIZE))
    {
        HI_ERR_CI("Invalid CISTPL_MANFID\n");
        return HI_FAILURE;
    }

    return HI_SUCCESS;
}

static HI_S32 CheckCIS_Config(CI_PCCD_TUPPLE_S_PTR pstTupple, HI_U32 *pu32TPCC_RADR)
{
    HI_U8 u8TPCC_SZ       = 0;
    HI_U8 u8TPCC_RMSK     = 0;
    HI_U8 u8TPCC_RFSZ     = 0;
    HI_U8 u8TPCC_RMSZ     = 0;
    HI_U8 u8TPCC_RASZ     = 0;
    HI_U32 u32TPCC_RADR   = 0;
    HI_U8 u8SubtTuppleTag = 0;
    HI_U8 u8SubtTuppleLen = 0;
    HI_U8* pu8SubtTuppleValue = HI_NULL;

    if ((pstTupple->u8TuppleLink < 5))
    {
        HI_ERR_CI("Invalid CISTPL_CONFIG\n");
        return HI_FAILURE;
    }

    u8TPCC_SZ = pstTupple->u8TuppleData[0];

    /* Don't care TPCC_LAST here: pstTupple->u8TuppleData[1]. */
    u8TPCC_RFSZ = u8TPCC_SZ & TPCC_RFSZ_MASK;
    u8TPCC_RMSZ = u8TPCC_SZ & TPCC_RMSZ_MASK;
    u8TPCC_RASZ = u8TPCC_SZ & TPCC_RASZ_MASK;

    switch (u8TPCC_RASZ)
    {
        /* 1 Byte */
    case 0:
    {
        u32TPCC_RADR = pstTupple->u8TuppleData[2];
        break;
    }

        /* 2 Bytes */
    case 1:
    {
        u32TPCC_RADR   = pstTupple->u8TuppleData[3];
        u32TPCC_RADR <<= 8;
        u32TPCC_RADR |= pstTupple->u8TuppleData[2];
        break;
    }

        /* 3 Bytes */
    case 2:
    {
        u32TPCC_RADR   = pstTupple->u8TuppleData[4];
        u32TPCC_RADR <<= 8;
        u32TPCC_RADR |= pstTupple->u8TuppleData[3];
        u32TPCC_RADR <<= 8;
        u32TPCC_RADR |= pstTupple->u8TuppleData[2];
        break;
    }

        /* 4 Bytes */
    case 3:
    {
        u32TPCC_RADR   = pstTupple->u8TuppleData[5];
        u32TPCC_RADR <<= 8;
        u32TPCC_RADR |= pstTupple->u8TuppleData[4];
        u32TPCC_RADR <<= 8;
        u32TPCC_RADR |= pstTupple->u8TuppleData[3];
        u32TPCC_RADR <<= 8;
        u32TPCC_RADR |= pstTupple->u8TuppleData[2];
        break;
    }

    default:
        break;
    }

    /* u32TPCC_RADR can't larger than 0xffe */
    if (u32TPCC_RADR > COR_BASE_ADDRESS_UPPERLIMIT)
    {
        HI_ERR_CI("Invalid u32TPCC_RADR: %04x\n", u32TPCC_RADR);
        return HI_FAILURE;
    }

    HI_INFO_CI("u32TPCC_RADR %x \n", u32TPCC_RADR);

    /* u8TPCC_RMSZ should be 0, don't care u8TPCC_RMSK */
    if (u8TPCC_RMSZ != 0)
    {
        HI_ERR_CI("More than 1 Configuration register\n");
        return HI_FAILURE;
    }

    u8TPCC_RMSK = pstTupple->u8TuppleData[u8TPCC_RASZ + 3];

    /* SubTupple */
    u8SubtTuppleTag = pstTupple->u8TuppleData[u8TPCC_RASZ + 4];
    u8SubtTuppleLen = pstTupple->u8TuppleData[u8TPCC_RASZ + 5];
    pu8SubtTuppleValue = pstTupple->u8TuppleData + u8TPCC_RASZ + 6;
    HI_INFO_CI("SubTupple %02x, link %d, string %s\n", u8SubtTuppleTag, u8SubtTuppleLen, pu8SubtTuppleValue + 2);

    /* DVB_CI_V1.00, 0x0241 */
    if (!(((memcmp(STCF_LIB, (HI_CHAR*)pu8SubtTuppleValue + 2, STCF_LIB_LEN)) == 0)
          && (pu8SubtTuppleValue[1] == STCI_IFN_1) && (pu8SubtTuppleValue[0] == STCI_IFN)))
    {
        HI_ERR_CI("Check STCF_LIB fail.\n");
        return HI_FAILURE;
    }

    *pu32TPCC_RADR = u32TPCC_RADR;
    return HI_SUCCESS;
}

static HI_S32 CheckCIS_CFTableEntry(CI_PCCD_TUPPLE_S_PTR pstTupple, HI_U8 *pu8CORValue)
{
    HI_U8 u8TPCE_INDX = 0;          /* Configuration Table Index Byte */
    HI_U8 u8TPCE_INTFACE = 0;       /* Intface */
    HI_U8 u8TPCE_IF = 0;            /* Interface Description Field */
    HI_U8 u8TPCE_FS = 0;            /* Feature Selection Byte */
    HI_U8 u8TPCE_PD = 0;            /* Power Description Structure */
    HI_U8 u8TPCE_PD_PS = 0;         /* Power Description Structure:Parameter Selection Byte */
    HI_U8 u8TPCE_PD_PD = 0;         /* Power Description Structure:Parameter Definitions */
    HI_U8 u8TPCE_TD = 0;            /* Configuration Timing Information */
    HI_U8 u8TPCE_IO_RANGE = 0;      /* I/O Space Description: Range */
    HI_U8 u8TPCE_IO_RD = 0;         /* I/O Range Descriptor Byte */
    HI_U8 u8TPCE_IO_RD_LENSIZE  = 0;/* I/O Range Descriptor Byte:Size of Length*/
    HI_U8 u8TPCE_IO_RD_ADDRSIZE = 0;/* I/O Range Descriptor Byte:Size of Address*/
    HI_U8 u8TPCE_IO_RD_ARNUM = 0;   /* I/O Range Descriptor Byte:Number of I/O Address Ranges (-1) */
    HI_U8 u8TPCE_MS_WIN = 0;
    HI_U8 u8Offset = 0;
    HI_U8* pu8TPCE_PD = HI_NULL;
    HI_U8* pu8TPCE_TD = HI_NULL;
    HI_U8* pu8TPCE_IO = HI_NULL;
    HI_U8* pu8TPCE_IR = HI_NULL;
    HI_U8* pu8TPCE_MS = HI_NULL;
    HI_U8* pu8TPCE_MI = HI_NULL;
    HI_U8* pu8STCE_EV = HI_NULL;
    HI_U8* pu8STCE_PD = HI_NULL;
    HI_U32 i = 0;
    HI_U32 j = 0;

    /* Check TPCE_INDX */
    u8TPCE_INDX = pstTupple->u8TuppleData[0];
    u8TPCE_INTFACE = u8TPCE_INDX & MASK_BIT_7;

    /* Don't care bit 6: Default */
    u8TPCE_INDX = u8TPCE_INDX & TPCE_INDX_MASK;

    /* Check intface */
    if (u8TPCE_INTFACE)
    {
        u8TPCE_IF = pstTupple->u8TuppleData[1];
        if (u8TPCE_IF != TPCE_IF)
        {
            HI_WARN_CI("Invalid TPCE_IF:%02x\n", u8TPCE_IF);
            return HI_FAILURE;
        }

        u8Offset = 2;
    }
    else
    {
        u8Offset = 1;
    }

    u8TPCE_FS = pstTupple->u8TuppleData[u8Offset];

    /* Check power description, only pass, don't judge validity */
    u8TPCE_PD  = u8TPCE_FS & (MASK_BIT_1 | MASK_BIT_0);
    pu8TPCE_PD = pstTupple->u8TuppleData + u8Offset + 1;
    for (i = 0; i < u8TPCE_PD; i++)
    {
        u8TPCE_PD_PS = *pu8TPCE_PD++;

        for (j = 0; j < 7; j++)
        {
            if ((u8TPCE_PD_PS >> j) & MASK_BIT_0)
            {
                u8TPCE_PD_PD = *pu8TPCE_PD++;

                while (u8TPCE_PD_PD & MASK_BIT_7)
                {
                    u8TPCE_PD_PD = *pu8TPCE_PD++;
                }
            }
        }
    }

    /* Timing Information */
    pu8TPCE_TD = pu8TPCE_PD;
    if (u8TPCE_FS & MASK_BIT_2)
    {
        u8TPCE_TD = *pu8TPCE_TD;

        /* WAIT# signal is used */
        if (TPCE_TD_WAIT_SCALE_MASK != (u8TPCE_TD & TPCE_TD_WAIT_SCALE_MASK))
        {
            pu8TPCE_TD++;
        }

        /* READY is used */
        if (TPCE_TD_READY_SCALE_MASK != (u8TPCE_TD & TPCE_TD_READY_SCALE_MASK))
        {
            pu8TPCE_TD++;
        }

        pu8TPCE_TD++;
    }
    else
    {
        HI_INFO_CI("No timing descriptor.\n");
    }

    /* I/O space */
    pu8TPCE_IO = pu8TPCE_TD;
    if (u8TPCE_FS & MASK_BIT_3)
    {
        if (*pu8TPCE_IO != TPCE_IO)
        {
            HI_ERR_CI("Invalid TPCE_IO:%02x\n", *pu8TPCE_IO);
            return HI_FAILURE;
        }

        u8TPCE_IO_RANGE = (*pu8TPCE_IO) & (MASK_BIT_7);

        /* Don't care bus 16/8 and IOAddrLines */

        if (u8TPCE_IO_RANGE)
        {
            /* I/O Range descriptor byte */
            u8TPCE_IO_RD = pu8TPCE_IO[1];
            u8TPCE_IO_RD_LENSIZE  = (u8TPCE_IO_RD & TPCE_IO_RD_LENSIZE_MASK) >> 6;
            u8TPCE_IO_RD_ADDRSIZE = (u8TPCE_IO_RD & TPCE_IO_RD_ADDRSIZE_MASK) >> 4;
            u8TPCE_IO_RD_ARNUM = (u8TPCE_IO_RD & TPCE_IO_RD_ARNUM_MASK) + 1;
            pu8TPCE_IO += 2 + (u8TPCE_IO_RD_LENSIZE + u8TPCE_IO_RD_ADDRSIZE) * u8TPCE_IO_RD_ARNUM;
        }
        else
        {
            pu8TPCE_IO++;
        }
    }
    else
    {
        HI_INFO_CI("\tNo I/O space descriptor\n");
    }

    /* IRQ */
    pu8TPCE_IR = pu8TPCE_IO;
    if (u8TPCE_FS & MASK_BIT_4)
    {
        pu8TPCE_IR += 3;
    }

    /* Memory space */
    pu8TPCE_MS = pu8TPCE_IR;
    switch ((u8TPCE_FS & (MASK_BIT_5 | MASK_BIT_6)) >> 5)
    {
    case 0:
    default:
        break;

    case 1:
        pu8TPCE_MS += 2;
        break;

    case 2:
        pu8TPCE_MS += 4;
        break;

    case 3:
        u8TPCE_MS_WIN = (*pu8TPCE_MS) & TPCE_MS_WINDOW_MASK;
        if ((*pu8TPCE_MS) & MASK_BIT_7)
        {
            pu8TPCE_MS += u8TPCE_MS_WIN *
                          ((((*pu8TPCE_MS)
                             & TPCE_MS_LENSIZE_MASK) >> 3) + 2 * (((*pu8TPCE_MS) & TPCE_MS_CARDADDRSIZE_MASK) >> 5));
        }
        else
        {
            pu8TPCE_MS += u8TPCE_MS_WIN *
                          ((((*pu8TPCE_MS)
                             & TPCE_MS_LENSIZE_MASK) >> 3) + (((*pu8TPCE_MS) & TPCE_MS_CARDADDRSIZE_MASK) >> 5));
        }

        break;
    }

    /* Misc */
    pu8TPCE_MI = pu8TPCE_MS;
    if (u8TPCE_FS & MASK_BIT_7)
    {
        while (*pu8TPCE_MI & MASK_BIT_7)
        {
            pu8TPCE_MI++;
        }
    }

    /* STCE_EV */
    pu8STCE_EV = pu8TPCE_MI;
    if (pu8STCE_EV - pstTupple->u8TuppleData < pstTupple->u8TuppleLink)
    {
        if ((STCE_EV_TAG == pu8STCE_EV[0])
           && ((0 == strcmp(STCE_EV1, pu8STCE_EV + 2)) || (0 == strcmp(STCE_EV2, pu8STCE_EV + 2))))
        {
            HI_INFO_CI("Valid STCE_EV:%s\n", pu8STCE_EV + 2);
        }
        else
        {
            HI_ERR_CI("Invalid STCE_EV\n");
            return HI_FAILURE;
        }
    }
    else
    {
        HI_ERR_CI("None STCE_EV\n");
        return HI_FAILURE;
    }

    /* STCE_PD */
    pu8STCE_PD = pu8STCE_EV + 2 + pu8STCE_EV[1];
    if (pu8STCE_PD - pstTupple->u8TuppleData < pstTupple->u8TuppleLink)
    {
        if ((STCE_PD_TAG == pu8STCE_PD[0])
           && ((0 == strcmp(STCE_PD1, pu8STCE_PD + 2)) || (0 == strcmp(STCE_PD2, pu8STCE_PD + 2))))
        {
            HI_INFO_CI("Valid STCE_PD:%s\n", pu8STCE_PD + 2);
        }
        else
        {
            HI_ERR_CI("Invalid STCE_PD\n");
            return HI_FAILURE;
        }
    }
    else
    {
        HI_ERR_CI("None STCE_PD\n");
        return HI_FAILURE;
    }

    *pu8CORValue = u8TPCE_INDX;
    return HI_SUCCESS;
}

HI_S32 CI_PCCD_CheckCIS(HI_UNF_CI_PORT_E enCIPort, HI_UNF_CI_PCCD_E enCardId)
{
    HI_S32 s32Ret = HI_SUCCESS;
    CI_PCCD_TUPPLE_S stCurrentTupple;
    HI_U16 u16Offset = 0;
    HI_BOOL bCheckedOAOC   = HI_FALSE;
    HI_BOOL bCheckedVers1  = HI_FALSE;
    HI_BOOL bCheckedManfID = HI_FALSE;
    HI_BOOL bCheckedConfig = HI_FALSE;
    HI_BOOL bCheckedCFTableEntry = HI_FALSE;
    HI_BOOL bCheckedAll = HI_FALSE;
    HI_U32 u32TPCC_RADR = 0;
    HI_U8 u8CORValue = 0;
    CI_PCCD_VOLT_E enVolt   = CI_PCCD_VOLT_5V;
    CI_PCCD_SPEED_E enSpeed = CI_PCCD_SPEED_150NS;
    HI_U8 au8CIS[MAX_CIS_SIZE] = {0};
    HI_U32 u32CISLen = sizeof(au8CIS);

    /* Valid CI and card and make sure they are opened. */
    CHECK_CIPORT_VALID(enCIPort);
    CHECK_PCCD_VALID(enCardId);
    CIPORT_LOCK(enCIPort);
    CHECK_CI_PCCD_OPENED(enCIPort, enCardId);

    if (s_astCIDrvParam[enCIPort].stOP.ci_pccd_get_cis)
    {
        s32Ret = s_astCIDrvParam[enCIPort].stOP.ci_pccd_get_cis(enCIPort, enCardId, au8CIS, &u32CISLen);
    }
    else
    {
        s32Ret = CI_PCCD_GetCIS(enCIPort, enCardId, au8CIS, &u32CISLen);
    }

    CIPORT_UNLOCK(enCIPort);

    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_CI("GetCIS fail\n");
        return s32Ret;
    }

    while (!bCheckedAll)
    {
        stCurrentTupple.u8TuppleTag  = au8CIS[u16Offset];
        stCurrentTupple.u8TuppleLink = au8CIS[u16Offset + 1];
        memcpy(stCurrentTupple.u8TuppleData, &au8CIS[u16Offset + 2], stCurrentTupple.u8TuppleLink);
        stCurrentTupple.u8TuppleData[stCurrentTupple.u8TuppleLink] = '\0';

        if (stCurrentTupple.u8TuppleTag == CISTPL_END)
        {
            break;
        }

        if (stCurrentTupple.u8TuppleLink == 0)
        {
            break;
        }

        switch (stCurrentTupple.u8TuppleTag) /* Check for the tupple tag */
        {
        case CISTPL_DEVICE_OA:
        case CISTPL_DEVICE_OC:
        {
            s32Ret = CheckCIS_OA_OC(&stCurrentTupple, &enVolt, &enSpeed);
            if (HI_SUCCESS == s32Ret)
            {
                bCheckedOAOC = HI_TRUE;
            }

            break;
        }

        case CISTPL_VERS_1:
        {
            s32Ret = CheckCIS_Vers1(&stCurrentTupple);
            if (HI_SUCCESS == s32Ret)
            {
                bCheckedVers1 = HI_TRUE;
            }

            break;
        }

        case CISTPL_MANFID:
        {
            s32Ret = CheckCIS_ManfID(&stCurrentTupple);
            if (HI_SUCCESS == s32Ret)
            {
                bCheckedManfID = HI_TRUE;
            }

            break;
        }

        case CISTPL_CONFIG:
        {
            s32Ret = CheckCIS_Config(&stCurrentTupple, &u32TPCC_RADR);
            if (HI_SUCCESS == s32Ret)
            {
                bCheckedConfig = HI_TRUE;
            }

            break;
        }

        case CISTPL_CFTABLE_ENTRY:
        {
            s32Ret = CheckCIS_CFTableEntry(&stCurrentTupple, &u8CORValue);
            if (HI_SUCCESS == s32Ret)
            {
                bCheckedCFTableEntry = HI_TRUE;
            }

            break;
        }

        default:
            break;
        }   /* end switch */

        if (bCheckedOAOC && bCheckedVers1 && bCheckedManfID && bCheckedConfig && bCheckedCFTableEntry)
        {
            bCheckedAll = HI_TRUE;
        }

        u16Offset += 2 + stCurrentTupple.u8TuppleLink;
    } /* end while */

    CIPORT_LOCK(enCIPort);
    if (!bCheckedAll)
    {
        HI_ERR_CI("CheckCIS fail.\n");
        s_astCIDrvParam[enCIPort].astCardParam[enCardId].stAttr.enVolt  = CI_PCCD_VOLT_5V;
        s_astCIDrvParam[enCIPort].astCardParam[enCardId].stAttr.enSpeed = CI_PCCD_SPEED_150NS;
        s_astCIDrvParam[enCIPort].astCardParam[enCardId].u32TPCC_RADR = 0;
        s_astCIDrvParam[enCIPort].astCardParam[enCardId].u8TPCE_INDX = 0;
        s32Ret = HI_ERR_CI_PCCD_CIS_READ;
    }
    else
    {
        s_astCIDrvParam[enCIPort].astCardParam[enCardId].stAttr.enVolt = enVolt;
        if ((enSpeed >= CI_PCCD_SPEED_BUTT) || (enSpeed < CI_PCCD_SPEED_250NS))
        {
            enSpeed = CI_PCCD_SPEED_600NS;
        }

        s_astCIDrvParam[enCIPort].astCardParam[enCardId].stAttr.enSpeed = enSpeed;
        s_astCIDrvParam[enCIPort].astCardParam[enCardId].u32TPCC_RADR = u32TPCC_RADR;
        s_astCIDrvParam[enCIPort].astCardParam[enCardId].u8TPCE_INDX = u8CORValue;

        HI_INFO_CI("Card voltage:%d\n", enVolt);
        HI_INFO_CI("Card speed:%d\n", enSpeed);
        HI_INFO_CI("Card COR addr:0x%04x\n", u32TPCC_RADR);
        HI_INFO_CI("Card COR value:0x%02x\n", u8CORValue);

        if (s_astCIDrvParam[enCIPort].stOP.ci_pccd_set_attr)
        {
            s_astCIDrvParam[enCIPort].stOP.ci_pccd_set_attr(enCIPort, enCardId,
                                                            &s_astCIDrvParam[enCIPort].astCardParam[enCardId].stAttr);
        }

        s32Ret = HI_SUCCESS;
    }

    CIPORT_UNLOCK(enCIPort);

    return s32Ret;
} /* CI_PCCD_CheckCIS */

/***********************************************************************************
 * Function:      CI_PCCD_WriteCOR
 * Description:   Write TPCE_INDX to TPCC_RADR
 *                Please refer to EN50221 specification.
 *********************************************************************************/
HI_S32 CI_PCCD_WriteCOR(HI_UNF_CI_PORT_E enCIPort, HI_UNF_CI_PCCD_E enCardId)
{
    HI_S32 s32Ret = HI_SUCCESS;
    HI_U32 u32CORAddr = 0;
    HI_U8 u8CORIndex = 0;

    /* Valid CI and card and make sure they are opened. */
    CHECK_CIPORT_VALID(enCIPort);
    CHECK_PCCD_VALID(enCardId);
    CIPORT_LOCK(enCIPort);
    CHECK_CI_PCCD_OPENED(enCIPort, enCardId);

    /* If registe IOWrite function, use it to write directly */
    if (s_astCIDrvParam[enCIPort].stOP.ci_pccd_write_cor)
    {
        s32Ret = s_astCIDrvParam[enCIPort].stOP.ci_pccd_write_cor(enCIPort, enCardId,
                                                                  s_astCIDrvParam[enCIPort].astCardParam[enCardId].u32TPCC_RADR,
                                                                  s_astCIDrvParam[enCIPort].astCardParam[enCardId].u8TPCE_INDX);
        if (HI_SUCCESS != s32Ret)
        {
            CIPORT_UNLOCK(enCIPort);
            HI_ERR_CI("WriteCOR fail:%d.\n", s32Ret);
            return HI_FAILURE;
        }
    }
    /* Standard write COR process */
    else
    {
        /* Check registed functions */
        if (!(s_astCIDrvParam[enCIPort].stOP.ci_pccd_set_access_mode)
           || !(s_astCIDrvParam[enCIPort].stOP.ci_pccd_read_byte)
           || !(s_astCIDrvParam[enCIPort].stOP.ci_pccd_write_byte))
        {
            CIPORT_UNLOCK(enCIPort);
            return HI_FAILURE;
        }

        /* Change access mode to HI_UNF_CI_PCCD_ACCESS_ATTR here. */
        s32Ret = s_astCIDrvParam[enCIPort].stOP.ci_pccd_set_access_mode(enCIPort, enCardId,
                                                                        HI_UNF_CI_PCCD_ACCESS_ATTR);
        if (HI_SUCCESS != s32Ret)
        {
            CIPORT_UNLOCK(enCIPort);
            return s32Ret;
        }

        /* Getting Configuration Option Register Address and Index */
        u32CORAddr = s_astCIDrvParam[enCIPort].astCardParam[enCardId].u32TPCC_RADR;
        u8CORIndex = s_astCIDrvParam[enCIPort].astCardParam[enCardId].u8TPCE_INDX;

        /* Writing the COR Index to the COR Address */
        s_astCIDrvParam[enCIPort].stOP.ci_pccd_write_byte(enCIPort, enCardId, u32CORAddr, u8CORIndex);
        HI_INFO_CI("[CI_PCCD_WriteCOR] %d Write 0x%02x to 0x%08x\n",
                   enCardId, u8CORIndex, u32CORAddr);

        msleep(CI_TIME_1MS);

        u8CORIndex = 0;
        s_astCIDrvParam[enCIPort].stOP.ci_pccd_read_byte(enCIPort, enCardId, u32CORAddr, &u8CORIndex);
        if (u8CORIndex != s_astCIDrvParam[enCIPort].astCardParam[enCardId].u8TPCE_INDX)
        {
            s32Ret = HI_ERR_CI_ATTR_WRITE_ERR;
        }
    }

    CIPORT_UNLOCK(enCIPort);

    return HI_SUCCESS;
}/* CI_PCCD_WriteCOR */

/***********************************************************************************
 * Function:      CI_PCCD_IOReset
 * Description:   Reset the IO interface
 *********************************************************************************/
HI_S32 CI_PCCD_IOReset(HI_UNF_CI_PORT_E enCIPort, HI_UNF_CI_PCCD_E enCardId)
{
    HI_S32 s32Ret = HI_SUCCESS;
    HI_U16 u16RetryTimes = 0;
    HI_U8 u8Status;

    /* Valid CI and card and make sure they are opened. */
    CHECK_CIPORT_VALID(enCIPort);
    CHECK_PCCD_VALID(enCardId);
    CIPORT_LOCK(enCIPort);
    CHECK_CI_PCCD_OPENED(enCIPort, enCardId);

    /* If registe IOWrite function, use it to write directly */
    if (s_astCIDrvParam[enCIPort].stOP.ci_pccd_io_reset)
    {
        s32Ret = s_astCIDrvParam[enCIPort].stOP.ci_pccd_io_reset(enCIPort, enCardId);
        CIPORT_UNLOCK(enCIPort);
    }
    /* Standard write COR process */
    else
    {
        /* Check registed functions */
        if (!(s_astCIDrvParam[enCIPort].stOP.ci_pccd_set_access_mode)
           || !(s_astCIDrvParam[enCIPort].stOP.ci_pccd_read_byte)
           || !(s_astCIDrvParam[enCIPort].stOP.ci_pccd_write_byte))
        {
            CIPORT_UNLOCK(enCIPort);
            return HI_FAILURE;
        }

        /* Switch access mode */
        s32Ret = s_astCIDrvParam[enCIPort].stOP.ci_pccd_set_access_mode(enCIPort, enCardId,
                                                                        HI_UNF_CI_PCCD_ACCESS_IO);
        if (HI_SUCCESS != s32Ret)
        {
            CIPORT_UNLOCK(enCIPort);
            return s32Ret;
        }

        /* Reset the Command Register */
        s_astCIDrvParam[enCIPort].stOP.ci_pccd_write_byte(enCIPort, enCardId, COM_STAT_REG, PCCD_SETRS);
        CIPORT_UNLOCK(enCIPort);

        msleep(CI_TIME_10MS);

        CIPORT_LOCK(enCIPort);

        /* Clear the reset bit */
        s_astCIDrvParam[enCIPort].stOP.ci_pccd_write_byte(enCIPort, enCardId, COM_STAT_REG, PCCD_CLEAR);
        CIPORT_UNLOCK(enCIPort);

        /* Wait for free */
        for (u16RetryTimes = 0; u16RetryTimes < CI_PCCD_IORESET_TIMEOUT; u16RetryTimes++)
        {
            CIPORT_LOCK(enCIPort);
            s_astCIDrvParam[enCIPort].stOP.ci_pccd_read_byte(enCIPort, enCardId, COM_STAT_REG, &u8Status);
            CIPORT_UNLOCK(enCIPort);
            if (u8Status & PCCD_FR)
            {
                break;
            }

            msleep(CI_TIME_10MS);
        }

        if (!(u8Status & PCCD_FR))
        {
            HI_ERR_CI("CI %d PCCD %d: ioreset timeout.\n", enCIPort, enCardId);
            s32Ret = HI_ERR_CI_TIMEOUT;
        }
    }

    return s32Ret;
}/* CI_PCCD_IOReset */

/***********************************************************************************
 * Function:      CI_PCCD_NegBufferSize
 * Description:   Negotiate about buffer size
 *********************************************************************************/
HI_S32 CI_PCCD_NegBufferSize(HI_UNF_CI_PORT_E enCIPort, HI_UNF_CI_PCCD_E enCardId,
                             HI_U16 *pu16BufferSize)
{
    HI_S32 s32Ret = HI_SUCCESS;
    HI_U8 u8BufferSize[2] = {0, 0};
    HI_U16 u16RetryCnt  = 0;
    HI_U16 u16DataSize  = 0;
    HI_U16 u16TempSize  = 0;
    HI_U16 u16HostSize  = 0;
    HI_U8 u8BufferCount = 0;
    HI_U8 u8DataLow  = 0;
    HI_U8 u8DataHigh = 0;
    HI_U8 u8Status;

    /* Valid CI and card and make sure they are opened. */
    CHECK_CIPORT_VALID(enCIPort);
    CHECK_PCCD_VALID(enCardId);
    if (HI_NULL == pu16BufferSize)
    {
        HI_ERR_CI("Invalid pu16BufferSize\n");
        return HI_ERR_CI_INVALID_PARA;
    }

    /* Get host buffer size */
    if (copy_from_user(&u16HostSize, pu16BufferSize, sizeof(u16HostSize)))
    {
        return HI_FAILURE;
    }

    CIPORT_LOCK(enCIPort);
    CHECK_CI_PCCD_OPENED(enCIPort, enCardId);

    /* If registe Negotiate function, use it to negotiate buffer size directly */
    if (s_astCIDrvParam[enCIPort].stOP.ci_pccd_negotiate)
    {
        u16TempSize = u16HostSize;
        s32Ret = s_astCIDrvParam[enCIPort].stOP.ci_pccd_negotiate(enCIPort, enCardId, &u16TempSize);
        HI_INFO_CI("<0>Negotiate return %d, result %d\n", s32Ret, u16TempSize);
        if (HI_SUCCESS != s32Ret)
        {
            CIPORT_UNLOCK(enCIPort);
            HI_ERR_CI("Negotiate fail.\n");
            return s32Ret;
        }
    }
    /* Standard negotiate buffer size process */
    else
    {
        /* Check registed functions */
        if (!(s_astCIDrvParam[enCIPort].stOP.ci_pccd_set_access_mode)
           || !(s_astCIDrvParam[enCIPort].stOP.ci_pccd_read_byte)
           || !(s_astCIDrvParam[enCIPort].stOP.ci_pccd_write_byte))
        {
            CIPORT_UNLOCK(enCIPort);
            return HI_FAILURE;
        }

        /* Change to HI_UNF_CI_PCCD_ACCESS_IO mode */
        s32Ret = s_astCIDrvParam[enCIPort].stOP.ci_pccd_set_access_mode(enCIPort, enCardId, HI_UNF_CI_PCCD_ACCESS_IO);
        if (HI_SUCCESS != s32Ret)
        {
            CIPORT_UNLOCK(enCIPort);
            HI_ERR_CI("SetAccessMode fail.\n");
            return s32Ret;
        }

        /* Set Size Read bit */
        s_astCIDrvParam[enCIPort].stOP.ci_pccd_write_byte(enCIPort, enCardId, COM_STAT_REG, PCCD_SETSR);

        /* Wait for Data Available */
        for (u16RetryCnt = 0; u16RetryCnt < CI_PCCD_NEGBUFFER_TIMEOUT; u16RetryCnt++)
        {
            s_astCIDrvParam[enCIPort].stOP.ci_pccd_read_byte(enCIPort, enCardId, COM_STAT_REG, &u8Status);
            if (u8Status & PCCD_DA)
            {
                break;
            }

            msleep(CI_TIME_1MS);
        }

        if (!(u8Status & PCCD_DA))
        {
            CIPORT_UNLOCK(enCIPort);
            HI_ERR_CI("CI %d PCCD %d, Set SR bit time out\n", enCIPort, enCardId);
            return HI_ERR_CI_TIMEOUT;
        }

        /* Read buffer size's size */
        s_astCIDrvParam[enCIPort].stOP.ci_pccd_read_byte(enCIPort, enCardId, SIZE_L_REG, &u8DataLow);
        s_astCIDrvParam[enCIPort].stOP.ci_pccd_read_byte(enCIPort, enCardId, SIZE_H_REG, &u8DataHigh);
        u16DataSize = u8DataLow | (u8DataHigh << 8);

        if ((u16DataSize == 0) || (u16DataSize > 2))
        {
            CIPORT_UNLOCK(enCIPort);
            HI_ERR_CI("CI %d PCCD %d, buffer size's size error: %d\n",
                      enCIPort, enCardId, u16DataSize);
            return HI_ERR_CI_IO_READ_ERR;
        }

        /* Read buffer size */
        for (u8BufferCount = 0; u8BufferCount < u16DataSize; u8BufferCount++)
        {
            s_astCIDrvParam[enCIPort].stOP.ci_pccd_read_byte(enCIPort, enCardId, DATA_REG, u8BufferSize + u8BufferCount);
            u16TempSize = (u16TempSize << 8) | u8BufferSize[u8BufferCount];
        }

        /* Clear Command Register */
        s_astCIDrvParam[enCIPort].stOP.ci_pccd_write_byte(enCIPort, enCardId, COM_STAT_REG, PCCD_CLEAR);

        if (u16HostSize != 0)
        {
            if (u16TempSize > u16HostSize)
            {
                u16TempSize = u16HostSize;
                u8BufferSize[0] = (HI_U8)(u16TempSize >> 8);
                u8BufferSize[1] = (HI_U8)(u16TempSize & 0x00ff);
                u16DataSize = 2;
            }
        }

        if (u16TempSize < CI_PCCD_MIN_BUFFERSIZE)
        {
            CIPORT_UNLOCK(enCIPort);
            HI_ERR_CI("CI %d PCCD %d, Buffer size too small, %d\n",
                      enCIPort, enCardId, u16TempSize);
            return HI_ERR_CI_IO_READ_ERR;
        }

        msleep(CI_TIME_1MS);

        /* Set Size Write bit */
        s_astCIDrvParam[enCIPort].stOP.ci_pccd_write_byte(enCIPort, enCardId, COM_STAT_REG, PCCD_SETSW);

        /* Wait for free */
        for (u16RetryCnt = 0; u16RetryCnt < CI_PCCD_NEGBUFFER_TIMEOUT; u16RetryCnt++)
        {
            s_astCIDrvParam[enCIPort].stOP.ci_pccd_read_byte(enCIPort, enCardId, COM_STAT_REG, &u8Status);
            if (u8Status & PCCD_FR)
            {
                break;
            }

            msleep(CI_TIME_1MS);
        }

        if (!(u8Status & PCCD_FR))
        {
            CIPORT_UNLOCK(enCIPort);
            HI_ERR_CI("CI %d PCCD %d, Set SW bit time out\n", enCIPort, enCardId);
            return HI_ERR_CI_TIMEOUT;
        }

        /* Set host control */
        for (u16RetryCnt = 0; u16RetryCnt < CI_PCCD_NEGBUFFER_TIMEOUT; u16RetryCnt++)
        {
            s_astCIDrvParam[enCIPort].stOP.ci_pccd_write_byte(enCIPort, enCardId, COM_STAT_REG, PCCD_SETHC);
            msleep(CI_TIME_1MS);
            u8Status = 0;
            s_astCIDrvParam[enCIPort].stOP.ci_pccd_read_byte(enCIPort, enCardId, COM_STAT_REG, &u8Status);
            if (u8Status & PCCD_FR)
            {
                break;
            }

            s_astCIDrvParam[enCIPort].stOP.ci_pccd_write_byte(enCIPort, enCardId, COM_STAT_REG, PCCD_CLEAR);
            msleep(CI_TIME_1MS);
        }

        if (!(u8Status & PCCD_FR))
        {
            CIPORT_UNLOCK(enCIPort);
            HI_ERR_CI("CI %d PCCD %d, Set HC bit time out\n", enCIPort, enCardId);
            return HI_ERR_CI_TIMEOUT;
        }

        /* Write buffer size's size */
        s_astCIDrvParam[enCIPort].stOP.ci_pccd_write_byte(enCIPort, enCardId, SIZE_L_REG, (HI_U8)(u16DataSize & 0xff));
        s_astCIDrvParam[enCIPort].stOP.ci_pccd_write_byte(enCIPort, enCardId, SIZE_H_REG, (HI_U8)(u16DataSize >> 8));

        /* Write buffer size */
        for (u8BufferCount = 0; u8BufferCount < u16DataSize; u8BufferCount++)
        {
            s_astCIDrvParam[enCIPort].stOP.ci_pccd_write_byte(enCIPort, enCardId, DATA_REG, u8BufferSize[u8BufferCount]);
            u8Status = 0;
            s_astCIDrvParam[enCIPort].stOP.ci_pccd_read_byte(enCIPort, enCardId, COM_STAT_REG, &u8Status);
            if (!(u8Status & PCCD_WE))
            {
                break;
            }
        }

        /* Clear Command Register and wait FRee */
        s_astCIDrvParam[enCIPort].stOP.ci_pccd_write_byte(enCIPort, enCardId, COM_STAT_REG, PCCD_CLEAR);
    }

    if (copy_to_user(pu16BufferSize, &u16TempSize, sizeof(u16TempSize)))
    {
        CIPORT_UNLOCK(enCIPort);
        return HI_FAILURE;
    }

    /*
     * Malloc buffer:
     *     If buffer had been allocated, free it and allocate it using new buffer size.
     */
    if (HI_NULL != s_astCIDrvParam[enCIPort].astCardParam[enCardId].pu8Buffer)
    {
        HI_VFREE_CI(s_astCIDrvParam[enCIPort].astCardParam[enCardId].pu8Buffer);
        s_astCIDrvParam[enCIPort].astCardParam[enCardId].pu8Buffer = HI_NULL;
    }

    s_astCIDrvParam[enCIPort].astCardParam[enCardId].pu8Buffer = HI_VMALLOC_CI(u16TempSize);
    if (HI_NULL != s_astCIDrvParam[enCIPort].astCardParam[enCardId].pu8Buffer)
    {
        s_astCIDrvParam[enCIPort].astCardParam[enCardId].u16BufferSize = u16TempSize;
    }
    else
    {
        HI_ERR_CI("CI %d PCCD %d alloc memory fail.\n", enCIPort, enCardId);
    }

    CIPORT_UNLOCK(enCIPort);

    return HI_SUCCESS;
}

HI_S32 CI_PCCD_TSCtrl(HI_UNF_CI_PORT_E enCIPort, HI_UNF_CI_PCCD_E enCardId,
                      HI_UNF_CI_PCCD_TSCTRL_E enCMD, HI_VOID *pParam)
{
    HI_S32 s32Ret;
    HI_UNF_CI_PCCD_TSCTRL_PARAM_U unParam;

    if (NULL == pParam)
    {
        return HI_ERR_CI_INVALID_PARA;
    }

    /* Copy param from user */
    if (copy_from_user(&unParam, (HI_UNF_CI_PCCD_TSCTRL_PARAM_U*)pParam,
                       sizeof(HI_UNF_CI_PCCD_TSCTRL_PARAM_U)))
    {
        return HI_FAILURE;
    }

    CHECK_CIPORT_VALID(enCIPort);
    CHECK_PCCD_VALID(enCardId);
    CIPORT_LOCK(enCIPort);
    CHECK_CI_PCCD_OPENED(enCIPort, enCardId);

    switch (enCMD)
    {
        /* Set TS ByPass or descramble */
    case HI_UNF_CI_PCCD_TSCTRL_BYPASS:
    {
        /* Check registed functions */
        if (!(s_astCIDrvParam[enCIPort].stOP.ci_pccd_ts_bypass))
        {
            CIPORT_UNLOCK(enCIPort);
            return HI_FAILURE;
        }

        s32Ret = s_astCIDrvParam[enCIPort].stOP.ci_pccd_ts_bypass(enCIPort, enCardId, unParam.stByPass.bByPass);
        break;
    }

    case HI_UNF_CI_PCCD_TSCTRL_SETMODE:
    {
        /* Check registed functions */
        if (!(s_astCIDrvParam[enCIPort].stOP.ci_pccd_set_ts_mode))
        {
            CIPORT_UNLOCK(enCIPort);
            return HI_FAILURE;
        }

        s32Ret = s_astCIDrvParam[enCIPort].stOP.ci_pccd_set_ts_mode(enCIPort, enCardId, unParam.stMode.enTSMode);
        break;
    }

    case HI_UNF_CI_PCCD_TSCTRL_WRITETS:
    {
        /* Check registed functions */
        if (!(s_astCIDrvParam[enCIPort].stOP.ci_pccd_ts_write))
        {
            CIPORT_UNLOCK(enCIPort);
            return HI_FAILURE;
        }

        s32Ret = s_astCIDrvParam[enCIPort].stOP.ci_pccd_ts_write(enCIPort, enCardId, &(unParam.stWrite));
        break;
    }

    default:
        s32Ret = HI_ERR_CI_INVALID_PARA;
        break;
    }

    CIPORT_UNLOCK(enCIPort);
    return s32Ret;
}

HI_S32 CI_PCCD_DbgTSCtrl(HI_UNF_CI_PORT_E enCIPort, HI_UNF_CI_PCCD_E enCardId,
                         HI_UNF_CI_PCCD_TSCTRL_E enCMD, HI_VOID *pParam)
{
    HI_S32 s32Ret;

    if (NULL == pParam)
    {
        return HI_ERR_CI_INVALID_PARA;
    }

    CHECK_CIPORT_VALID(enCIPort);
    CHECK_PCCD_VALID(enCardId);
    CIPORT_LOCK(enCIPort);
    CHECK_CI_PCCD_OPENED(enCIPort, enCardId);

    switch (enCMD)
    {
        /* Set TS ByPass or descramble */
    case HI_UNF_CI_PCCD_TSCTRL_BYPASS:
    {
        /* Check registed functions */
        if (!(s_astCIDrvParam[enCIPort].stOP.ci_pccd_ts_bypass))
        {
            CIPORT_UNLOCK(enCIPort);
            return HI_FAILURE;
        }

        s32Ret = s_astCIDrvParam[enCIPort].stOP.ci_pccd_ts_bypass(enCIPort, enCardId,
                                                                  ((HI_UNF_CI_PCCD_TSCTRL_PARAM_U*)pParam)->stByPass.bByPass);
        break;
    }

    case HI_UNF_CI_PCCD_TSCTRL_SETMODE:
    case HI_UNF_CI_PCCD_TSCTRL_WRITETS:
    default:
        s32Ret = HI_ERR_CI_INVALID_PARA;
        break;
    }

    CIPORT_UNLOCK(enCIPort);
    return s32Ret;
}

HI_S32 CI_PCCD_DbgIOPrintCtrl(HI_UNF_CI_PORT_E enCIPort, HI_UNF_CI_PCCD_E enCardId, HI_BOOL bPrint)
{
    CHECK_CIPORT_VALID(enCIPort);
    CHECK_PCCD_VALID(enCardId);
    CIPORT_LOCK(enCIPort);
    CHECK_CI_PCCD_OPENED(enCIPort, enCardId);

    s_astCIDrvParam[enCIPort].astCardParam[enCardId].bPrintIOData = bPrint;
    CIPORT_UNLOCK(enCIPort);
    return HI_SUCCESS;
}

HI_S32 CI_PCCD_GetDebugInfo(HI_UNF_CI_PORT_E enCIPort, HI_UNF_CI_PCCD_E enCardId,
                            CI_PCCD_DEBUGINFO_S_PTR pstDebugInfo)
{
    HI_S32 s32Ret;

    CHECK_CIPORT_VALID(enCIPort);
    CHECK_PCCD_VALID(enCardId);
    if (NULL == pstDebugInfo)
    {
        return HI_ERR_CI_INVALID_PARA;
    }

    if ((!s_astCIDrvParam[enCIPort].bOpen)
        || (!s_astCIDrvParam[enCIPort].astCardParam[enCardId].bCardOpen))
    {
        return HI_ERR_CI_NOT_INIT;
    }

    CIPORT_LOCK(enCIPort);

    /* Check registed functions */
    if (!(s_astCIDrvParam[enCIPort].stOP.ci_pccd_detect)
       || !(s_astCIDrvParam[enCIPort].stOP.ci_pccd_ready_or_busy)
       || !(s_astCIDrvParam[enCIPort].stOP.ci_pccd_get_access_mode)
       || !(s_astCIDrvParam[enCIPort].stOP.ci_pccd_get_bypass_mode))
    {
        CIPORT_UNLOCK(enCIPort);
        return HI_FAILURE;
    }

    /* Detect card */
    s32Ret = s_astCIDrvParam[enCIPort].stOP.ci_pccd_detect(enCIPort, enCardId, &(pstDebugInfo->enStatus));
    if (HI_SUCCESS != s32Ret)
    {
        CIPORT_UNLOCK(enCIPort);
        return s32Ret;
    }

    /* Ready or busy */
    s32Ret = s_astCIDrvParam[enCIPort].stOP.ci_pccd_ready_or_busy(enCIPort, enCardId, &(pstDebugInfo->enReady));
    if (HI_SUCCESS != s32Ret)
    {
        CIPORT_UNLOCK(enCIPort);
        return s32Ret;
    }

    /* Get AccessMode */
    s32Ret = s_astCIDrvParam[enCIPort].stOP.ci_pccd_get_access_mode(enCIPort, enCardId, &(pstDebugInfo->enAccessMode));
    if (HI_SUCCESS != s32Ret)
    {
        CIPORT_UNLOCK(enCIPort);
        return s32Ret;
    }

    /* Get TS mode */
    s32Ret = s_astCIDrvParam[enCIPort].stOP.ci_pccd_get_bypass_mode(enCIPort, enCardId, &(pstDebugInfo->bByPass));
    if (HI_SUCCESS != s32Ret)
    {
        CIPORT_UNLOCK(enCIPort);
        return s32Ret;
    }

    CIPORT_UNLOCK(enCIPort);
    return HI_SUCCESS;
}

