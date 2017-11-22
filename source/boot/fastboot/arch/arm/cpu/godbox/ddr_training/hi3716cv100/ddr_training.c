/*
*  this file only for hi3716cv100
*/
#include <config.h>

#include "ddr_training.h"

#ifndef CONFIG_SUPPORT_CA_RELEASE
extern void uart_early_puts(const char *s);
extern void uart_early_put_hex(int hex);
#else
# define uart_early_puts(_s)
# define uart_early_put_hex(_x)
#endif

static struct ddrtr_result_t result;

static int var_init(struct hi_training *);
static int train(struct hi_training *);
static int system_init(struct hi_training *);
static int delay_soc(unsigned int);
static int config_ddr(struct hi_training *);
static int travel_wrdq(struct hi_training *, unsigned int *, unsigned int);
static int travel_wrdqs(struct hi_training *, unsigned int *, unsigned int);
static int travel_wrdqs_dq_disable(struct hi_training *);
static int travel_rddq(struct hi_training *, unsigned int *, unsigned int);
static int travel_rddqs(struct hi_training *, unsigned int *, unsigned int);
static int travel_rddqs_dq_disable(struct hi_training *);
static int get_best_para(struct hi_training *);
static void dma_init(void);
static int check_multi_ssn(void);
static int check_multi_pressure(unsigned int *,unsigned int *,unsigned int *);
static int check_ssn_code(unsigned int , unsigned int *);
static void memcpy_soc(unsigned int *aim, unsigned int *src, unsigned int size);

unsigned int ssn_error_num;
unsigned int ssn_error_code;
unsigned int ssn_error_check;
unsigned int ssn_cycnum;
/*****************************************************************************/

static void ddr_training_entry(void)
{
	struct hi_training tmp_result;
	struct hi_training *training  = &tmp_result;

	system_init(training);
	train(training);
}
/*****************************************************************************/

static void save_training_result(void)
{
	result.count = 11;

	result.reg[0].reg = (REG_DDRC_BASE + DDRC_LVLSKEW);

	result.reg[1].reg = (REG_DDRC_BASE + DDRC_WRDQS_SKEW);
	result.reg[2].reg= (REG_DDRC_BASE + DDRC_WRDQSKEW(0));
	result.reg[3].reg = (REG_DDRC_BASE + DDRC_WRDQSKEW(1));
	result.reg[4].reg= (REG_DDRC_BASE + DDRC_WRDQSKEW(2));
	result.reg[5].reg = (REG_DDRC_BASE + DDRC_WRDQSKEW(3));

	result.reg[6].reg = (REG_DDRC_BASE + DDRC_RDDQS_SKEW);
	result.reg[7].reg = (REG_DDRC_BASE + DDRC_RDDQSKEW(0));
	result.reg[8].reg = (REG_DDRC_BASE + DDRC_RDDQSKEW(1));
	result.reg[9].reg = (REG_DDRC_BASE + DDRC_RDDQSKEW(2));
	result.reg[10].reg = (REG_DDRC_BASE + DDRC_RDDQSKEW(3));
}
/*****************************************************************************/

static int var_init(struct hi_training *training)
{
	training->wr_data[0] = DQS_OFF_DQ_7;
	training->wr_data[1] = DQS_OFF_DQ_6;
	training->wr_data[2] = DQS_OFF_DQ_5;
	training->wr_data[3] = DQS_OFF_DQ_4;
	training->wr_data[4] = DQS_OFF_DQ_3;
	training->wr_data[5] = DQS_OFF_DQ_2;
	training->wr_data[6] = DQS_OFF_DQ_1;
	training->wr_data[7] = DQS_0_DQ_7;
	training->wr_data[8] = DQS_0_DQ_6;
	training->wr_data[9] = DQS_0_DQ_5;
	training->wr_data[10] = DQS_0_DQ_4;
	training->wr_data[11] = DQS_0_DQ_3;
	training->wr_data[12] = DQS_0_DQ_2;
	training->wr_data[13] = DQS_0_DQ_1;
	training->wr_data[14] = DQS_0_DQ_0;
	training->wr_data[15] = DQS_1_DQ_0;
	training->wr_data[16] = DQS_2_DQ_0;
	training->wr_data[17] = DQS_3_DQ_0;
	training->wr_data[18] = DQS_4_DQ_0;
	training->wr_data[19] = DQS_5_DQ_0;
	training->wr_data[20] = DQS_6_DQ_0;
	training->wr_data[21] = DQS_7_DQ_0;
	training->wr_data[22] = DQS_1_DQ_OFF;
	training->wr_data[23] = DQS_2_DQ_OFF;
	training->wr_data[24] = DQS_3_DQ_OFF;
	training->wr_data[25] = DQS_4_DQ_OFF;
	training->wr_data[26] = DQS_5_DQ_OFF;
	training->wr_data[27] = DQS_6_DQ_OFF;
	training->wr_data[28] = DQS_7_DQ_OFF;

	training->rd_data[0] = DQS_0_DQ_7;
	training->rd_data[1] = DQS_0_DQ_6;
	training->rd_data[2] = DQS_0_DQ_5;
	training->rd_data[3] = DQS_0_DQ_4;
	training->rd_data[4] = DQS_0_DQ_3;
	training->rd_data[5] = DQS_0_DQ_2;
	training->rd_data[6] = DQS_0_DQ_1;
	training->rd_data[7] = DQS_0_DQ_0;
	training->rd_data[8] = DQS_1_DQ_0;
	training->rd_data[9] = DQS_2_DQ_0;
	training->rd_data[10] = DQS_3_DQ_0;
	training->rd_data[11] = DQS_4_DQ_0;
	training->rd_data[12] = DQS_5_DQ_0;
	training->rd_data[13] = DQS_6_DQ_0;
	training->rd_data[14] = DQS_7_DQ_0;

	training->dq_data[0] = DQ_DATA_LEVEL0;
	training->dq_data[1] = DQ_DATA_LEVEL1;
	training->dq_data[2] = DQ_DATA_LEVEL2;
	training->dq_data[3] = DQ_DATA_LEVEL3;
	training->dq_data[4] = DQ_DATA_LEVEL4;
	training->dq_data[5] = DQ_DATA_LEVEL5;
	training->dq_data[6] = DQ_DATA_LEVEL6;
	training->dq_data[7] = DQ_DATA_LEVEL7;

	training->dqs_data[0] = DQS_DATA_LEVEL0;
	training->dqs_data[1] = DQS_DATA_LEVEL1;
	training->dqs_data[2] = DQS_DATA_LEVEL2;
	training->dqs_data[3] = DQS_DATA_LEVEL3;
	training->dqs_data[4] = DQS_DATA_LEVEL4;
	training->dqs_data[5] = DQS_DATA_LEVEL5;
	training->dqs_data[6] = DQS_DATA_LEVEL6;
	training->dqs_data[7] = DQS_DATA_LEVEL7;
	return 0;
}

