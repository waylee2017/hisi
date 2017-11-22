#ifndef __BASE_H__
#define __BASE_H__

#include "hi_type.h"

#define HI3716_MV300_CHIP     1

//#define DEBUG_PRINT_ON

#define DATA_BASE_ADDR    0x00003e00
#define DEBUG_BASE_ADDR   0x00003a00
#define DDRC_BASE_ADDR    0x10101000
#define DDRPHY_BASE_ADDR  0x10108000
#define VOU_BASE_ADDR     0x10110000
#define HDMI_BASE_ADDR    0X10170000
#define CRG_BASE_ADDR     0x101f5000
#define SYS_BASE_ADDR     0x101e0000
#define TIMER_BASE_ADDR   0x101e2000
#define IR_BASE_ADDR      0x101e1000
#define KEYLED_PHY_ADDR   0x101e3000
#define UART_BASE_ADDR    0x101e5000
#define PERI_BASE_ADDR    0x10200000
#define PINMUX_BASE_ADDR  0x10203000
#define HDMIPHY_BASE_ADDR    0x10207000
#define SF_BASE_ADDR     0x600d0000

#define DATA_CHIP      0x0
#define DATA_WDGON     0x04
#define DATA_DBGMASK   0x08
#define DATA_GPIO0     0x0c
#define DATA_GPIO1     0x10
#define DATA_DISPMODE  0x14
#define DATA_DISPVAL   0x18
#define DATA_TIMEVAL   0x1c
#define DATA_KEYTYPE   0x20
#define DATA_KEYVAL    0x24
#define DATA_IRTYPE    0x28
#define DATA_IRNUM     0x2c
#define DATA_IRVAL     0x30
#define DATA_MDCK      0x100
#define DATA_MDIO      0x104
#define DATA_RSTN      0x108
#define DATA_DDR_PHY2  0x110
#define DATA_DDR_PHY4A 0x114
#define DATA_DDR_PHY4B 0x118
#define DATA_DDR_PHY8  0x11c
#define DATA_DDR_PHY11 0x120
#define DATA_DDR_PHY29 0x124

#define DDRC_STATUS    0x294
#define DDRC_SREFCTRL  0x0
#define DDRPHY_INIT    0x04
#define DDRPHY_PLL     0x18
#define DDRPHY_CTRL0   0x78
#define DDRPHY_CTRL1   0x90
#define SYSCTRL_DDRLP  0x58

#define SYS_CTRL1      0x20
#define DPD            0x4f4
#define TMDS_CTL3      0x1808

#define PERI_CRG_PLL1  0x04 //APLL
#define PERI_CRG_PLL3  0x0c //BPLL
#define PERI_CRG_PLL5  0x14 //DPLL
#define PERI_CRG_PLL7  0x1c //VPLL
#define PERI_CRG_PLL9  0x24 //EPLL
#define PERI_CRG18     0x48
#define PERI_CRG22     0x58
#define PERI_CRG28     0x70
#define PERI_CRG29     0x74
#define PERI_CRG30     0x78
#define PERI_CRG31     0x7c
#define PERI_CRG37     0x94
#define PERI_CRG46     0xb8
#define PERI_CRG47     0xbc
#define PERI_CRG48     0xc0
#define PERI_CRG51     0xcc
#define PERI_CRG54     0xd8
#define PERI_CRG56     0xe0
#define PERI_CRG57     0xe4
#define PERI_CRG58     0xe8
#define PERI_CRG25     0x64
#define PERI_CRG63     0xfc
#define PERI_CRG67     0x10c
#define PERI_CRG68     0x110
#define PERI_CRG69     0x114
#define PERI_CRG70     0x118
#define PERI_CRG71     0x11c
#define PERI_CRG74     0x128

#define PERI_DEMOD	   0x38
#define PERI_USB1      0x2c
#define PERI_USB2      0x30
#define PERI_QAMADC0   0x38

