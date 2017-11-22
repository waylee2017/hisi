
#ifndef __DRV_REG_PROC_H__
#define __DRV_REG_PROC_H__

#ifdef __cplusplus
#if __cplusplus
extern "C"{
#endif
#endif /* __cplusplus */

//HI3716Cv200 Series
#if    defined(CHIP_TYPE_hi3716cv200)   \
    || defined(CHIP_TYPE_hi3716cv200es) \
    || defined(CHIP_TYPE_hi3716mv400)   \
    || defined(CHIP_TYPE_hi3718cv100)   \
    || defined(CHIP_TYPE_hi3719cv100)   \
    || defined(CHIP_TYPE_hi3719mv100_a) \
    || defined(CHIP_TYPE_hi3718mv100)   \
    || defined(CHIP_TYPE_hi3719mv100)   \
    || defined(CHIP_TYPE_hi3798mv100)   \
    || defined(CHIP_TYPE_hi3798mv100_a) 


#define     HDMI_TX_BASE_ADDR       0xf8ce0000L
#define     HDMI_TX_SLV0_ADDR_BASE  0xf8ce0000L
#define     HDMI_TX_SLV1_ADDR_BASE  0xf8ce0400L
#define     HDMI_TX_CEC_ADDR_BASE   0xf8ce0800L

#define HDMI_TX_PHY_ADDR      0xf8ce1800L

#define CIPHER_HDCP_MODE_CRL  0xF9A00820L

#elif defined(CHIP_TYPE_hi3796cv100_a)  \
    || defined(CHIP_TYPE_hi3796cv100)   \
    || defined(CHIP_TYPE_hi3798cv100_a) \
    || defined(CHIP_TYPE_hi3798cv100)

#define HDMI_TX_BASE_ADDR     0xff100000L
#define     HDMI_TX_SLV0_ADDR_BASE 0xff100000L
#define     HDMI_TX_SLV1_ADDR_BASE 0xff100400L
#define     HDMI_TX_CEC_ADDR_BASE  0xf8ce0800L

#define HDMI_TX_PHY_ADDR      0xff101800L

#elif  defined(CHIP_TYPE_hi3716mv310)   \
    || defined(CHIP_TYPE_hi3716mv320)   
    

#define HDMI_TX_BASE_ADDR           0x10170000L
#define HDMI_TX_SLV0_ADDR_BASE      0x10170000L
#define HDMI_TX_SLV1_ADDR_BASE      0x10170400L
#define HDMI_TX_CEC_ADDR_BASE       0x10170800L

#define HDMI_TX_PHY_ADDR            0x10171800L

#elif  defined(CHIP_TYPE_hi3716mv330)

/******************** HIFONEV300 define start *****************************/

/* HDMI TX CRG */

#define HDMI_TX_BASE_ADDR           0x10170000L
#define HDMI_TX_SLV0_ADDR_BASE      0x10170000L
#define HDMI_TX_SLV1_ADDR_BASE      0x10170400L
#define HDMI_TX_CEC_ADDR_BASE       0x10170800L

#define HDMI_TX_PHY_ADDR            0x10173000L

/******************** HIFONEV300 define end *****************************/

#endif

#define HDMI_REG_WRITE(addr, val) (*(volatile unsigned int *)(addr) = (val))
#define HDMI_REG_READ(addr) (*(volatile unsigned int *)(addr))

#ifdef __cplusplus
#if __cplusplus
}
#endif
#endif /* __cplusplus */

#endif /* __DRV_REG_PROC_H__ */