/*****************************************************************************/

static void dma_init(void)
{
	io_write(REG_CRG_BASE + CRG_FERI_CRG33, DMA_CKEN);
	io_write(REG_DMAC_BASE + DMAC_CONFIG, 0x0);
	io_write(REG_DMAC_BASE + DMAC_CX_CONFIG(TRAINING_DMA_CH), 0x0);
}
/*****************************************************************************/

static int system_init(struct hi_training *training)
{
	var_init(training);
	dma_init();
	return 0;
}

/*****************************************************************************/
/*
* ddr config
*/
static int config_ddr(struct hi_training *training)
{
	io_write(REG_DDRC_BASE + DDRC_LVLSKEW, training->lvlskew_val);
	io_write(REG_DDRC_BASE + DDRC_WRDQS_SKEW, training->wrdqs_val);
	io_write(REG_DDRC_BASE + DDRC_RDDQS_SKEW, training->rddqs_val);
	io_write(REG_DDRC_BASE + DDRC_WRDQSKEW(0), training->wrdq_val[0]);
	io_write(REG_DDRC_BASE + DDRC_WRDQSKEW(1), training->wrdq_val[1]);
	io_write(REG_DDRC_BASE + DDRC_WRDQSKEW(2), training->wrdq_val[2]);
	io_write(REG_DDRC_BASE + DDRC_WRDQSKEW(3), training->wrdq_val[3]);
	io_write(REG_DDRC_BASE + DDRC_RDDQSKEW(0), training->rddq_val[0]);
	io_write(REG_DDRC_BASE + DDRC_RDDQSKEW(1), training->rddq_val[1]);
	io_write(REG_DDRC_BASE + DDRC_RDDQSKEW(2), training->rddq_val[2]);
	io_write(REG_DDRC_BASE + DDRC_RDDQSKEW(3), training->rddq_val[3]);
	return 0;
}

/*****************************************************************************/
static void set_dq(unsigned int *dq, unsigned val)
{
	dq[0] = val;
	dq[1] = val;
	dq[2] = val;
	dq[3] = val;
}

/*****************************************************************************/
static void set_best_skew(struct hi_training *training)
{
	unsigned int tmp;
	unsigned int best_data;

	/*
	* Set best write skew
	*/
	training->lvlskew_val = ENABLE_WR_DM | ENABLE_WR_DQS;
	if (training->wr_best == ALL_ERROR) {
		training->wrdqs_val = training->dqs_data[0];
		tmp = training->dq_data[0];
		set_dq(training->wrdq_val, tmp);

	} else {
		/*
		* Write DQS and DQ of the best skew are all opened
		*/
		best_data = training->wr_data[training->wr_best];
		training->wrdqs_val = training->dqs_data[best_data >> 16];
		tmp = training->dq_data[best_data & 0xffff];
		set_dq(training->wrdq_val, tmp);

		/*
		* Write DQS of the best skew is closed
		*/
		if ((best_data >> 16) == 8)
			training->lvlskew_val ^= ENABLE_WR_DQS;

		/*
		* Write DQ of the best skew is closed
		*/
		if ((best_data & 0xffff) == 8) {
			training->lvlskew_val ^= ENABLE_WR_DM;
			tmp = 0;
			set_dq(training->wrdq_val, tmp);
		}
	}

	/*
	* Set best read skew
	*/
	if (training->rd_best == ALL_ERROR) {
		training->rddqs_val = training->dqs_data[0];
		tmp = training->dq_data[0];
		set_dq(training->rddq_val, tmp);
	} else {
		best_data = training->rd_data[training->rd_best];
		training->rddqs_val = training->dqs_data[best_data >> 16];
		tmp = training->dq_data[best_data & 0xffff];
		set_dq(training->rddq_val, tmp);
	}
}