#define SC_CTRL        0x0
#define SC_APLL        0x1c
#define SC_VPLL0       0x24
#define SC_VPLL1       0x2c
#define SC_QPLL        0x3c
#define SC_LOWPOWER    0x40
#define SC_PLLLOCKSTAT 0x150
#define SC_GEN0    0x80
#define SC_GEN27   0xec

#define SC_LOW_POWER_CTRL   0x40
#define SC_CLKGATE_SRST_CTRL 0x48

#define PERI_QAMADC0 0x38    //QAM
#define PERI_QAMADC1 0x3c
#define PERI_CRG_QAMCLK 0xe4

#define DACCTL0_1   0xe4
#define DACCTL2_3   0xe8

#define MDIO_RWCTRL   0x1100  //SF PHY
#define PERI_FEPHY   0x0118

#define PERI_TIANLA_ADAC0 0x1b8  //ADAC
#define PERI_TIANLA_ADAC1 0x1bc
#define PERI_TIANLA_ADAC2 0x1c0

#define DACCTRL      0xe0
#define DACCTRL0_1   0xe4
#define DACCTRL2_3   0xe8

#define USB_PHY0_REF_CKEN (1 << 0)
#define USB_PHY1_REF_CKEN (1 << 1)
#define USB_PHY0_SRST_REQ (1 << 8)
#define USB_PHY0_SRST_TREQ (1 << 9)
#define USB_PHY_12M_SELECT (1 << 10)
#define USB_PHY1_SRST_TREQ (1 << 11)
#define USB_PHY0_REFCLK_SEL (1 << 16)
#define USB_PHY1_REFCLK_SEL (1 << 17)


/*save the wakeup_type and the suspend peroid*/
#define SC_GEN17   0xc4
#define SC_GEN18   0xc8

/* Add for advanced CA to check if suspend happen */
#define SC_GEN15    0xbc
/*save the ddr of 51ram which saved wake check base addr and hash*/
#define SC_GEN19    0xcc

#define CHECK_VECTOR_BASE_ADDR (DATA_BASE_ADDR+0Xe00)   //51ram

/* use this common reg to save ddr phy reg restore address of c51  */
#define SC_GEN16  0xc0

/* store standby para for advca*/
#define SC_GEN32   0xf00
#define SC_GEN33   0xf04
#define SC_GEN34   0xf08
#define SC_GEN35   0xf0c
#define SC_GEN36   0xf10
#define SC_GEN37   0xf14
#define SC_GEN38   0xf18
#define SC_GEN39   0xf1c
#define SC_GEN40   0xf20
#define SC_GEN41   0xf24
#define SC_GEN42   0xf28
#define SC_GEN43   0xf2c
#define SC_GEN44   0xf30
#define SC_GEN45   0xf34
#define SC_GEN46   0xf38


#define TIMER_LOAD     0x0
#define TIMER_VALUE    0x04
#define TIMER_CONTROL  0x08
#define TIMER_INTCLR   0x0c
#define TIMER_RIS      0x10
#define TIMER_MIS      0x14
#define TIMER_BGLOAD   0x18

#define IR_EN          0x0
#define IR_CFG         0x04
#define IR_LEADS       0x08
#define IR_LEADE       0x0c
#define IR_SLEADE      0x10
#define IR_B0          0x14
#define IR_B1          0x18
#define IR_BUSY        0x1c
#define IR_DATAH       0x20
#define IR_DATAL       0x24
#define IR_INT_MASK    0x28
#define IR_INT_STATUS  0x2c
#define IR_INT_CLR     0x30
#define IR_START       0x34

#define UART_DR        0x0
#define UART_FR        0x18

