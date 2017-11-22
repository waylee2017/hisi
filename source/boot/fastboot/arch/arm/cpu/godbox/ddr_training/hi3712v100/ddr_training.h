#ifndef DDR_TRAINING
#define DDR_TRAINING

#ifndef __ASSEMBLY__

#include "ddr_training_common.h"

/*** register operations **/
#define io_read(addr)           (*(volatile unsigned int *)(addr))
#define io_write(addr,val)      (*(volatile unsigned int *)(addr)=(val))

/*** for calculate best level definations **/
#define TRAINING_WR_CNT         15
#define TRAINING_RD_CNT         15

/*** for ddr phy layout definations **/
#define BYTEWIDTH               2
#define BITWIDTH                (BYTEWIDTH << 3)

/**  for ddr training item definations  **/
#define WRITE_DESKEW            1
#define READ_DESKEW             1

/**   training mode   **/
#define SSN_DDRT                1
#define VDH                     1
#define TRIANING_DEBUG          1

/**  ddr training use burst length **/
#define BURST_LENGTH            192

#define REG_CRG_BASE            0x101f5000
#define CRG_FERI_CRG19          0x8c
#define CRG_FERI_CRG33          0xc4

/** DDRC PHY regsister offest address*/
#define REG_DDRC_BASE           0x10100000
#define DDRC_WRDQSKEW(x)        (0xAFC + x*4)
#define DDRC_WRDQSSKEW          0xB1C
#define DDRC_RDDQSKEW(x)        (0xB2C + x*4)
#define DDRC_RDDQSSKEW          0xB4C

#define DDRC_PHY_REG21          0x868	 /*CK TX slave DLL delay */
#define DDRC_PHY_REG30          0xAC4	 /*A1,A0 de-skew 5:3 2:0*/
#define DDRC_PHY_REG31          0xAC8    /*A3,A2 de-skew 5:3 2:0*/
#define DDRC_PHY_REG32          0xACC	 /*A5,A4 de-skew 5:3 2:0*/
#define DDRC_PHY_REG33          0xAD0	 /*A7,A6 de-skew 5:3 2:0*/
#define DDRC_PHY_REG34          0xAD4	 /*A9,A8 de-skew 5:3 2:0*/
#define DDRC_PHY_REG35          0xAD8    /*A11,A10 de-skew 5:3 2:0*/
#define DDRC_PHY_REG36          0xADC	 /*A13,A12 de-skew 5:3 2:0*/
#define DDRC_PHY_REG53          0xB20	 /*A14 de-skew*/
#define DDRC_PHY_REG37          0xAE0	 /*B1,B0 de-skew 5:3 2:0*/
#define DDRC_PHY_REG38          0xAE4    /*RAS,B2 de-skew 5:3 2:0*/
#define DDRC_PHY_REG39          0xAE8	 /*WE,CAS de-skew 5:3 2:0*/
#define DDRC_PHY_REG40          0xAEC	 /*CKB1,CK1 de-skew 5:3 2:0*/
#define DDRC_PHY_REG54          0xB24	 /*CKB0,CK0 de-skew 5:3 2:0*/

#define	DDRC_PHY_REG41          0xAF0	 /*CKE,ODT de-skew 5:3 2:0*/
#define	DDRC_PHY_REG42          0xAF4	 /*RESET de-skew  2:0*/

#ifdef SSN_DDRT
#define REG_DDRT_BASE_CRG       0x101c0000
#define DDRT_OP                 0x0
#define DDRT_STATUS             0x4
#define DDRT_MEM_CONFIG         0xc
#define DDRT_BURST_NUM          0x10
#define DDRT_ADDR_NUM           0x14
#define DDRT_LOOP_NUM           0x18
#define DDRT_ADDR               0x20
#define DDRT_ADDR_OFFSET0       0x24
#define DDRT_REVERSED_DQ        0x30
#define DDRT_KDATA              0x3c
#define DDRT_DATA0              0x40
#define DDRT_DATA1              0x44
#define DDRT_DATA2              0x48
#define DDRT_DATA3              0x4c
#define DDRT_DQ_ERR_CNT0        0x60
#define DDRT_DQ_ERR_CNT1        0x64
#define DDRT_DQ_ERR_CNT2        0x68
#define DDRT_DQ_ERR_CNT3        0x6c
#define DDRT_DQ_ERR_OVFL        0x80

#define DDRT_START              1
#define BURST_NUM               0x4f

#define RW_COMPRARE_MODE        (0<<8)
#define ONLY_WRITE_MODE         (1<<8)
#define ONLY_READ_MODE          (2<<8)
#define RANDOM_RW_MODE          (3<<8)

#define DDRT_PATTERM_PRBS9      (0<<12)
#define DDRT_PATTERM_PRBS7      (1<<12)
#define DDRT_PATTERM_PRBS11     (2<<12)
#define DDRT_PATTERM_K28_5      (3<<12)
#endif /* SSN_DDRT */

#define DDRT_TIME
#ifdef DDRT_TIME
#define WATCH_DOG               0x10201000
#define WATCH_DOG_LOAD          0x0
#define WATCH_DOG_VALUE         0x4
#define WATCH_DOG_CONTROL       0x8
#define WATCH_DOG_LOCK          0xc00
#endif /* DDRT_TIME */

#define DQ_DATA_LEVEL0          0x0
#define DQ_DATA_LEVEL1          0x9
#define DQ_DATA_LEVEL2          0x12
#define DQ_DATA_LEVEL3          0x1b
#define DQ_DATA_LEVEL4          0x24
#define DQ_DATA_LEVEL5          0x2d
#define DQ_DATA_LEVEL6          0x36
#define DQ_DATA_LEVEL7          0x3f

#define DDR_DQSTRAIN            1
#define DDR_ADDRTRAIN           2
/* data of DDRC */
struct training_data
{
	unsigned int prebit_rd_result[BITWIDTH];
	unsigned int prebit_rd_result_dll2[BITWIDTH];
	unsigned int prebit_wr_result[BITWIDTH];
	unsigned int prebit_rd_best[BITWIDTH];
	unsigned int prebit_wr_best[BITWIDTH];
	unsigned int prebit_addr_result[19]; /*0-18*/
	unsigned int prebit_addr_best[19]; /*0-18*/

	unsigned int flag;
	unsigned int wr_address;
	unsigned int rd_address;
	unsigned int rddqs_val;
	unsigned int rddq_val[8];
	unsigned int wrdqs_val;
	unsigned int wrdq_val[8];

	unsigned int boot_type;
	unsigned int level_data[8];
	unsigned int skew_cnt;
};


#endif /* __ASSEMBLY__ */
#endif /* DDR_TRAINING */
