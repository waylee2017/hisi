
#ifndef __DRV_DEMUX_CONFIG_H__
#define __DRV_DEMUX_CONFIG_H__

#if defined(CHIP_TYPE_hi3716h) || defined(CHIP_TYPE_hi3716c)

#define DMX_INT_NUM                     (52 + 32)

#define HI_CRG_BASE                     IO_ADDRESS(0x101f5000)

#define HI_PVR_BASE                     IO_ADDRESS(0x600c0000)

#define DMX_CNT                         5

#define DMX_REC_CNT                     3

#define DMX_TUNERPORT_CNT               3
#define DMX_RAMPORT_CNT                 4

#define DMX_CHANNEL_CNT                 96
#define DMX_AV_CHANNEL_CNT              32
#define DMX_PCR_CHANNEL_CNT             16

#define DMX_FILTER_CNT                  96

#define DMX_KEY_CNT                     32

#define DMX_FQ_CNT                      40
#define DMX_OQ_CNT                      128

#define DMX_USE_ECM

#define DMX_RAM_PORT_OFFSET             3

#define DMX_DESCRAMBLER_VERSION_0

#define DMX_DESCRAMBLER_TYPE_CSA3_SUPPORT

#define DMX_REGION_SUPPORT

#elif defined(CHIP_TYPE_hi3716m)

#define DMX_INT_NUM                     (52 + 32)

#define HI_CRG_BASE                     IO_ADDRESS(0x101f5000)

#define HI_PVR_BASE                     IO_ADDRESS(0x600c0000)

#define DMX_CNT                         5

#define DMX_REC_CNT                     3

#define DMX_TUNERPORT_CNT               3
#define DMX_RAMPORT_CNT                 4

#define DMX_CHANNEL_CNT                 96
#define DMX_AV_CHANNEL_CNT              32
#define DMX_PCR_CHANNEL_CNT             16

#define DMX_FILTER_CNT                  96

#define DMX_KEY_CNT                     32

#define DMX_FQ_CNT                      40
#define DMX_OQ_CNT                      128

#define DMX_USE_ECM

#define DMX_RAM_PORT_OFFSET             3

#define DMX_SCD_NEW_FLT_SUPPORT

#define DMX_DESCRAMBLER_VERSION_0
#define DMX_DESCRAMBLER_VERSION_1

#define DMX_DESCRAMBLER_TYPE_CSA3_SUPPORT
#define DMX_DESCRAMBLER_TYPE_SPE_SUPPORT
#define DMX_DESCRAMBLER_TYPE_DES_SUPPORT
#define DMX_DESCRAMBLER_TYPE_AES_NS_SUPPORT
#define DMX_DESCRAMBLER_TYPE_SMS4_NS_SUPPORT
#define DMX_DESCRAMBLER_TYPE_SMS4_IPTV_SUPPORT
#define DMX_DESCRAMBLER_TYPE_SMS4_ECB_SUPPORT
#define DMX_DESCRAMBLER_TYPE_SMS4_CBC_SUPPORT

#define DMX_RAM_PORT_SET_LENGTH_SUPPORT

#elif defined(CHIP_TYPE_hi3712)

#define DMX_INT_NUM                     (52 + 32)

#define HI_CRG_BASE                     IO_ADDRESS(0x101f5000)

#define HI_PVR_BASE                     IO_ADDRESS(0x600c0000)

#define DMX_CNT                         5

#define DMX_REC_CNT                     3

#define DMX_TUNERPORT_CNT               3
#define DMX_RAMPORT_CNT                 2

#define DMX_CHANNEL_CNT                 96
#define DMX_AV_CHANNEL_CNT              32
#define DMX_PCR_CHANNEL_CNT             16

#define DMX_FILTER_CNT                  96

#define DMX_KEY_CNT                     32

#define DMX_FQ_CNT                      40
#define DMX_OQ_CNT                      128

#define DMX_RAM_PORT_OFFSET             3

#define DMX_SCD_NEW_FLT_SUPPORT

#define DMX_DESCRAMBLER_VERSION_1

#define DMX_DESCRAMBLER_TYPE_SPE_SUPPORT
#define DMX_DESCRAMBLER_TYPE_DES_SUPPORT
#define DMX_DESCRAMBLER_TYPE_AES_NS_SUPPORT

#define DMX_TUNER_PORT_SERIAL_2BIT_AND_SERIAL_NOSYNC_SUPPORT

#define DMX_RAM_PORT_SET_LENGTH_SUPPORT
#define DMX_RAM_PORT_AUTO_SCAN_SUPPORT

#define DMX_SECTION_PARSE_NOPUSI_SUPPORT

#define DMX_FILTER_DEPTH_SUPPORT

#elif defined(CHIP_TYPE_hi3716cv200)

#define DMX_INT_NUM                     (82 + 32)

#define HI_CRG_BASE                     IO_ADDRESS(0xF8A22000)

#define HI_PVR_BASE                     IO_ADDRESS(0xF9C00000)

#define DMX_CNT                         7

#define DMX_REC_CNT                     3

#define DMX_TUNERPORT_CNT               5
#define DMX_RAMPORT_CNT                 5

#define DMX_CHANNEL_CNT                 96
#define DMX_AV_CHANNEL_CNT              32
#define DMX_PCR_CHANNEL_CNT             16

#define DMX_FILTER_CNT                  96

#define DMX_KEY_CNT                     32

#define DMX_FQ_CNT                      40
#define DMX_OQ_CNT                      128

#define DMX_RAM_PORT_OFFSET             15

#define DMX_SCD_NEW_FLT_SUPPORT

#define DMX_DESCRAMBLER_VERSION_1

