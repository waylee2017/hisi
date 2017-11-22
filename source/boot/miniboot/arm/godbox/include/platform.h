/******************************************************************************
 *    Copyright (C) 2014 Hisilicon STB Development Dept
 *    All rights reserved.
 * ***
 *    Create by Cai Zhiyong
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *   http://www.apache.org/licenses/LICENSE-2.0
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
******************************************************************************/

#ifndef __HI_CHIP_REGS_H__
#define __HI_CHIP_REGS_H__

#define OSC_FREQ                      24000000

#define REG_BASE_SCTL                 0x101E0000
#define REG_BASE_TIMER01              0x101E2000
#define REG_BASE_CRG                  0x101F5000
#define REG_BASE_UART0                0x101FB000
#define REG_BASE_PERI_CTRL            0x10200000
#define REG_BASE_WDG                  0x10201000
#define REG_BASE_IO_CONFIG            0x10203000

#define GIC_DIST_BASE                 0x10221000
#define GIC_CPU_BASE                  0x10220100

#define MEM_BASE_SPI                             0x26000000
#define CONFIG_HISFC350_PERIPHERY_REGBASE        REG_BASE_CRG
#define CONFIG_HISFC350_BUFFER_BASE_ADDRESS      MEM_BASE_SPI
#define CONFIG_HISFC350_REG_BASE_ADDRESS         0x60020000

#define MEM_BASE_NAND                            0x24000000
#define CONFIG_HINFC504_BUFFER_BASE_ADDRESS      MEM_BASE_NAND
#define CONFIG_HINFC504_REG_BASE_ADDRESS         0x60010000
#define CONFIG_HINFC504_BOOT_CFG                 0xc4

#define REG_BASE_SF                   0x600D0000
#define REG_BASE_MCI                  0x601C0000
/* DDRC PHY register */
#define REG_BASE_PHY                  0x10100000
#define DDRC_PHY_REG4B                0x083C
#define DDRC_PHY_REG8                 0x08E0
#define DDRC_PHY_REG11                0x0920
#define DDRC_PHY_REG29                0x09C0
#define DDRC_PHY_REG2                 0x0808
#define DDRC_PHY_REG80                0x0A00
#define DDRC_PHY_REG81                0x0A04

#define REG_SC_CTRL                   0x0000
#define REG_SC_SYSRES                 0x0004
#define REG_SC_APLLFREQCTRL0          0x0018
#define REG_SC_APLLFREQCTRL1          0x001C
#define REG_SC_LOW_POWER_CTRL         0x0040
#define REG_SC_IO_REUSE_SEL           0x0044
#define REG_SC_SRST_REQ_CTRL          0x0048
#define REG_SC_CA_RST_CTRL            0x004C
#define REG_SC_WDG_RST_CTRL           0x0050
#define REG_SC_DDRC_DFI_RST_CTRL      0x0054
#define REG_SC_PLLLOCK_STAT           0x0070

#define REG_SC_GEN0                   0x0080
#define REG_SC_GEN1                   0x0084
#define REG_SC_GEN2                   0x0088
#define REG_SC_GEN3                   0x008C
#define REG_SC_GEN4                   0x0090
#define REG_SC_GEN5                   0x0094
#define REG_SC_GEN6                   0x0098
#define REG_SC_GEN7                   0x009C
#define REG_SC_GEN8                   0x00A0
#define REG_SC_GEN9                   0x00A4
#define REG_SC_GEN10                  0x00A8
#define REG_SC_GEN11                  0x00AC
#define REG_SC_GEN12                  0x00B0
#define REG_SC_GEN13                  0x00B4
#define REG_SC_GEN14                  0x00B8
#define REG_SC_GEN15                  0x00BC
#define REG_SC_GEN16                  0x00C0
#define REG_SC_GEN17                  0x00C4
#define REG_SC_GEN18                  0x00C8
#define REG_SC_GEN19                  0x00CC
#define REG_SC_GEN20                  0x00D0
#define REG_SC_GEN21                  0x00D4
#define REG_SC_GEN22                  0x00D8
#define REG_SC_GEN23                  0x00DC
#define REG_SC_GEN24                  0x00E0
#define REG_SC_GEN25                  0x00e4
#define REG_SC_GEN26                  0x00e8
#define REG_SC_GEN27                  0x00ec
#define REG_SC_GEN28                  0x00F0
#define REG_SC_GEN29                  0x00F4
#define REG_SC_GEN30                  0x00F8
#define REG_SC_GEN31                  0x00FC

#define REG_PERI_CRG29                0x00B4

/* SDIO0 REG */
#define REG_PERI_CRG39               0x9C
#define SDIO0_DRV_PS_SEL_MASK        (0x7 << 16)
#define SDIO0_SAP_PS_SEL_MASK        (0x7 << 12)
#define SDIO0_CLK_SEL_MASK           (0x3 << 8)