/*****************************************************************************/
static int train(struct hi_training *training)
{
	unsigned int i, j, k;
	unsigned int tmp;

	for (i = 0; i < 9; i++) {
		training->wr_result[i] = 0;
		training->rd_result[i] = 0;
	}
	training->skew_cnt = 0;

	/*
	* Training write DQS and DQ
	*/
	for (i = 0; i < 8; i++) {
		/*
		* Enable Write DQS and DM
		*/
		training->lvlskew_val = ENABLE_WR_DM | ENABLE_WR_DQS;

		/*
		* Read-DQS be setted as level 'i'.
		*/
		training->rddqs_val = training->dqs_data[i];
		for (j = 0; j < 8; j++) {
			/*
			* Read-DQ be setted as level 'j'.
			*/
			tmp = training->dq_data[j];
			set_dq(training->rddq_val, tmp);

			/*
			* Write-DQS be setted as level '0' and travel write-DQ.
			*/
			training->wrdqs_val = training->dqs_data[0];
			travel_wrdq(training, training->dq_data, 0);

			/*
			* Enable Write DQ and Write-DQ be setted as level '0'.
			* And travel write-DQS.
			*/
			tmp = training->dq_data[0];
			set_dq(training->wrdq_val, tmp);
			travel_wrdqs(training, training->dqs_data, 0);

			/*
			* Disable Write-DQ and Write-DM,
			* enable DQS to travel write-DQS.
			*/
			set_dq(training->wrdq_val, DISABLE_WR_DQ);
			training->lvlskew_val = ENABLE_WR_DQS;
			travel_wrdqs(training, training->dqs_data, 8);

			/*
			* Disable Write-DQS, enable Write-DM,
			* to travel write-dq
			*/
			training->lvlskew_val = ENABLE_WR_DM;
			travel_wrdq(training, training->dq_data, 8);

			/*
			* Disable Write-DQS and Write-DM, and Write-DQ
			*/
			training->lvlskew_val = 0x0;
			set_dq(training->wrdq_val, DISABLE_WR_DQ);
			travel_wrdqs_dq_disable(training);

			/*
			* If all is failure, continue the circle.
			*/

			for (k = 0; k < 9; k++) {
				if (training->wr_result[k] != 0) {
					uart_early_puts("\r\n goto wr_training_end  ");
					goto wr_training_end;
				}
			}
		}
	}
wr_training_end:
	uart_early_puts("\r\n goto rd_training_start   ");
	/*
	* get the best write parameter
	*/
	get_best_para(training);
	set_best_skew(training);

	/*
	* Training Read DQS and DQ
	* Read-DQS be setted as level '0'.
	*/
	training->rddqs_val = training->dqs_data[0];
	travel_rddq(training, training->dq_data, 0);

	/*
	* Enable DQ and read-DQ be setted as level '0'.
	* And travel read-DQS.
	*/
	tmp = training->dq_data[0];
	set_dq(training->rddq_val, tmp);
	travel_rddqs(training, training->dqs_data, 0);

	/*
	* Disable DQ and DQS.
	*/
	set_dq(training->rddq_val, DISABLE_RD_DQ_DQS);
	travel_rddqs_dq_disable(training);

	/*
	* get the best read parameter
	*/
	get_best_para(training);
	set_best_skew(training);

	config_ddr(training);

	memcpy_soc((unsigned int*)result.data,
			(unsigned int*)training, sizeof(*training));
	save_training_result();
	return 0;
}

/*****************************************************************************/
static int travel_wrdq(struct hi_training *training, unsigned int *dat,
				unsigned int level)
{
	unsigned int i;
	unsigned int tmp;

	for (i = 0; i < 8; i++) {
		set_dq(training->wrdq_val, dat[i]);
		config_ddr(training);

		tmp = io_read(REG_DDRC_BASE + DDRC_WRDQSKEW(0));
		tmp = check_multi_ssn();

		if (!tmp/*check_multi_ssn()*/) {
			/*
			* The result is ok
			*/
			training->wr_result[level] |= (1 << i);
		}
	}
	return 0;
}

/*****************************************************************************/
static int travel_wrdqs(struct hi_training *training, unsigned int *dat,
				unsigned int level)
{
	unsigned int i;

	for (i = 0; i < 8; i++) {
		training->wrdqs_val = dat[i];
		config_ddr(training);
		if (!check_multi_ssn()) {
			/*
			* The result is ok
			*/
			training->wr_result[i] |= (1 << level);
		}
	}
	return 0;
}

/*****************************************************************************/
static int travel_rddq(struct hi_training *training, unsigned int *dat,
		       unsigned int level)
{
	unsigned int i;

	for (i = 0; i < 8; i++) {
		set_dq(training->rddq_val, dat[i]);
		config_ddr(training);
		if (!check_multi_ssn()) {
			/*
			* The result is ok
			*/
			training->rd_result[level] |= (1 << i);
		}
	}
	return 0;
}

/*****************************************************************************/
static int travel_rddqs(struct hi_training *training, unsigned int *dat,
				unsigned int level)
{
	unsigned int i;

	for (i = 0; i < 8; i++) {
		training->rddqs_val = dat[i];
		config_ddr(training);
		if (!check_multi_ssn()) {

			/*
			* The result is ok
			*/
			training->rd_result[i] |= (1 << level);
		}
	}
	return 0;
}

/*****************************************************************************/
static int travel_wrdqs_dq_disable(struct hi_training *training)
{
	config_ddr(training);
	if (!check_multi_ssn()) {
		/*
		* The result is ok
		*/
		training->wr_result[8] |= (1 << 8);
	}
	return 0;
}

/*****************************************************************************/
static int travel_rddqs_dq_disable(struct hi_training *training)
{
	config_ddr(training);
	if (!check_multi_ssn()) {
		/*
		* The result is ok
		*/
		training->rd_result[8] |= (1 << 8);
	}
	return 0;
}

/*****************************************************************************/
static int delay_soc(unsigned int time)
{
	volatile unsigned int tmp;

	while (time--) {
		tmp = 0x1;
		while (tmp--);
	}
	return 0;
}

/*****************************************************************************/
static int prs_rebuilt(unsigned char input,
		       unsigned int *output, unsigned int *data)
{
	int n;
	unsigned int tmp = input;

	for (n = 6; n >= 0; n-=2) {
		output[n] = data[tmp & 0x3];
		output[n+1] = data[tmp & 0x3];
		tmp >>= 2;
	}
	return 0;
}

/*****************************************************************************/
void memcpy_soc(unsigned int *aim, unsigned int *src, unsigned int size)
{
	unsigned int i;
	unsigned int sizetemp;

	sizetemp = (size >> 2);
	for (i = 0; i < sizetemp; i ++) {
		*(unsigned int *)(aim + i) = *(unsigned int *)(src + i);
	}
}