#define LEDC_CONTROL    	(0x101E3000)   /*LED control register*/   /*CNcomment:控制寄存器 */
#define LEDC_CONFIG     	(0x101E3004)   /*LED config register*/   /* CNcomment:LED显示配置寄存器  */
#define LEDC_KEYINT     	(0x101E3008)   /*Key interrupt register */  /*CNcomment: 键盘采样中断寄存器 */
#define LEDC_KEYDATA    	(0x101E300C)   /*Status of keypad sampling in LED module*/  /*CNcomment: LED模块采样键盘状态 */
#define LEDC_CLKTIM     	(0x101E3010)   /*Parameter of LEDClk signal about the electic high or low*/  /*CNcomment: LedClk信号高低电平时间参数 */
#define LEDC_FRETIM     	(0x101E3014)   /*Frequency of LED fresh*/  /*CNcomment: LED刷新频率 */
#define LEDC_FLASHTIM   	(0x101E3018)   /*Frequency of LED flash*/  /* CNcomment:LED闪烁频率 */
#define LEDC_KEYTIM     	(0x101E301C)   /*Frequency of key scan*/  /*CNcomment: 键盘扫描频率 */
#define LEDC_DATA1      	(0x101E3020)   /*The first data register for LED display*/  /*CNcomment: 第一个LED显示数据寄存器 */
#define LEDC_DATA2      	(0x101E3024)   /*The second data register for LED display*/ /* CNcomment:第二个LED显示数据寄存器 */
#define LEDC_DATA3      	(0x101E3028)   /*The third data register for LED display*/  /*CNcomment: 第三个LED显示数据寄存器 */
#define LEDC_DATA4      	(0x101E302C)   /*The fourth data register for LED display*/  /*CNcomment: 第四个LED显示数据寄存器 */
#define LEDC_SYSTIM         (0x101E3034)


//PMT_CTL_REG
#define PMT_CTRL_REG1 (0x600d0500)
#define PMT_CTRL_REG2 (0x600d2500)

#define NORMAL_WAKEUP 0
#define USB_WAKEUP 1
#define ETH_WAKEUP 2
#define IR_PMOC_NUM  0x6

#define HI_UNF_PMOC_WKUP_IR 0
#define HI_UNF_PMOC_WKUP_KEYLED 1
#define HI_UNF_PMOC_WKUP_TIMEOUT 2
#define HI_UNF_PMOC_WKUP_ETH 3
#define HI_UNF_PMOC_WKUP_GPIO 4
#define HI_UNF_PMOC_WKUP_USB 5

extern void printf_char(HI_U8 ch);
extern void printf_val(HI_U32 u32Data);
void printf_str(char *string);
#define wait_minute_1(x) do{ \
	HI_U8 i; \
	for(i = 0; i < x; i++); \
}while(0);


#define wait_minute_2(x,y) do{ \
	HI_U8 i, j; \
	for(i = 0; i < x; i++) {\
		for(j = 0; j < y; j++);\
	}\
}while(0);

#define wait_minute_3(x,y,z) do{ \
	HI_U8 i, j, k; \
	for(i = 0; i < x; i++) {\
		for(j = 0; j < y; j++) {\
			for(k = 0; k < z; k++); \
		} \
	} \
}while(0);


#define HI_REG_READ32(addr,result)  ((result) = *(volatile unsigned int *)(addr))

#define HI_REG_WRITE32(addr,result)  (*(volatile unsigned int *)(addr) = (result))

/* variable*/
//extern HI_U8 g_u8ChipType;

extern HI_U8 pmocType;
extern HI_U8 pmocflag;

//extern void read_regVal(void); 
//extern void write_regVal(void);
extern HI_U8 GpioValArray[2];
//extern HI_U8  dbgflag;
extern HI_U8  dbgmask;
extern HI_U8  wdgon;
extern HI_U8 GpioValArray[2];
extern HI_U8  klPmocVal;
extern HI_U8 ir_type;
extern HI_U8 ir_pmocnum;

extern HI_U32 irPmocHval[IR_PMOC_NUM];
extern HI_U32 irPmocLval[IR_PMOC_NUM];

extern HI_U8  time_hour;
extern HI_U8  time_minute;
extern HI_U8  time_second;

extern void dbg_val(HI_U8 pos, HI_U8 val);
extern void dbg_resetParam(void); 

extern void dbg_reset(void);
//extern void dbg_level(HI_U8 l); 


#endif
