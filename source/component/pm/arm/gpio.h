#ifndef __GPIO_H__
#define __GPIO_H__

/* 1 register addr */
#define  GPIO0_BASE_ADDR   0x101e6000
#define  GPIO1_BASE_ADDR   0x101e7000
#define  GPIO2_BASE_ADDR   0x101e8000
#define  GPIO3_BASE_ADDR   0x101e9000
#define  GPIO5_BASE_ADDR   0x101e4000
#define  GPIO5_REG_DIR     0x101e4400
#define  IO_CONFIG_ADDR    0x10203000

#define  GPIO5_REG_IS      0x101e4404
#define  GPIO5_REG_IBE     0x101e4408
#define  GPIO5_REG_IEV     0x101e440c
#define  GPIO5_REG_IE      0x101e4410
#define  GPIO5_REG_RIS     0x101e4414
#define  GPIO5_REG_MIS     0x101e4418
#define  GPIO5_REG_IC      0x101e441c
#define  GPIO5_REG_RSV     0x101e4420


HI_VOID gpio5_dirset_bit(HI_U8 idx, HI_U8 val);  
HI_VOID gpio5_write_bit(HI_U8 idx, HI_U8 val);
HI_VOID gpio5_read_bit(HI_U8 idx, HI_U8* val);
HI_VOID gpio5_bit_reuse(HI_U8 PinIndex);
HI_VOID gpio_SetIntType(HI_U8 u8GpioBitNum);
HI_VOID gpio_IntEnable(HI_U8 u8GpioBitNum, HI_BOOL IsEnable);
HI_VOID gpio_isr(HI_U8 u8GpioBitNum);
HI_VOID gpio_SetKeyIntType(HI_U8 u8GpioNum);
HI_VOID gpio_KeyIntEnable(HI_U8 u8GpioNum, HI_BOOL IsEnable);
HI_VOID gpio_keyisr(HI_U8 u8GpioNum);
#endif