/*****************************************************************************/
#if 1
static int check_multi_ssn(void)
{
	unsigned int i,j,n,tmp_vedu = 0;
	unsigned int ssn_code[64];
#ifdef SSN_DMA
	unsigned int check_code[64];
#endif

	for (n=0;n<8;n++) {
		check_ssn_code(n,ssn_code);

#ifdef SSN_VEDU

		/* VEDU write */
		io_write(0x101f506c, 0x100); /* vedu clock enable */
		io_write(REG_VEDU_BASE + VEDU_AXIT_MODE, 0x1); /* axit enable */
		memcpy_soc((unsigned int *)(REG_VEDU_BASE + VEDU_AXIT_STBUF),
				ssn_code,64*4 );
		io_write(REG_VEDU_BASE + VEDU_AXIT_CFG, 0x1); /* axit_cmd_num */
		io_write(REG_VEDU_BASE + VEDU_AXIT_WR, 0x1); /* axit_wr */

		/* axit_blk_strid<<16 | axit_cmd_stride */
		io_write(REG_VEDU_BASE + VEDU_AXIT_STRIDE, 0x400<<16);
		/* wr cmd axit_blk_height<<5 | axit_blk_width */
		io_write(REG_VEDU_BASE + VEDU_AXIT_BLK(0), (0x1<<5)+0xf);
		/* axit_loopnum */
		io_write(REG_VEDU_BASE + VEDU_AXIT_LOOP, 0x0);
#endif

#ifdef SSN_DMA
		io_write(REG_DMAC_BASE + DMAC_CX_SRC_ADDR(TRAINING_DMA_CH),
				(unsigned int)ssn_code);/*set dma source addr*/
		io_write(REG_DMAC_BASE + DMAC_CX_DEST_ADDR(TRAINING_DMA_CH),
				SSN_DMA_DDR_BASE);/*set dma destination addr*/

		/*the chain reg*/
		io_write(REG_DMAC_BASE + DMAC_CX_LLI(TRAINING_DMA_CH), 0);
		io_write(REG_DMAC_BASE+DMAC_CX_CONTROL(TRAINING_DMA_CH),
			(TRAINING_DMAC_CTL&(~0xfff)) | 64);	/*tranfsize 11:0*/
#endif

#ifdef SSN_DMA /*DMA strat*/
		io_write(REG_DMAC_BASE + DMAC_CX_CONFIG(TRAINING_DMA_CH), DMA_CH_EN);
		io_write(REG_DMAC_BASE + DMAC_CONFIG, DMAC_EN);
#endif
/*****************************************************************************/
#if 1
		for (j = 0; j < 1000;j++) {
			io_write(REG_VEDU_BASE + VEDU_AXIT_ADDR,
					SSN_VEDU_DDR_BASE+n*0x100000+j*0x200);
			io_write(REG_VEDU_BASE + VEDU_AXIT_WR, 0x1); /* axit_wr */
			io_write(REG_VEDU_BASE + VEDU_AXIT_START, 0x1);/*VEDU axit_start*/
			tmp_vedu = io_read(REG_VEDU_BASE + VEDU_AXIT_STATUS);

			while (!tmp_vedu) {
				tmp_vedu = io_read(REG_VEDU_BASE + VEDU_AXIT_STATUS);
			}

			io_write(REG_VEDU_BASE + VEDU_AXIT_WR,0x0);/*axit read*/
			io_write(REG_VEDU_BASE + VEDU_AXIT_START,0x1);
			tmp_vedu = io_read(REG_VEDU_BASE + VEDU_AXIT_STATUS);
			while (!tmp_vedu) {
				tmp_vedu = io_read(REG_VEDU_BASE + VEDU_AXIT_STATUS);
			}
		}
#endif
	/*******************************************************************/
#ifdef SSN_VEDU

		for (j = 0; j < 100; j++) {
			for (i = 0;i < 64; i++) {
				if (io_read(SSN_VEDU_DDR_BASE+n*0x100000+j*0x200 + i*0x4)
						!= ssn_code[i]) {
					return -1;
				}
			}
		}
/*
		for (i = 0; i < 64; i++) {
			if (io_read(REG_VEDU_BASE + VEDU_AXIT_LDBUF + i*0x4)
					!= ssn_code[i]) {
				uart_early_puts("\r\n read_error  i=");
				uart_early_put_hex(i);
				return -1;
			}
		}
*/
#endif
#ifdef SSN_DMA
		memcpy_soc(check_code,(unsigned int *)(SSN_DMA_DDR_BASE),  64*4);
		for (i = 0; i < 64; i++) {
			if (check_code[i] != ssn_code[i]) {
				return -1;
			}
		}
#endif
	}
	return 0;
}
#endif
/*****************************************************************************/

