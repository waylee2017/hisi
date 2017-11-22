#ifndef __BASE_H__
#define __BASE_H__

#include "hi_type.h"


#define HI_ADVCA_RELEASE

//#define DEBUG_PRINT_ON

//#define POWER_UP_STANDBY_MODE1

#define HI_CHIP_TYPE_HI3716M     0
#define HI_CHIP_TYPE_HI3716MV310 1
#define HI_CHIP_TYPE_HI3716H     1
#define HI_CHIP_TYPE_HI3716C     2
#define HI_CHIP_TYPE_HI3716CES   3
#define HI_CHIP_TYPE_HI3719M     9

#define HI_CHIP_TYPE_HI3796C     0x20
#define HI_CHIP_TYPE_HI3798C     0x21
#define HI_CHIP_TYPE_HI3796C_A   0x40
#define HI_CHIP_TYPE_HI3798C_A   0x41

#define NORMAL_WAKEUP 0
#define USB_WAKEUP 1
#define ETH_WAKEUP 2

#define SUPPORT_ADVCA 0
#define NO_SUPPORT_ADVCA 1
#define GET_ADVCA_SUPPORT_ERR 2

#define HI_UNF_PMOC_WKUP_IR 0
#define HI_UNF_PMOC_WKUP_KEYLED 1
#define HI_UNF_PMOC_WKUP_TIMEOUT 2
#define HI_UNF_PMOC_WKUP_ETH 3
#define HI_UNF_PMOC_WKUP_GPIO 4
#define HI_UNF_PMOC_WKUP_USB 5


#define CA_VENDOR_ID_NAGRA      0x01

#define CFG_BASE_ADDR (0x101E0000)
/*#define PMC_BASE_ADDR (0xF8A23000)//DVFS”√*/
#define DDR_BASE_ADDR (0x10101000)
#define CRG_BASE_ADDR (0x101F5000)
#define DATA_BASE_ADDR (0x600b7000)
#define TIMER_BASE_ADDR (0x101E2000)
#define IR_BASE_ADDR  (0x101E1000)

#define DDRPHY_BASE_ADDR (0x10108000)

//PMT_CTL_REG
#define PMT_CTRL_REG1 (0x600d0500)
#define PMT_CTRL_REG2 (0x600d2500)

//SYS_CTL_REG

#define MCU_CTRL       0x00
#define LOW_POWER_CTRL 0x40
#define MCU_IO_REUSE   0x44
#define MCU_SRST_CTRL  0x48
#define DDR_PHY_ISO    0x58

#define SC_GEN0    0x80
#define SC_GEN27   0xec

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


//DMC_REG
#define DDR_PHYCTRL0   0x78

#define DDR_SREF   0x00
#define DDR_STATUS 0x0294


#define DATA_CHIP_REG      (CFG_BASE_ADDR + SC_GEN32)         
#define DATA_WDGON_REG     (CFG_BASE_ADDR + SC_GEN33)         
#define DATA_DBGMASK_REG   (CFG_BASE_ADDR + SC_GEN34)         
#define DATA_GPIO0_REG     (CFG_BASE_ADDR + SC_GEN35)         
#define DATA_GPIO1_REG     (CFG_BASE_ADDR + SC_GEN36)         
#define DATA_DISPMODE_REG  (CFG_BASE_ADDR + SC_GEN37)
#define DATA_DISPVAL_REG   (CFG_BASE_ADDR + SC_GEN38)
#define DATA_TIMEVAL_REG   (CFG_BASE_ADDR + SC_GEN39)
#define DATA_KEYTYPE_REG   (CFG_BASE_ADDR + SC_GEN40)         
#define DATA_KEYVAL_REG    (CFG_BASE_ADDR + SC_GEN41)
#define DATA_CAID_REG      (CFG_BASE_ADDR + SC_GEN42)
#define DATA_GPIOPORT_REG    (CFG_BASE_ADDR + SC_GEN43)
#define DATA_IRTYPE_REG    (CFG_BASE_ADDR + SC_GEN44)        
#define DATA_IRNUM_REG     (CFG_BASE_ADDR + SC_GEN45)         
#define DATA_IRVAL_REG     (CFG_BASE_ADDR +SC_GEN46)


                                                      //offset(byte)