#define SDIO0_DRV_PS_SEL_0           (0b000 << 16)
#define SDIO0_DRV_PS_SEL_45          (0b001 << 16)
#define SDIO0_DRV_PS_SEL_90          (0b010 << 16)
#define SDIO0_DRV_PS_SEL_135         (0b011 << 16)
#define SDIO0_DRV_PS_SEL_180         (0b100 << 16)
#define SDIO0_DRV_PS_SEL_225         (0b101 << 16)
#define SDIO0_DRV_PS_SEL_270         (0b110 << 16)
#define SDIO0_DRV_PS_SEL_315         (0b111 << 16)

#define SDIO0_SAP_PS_SEL_0           (0b000 << 12)
#define SDIO0_SAP_PS_SEL_45          (0b001 << 12)
#define SDIO0_SAP_PS_SEL_90          (0b010 << 12)
#define SDIO0_SAP_PS_SEL_135         (0b011 << 12)
#define SDIO0_SAP_PS_SEL_180         (0b100 << 12)
#define SDIO0_SAP_PS_SEL_225         (0b101 << 12)
#define SDIO0_SAP_PS_SEL_270         (0b110 << 12)
#define SDIO0_SAP_PS_SEL_315         (0b111 << 12)

#define SDIO0_CLK_SEL_75M            (0b00 << 8)
#define SDIO0_CLK_SEL_100M           (0b01 << 8)
#define SDIO0_CLK_SEL_50M            (0b10 << 8)
#define SDIO0_CLK_SEL_24M            (0b11 << 8)

#define SDIO0_SRST_REQ               (0x1 << 4)
#define SDIO0_CKEN                   (0x1 << 1)
#define SDIO0_BUS_CKEN               (0x1 << 0)

/* SDIO1 REG */
#define REG_PERI_CRG40               0xA0
#define SDIO1_DRV_PS_SEL_MASK        (0x7 << 16)
#define SDIO1_SAP_PS_SEL_MASK        (0x7 << 12)
#define SDIO1_CLK_SEL_MASK           (0x3 << 8)

#define SDIO1_DRV_PS_SEL_0           (0b000 << 16)
#define SDIO1_DRV_PS_SEL_45          (0b001 << 16)
#define SDIO1_DRV_PS_SEL_90          (0b010 << 16)
#define SDIO1_DRV_PS_SEL_135         (0b011 << 16)
#define SDIO1_DRV_PS_SEL_180         (0b100 << 16)
#define SDIO1_DRV_PS_SEL_225         (0b101 << 16)
#define SDIO1_DRV_PS_SEL_270         (0b110 << 16)
#define SDIO1_DRV_PS_SEL_315         (0b111 << 16)

#define SDIO1_SAP_PS_SEL_0           (0b000 << 12)
#define SDIO1_SAP_PS_SEL_45          (0b001 << 12)
#define SDIO1_SAP_PS_SEL_90          (0b010 << 12)
#define SDIO1_SAP_PS_SEL_135         (0b011 << 12)
#define SDIO1_SAP_PS_SEL_180         (0b100 << 12)
#define SDIO1_SAP_PS_SEL_225         (0b101 << 12)
#define SDIO1_SAP_PS_SEL_270         (0b110 << 12)
#define SDIO1_SAP_PS_SEL_315         (0b111 << 12)

#define SDIO1_CLK_SEL_75M            (0b00 << 8)
#define SDIO1_CLK_SEL_100M           (0b01 << 8)
#define SDIO1_CLK_SEL_50M            (0b10 << 8)
#define SDIO1_CLK_SEL_24M            (0b11 << 8)

#define SDIO1_SRST_REQ               (0x1 << 4)
#define SDIO1_CKEN                   (0x1 << 1)
#define SDIO1_BUS_CKEN               (0x1 << 0)

#define REG_START_MODE               0x0000
#define REG_PERI_STAT                0x0004
#define REG_PERI_CTRL                0x0008
#define REG_PERI_CRG26               0x00A8
#define NF_BOOTBW_MASK               (1<<12)

#define REG_TIMER_RELOAD             0x000
#define REG_TIMER_VALUE              0x004
#define REG_TIMER_CONTROL            0x008

#define MEM_BASE_DDR                 0x80000000

#define CONFIG_TAG_OFFSET            MEM_BASE_DDR + 0x1000
#define CONFIG_TAG_MAX_SIZE          (0x10000)

#define DEFAULT_UART_CLK             54000000

#define BOOT_FROM_NANDR              0x8
#define BOOT_FROM_EMMC               0x3
#define BOOT_FROM_DDR                0x2
#define BOOT_FROM_NAND               0x1
#define BOOT_FROM_SPI                0x0

#define REG_START_FLAG              (REG_BASE_SCTL + REG_SC_GEN12)
#define CONFIG_START_MAGIC          (0x444f574e)
#define RAM_START_ADRS              0x10C00

#define REG_SC_SYSID0               0x0EE0
#define REG_SC_SYSID1               0x0EE4
#define REG_SC_SYSID2               0x0EE8
#define REG_SC_SYSID3               0x0EEC