static int check_multi_pressure(unsigned int * ssn_num,
				unsigned int * ssn_code_temp,
				unsigned int * ssn_check_temp)
{
	unsigned int i,j;
	unsigned int n  ;
	unsigned int tmp_vedu = 0;
	unsigned int check_code[64] = {0};
	unsigned int ssn_code[64] = {0};

	for (n = 0; n < 8; n++) {
		check_ssn_code(n,ssn_code);
#ifdef SSN_VEDU
		/* VEDU write */
		io_write(0x101f506c, 0x100); /* vedu clock enable */
		io_write(REG_VEDU_BASE + VEDU_AXIT_MODE, 0x1); /* axit enable */
		memcpy_soc((unsigned int *)0x60114100, ssn_code,64*4 );
		io_write(REG_VEDU_BASE + VEDU_AXIT_CFG, 0x1); /* axit_cmd_num */

		/* axit_blk_strid<<16 | axit_cmd_stride */
		io_write(REG_VEDU_BASE + VEDU_AXIT_STRIDE, 0x400<<16|0x100);
		/* axit_blk_height<<5 | axit_blk_width */
		io_write(REG_VEDU_BASE + VEDU_AXIT_BLK(0), (0x0<<5)+0xf);
		io_write(REG_VEDU_BASE + VEDU_AXIT_LOOP, 0x0); /* axit_loopnum */

#endif
#ifdef SSN_DMA
		io_write(REG_DMAC_BASE + DMAC_CX_SRC_ADDR(TRAINING_DMA_CH),
			(unsigned int)ssn_code);/*set dma source addr*/
		io_write(REG_DMAC_BASE + DMAC_CX_DEST_ADDR(TRAINING_DMA_CH),
			SSN_DMA_DDR_BASE);/*set dma destination addr*/

		/*the chain reg*/
		io_write(REG_DMAC_BASE + DMAC_CX_LLI(TRAINING_DMA_CH), 0);
		io_write(REG_DMAC_BASE+DMAC_CX_CONTROL(TRAINING_DMA_CH),
			(TRAINING_DMAC_CTL&(~0xfff)) | 64);/*tranfsize 11:0*/

#endif

#ifdef SSN_DMA
		io_write(REG_DMAC_BASE + DMAC_CX_CONFIG(TRAINING_DMA_CH), DMA_CH_EN);
		io_write(REG_DMAC_BASE + DMAC_CONFIG, DMAC_EN);
#endif


#ifdef SSN_VEDU

		for (j=0;j<100;j++) {
			io_write(REG_VEDU_BASE + VEDU_AXIT_ADDR,
					SSN_VEDU_DDR_BASE+n*0x100000+j*0x200);
			io_write(REG_VEDU_BASE + VEDU_AXIT_WR, 0x1); /* axit_wr */
			io_write(REG_VEDU_BASE + VEDU_AXIT_START, 0x1);/*VEDU axit_start*/
			tmp_vedu = io_read(REG_VEDU_BASE + VEDU_AXIT_STATUS);

			while (!tmp_vedu) {
				tmp_vedu = io_read(REG_VEDU_BASE + VEDU_AXIT_STATUS);
			}

			io_write(REG_VEDU_BASE + VEDU_AXIT_WR,0x0);/*axit read*/
			io_write(REG_VEDU_BASE + VEDU_AXIT_START,0x1);
			tmp_vedu = io_read(REG_VEDU_BASE + VEDU_AXIT_STATUS);
			while (!tmp_vedu) {
				tmp_vedu = io_read(REG_VEDU_BASE + VEDU_AXIT_STATUS);
			}
		}
#endif

#ifdef SSN_VEDU
		for (j = 0; j < 100; j++) {
			memcpy_soc(check_code,(unsigned int *)
				(SSN_VEDU_DDR_BASE+n*0x100000 + j*0x200 ), 64*4);
			for (i = 0; i < 64; i++) {
				if (io_read(SSN_VEDU_DDR_BASE+n*0x100000+j*0x200+i*0x4)
					!=ssn_code[i]) {
					uart_early_puts("VEDU write is error!!!\r\n");
					*ssn_code_temp = ssn_code[i];
					*ssn_check_temp = check_code[i];
					*ssn_num = 0 ;
					*ssn_num =( n |(j << 4)|(i << 16));
					return -1;
				}
			}
			uart_early_puts("test OK!!\r\n");

		}

		memcpy_soc(check_code,
			(unsigned int *)(REG_VEDU_BASE + VEDU_AXIT_LDBUF), 64*4);
		for (i = 0; i < 64; i++) {
			if (check_code[i] != ssn_code[i]) {
				uart_early_puts("VEDU write is error!!!\r\n");
				return -1;
			}
		}
		uart_early_puts(" VEDU READ  test OK!!\n");
#endif
#ifdef SSN_DMA
		memcpy_soc(check_code,(unsigned int *)(SSN_DMA_DDR_BASE), 64*4);
		for (i = 0; i < 64; i++) {
			if(check_code[i] != ssn_code[i]){
				uart_early_puts("DMA write is error!!!\r\n");
				return -1;
			}
		}
		uart_early_puts("ssn dma test BU:  test OK!!!!!!!!\r\n");
#endif
	}
	return 0;
}
/*****************************************************************************/
unsigned int pressure_test(unsigned int mode, unsigned int count)
{
	unsigned int i = 0;
	unsigned int tmp_vedu = 0;
	unsigned int ssn_code[64] = {0};

	check_ssn_code(mode,ssn_code);
#ifdef SSN_VEDU
	/* VEDU write */
	io_write(0x101f506c, 0x100); /* vedu clock enable */
	io_write(REG_VEDU_BASE + VEDU_AXIT_MODE, 0x1); /* axit enable */
	memcpy_soc((unsigned int *)0x60114100, ssn_code,64*4 );
	io_write(REG_VEDU_BASE + VEDU_AXIT_CFG, 0x1); /* axit_cmd_num */

	/* axit_blk_strid<<16 | axit_cmd_stride */
	io_write(REG_VEDU_BASE + VEDU_AXIT_STRIDE, 0x400<<16|0x100);
	/* axit_blk_height<<5 | axit_blk_width */
	io_write(REG_VEDU_BASE + VEDU_AXIT_BLK(0), (0x0<<5)+0xf);
	io_write(REG_VEDU_BASE + VEDU_AXIT_LOOP, 0x0); /* axit_loopnum */

#endif
#ifdef SSN_DMA
	io_write(REG_DMAC_BASE + DMAC_CX_SRC_ADDR(TRAINING_DMA_CH),
		(unsigned int)ssn_code);/*set dma source addr*/
	io_write(REG_DMAC_BASE + DMAC_CX_DEST_ADDR(TRAINING_DMA_CH),
		SSN_DMA_DDR_BASE);/*set dma destination addr*/

	/*the chain reg*/
	io_write(REG_DMAC_BASE + DMAC_CX_LLI(TRAINING_DMA_CH), 0);
	io_write(REG_DMAC_BASE+DMAC_CX_CONTROL(TRAINING_DMA_CH),
		(TRAINING_DMAC_CTL&(~0xfff)) | 64);/*tranfsize 11:0*/
#endif

#ifdef SSN_DMA
	io_write(REG_DMAC_BASE + DMAC_CX_CONFIG(TRAINING_DMA_CH), DMA_CH_EN);
	io_write(REG_DMAC_BASE + DMAC_CONFIG, DMAC_EN);
#endif


#ifdef SSN_VEDU
	uart_early_puts("\r\n pressure_test count=");
	uart_early_put_hex(count);
	while (i < count) {
		uart_early_puts("\r\n @pressure_test count ++");
		io_write(REG_VEDU_BASE + VEDU_AXIT_ADDR, SSN_VEDU_DDR_BASE+i*0x200);
		io_write(REG_VEDU_BASE + VEDU_AXIT_WR, 0x1); /* axit_wr */
		io_write(REG_VEDU_BASE + VEDU_AXIT_START, 0x1);/* VEDU axit_start */
		tmp_vedu = io_read(REG_VEDU_BASE + VEDU_AXIT_STATUS);
		while (!tmp_vedu) {
			tmp_vedu = io_read(REG_VEDU_BASE + VEDU_AXIT_STATUS);
		}
		io_write(REG_VEDU_BASE + VEDU_AXIT_WR,0x0);/*axit read*/
		io_write(REG_VEDU_BASE + VEDU_AXIT_START,0x1);
		tmp_vedu = io_read(REG_VEDU_BASE + VEDU_AXIT_STATUS);
		while (!tmp_vedu) {
			tmp_vedu = io_read(REG_VEDU_BASE + VEDU_AXIT_STATUS);
		}
		i++;
	}

	if (count == 0) {
		while (1){
			uart_early_puts("\r\n pressure_test count infinite loop.");
			io_write(REG_VEDU_BASE + VEDU_AXIT_ADDR, SSN_VEDU_DDR_BASE);
			io_write(REG_VEDU_BASE + VEDU_AXIT_WR, 0x1); /* axit_wr */
			io_write(REG_VEDU_BASE + VEDU_AXIT_START, 0x1);/* VEDU axit_start */
			tmp_vedu = io_read(REG_VEDU_BASE + VEDU_AXIT_STATUS);
			while(!tmp_vedu){
				tmp_vedu = io_read(REG_VEDU_BASE + VEDU_AXIT_STATUS);
			}
			io_write(REG_VEDU_BASE + VEDU_AXIT_WR,0x0);/*axit read*/
			io_write(REG_VEDU_BASE + VEDU_AXIT_START,0x1);
			tmp_vedu = io_read(REG_VEDU_BASE + VEDU_AXIT_STATUS);
			while(!tmp_vedu){
				tmp_vedu = io_read(REG_VEDU_BASE + VEDU_AXIT_STATUS);
			}
		}
	}
#endif
	return 0;
}

