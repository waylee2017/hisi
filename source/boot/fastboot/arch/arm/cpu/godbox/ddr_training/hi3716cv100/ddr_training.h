#ifndef DDR_TRAINING
#define DDR_TRAINING

#include "ddr_training_common.h"

#define io_read(addr)           (*(volatile unsigned int *)(addr))
#define io_write(addr,val)      (*(volatile unsigned int *)(addr) = (val))


#define TRAINING_WR_CNT         29
#define TRAINING_RD_CNT         15
#define ALL_ERROR               0xff

#define ENABLE_WR_DM            0x000f0000
#define ENABLE_WR_DQS           0x0000000f/* DDRC WRDQSKEW REG */
#define DISABLE_WR_DQ           0x0/* DDRC RDDQS_SKEW REG */
#define DISABLE_RD_DQ_DQS       0x0

#define REG_DDRC_BASE           0x10100000
#define DDRC_LVLSKEW            0x260
#define DDRC_RDDQS_SKEW         0x2f4
#define DDRC_WRDQS_SKEW         0x2f0
#define DDRC_RDDQSKEW(x)        (0x330 + (x)*4)
#define DDRC_WRDQSKEW(x)        (0x300 + (x)*4)
#define DDRC_WRDMSKEW           0x358

#define REG_DMAC_BASE           0x60030000
#define DMAC_INT_STAT           0x0
#define DMAC_INT_TC_STAT        0x4
#define DMAC_INT_TC_CLR         0x8
#define DMAC_INT_ERR_STAT       0xc
#define DMAC_INT_ERR_CLR        0x10
#define DMAC_RAW_INT_TC_STAT    0x14
#define DMAC_RAW_INT_ERR_STAT   0x18
#define DMAC_EBBLD_CHNS         0x1c
#define DMAC_SOFT_BREQ          0x20
#define DMAC_SOFT_SREQ          0x24
#define DMAC_SOFT_LBREQ         0x28
#define DMAC_SOFT_LSREQ         0x2c
#define DMAC_CONFIG             0x30
#define DMAC_SYNC               0x34
#define DMAC_CX_SRC_ADDR(x)     (0x100 + (x)*0x20)
#define DMAC_CX_DEST_ADDR(x)    (0x104 + (x)*0x20)
#define DMAC_CX_LLI(x)          (0x108 + (x)*0x20)
#define DMAC_CX_CONTROL(x)      (0x10c + (x)*0x20)
#define DMAC_CX_CONFIG(x)       (0x110 + (x)*0x20)
#define DMA_CKEN                0x100
#define DMAC_EN                 0x1
#define DMA_CH_EN               0x1
#define TRAINING_DMAC_CTL       0x0f492008
#define TRAINING_DMA_CH         6


#define TRAINING_TMP_BASE       0x82000000
#define SSN_DMA_DDR_BASE        0x84000000
//#define SSN_VDH_DDR_BASE         0x82000000
#define SSN_VEDU_DDR_BASE       0x83000000 /*VEDU reg address*/
#define REG_VEDU_BASE           0x60110000
#define VEDU_AXIT_LDBUF         0x4a0
#define VEDU_AXIT_STBUF         0x4100
#define VEDU_AXIT_STATUS        0x4054
#define VEDU_AXIT_LOOP          0x4058
#define VEDU_AXIT_START         0x4000
#define VEDU_AXIT_CFG           0x4004
#define VEDU_AXIT_WR            0x4008
#define VEDU_AXIT_STRIDE        0x4010
#define VEDU_AXIT_BLK(x)        (0x4014 + (x)*0x4)
#define VEDU_AXIT_ADDR          0x400c
#define VEDU_AXIT_MODE          0x0010

//#define SSN_DMA                  1
//#define SSN_VDH                  2
#define SSN_VEDU                3

#define DQS_OFF_DQ_7            0x80007;
#define DQS_OFF_DQ_6            0x80006;
#define DQS_OFF_DQ_5            0x80005;
#define DQS_OFF_DQ_4            0x80004;
#define DQS_OFF_DQ_3            0x80003;
#define DQS_OFF_DQ_2            0x80002;
#define DQS_OFF_DQ_1            0x80001;
#define DQS_0_DQ_7              0x00007;
#define DQS_0_DQ_6              0x00006;
#define DQS_0_DQ_5              0x00005;
#define DQS_0_DQ_4              0x00004;
#define DQS_0_DQ_3              0x00003;
#define DQS_0_DQ_2              0x00002;
#define DQS_0_DQ_1              0x00001;
#define DQS_0_DQ_0              0x00000;
#define DQS_1_DQ_0              0x10000;
#define DQS_2_DQ_0              0x20000;
#define DQS_3_DQ_0              0x30000;
#define DQS_4_DQ_0              0x40000;
#define DQS_5_DQ_0              0x50000;
#define DQS_6_DQ_0              0x60000;
#define DQS_7_DQ_0              0x70000;
#define DQS_1_DQ_OFF            0x10008;
#define DQS_2_DQ_OFF            0x20008;
#define DQS_3_DQ_OFF            0x30008;
#define DQS_4_DQ_OFF            0x40008;
#define DQS_5_DQ_OFF            0x50008;
#define DQS_6_DQ_OFF            0x60008;
#define DQS_7_DQ_OFF            0x70008;

#define DQS_DATA_LEVEL0         0x0000
#define DQS_DATA_LEVEL1         0x1111
#define DQS_DATA_LEVEL2         0x2222
#define DQS_DATA_LEVEL3         0x3333
#define DQS_DATA_LEVEL4         0x4444
#define DQS_DATA_LEVEL5         0x5555
#define DQS_DATA_LEVEL6         0x6666
#define DQS_DATA_LEVEL7         0x7777
#define DQ_DATA_LEVEL0          0xff000000
#define DQ_DATA_LEVEL1          0xff249249
#define DQ_DATA_LEVEL2          0xff492492
#define DQ_DATA_LEVEL3          0xff6db6db
#define DQ_DATA_LEVEL4          0xff924924
#define DQ_DATA_LEVEL5          0xffb6db6d
#define DQ_DATA_LEVEL6          0xffdb6db6
#define DQ_DATA_LEVEL7          0xffffffff
#define REG_CRG_BASE            0x101f5000
#define CRG_FERI_CRG19          0x8c
#define CRG_FERI_CRG33          0xc4

/* data of DDRC */
struct hi_training
{
	unsigned int lvlskew_val;
	unsigned int rddqs_val;
	unsigned int rddq_val[4];
	unsigned int wrdqs_val;
	unsigned int wrdq_val[4];
	unsigned int wr_result[9];
	unsigned int rd_result[9];
	unsigned int wr_para;
	unsigned int rd_para;
	unsigned int wr_best;
	unsigned int rd_best;
	unsigned int boot_type;
	unsigned int wr_data[29];
	unsigned int rd_data[15];
	unsigned int dq_data[8];
	unsigned int dqs_data[8];
	unsigned int blank_zone_offset;
	unsigned int skew_cnt;
	unsigned int wr_skew_cnt;
	unsigned int rd_skew_cnt;
};
/* data of registers */

extern int ddr_training_ssn_pressure(void);
/*extern int ddr_cyc_pressure(void);*/
extern int ddr_result_printf(void); 
#endif /* DDR_TRAINING */