#define NORMAL_BOOTMODE_OFFSET      9
#define NORMAL_BOOTMODE_MASK        3

#define TIMER0_BASE                     0x101E2000
#define TIMER1_BASE                     0x101E2020
#define TIMER2_BASE                     0x10202000
#define TIMER3_BASE                     0x10202020
#define TIMER4_BASE                     0x101eb000
#define TIMER5_BASE                     0x101eb020
#define TIMER6_BASE                     0x10206000
#define TIMER7_BASE                     0x10206020

#define TIMER0_IRQ_NR                   5
#define TIMER1_IRQ_NR                   5
#define TIMER2_IRQ_NR                   6
#define TIMER3_IRQ_NR                   6
#define TIMER4_IRQ_NR                   7
#define TIMER5_IRQ_NR                   7
#define TIMER6_IRQ_NR                   8
#define TIMER7_IRQ_NR                   8

#define CONFIG_MACHINE_ID                        0x1F40
#define CONFIG_TASK_CYCLE                        10
#define CONFIG_CLOCK_TICK                        0
#define CONFIG_CLOCK_SOURCE                      2
#define CONFIG_MAX_IRQ                           128
#define CONFIG_MAX_TASK                          20
#define CONFIG_VECTOR_BASE                       0

#define CONFIG_GLOBAL_DATA_SIZE                  (CONFIG_ENV_SIZE + 0x2000)
#define CONFIG_SYS_MALLOC_LEN                    0x200000
#define CONFIG_DMA_MALLOC_LEN                    0x200000

#define CONFIG_UART_CLK                          54000000
#define CONFIG_UART_BAUD                         115200
#define CONFIG_CUR_UART_BASE                     REG_BASE_UART0

/*********************************************************************/

#define REG_BASE_CA                    0x10000000

#define CA_CTRL_PROC                   0x78
#define CA_VENDOR_OFFSET               28
#define CA_VENDOR_MASK                 0x0f
#define CA_TYPE_NO_CA                  0
#define CA_TYPE_NAGRA                  1

#define HI3716MV300_CA_BASE                       0x10180000
#define HI3716MV300_CA_BASE_MAILBOX               0x84
#define HI3716MV300_CA_BASE_MAILBOX_ENABLE        1
#define HI3716MV300_CA_BASE_BOOT_SEL_CTRL         0x40000

#define HI3716MV300_BOOT_MODE_SEL                 0x80
#define HI3716MV300_BOOT_MODE_SEL_MASK            0x03

#define HI3716MV300_ECO_VERSION        0x600c0a08
#define HI3716MV300_ECO_VERSION_OFFSET 24
#define HI3716MV300_ECO_VERSION_MASK   1
#define HI3716MV300_DDRPHY_REG81_REG   0x10100A04
#define HI3716MV300_DDRPHY_REG81_VAL   0x1e
#define HI3716MV300_DDRPHY_REGCA_REG   0x10100b28
#define HI3716MV300_DDRPHY_REGCA_VAL   0x0

#define CA_BOOTMODE_OFFSET             2
#define CA_BOOTMODE_MASK               3
#define NORMAL_BOOTMODE_OFFSET         9
#define NORMAL_BOOTMODE_MASK           3
#define OTP_BOOTMODE_OFFSET            2
#define OTP_BOOTMODE_MASK              1
#define PIN_BOOTMODE_OFFSET            11
#define PIN_BOOTMODE_MASK              1
#define CA_SCS_MASK                    2

#define HI3712_BOOTMODE_OFFSET         10
#define HI3712_BOOTMODE_MASK           1

/*********************************************************************/
/*
 * 0x1-> init item1
 * 0x2-> init item2
 * 0x3->init item1 & item2
 */
#define INIT_REG_ITEM1               1
#define INIT_REG_ITEM2               2
#define INIT_REG_ITEM1_ITEM2         (INIT_REG_ITEM1 | INIT_REG_ITEM2)

/******************************************************************************/

#ifndef __ASSEMBLY__

#define WDG_ENABLE(_nn) do { \
	(*(volatile unsigned int *)(WDG_LOCK)    = (0x1ACCE551)); \
	(*(volatile unsigned int *)(WDG_LOAD)    = (_nn)); \
	(*(volatile unsigned int *)(WDG_CONTROL) = (0x3)); \
	(*(volatile unsigned int *)(WDG_LOCK)    = (0)); \
} while (0)

#define WDG_DISABLE() do { \
	(*(volatile unsigned int *)(WDG_LOCK)    = (0x1ACCE551)); \
	(*(volatile unsigned int *)(WDG_CONTROL) = (0)); \
	(*(volatile unsigned int *)(WDG_LOCK)    = (0)); \
} while (0)

#endif /* __ASSEMBLY__ */

#include <cpuids.h>

#endif /*End of __HI_BOARD_H__ */