/*****************************************************************************/
int ddr_training_ssn_pressure(void)
{
	/*
	* Init DMAC
	*/
	unsigned int ssn_cnt=0;
	unsigned int ssn_num = 0;
	unsigned int ssn_code_temp = 0;
	unsigned int ssn_check_temp = 0;
	dma_init();
	delay_soc(1);
	uart_early_puts("----------ssn multi test start!!!!----------\r\n");
	while (1) {
		if (check_multi_pressure(&ssn_num, &ssn_code_temp, &ssn_check_temp)
			!= 0) {
			ssn_error_num = ssn_num;
			ssn_error_code = ssn_code_temp;
			ssn_error_check = ssn_check_temp;
			uart_early_puts("DDR multi channel pressure test is error!!!\r\n");
			ssn_cycnum = ssn_cnt;
			return -1;
		}
		else {
			ssn_cnt++;
			uart_early_puts("-----------ssn multi test n times OK-----------\r\n");
		}
	}
	uart_early_puts("DDR multi channel pressure test is OK!!!!!!!\r\n");
	return 0;
}

/*****************************************************************************/
#if 0
int ddr_cyc_pressure(void)
{
	unsigned int cyc_cnt = 0;
	unsigned int all_num = 0;
	unsigned int wr_block_num = 0;
	unsigned int m = 0;
	unsigned int save_addr ;
	unsigned int nand_offest_addr = 0;
	unsigned int boot_type;
	/******************clear the SSN_TEST_FLAG **********************/


	length = 0x800000;   /*16M*/
	opts.offset = 0x400000;
	opts.length = length;
	io_write(SSN_SAVE_BASE , 0x6f6b6f6b); /***** set test flag *****/
	io_write(SSN_SAVE_BASE + 0x4, 0x0);

	nand_erase_opts(&nand_info[nand_curr_device],&opts);
	opts.offset = 0x400000+0x800000;
	nand_erase_opts(&nand_info[nand_curr_device],&opts);
	length = 0x2000 ;
	nand_write_skip_bad(&nand_info[nand_curr_device],
			0x400000,&length,(u_char *)SSN_SAVE_BASE);
	/******************** start pressure ****************************/
	while (wr_block_num < 2048) {
		if (cyc_cnt < 512) {
			if (ddr_training_ssn_pressure() != 0) {
				/********************** save to DDR first *****************/
				save_addr = SSN_SAVE_BASE + 0x100000+
					wr_block_num*0x2000 + cyc_cnt*0x10;

				all_num = all_num + cyc_cnt;		 /*all test number*/
				io_write(SSN_SAVE_BASE, 0x72726f72); /** 0x72726f72 = rror */
				io_write(SSN_SAVE_BASE + 0x4,   wr_block_num);
				io_write(save_addr  ,ssn_cycnum);
				io_write(save_addr + 0x4, ssn_error_num);
				io_write(save_addr + 0x8, ssn_error_code);
				io_write(save_addr + 0xc, ssn_error_check);
			}
			cyc_cnt++;
			if (cyc_cnt == 1) {
				opts.offset = 0x400000;
				opts.length = 0x80000;
				nand_erase_opts(&nand_info[nand_curr_device],&opts);
				nand_write_skip_bad(&nand_info[nand_curr_device],
					0x400000,&length,(u_char *)SSN_SAVE_BASE);
			}
		} else {

			/************save to flash************************/
			printf("%0x,  %0x \n", ssn_error_code,ssn_error_check);
			nand_offest_addr = wr_block_num*0x2000;
			ddr_training_ssn_save(nand_offest_addr);
			all_num = all_num + 1;
			wr_block_num  = wr_block_num + 1;
			cyc_cnt = 0;
		}
	}

	printf("the test it too long to save\n");
	return 0;
}

