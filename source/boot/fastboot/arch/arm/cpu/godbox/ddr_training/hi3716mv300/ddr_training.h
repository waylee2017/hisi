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
#define SSN_VEDU                1
#define VDH                     1

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


/** vedu module register addr definations **/
#define REG_BASE_CRG            0x101F5000
#define REG_VEDU_BASE           0x60110000
#define REG_VEDU_ENABLE         0X006C
#define VEDU_AXIT_ADDR          0x400C
#define VEDU_AXIT_WR            0x4008
#define VEDU_AXIT_START         0x4000
#define VEDU_AXIT_STATUS        0x4054
#define VEDU_AXIT_MODE          0x0010
#define VEDU_AXIT_STBUF         0x4100
#define VEDU_AXIT_LDBUF         0x4a00
#define VEDU_AXIT_CFG           0x4004
#define VEDU_AXIT_STRIDE        0x4010
#define VEDU_AXIT_LOOP          0x4058
#define VEDU_AXIT_BLK(x)        (0x4014 +(x*4))

#define DQ_DATA_LEVEL0          0x0
#define DQ_DATA_LEVEL1          0x9
#define DQ_DATA_LEVEL2          0x12
#define DQ_DATA_LEVEL3          0x1b
#define DQ_DATA_LEVEL4          0x24
#define DQ_DATA_LEVEL5          0x2d
#define DQ_DATA_LEVEL6          0x36
#define DQ_DATA_LEVEL7          0x3f

/* data of DDRC */
struct training_data
{
	unsigned int prebit_rd_result[BITWIDTH];
	unsigned int prebit_rd_result_dll2[BITWIDTH];
	unsigned int prebit_wr_result[BITWIDTH];
	unsigned int prebit_rd_best[BITWIDTH];
	unsigned int prebit_wr_best[BITWIDTH];

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
