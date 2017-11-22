#ifndef __SPI_GPIO_H_
#define __SPI_GPIO_H_

/*定义最大通道数*/
#define D_SPI_GPIO_MAX_CH 4

#define     SPI_GPIO_GROUP_NUM          13
#define     SPI_GPIO_BIT_NUM            8

#define     SPI_GPIO_DIR_REG            0x400

#define     SPI_GPIO_OUTPUT             1

typedef struct hiSPI_GPIO_CH_ATTR
{
    HI_BOOL bUsedFlag; /*是否被使用，1-使用，0-空闲*/
    HI_U32  u32SpiCsGpio; /*CS，表示第几组GPIO，从0开始*/
    HI_U32  u32SpiCsBit; /*表示GPIO中的第几bit，从0开始，最大7*/
    HI_U32  u32SpiClkGpio; /*时钟，表示第几组GPIO，从0开始*/
    HI_U32  u32SpiClkBit; /*表示GPIO中的第几bit，从0开始，最大7*/
    HI_U32  u32SpiDIGpio; /*DI，主机读回。表示第几组GPIO，从0开始*/
    HI_U32  u32SpiDIBit; /*表示GPIO中的第几bit，从0开始，最大7*/
    HI_U32  u32SpiDOGpio; /*DO,主机写出。表示第几组GPIO，从0开始*/
    HI_U32  u32SpiDOBit; /*表示GPIO中的第几bit，从0开始，最大7*/
}HI_SPI_GPIO_CH_ATTR;

#endif
