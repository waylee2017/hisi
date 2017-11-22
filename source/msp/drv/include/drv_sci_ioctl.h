#ifndef __DRV_SCI_IOCTL_H__
#define __DRV_SCI_IOCTL_H__

#include "hi_unf_sci.h"
#include "hi_drv_sci.h"

typedef struct hiSCI_OPEN_S
{
    HI_UNF_SCI_PORT_E     enSciPort;
    HI_UNF_SCI_PROTOCOL_E enSciProtocol;
    HI_U32                Frequency;
} SCI_OPEN_S;

typedef struct hiSCI_RST_S
{
    HI_UNF_SCI_PORT_E enSciPort;
    HI_BOOL           bWarmReset;
} SCI_RST_S;

typedef struct hiSCI_ATR_S
{
    HI_UNF_SCI_PORT_E   enSciPort;
    HI_U8              *pAtrBuf;
    HI_U32              BufSize;
    HI_U8               DataLen;
} SCI_ATR_S;

typedef struct hiSCI_STATUS_S
{
    HI_UNF_SCI_PORT_E   enSciPort;
    HI_UNF_SCI_STATUS_E enSciStatus;
} SCI_STATUS_S;

typedef struct hiSCI_DATA_S
{
    HI_UNF_SCI_PORT_E     enSciPort;
    HI_U8                *pDataBuf;
    HI_U32                BufSize;
    HI_U32                DataLen;
    HI_U32                TimeoutMs;
} SCI_DATA_S;

typedef struct hiSCI_LEVEL_S
{
    HI_UNF_SCI_PORT_E  enSciPort;
    HI_UNF_SCI_LEVEL_E enSciLevel;
} SCI_LEVEL_S;

typedef struct hiSCI_CLK_S
{
    HI_UNF_SCI_PORT_E     enSciPort;
    HI_UNF_SCI_MODE_E     enClkMode;
} SCI_CLK_S;

#if defined(CHIP_TYPE_hi3716mv330)
typedef struct hiSCI_RESET_S
{
    HI_UNF_SCI_PORT_E     enSciPort;
    HI_UNF_SCI_MODE_E     enResetMode;
} SCI_RESET_S;

typedef struct hiSCI_VCCEN_S
{
    HI_UNF_SCI_PORT_E     enSciPort;
    HI_UNF_SCI_MODE_E     enVccEnMode;
} SCI_VCCEN_S;
#endif

typedef struct hiSCI_DEV_STATE_S
{
    HI_BOOL bSci[HI_UNF_SCI_PORT_BUTT];
} SCI_DEV_STATE_S;

typedef struct hiSCI_EXT_BAUD_S
{
    HI_UNF_SCI_PORT_E enSciPort;
    HI_U32            ClkRate;
    HI_U32            BitRate;
} SCI_EXT_BAUD_S;

typedef struct hiSCI_ADD_GUARD_S
{
    HI_UNF_SCI_PORT_E enSciPort;
    HI_U32            AddCharGuard;
} SCI_ADD_GUARD_S;

typedef struct hiSCI_PPS_S
{
    HI_UNF_SCI_PORT_E enSciPort;
    HI_U8             Send[6];
    HI_U8             Receive[6];
    HI_U32            SendLen;
    HI_U32            ReceiveLen;
    HI_U32            RecTimeouts;
} SCI_PPS_S;

typedef struct hiSCI_CHARTIMEOUT_S
{
    HI_UNF_SCI_PORT_E     enSciPort;
    HI_UNF_SCI_PROTOCOL_E enSciProtocol;
    HI_U32                CharTimeouts;
} SCI_CHARTIMEOUT_S;

typedef struct hiSCI_BLOCKTIMEOUT_S
{
    HI_UNF_SCI_PORT_E enSciPort;
    HI_U32            BlockTimeouts;
} SCI_BLOCKTIMEOUT_S;

typedef struct hiSCI_TXRETRY_S
{
    HI_UNF_SCI_PORT_E enSciPort;
    HI_U32            TxRetryTimes;
} SCI_TXRETRY_S;

#define CMD_SCI_OPEN _IOW(HI_ID_SCI, 0x1, SCI_OPEN_S)
#define CMD_SCI_CLOSE _IOW(HI_ID_SCI, 0x2, HI_UNF_SCI_PORT_E)
#define CMD_SCI_RESET _IOW(HI_ID_SCI, 0x3, SCI_RST_S)
#define CMD_SCI_DEACTIVE _IOW(HI_ID_SCI, 0x4, HI_UNF_SCI_PORT_E)
#define CMD_SCI_GET_ATR _IOWR(HI_ID_SCI, 0x5, SCI_ATR_S)
#define CMD_SCI_GET_STATUS _IOWR(HI_ID_SCI, 0x6, SCI_STATUS_S)
#define CMD_SCI_CONF_VCC _IOW(HI_ID_SCI, 0x7, SCI_LEVEL_S)
#define CMD_SCI_CONF_DETECT _IOW(HI_ID_SCI, 0x8, SCI_LEVEL_S)
#define CMD_SCI_CONF_CLK_MODE _IOW(HI_ID_SCI, 0x9, SCI_CLK_S)
#define CMD_SCI_SEND_DATA _IOWR(HI_ID_SCI, 0xa, SCI_DATA_S)
#define CMD_SCI_RECEIVE_DATA _IOWR(HI_ID_SCI, 0xb, SCI_DATA_S)
#define CMD_SCI_SWITCH _IOW(HI_ID_SCI, 0xc, SCI_OPEN_S)
#define CMD_SCI_SET_BAUD _IOW(HI_ID_SCI, 0xd, SCI_EXT_BAUD_S)
#define CMD_SCI_SET_CHGUARD _IOW(HI_ID_SCI, 0xe, SCI_ADD_GUARD_S)
#define CMD_SCI_SEND_PPS_DATA _IOW(HI_ID_SCI, 0xF, SCI_PPS_S)
#define CMD_SCI_GET_PPS_DATA _IOWR(HI_ID_SCI, 0x10, SCI_PPS_S)
#define CMD_SCI_GET_PARAM _IOWR(HI_ID_SCI, 0x11, HI_UNF_SCI_PARAMS_S)
#define CMD_SCI_SET_CHARTIMEOUT _IOW(HI_ID_SCI, 0x12, SCI_CHARTIMEOUT_S)
#define CMD_SCI_SET_BLOCKTIMEOUT _IOW(HI_ID_SCI, 0x13, SCI_BLOCKTIMEOUT_S)
#define CMD_SCI_SET_TXRETRY _IOW(HI_ID_SCI, 0x14, SCI_TXRETRY_S)
#if defined(CHIP_TYPE_hi3716mv330)
#define CMD_SCI_CONF_RESET_MODE _IOW(HI_ID_SCI, 0x15, SCI_RESET_S)
#define CMD_SCI_CONF_VCCEN_MODE _IOW(HI_ID_SCI, 0x16, SCI_VCCEN_S)
#endif
#endif /* End of #ifndef __DRV_SCI_IOCTL_H__*/