#define DATA_CHIP      (DATA_BASE_ADDR + 0x0)         // 0
#define DATA_WDGON     (DATA_BASE_ADDR +0x04)         // 1
#define DATA_DBGMASK   (DATA_BASE_ADDR +0x08)         // 2
#define DATA_GPIO0     (DATA_BASE_ADDR +0x0c)         // 3
#define DATA_GPIO1     (DATA_BASE_ADDR +0x10)         // 4

#define DATA_DISPMODE  (DATA_BASE_ADDR +0x14)         // 5
#define DATA_DISPVAL   (DATA_BASE_ADDR +0x18)         // 6
#define DATA_TIMEVAL   (DATA_BASE_ADDR +0x1c)         // 7

#define DATA_KEYTYPE   (DATA_BASE_ADDR +0x20)         // 8
#define DATA_KEYVAL    (DATA_BASE_ADDR +0x24)         // 9
#define DATA_IRTYPE    (DATA_BASE_ADDR +0x28)         // 10
#define DATA_IRNUM     (DATA_BASE_ADDR +0x2c)         // 11
#define DATA_IRVAL     (DATA_BASE_ADDR +0x30)

#define DATA_WAKEUPTYPE (DATA_BASE_ADDR +0xff8)
#define DATA_PERIOD    (DATA_BASE_ADDR +0xffc)

#define DATA_PHY_BASE_ADDR (DATA_BASE_ADDR + 0x100)  //DDR REG

//TIMER_REG
#define TIMER_LOAD     0x0
#define TIMER_VALUE    0x04
#define TIMER_CONTROL  0x08
#define TIMER_INTCLR   0x0c
#define TIMER_RIS      0x10
#define TIMER_MIS      0x14
#define TIMER_BGLOAD   0x18

//IR_REG
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

#define IR_PMOC_NUM  0x6
extern void print_two(void);
extern void printf_char(HI_U8 ch);
extern void printf_val(DATA_U32_S stData);

extern HI_U8 get_advca_support( void);

#ifndef HI_ADVCA_RELEASE
extern void printf_str(char *string);
extern void printf_hex(HI_U32 u32Hex);
#else
#define printf_str
#define printf_hex
#endif

//Add for advanced CA to check if suspend happen
#define PMOC_CHECK_TO_SUSPEND     0x80510001 //boot advca 51drv
#define PMOC_RUNTIME_CHECK_OK     0x80510003
#define CHECK_PMOC_STATUS() regAddr.val32 = (CFG_BASE_ADDR + SC_GEN15);\
    read_regVal(); \
    if(PMOC_CHECK_TO_SUSPEND == regData.val32) \
    {\
        return; \
    }

#define wait_minute_1(x) do{ \
    HI_U8 i; \
    for(i = 0; i < x; i++); \
}while(0);


#define wait_minute_2(x,y) do{ \
    HI_U8 i, j; \
    for(i = 0; i < x; i++) {\
        for(j = 0; j < y; j++); \
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

/* variable*/
extern volatile HI_U8 pmocType;
extern volatile HI_U8 pmocflag;

extern DATA_U32_S  regAddr;
extern DATA_U32_S  regData;

extern void read_regVal(void);
extern void write_regVal(void);

extern HI_U8  dbgflag;
extern HI_U8  dbgmask;
extern HI_U8  wdgon;
extern HI_U8 GpioValArray[2];

//extern HI_U8  kltype;
extern HI_U8  klPmocVal;

extern HI_U8 ir_type;
extern HI_U8 ir_pmocnum;
extern idata DATA_U32_S irPmocHval[IR_PMOC_NUM];
extern idata DATA_U32_S irPmocLval[IR_PMOC_NUM];

extern HI_U8  time_hour;
extern HI_U8  time_minute;
extern HI_U8  time_second;
extern HI_U8  time_dot;
extern HI_U8  time_type;
extern DATA_U32_S  g_channum;
extern DATA_U32_S  waittime;

extern void dbg_val(HI_U8 pos, HI_U8 val);
extern void dbg_resetParam(void);

extern void dbg_reset(void);
extern void dbg_level(HI_U8 l);

#endif