/*****************************************************************************/
static int ddr_training_ssn_save(unsigned int nand_offest_addr)
{
	length = 0x2000;
	opts.offset = 0x400000 + nand_offest_addr;
	opts.length = length;
	loff_t nand_offest = nand_offest_addr;
	nand_write_skip_bad(&nand_info[nand_curr_device],0x500000 + nand_offest,
		&length,(u_char *)(SSN_SAVE_BASE +0x100000+ nand_offest_addr));

	return 0;
}
/*****************************************************************************/
int ddr_result_printf(void)
{
	unsigned int nand_offest ;
	unsigned int i,n;
	unsigned int bank, cycnum, codenum;
	unsigned int ssn_flag;
	unsigned int ssn_bank_num;
	unsigned int save_addr;

	length = 0x2000;
	opts.offset = 0x400000;
	opts.length = length;
	/*	static struct spi_flash *flash; */
	nand_read_skip_bad(&nand_info[nand_curr_device],
			0x400000,&length,(u_char *)SSN_SAVE_BASE);

	ssn_flag = io_read(SSN_SAVE_BASE);
	ssn_bank_num = io_read(SSN_SAVE_BASE + 0x4);
	/********  0x6f6b6f6b = okok *******************/
	if (ssn_flag == 0x6f6b6f6b) {
		printf("The last DDR pressure test is OK !!!!!!\n");
		return 0;
	}
	else if (ssn_flag == 0x72726f72) {
		if (ssn_bank_num == 0) {
			printf("The error data not enough 8k and not save !!\n");
			return 0;
		} else {
			printf("The last DDR pressure test is ERROR !!!!!!\n");
			printf("The total error number is  %d \n" , ssn_bank_num  );
			printf("The error information.....................\n");
			printf("SEQ BURST CODE      SSN_CODE    CHECK_CODE\n");
		}
	} else {
		printf("Please start a test, input: ddr cycpressure\n");
		return 0;
	}
	/*************************prepare for printf******************************/
	for (n = 0; n < ssn_bank_num; n++) {
		nand_offest =  0x100000 + n*0x2000 ;
		nand_read_skip_bad(&nand_info[nand_curr_device],0x400000 + nand_offest,
			&length,(u_char *)(SSN_SAVE_BASE + nand_offest));
		for (i = 0; i < 512; i++) {
			save_addr = SSN_SAVE_BASE + nand_offest + i*0x10;
			ssn_cycnum = io_read(save_addr);
			ssn_error_num = io_read(save_addr + 0x4);
			ssn_error_code = io_read(save_addr + 0x8);
			ssn_error_check = io_read(save_addr + 0xc);
			bank = ssn_error_num & 0xf;
			cycnum = (ssn_error_num & 0xfff0)>>4;
			codenum = (ssn_error_num & 0xff0000)>>16;
			printf(" %d,  %d,   %d,     0x%x,      0x%x\n",
				i+n*512,bank,codenum,ssn_error_code,ssn_error_check);
		}
	}
	return 0;
}
#endif
/*****************************************************************************/
static int check_ssn_code(unsigned int input,unsigned int *ssn_code)
{

	unsigned int i,j;
	unsigned int ssn_code_tmp[8];

	unsigned int prbs_sole0[8] =
	{
		0x73, 0x65, 0x6B, 0xEF, 0x0C, 0x45, 0x33, 0xD5

	};
	unsigned int prbs_sole1[8] =
	{
		0x1F, 0xC8, 0x16, 0x0E, 0x84, 0xE3, 0x49, 0x76
	};
	unsigned int prs_data0[4] =
	{
		0x00000000, 0xff00ff00, 0x00ff00ff, 0xffffffff
	};
	unsigned int prs_data1[4] =
	{
		0x10101010, 0xef10ef10, 0x10ef10ef, 0xefefefef
	};
	unsigned int prs_data2[4] =
	{
		0x00000000, 0xef00ef00, 0x00ef00ef, 0xefefefef
	};
	unsigned int prs_data3[4] =
	{
		0x10101010, 0xff10ff10, 0x10ff10ff, 0xffffffff
	};
	unsigned int prs_data4[4] =
	{
		0x00000000, 0x10001000, 0x00100010, 0x10101010
	};
	switch (input) {
	case 0 :
		for (i = 0; i < 8; i++) {
			prs_rebuilt(prbs_sole0[i], ssn_code_tmp, prs_data0);
			for (j=0;j<8;j++) {
				ssn_code[i*8+j]=ssn_code_tmp[j];
			}
		}
		break;
	case 1 :
		for (i = 0; i < 8; i++) {
			prs_rebuilt(prbs_sole0[i], ssn_code_tmp, prs_data1);
			for (j=0;j<8;j++) {
				ssn_code[i*8+j]=ssn_code_tmp[j];
			}
		}
		break;
	case 2:
		for (i = 0; i < 8; i++) {
			prs_rebuilt(prbs_sole0[i], ssn_code_tmp, prs_data2);
			for (j=0;j<8;j++) {
				ssn_code[i*8+j]=ssn_code_tmp[j];
			}
		}
		break;
	case 3:
		for (i = 0; i < 8; i++) {
			prs_rebuilt(prbs_sole0[i], ssn_code_tmp, prs_data3);
			for (j=0;j<8;j++) {
				ssn_code[i*8+j]=ssn_code_tmp[j];
			}
		}
		break;
	case 4:
		for (i = 0; i < 8; i++) {
			prs_rebuilt(prbs_sole1[i], ssn_code_tmp, prs_data0);
			for (j=0;j<8;j++) {
				ssn_code[i*8+j]=ssn_code_tmp[j];
			}
		}
		break;

	case 5 :
		for (i = 0; i < 8; i++) {
			prs_rebuilt(prbs_sole1[i], ssn_code_tmp, prs_data1);
			for (j=0;j<8;j++) {
				ssn_code[i*8+j]=ssn_code_tmp[j];
			}
		}
		break;
	case 6:
		for (i = 0; i < 8; i++) {
			prs_rebuilt(prbs_sole1[i], ssn_code_tmp, prs_data2);
			for (j=0;j<8;j++) {
				ssn_code[i*8+j]=ssn_code_tmp[j];
			}
		}
		break;

	case 7:
		for (i = 0; i < 8; i++) {
			prs_rebuilt(prbs_sole1[i], ssn_code_tmp, prs_data3);
			for (j=0;j<8;j++) {
				ssn_code[i*8+j]=ssn_code_tmp[j];
			}
		}
		break;
	case 8:
		for (i = 0; i < 8; i++) {
			prs_rebuilt(prbs_sole0[i], ssn_code_tmp, prs_data4);
			for (j=0;j<8;j++) {
				ssn_code[i*8+j]=ssn_code_tmp[j];
			}
		}
		break;

	case 9:
		for (i = 0; i < 8; i++) {
			prs_rebuilt(prbs_sole1[i], ssn_code_tmp, prs_data4);
			for (j=0;j<8;j++) {
				ssn_code[i*8+j]=ssn_code_tmp[j];
			}
		}
		break;

	case 10:
		for (i = 0; i < 64; i++)
			ssn_code[i]=0xff00ff00;
		break;
	default:
		break;
	}
	return 0;
}
/*****************************************************************************/
static int calculate_para(unsigned int size, unsigned int val,
		struct hi_training *training)
{
	unsigned int record_first = 0;
	unsigned int record_cnt = 0;
	unsigned int tmp_first = 0;
	unsigned int tmp_last = 0;
	unsigned int tmp_cnt = 0;
	unsigned int flag = 0;
	unsigned int i = 0;

