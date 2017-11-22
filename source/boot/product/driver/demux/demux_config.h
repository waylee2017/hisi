
#ifndef __DEMUX_CONFIG_H__
#define __DEMUX_CONFIG_H__

#if defined(CHIP_TYPE_hi3716h) || defined(CHIP_TYPE_hi3716c)

#define HI_DEMUX_COUNT          5
#define HI_OQ_COUNT             128
#define HI_TUNER_PORT_COUNT     3
#define HI_CHANNEL_COUNT        96
#define HI_FILTER_COUNT         96

#define DMX_REGION_SUPPORT

#elif defined(CHIP_TYPE_hi3716m)

#define HI_DEMUX_COUNT          5
#define HI_OQ_COUNT             128
#define HI_TUNER_PORT_COUNT     3
#define HI_CHANNEL_COUNT        96
#define HI_FILTER_COUNT         96

#elif defined(CHIP_TYPE_hi3712)

#define HI_DEMUX_COUNT          5
#define HI_OQ_COUNT             128
#define HI_TUNER_PORT_COUNT     2
#define HI_CHANNEL_COUNT        96
#define HI_FILTER_COUNT         96

#elif defined(CHIP_TYPE_hi3716mv310) || defined(CHIP_TYPE_hi3716mv320) || defined(CHIP_TYPE_hi3110ev500)
#define HI_DEMUX_COUNT          7
#define HI_OQ_COUNT             128
#define HI_TUNER_PORT_COUNT     5
#define HI_CHANNEL_COUNT        96
#define HI_FILTER_COUNT         96

#elif defined(CHIP_TYPE_hi3716mv330)
#define HI_DEMUX_COUNT          5
#define HI_OQ_COUNT             128
#define HI_TUNER_PORT_COUNT     4
#define HI_CHANNEL_COUNT        96
#define HI_FILTER_COUNT         64

#endif

#endif  // __DEMUX_CONFIG_H__