#define DMX_DESCRAMBLER_TYPE_CSA3_SUPPORT
#define DMX_DESCRAMBLER_TYPE_SPE_SUPPORT
#define DMX_DESCRAMBLER_TYPE_DES_SUPPORT
#define DMX_DESCRAMBLER_TYPE_AES_NS_SUPPORT
#define DMX_DESCRAMBLER_TYPE_SMS4_NS_SUPPORT
#define DMX_DESCRAMBLER_TYPE_SMS4_IPTV_SUPPORT
#define DMX_DESCRAMBLER_TYPE_SMS4_ECB_SUPPORT
#define DMX_DESCRAMBLER_TYPE_SMS4_CBC_SUPPORT

#define DMX_TUNER_PORT_SERIAL_2BIT_AND_SERIAL_NOSYNC_SUPPORT

#define DMX_RAM_PORT_SET_LENGTH_SUPPORT
#define DMX_RAM_PORT_AUTO_SCAN_SUPPORT

#define DMX_SECTION_PARSE_NOPUSI_SUPPORT

#define DMX_FILTER_DEPTH_SUPPORT

#define DMX_REC_EXCLUDE_PID_SUPPORT
#define DMX_REC_EXCLUDE_PID_NUM         (30)

#elif defined(CHIP_TYPE_hi3716mv310) || defined(CHIP_TYPE_hi3716mv320) || defined(CHIP_TYPE_hi3110ev500)
#define DMX_INT_NUM                     (52 + 32)

#define HI_CRG_BASE                     IO_ADDRESS(0x101f5000)

#define HI_PVR_BASE                     IO_ADDRESS(0x600c0000)

#define DMX_CNT                         7

#define DMX_REC_CNT                     DMX_CNT

#define DMX_TUNERPORT_CNT               5  /* 1 IF, 4 TSI */
#define DMX_RAMPORT_CNT                 4
#define DMX_TSOPORT_CNT                  1

#define DMX_CHANNEL_CNT                 96
#define DMX_AV_CHANNEL_CNT              32
#define DMX_PCR_CHANNEL_CNT             16

#define DMX_FILTER_CNT                  96

#define DMX_KEY_CNT                     32

#define DMX_FQ_CNT                      40
#define DMX_OQ_CNT                      128

#define DMX_RAM_PORT_OFFSET             15

#define DMX_SCD_NEW_FLT_SUPPORT

#define DMX_DESCRAMBLER_VERSION_1

#define DMX_DESCRAMBLER_TYPE_CSA3_SUPPORT
#define DMX_DESCRAMBLER_TYPE_SPE_SUPPORT
#define DMX_DESCRAMBLER_TYPE_DES_SUPPORT
#define DMX_DESCRAMBLER_TYPE_AES_NS_SUPPORT
#define DMX_DESCRAMBLER_TYPE_SMS4_NS_SUPPORT
#define DMX_DESCRAMBLER_TYPE_SMS4_IPTV_SUPPORT
#define DMX_DESCRAMBLER_TYPE_SMS4_ECB_SUPPORT
#define DMX_DESCRAMBLER_TYPE_SMS4_CBC_SUPPORT
#define DMX_DESCRAMBLER_TYPE_DES_IPTV_SUPPORT
#define DMX_DESCRAMBLER_TYPE_TDES_SUPPORT

#define DMX_TUNER_PORT_SERIAL_2BIT_AND_SERIAL_NOSYNC_SUPPORT

#define DMX_RAM_PORT_SET_LENGTH_SUPPORT
#define DMX_RAM_PORT_AUTO_SCAN_SUPPORT

#define DMX_SECTION_PARSE_NOPUSI_SUPPORT

#define DMX_FILTER_DEPTH_SUPPORT

#elif defined(CHIP_TYPE_hi3716mv330)

#define DMX_INT_NUM                     (52 + 32)

#define HI_CRG_BASE                     IO_ADDRESS(0x101f5000)

#define HI_PVR_BASE                     IO_ADDRESS(0x600c0000)

#define DMX_CNT                             5

#define DMX_REC_CNT                     DMX_CNT

#define DMX_TUNERPORT_CNT              4  /* 1 IF, 3 TSI */
#define DMX_RAMPORT_CNT                 1
#define DMX_TSOPORT_CNT                  1

#define DMX_CHANNEL_CNT                 96
#define DMX_AV_CHANNEL_CNT              32
#define DMX_PCR_CHANNEL_CNT             4

#define DMX_FILTER_CNT                  64

#define DMX_KEY_CNT                     4

#define DMX_FQ_CNT                      40
#define DMX_OQ_CNT                      128

#define DMX_RAM_PORT_OFFSET             15

#define DMX_SCD_NEW_FLT_SUPPORT

#define DMX_DESCRAMBLER_VERSION_1

#define DMX_DESCRAMBLER_TYPE_DES_SUPPORT
#define DMX_DESCRAMBLER_TYPE_DES_IPTV_SUPPORT
#define DMX_DESCRAMBLER_TYPE_TDES_SUPPORT
/* for AES CBC in MV330,it is not the same with MV310/MV320/HI3110EV500 */
#define DMX_DESCRAMBLER_TYPE_SPE_V2_SUPPORT

#define DMX_TUNER_PORT_SERIAL_2BIT_AND_SERIAL_NOSYNC_SUPPORT

#define DMX_RAM_PORT_SET_LENGTH_SUPPORT
#define DMX_RAM_PORT_AUTO_SCAN_SUPPORT

#define DMX_SECTION_PARSE_NOPUSI_SUPPORT

#define DMX_FILTER_DEPTH_SUPPORT

#else

#error must define CHIP_TYPE

#endif

#endif  // __DRV_DEMUX_CONFIG_H__