	while (1) {
		if (flag == 0) {
			if (val&(1 << i)) {
				flag = 1;
				tmp_first = i;
			}
		} else {
			if (!(val&(1 << i))) {
				flag = 0;
				tmp_last = i;
				tmp_cnt = tmp_last - tmp_first;
				if (tmp_cnt > record_cnt) {
					record_first = tmp_first;
					record_cnt = tmp_cnt;
				}
			}
		}
		i++;
		if (i > (size - 1)) {
			if (flag == 1) {
				tmp_last = size;
			}
			tmp_cnt = tmp_last - tmp_first;
			if (tmp_cnt > record_cnt) {
				record_first = tmp_first;
				record_cnt = tmp_cnt;
			}
			break;
		}
	}
	if (record_cnt == 0) {
		training->skew_cnt = 0;
		return ALL_ERROR;
	} else {
		training->skew_cnt = record_cnt;
		return (record_cnt/2 + record_first);
	}
}

/*****************************************************************************/
static int get_best_para(struct hi_training *training)
{
	unsigned int i;
	unsigned int wr_para_tmp;
	unsigned int rd_para_tmp;
	unsigned int tmp;

	wr_para_tmp = 0;
	rd_para_tmp = 0;
	for (i = 0; i < TRAINING_WR_CNT; i++) {
		tmp = training->wr_data[i];
		tmp = training->wr_result[tmp>>16] & (1<<(tmp&0xffff));
		wr_para_tmp |= tmp?(1<<i):0;
	}
	for (i = 0; i < TRAINING_RD_CNT; i++) {
		tmp = training->rd_data[i];
		tmp = training->rd_result[tmp>>16] & (1<<(tmp&0xffff));
		rd_para_tmp |= tmp?(1<<i):0;
	}
	training->wr_para = wr_para_tmp;
	training->rd_para = rd_para_tmp;

	/*
	* get the best parameters of write-skew
	*/
	training->wr_best = calculate_para(TRAINING_WR_CNT,
		training->wr_para, training);
	training->wr_skew_cnt = training->skew_cnt;

	/*
	* get the best parameters of read-skew
	*/
	training->rd_best = calculate_para(TRAINING_RD_CNT,
		training->rd_para, training);
	training->rd_skew_cnt = training->skew_cnt;
	return 0;
}

/*****************************************************************************/
/* this function will set value to ddr register. */
struct ddrtr_result_t *ddr_training(struct ddrtr_param_t *param)
{
	if (param->cmd == DDRTR_PARAM_TRAINING) {
		uart_early_puts("DDR training start ");
		ddr_training_entry();
		uart_early_puts("\r\n");
	} else if (param->cmd == DDRTR_PARAM_PRESSURE) {
		uart_early_puts("DDR pressure start ");
		/* ddr_training_ssn_pressure(); */
		pressure_test(param->pressure.mode, param->pressure.count);
		uart_early_puts("\r\n");
	} else if (param->cmd == DDRTR_PARAM_ADDRTRAIN) {
		uart_early_puts("DDR addtrain no support.");
	}

	return &result;
}
/*****************************************************************************/
