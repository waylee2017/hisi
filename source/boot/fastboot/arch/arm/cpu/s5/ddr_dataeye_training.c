/*
 *  this file only for s5
 */
//#include <config.h>
#include "ddr_dataeye_training.h"

/************************ only for cmd ddr training *************************/
#ifdef CMD_TRAINING	/* defined in cmd_traing makefile */
struct ddrtr_result_t result;
int ddr_dataeye_training(void);
extern void uart_early_puts(const char *s);
extern struct ddrtr_result_t ddrtr_result;

void save_training_result(unsigned int chn_num)
{
	int byte;
	int ddrphy_base;

	if (0 == chn_num)
		ddrphy_base = REG_DDRPHY_RNK0_BASE;
	else if (1 == chn_num)
		ddrphy_base = REG_DDRPHY_RNK1_BASE;
	else
		return;

	for (byte = 0; byte < 4; byte++) {
		result.reg[result.count++].reg = ddrphy_base + DDRC_DXNWDQBDL0(byte);
		result.reg[result.count++].reg = ddrphy_base + DDRC_DXNWDQBDL1(byte);
		result.reg[result.count++].reg = ddrphy_base + DDRC_DXNRDQBDL0(byte);
		result.reg[result.count++].reg = ddrphy_base + DDRC_DXNRDQBDL1(byte);
		result.reg[result.count++].reg = ddrphy_base + DDRC_DXWDQSDLY(byte);
		result.reg[result.count++].reg = ddrphy_base + DDRC_DXNDQSGDLY(byte);
	}
}

/* this function will set value to ddr register. */
struct ddrtr_result_t *cmd_training_entry(struct ddrtr_param_t *param)
{
	if (param->cmd == DDRTR_PARAM_TRAINING)
		ddr_dataeye_training();
	else if (param->cmd == DDRTR_PARAM_PRESSURE)
		uart_early_puts("DDR pressure no support\r\n");
	else if (param->cmd == DDRTR_PARAM_ADDRTRAIN)
		uart_early_puts("DDR addrtrain start\r\n");
	else
		uart_early_puts("Unknonw training cmd\r\n");

	return &result;
}
#endif
/********************* end for cmd ddr training **********************/

extern void ddr_training_print(int type, int num);
static void dqs_bdl_enable(unsigned int base_addr)
{
	unsigned int tmp;

	tmp = io_read(base_addr + DDRC_MISC);
	tmp = tmp | (1 << 20);
	io_write(base_addr + DDRC_MISC, tmp);
	tmp = tmp & 0xFFEFFFFF;
	io_write(base_addr + DDRC_MISC, tmp);
}

/*****************************************************************************/
static void config_ddr_dq(struct training_data *training,
			     unsigned int deskew_value,
			     unsigned int bytenum, unsigned int dqindex,
			     unsigned int base_addr, unsigned int mode)
{
	unsigned int val;
	unsigned int off0, off1;

	dqindex &= 0x07;
	if (WR_MODE == mode) {
		off0 = DDRC_DXNWDQBDL0(bytenum);
		off1 = DDRC_DXNWDQBDL1(bytenum);
	} else {
		off0 = DDRC_DXNRDQBDL0(bytenum);
		off1 = DDRC_DXNRDQBDL1(bytenum);
	}

	if (dqindex < 4) {
		val = io_read(base_addr + off0);
		val &= ~(0xFF << (dqindex << 3));
		val |= ((0x1F & deskew_value) << (dqindex << 3));
		io_write(base_addr + off0, val);
	} else {
		dqindex -= 4;
		val = io_read(base_addr + off1);
		val &= ~(0xFF << (dqindex << 3));
		val |= ((0x1F & deskew_value) << (dqindex << 3));
		io_write(base_addr + off1, val);
	}

	dqs_bdl_enable(base_addr);
}

/************************* DDRT init *****************************************/
static int ssn_ddrt_init(int mode, int code_stream, unsigned int reversed_bit,
	unsigned int bit_num, unsigned int byte_num)
{
#define DDRT_WAIT_TIMEOUT	(400)
	int times = 0;
	unsigned int regval;
	unsigned int dq_num, dq_tmp;
	unsigned int ddrt_dq_err_ovfl, ddrt_dq_err_cnt;

	io_write(REG_DDRT_BASE + DDRT_REVERSED_DQ, reversed_bit);
	io_write(REG_DDRT_BASE + DDRT_OP, mode | code_stream | DDRT_START);
	do {
		regval = io_read(REG_DDRT_BASE + DDRT_STATUS);
		times++;
	} while ((!(regval & 0x01)) && (times < DDRT_WAIT_TIMEOUT));

	if (DDRT_WAIT_TIMEOUT == times) {
		io_write(DDR_TRAINING_STAT_REG, io_read(DDR_TRAINING_STAT_REG)
			| (1<<DDR_TRAINING_STAT_BITS_WAIT));
		return -1;
	}

	dq_num = (byte_num << 3) + bit_num;
	if (bit_num > 3)
		dq_tmp = (bit_num - 4) << 3;
	else
		dq_tmp = bit_num << 3;

	if (!(regval & 0x02)) {
		ddrt_dq_err_ovfl = io_read(REG_DDRT_BASE + DDRT_DQ_ERR_OVFL) & (1<<dq_num);
		if (ddrt_dq_err_ovfl)
			return -1;

		ddrt_dq_err_cnt = io_read(REG_DDRT_BASE + DDRT_DQ_ERR_CNT((byte_num<<1)+(bit_num>>2)));
		ddrt_dq_err_cnt = ddrt_dq_err_cnt & (0xff<<dq_tmp);
		if (ddrt_dq_err_cnt)
			return -1;
	}

	return 0;
}

/*****************************************************************************/
/** success return non-negative, fail return negative. **/
static int check_multi_ssn(const struct training_data *training,
	unsigned int bit_num, unsigned int byte_num)
{
#ifdef SSN_DDRT
	if (ssn_ddrt_init(RW_COMPRARE_MODE, DDRT_PATTERM_PRBS9, 0,
			bit_num, byte_num))
		return -1;

	if (ssn_ddrt_init(RW_COMPRARE_MODE, DDRT_PATTERM_PRBS11, training->ddrt_reversed_data,
			bit_num, byte_num))
		return -1;
#endif /* SSN_DDRT */

	return 0;
}

/*********************************************************************/

static int perbit_calculate_para(unsigned int size, unsigned int val)
{
	unsigned int i;
	unsigned int flag;
	unsigned int tmp_cnt;
	unsigned int record_first;
	unsigned int record_cnt;
	unsigned int tmp_first;
	unsigned int tmp_last;

	record_first = record_cnt = tmp_first = tmp_last = tmp_cnt =
	    flag = i = 0;

	while (i < size) {
		if (flag == 0) {
			if (val & (1 << i)) {
				flag = 1;
				tmp_first = i;
			}
		} else {
			if (!(val & (1 << i))) {
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
			if (flag == 1)
				tmp_last = size;
			tmp_cnt = tmp_last - tmp_first;
			if (tmp_cnt > record_cnt) {
				record_first = tmp_first;
				record_cnt = tmp_cnt;
			}
			break;
		}
	}

	if (record_cnt) {
		int rel = (record_cnt << 16);
		/* if record_cnt is even number, the result choose big number */
		rel = ((rel & 0xffff0000) | ((record_cnt >> 1) + record_first));
		return rel;
	}

	return 0;
}

/*****************************************************************************/

static int ddr_bit_deskew_max(struct training_data *training,
	unsigned int start_dq, unsigned int byte_num, unsigned int bit_num,
	unsigned int ddrphy_base, unsigned int mode)
{
	unsigned int dq_num;
	unsigned int half_bdl;
	unsigned int max_level;
	unsigned int ix;
	unsigned int left_bound;
	unsigned int interrupt_fl;
	unsigned int default_val;
	unsigned int *bit_result;

	dq_num = start_dq + (byte_num << 3) + bit_num;
	if (WR_MODE == mode) {
		ix = training->wrdq_val[dq_num];
		default_val = training->wrdq_val[dq_num];
		bit_result = training->wr_bit_result;
	} else {
		ix = training->rddq_val[dq_num];
		default_val = training->rddq_val[dq_num];
		bit_result = training->rd_bit_result;
	}

	/* ddrt result of bdl config is ok */
	if (!check_multi_ssn(training, bit_num, byte_num)) {
		interrupt_fl = 1;
		half_bdl = ((DQ_LEVEL - ix) >> 1) + ix;
		config_ddr_dq(training, half_bdl, byte_num, bit_num, ddrphy_base, mode);
		/* ddrt result is error */
		if (check_multi_ssn(training, bit_num, byte_num))
			max_level = half_bdl + 1;
		else { /* ddrt result is ok */
			max_level = DQ_LEVEL;
			ix = half_bdl;
		}
	} else {
		max_level = DQ_LEVEL;
		interrupt_fl = 0;
		bit_result[dq_num] &= (~(1<<ix));
	}

	left_bound = ix;
	while (ix < max_level) {
		config_ddr_dq(training, ix, byte_num, bit_num, ddrphy_base, mode);
		/* ddrt result is ok */
		if (!check_multi_ssn(training, bit_num, byte_num))
			left_bound = ix;
		else { /* ddrt result is error */
			if(interrupt_fl)
				break;
			bit_result[dq_num] &= (~(1<<ix));
		}
		ix++;
	}

	if (interrupt_fl)
		bit_result[dq_num] &= (0xffffffff >> (DQ_LEVEL-left_bound-1));

	/* recover default level */
	config_ddr_dq(training, default_val, byte_num, bit_num, ddrphy_base, mode);
	return 0;
}

/*****************************************************************************/

static int ddr_bit_deskew_min(struct training_data *training,
	unsigned int start_dq, unsigned int byte_num, unsigned int bit_num,
	unsigned int ddrphy_base, unsigned int mode)
{
	unsigned int ix;
	unsigned int dq_num;
	unsigned int right_bound, half_bdl;
	unsigned int min_level;
	unsigned int interrupt_fl;
	unsigned int default_val;
	unsigned int *bit_result;

	dq_num = start_dq + (byte_num << 3) + bit_num;
	if (mode == WR_MODE) {
		ix = training->wrdq_val[dq_num];
		default_val = training->wrdq_val[dq_num];
		bit_result = training->wr_bit_result;
	} else {
		ix = training->rddq_val[dq_num];
		default_val = training->rddq_val[dq_num];
		bit_result = training->rd_bit_result;
	}

	if (!check_multi_ssn(training, bit_num, byte_num)) {
		interrupt_fl = 1;
		half_bdl = ix >> 1;
		config_ddr_dq(training, half_bdl, byte_num, bit_num, ddrphy_base, mode);
		if (check_multi_ssn(training, bit_num, byte_num))
			min_level = half_bdl;
		else {
			min_level = 0;
			ix = half_bdl;
		}
	} else {
		min_level = 0;
		interrupt_fl = 0;
		bit_result[dq_num] &= (~(1<<ix));
	}

	right_bound = ix;
	if(ix != 0)
		ix -= 1;

	while (min_level <= ix) {
		config_ddr_dq(training, ix, byte_num, bit_num, ddrphy_base, mode);
		if (!check_multi_ssn(training, bit_num, byte_num))
			right_bound = ix;
		else {
			if(interrupt_fl)
				break;
			bit_result[dq_num] &= (~(1<<ix));
		}

		if (0 == ix)
			break;
		ix--;

	}

	if (interrupt_fl)
		bit_result[dq_num] &= (0xffffffff << right_bound);

	/* recover default setting */
	config_ddr_dq(training, default_val, byte_num, bit_num, ddrphy_base, mode);
	return 0;
}

/*****************************************************************************/
static unsigned int ddr_byte_deskew(struct training_data *training,unsigned int byte_num, 
		unsigned int start_dq, unsigned int ddrphy_base, unsigned int mode, unsigned int chn_num)
{

	unsigned int dq_num;
	unsigned int loop_times = 0;
	unsigned int cnt_num, dm_sum = 0;
	unsigned int tmp;
	int bit_index;
	unsigned int *bit_result, *bit_best;

	if (WR_MODE == mode) {
		bit_result = training->wr_bit_result;
		bit_best = training->wr_bit_best;
	} else {
		bit_result = training->rd_bit_result;
		bit_best = training->rd_bit_best;
	}

	for (bit_index = 0; bit_index < 8; bit_index++) {
		dq_num = start_dq + (byte_num << 3) + bit_index;
		bit_result[dq_num] = 0xffffffff;
		bit_best[dq_num] = 0;

		ddr_bit_deskew_max(training, start_dq, byte_num, bit_index, ddrphy_base, mode);
		ddr_bit_deskew_min(training, start_dq, byte_num, bit_index, ddrphy_base, mode);
		bit_best[dq_num] = perbit_calculate_para(DQ_LEVEL, bit_result[dq_num]);

		cnt_num = bit_best[dq_num]>>16;
		if (cnt_num > 11)
			tmp = bit_best[dq_num] & 0xffff;
		else { /* try current bit for DDRT_LOOP_TIMES_LMT times */
			if (loop_times < DDRT_LOOP_TIMES_LMT) {
				loop_times++;
				bit_index--;
				continue;
			} else {
				tmp = bit_best[dq_num] & 0xffff;
				if (0 == cnt_num) {
					training->hw_training_flag = 1;
					if(!mode)
						return (dq_num <<16 | (DDR_SWR_ERR(chn_num)));
					else
						return (dq_num <<16 | (DDR_SRD_ERR(chn_num)));
				}
				io_write(DDR_TRAINING_STAT_REG,
					io_read(DDR_TRAINING_STAT_REG)
					| (1<<DDR_TRAINING_STAT_BITS_DES));
			}
		}

		loop_times = 0;
		config_ddr_dq(training, tmp, byte_num, bit_index, ddrphy_base, mode);
		dm_sum += tmp;
#ifdef CMD_TRAINING
		uart_early_puts(".");
#endif
	}

	if (WR_MODE == mode) {
		dm_sum >>= 3;
		io_write(ddrphy_base + DDRC_DXNWDQBDL2(byte_num), dm_sum);
	}
	dqs_bdl_enable(ddrphy_base);

	return 0;
}

/*****************************************************************************/
static void read_config_ddr(struct training_data *training, unsigned int base_addr,
		unsigned int start_dq, unsigned byte_width)
{
	unsigned int off;
	unsigned int i, j, val1, val2, val3, val4;

	for (i = 0; i < byte_width; i++) {
		off = start_dq + (i << 3);
		val1 = io_read(base_addr + DDRC_DXNWDQBDL0(i));
		val2 = io_read(base_addr + DDRC_DXNWDQBDL1(i));
		val3 = io_read(base_addr + DDRC_DXNRDQBDL0(i));
		val4 = io_read(base_addr + DDRC_DXNRDQBDL1(i));
		for (j = 0; j < 4; j++) {
			training->wrdq_val[off + j] = (val1 >> (j << 3)) & 0xff;
			training->wrdq_val[off + 4 + j] = (val2 >> (j << 3)) & 0xff;
			training->rddq_val[off + j] = (val3 >> (j << 3)) & 0xff;
			training->rddq_val[off + 4 + j] = (val4 >> (j << 3)) & 0xff;
		}
#ifdef CMD_TRAINING
		unsigned int val;
		val = io_read(base_addr + DDRC_DXNWDQDLY(i));
		training->wrdqs_val[(start_dq >> 3) + i] = (val >> 8) & 0x1f;

		val = io_read(base_addr + DDRC_DXNRDQSDLY(i));
		training->rddqs_val[(start_dq >> 3) + i] = val & 0x7f;
#endif
	}
}

/***************************************************************************/
static void ddr_wl_adj(struct training_data *training, unsigned int base_addr,
			unsigned int start_dq, unsigned int byte_width)
{
	unsigned int i, j, dq_num;
	unsigned int wdqs_dly;
	unsigned int wdq_phase;
	unsigned int adj_value;
	unsigned int dm_value;

	for (i = 0; i < byte_width; i++) {
		wdqs_dly = io_read(base_addr + DDRC_DXWDQSDLY(i));
		wdq_phase = io_read(base_addr + DDRC_DXNWDQDLY(i));
		wdqs_dly = wdqs_dly & 0x1f;
		adj_value = wdqs_dly >> 2;
		wdq_phase = (wdq_phase >> 8) + adj_value;

		if (wdq_phase > 0x1f)
			wdq_phase = 0x1f;

		wdq_phase = wdq_phase << 8;
		io_write(base_addr + DDRC_DXNWDQDLY(i), wdq_phase);

		dm_value = io_read(base_addr + DDRC_DXNWDQBDL2(i));
		if (dm_value >= (adj_value << 2))
			dm_value -= adj_value << 2;
		else
			dm_value = 0;
		io_write(base_addr + DDRC_DXNWDQBDL2(i), dm_value);

		for (j = 0; j < 8; j++) {
			dq_num = start_dq + ((i << 3) + j);
			if (training->wrdq_val[dq_num] > (adj_value << 2))
				training->wrdq_val[dq_num] -= adj_value << 2;
			else
				training->wrdq_val[dq_num] = 0;

			config_ddr_dq(training, training->wrdq_val[dq_num],
				i, j, base_addr, WR_MODE);
		}

		dqs_bdl_enable(base_addr);
	}
}

static void hw_training(unsigned int ddrphy_base, unsigned int chn_num)
{
	//gating init
	unsigned int result;
	io_write(ddrphy_base + 0x21c,0);
	io_write(ddrphy_base + 0x220,0);
	io_write(ddrphy_base + 0x29c,0);
	io_write(ddrphy_base + 0x2a0,0);
	io_write(ddrphy_base + 0x31c,0);
	io_write(ddrphy_base + 0x320,0);
	io_write(ddrphy_base + 0x39c,0);
	io_write(ddrphy_base + 0x3a0,0);

	io_write(ddrphy_base + 0x22c,0);
	io_write(ddrphy_base + 0x2ac,0);
	io_write(ddrphy_base + 0x32c,0);
	io_write(ddrphy_base + 0x3ac,0);
	//hw read data eye training enable
	io_write(ddrphy_base + 0x004,0x1509);

	while ((io_read(ddrphy_base + 0x004) & 0xffff)) {
		//msleep(1);
	}

	if (io_read(ddrphy_base + 0x008)&0x100){
		result = DDR_HRD_ERR(chn_num);
		ddr_training_print(result, 0);
	}
}

static void ddr_rdbdl_adj(struct training_data *training,
	unsigned int ddrphy_base, unsigned int chn_num)
{
#define RDDQS_OFFEST	2

	unsigned int  i,j;
	unsigned int  rdqs_bdl;
	unsigned int  dq_index;
	unsigned int  bdl_offest;
	unsigned int dqs_bound;

	for (i = 0; i < 4; i++){
		dqs_bound = io_read(ddrphy_base + DDRC_DXNRDBOUND(i));
		bdl_offest = (dqs_bound & 0x7f) - ((dqs_bound>>16) & 0x7f);
		bdl_offest = bdl_offest >> 1;
		if (bdl_offest >= RDDQS_OFFEST)
			bdl_offest = bdl_offest - RDDQS_OFFEST;

		rdqs_bdl = 0x7F & io_read(ddrphy_base + DDRC_DXNRDQSDLY(i)) + bdl_offest;
		if (rdqs_bdl >= RDDQS_LEVEL)
		      rdqs_bdl = RDDQS_LEVEL - 1;
		io_write(ddrphy_base + DDRC_DXNRDQSDLY(i),
			rdqs_bdl | (~0x7F & io_read(ddrphy_base + DDRC_DXNRDQSDLY(i))));

		for (j = 0; j < 8; j++) {
			dq_index = (chn_num << 5) + (i << 3) + j;
			training->rddq_val[dq_index] = training->rddq_val[dq_index] + bdl_offest;
			if (training->rddq_val[dq_index] >= RDDQ_LEVEL)
				training->rddq_val[dq_index] = RDDQ_LEVEL - 1;
			config_ddr_dq(training, training->rddq_val[dq_index],
				i, j, ddrphy_base, RD_MODE);
		}

		dqs_bdl_enable(ddrphy_base);
	}
}

unsigned int byte_deskew_judge(struct training_data *training, unsigned int byte_index)
{
	unsigned int left_bound_overnum = 0;
	unsigned int right_bound_overnum = 0;
	unsigned int i;

	for (i = (byte_index << 3); i < ((byte_index + 1) << 3); i++) {
		if (training->rd_bit_result[i] & 0x2)
			left_bound_overnum++;
		if (training->rd_bit_result[i] & 0x40000000)
			right_bound_overnum++;
	}

	/* move the window to right, decrease DQ phase */
	if ((left_bound_overnum >= 4) && (right_bound_overnum < 1))
		return DQPHASE_DECREASE;

	/* move the window to left, increase DQ phase */
	if ((left_bound_overnum < 4) && (right_bound_overnum >= 1))
		return DQPHASE_INCREASE;

	return 0;
}

static void ddr_training_entry(unsigned int chn_num, unsigned int ddrphy_base_addr)
{
	unsigned int i;
	unsigned int mem_width;
	unsigned int byte_width = 0;
	unsigned int ddrt_mem_config;
	unsigned int start_dq;
	unsigned int axi_rgn_map[2];
	unsigned int axi_rgn_attrib[2];
	unsigned int axi_base_addr[2];
	unsigned int axi_rgn_scrmbl[2];
	unsigned int sec_bypass[2];
	unsigned int qosb_buff_byp;
	unsigned int ddrc_cfg_pd[2];
	unsigned int ddrc_cfg_ddrmode[2];
	unsigned int misc[2];
	struct training_data tmp_result;
	struct training_data *training;

	unsigned int byte_deskew_flag,last_byte_deskew_flag;
	unsigned int first_deskew_flag;
	unsigned int rd_dqsbdl, ret = 0;

	training = &tmp_result;
	start_dq = (chn_num << 5);
	training->hw_training_flag = 0;
#ifdef CMD_TRAINING
	training = (struct training_data *)result.data;
	training->flag = DDR_DQSTRAIN;
	if (0 == chn_num)
		uart_early_puts("DDR rank0 training start");
	else if (1 == chn_num)
		uart_early_puts("\r\nDDR rank1 training start");
	else {
		uart_early_puts("\r\nUnknonw channel\r\n");
		return;
	}
#endif

	axi_rgn_map[0] = io_read(REG_MDDRC_BASE + 0x1e0);
	axi_rgn_map[1] = io_read(REG_MDDRC_BASE + 0x1f0);
	io_write(REG_MDDRC_BASE + 0x1e0, 0x1500);
	io_write(REG_MDDRC_BASE + 0x1f0, 0x1520);

	axi_rgn_attrib[0] = io_read(REG_MDDRC_BASE + 0x1e4);
	axi_rgn_attrib[1] = io_read(REG_MDDRC_BASE + 0x1f4);
	io_write(REG_MDDRC_BASE + 0x1e4, 0x71050014);
	io_write(REG_MDDRC_BASE + 0x1f4, 0x71050015);

	axi_rgn_scrmbl[0] = io_read(REG_MDDRC_BASE + 0x1e8);
	axi_rgn_scrmbl[1] = io_read(REG_MDDRC_BASE + 0x1f8);
	io_write(REG_MDDRC_BASE + 0x1e8, 0x0);
	io_write(REG_MDDRC_BASE + 0x1f8, 0x0);

	sec_bypass[0] = io_read(REG_BASE_MDDRC_SEC_4 + 0x4);
	sec_bypass[1] = io_read(REG_BASE_MDDRC_SEC_5 + 0x4);
	io_write(REG_BASE_MDDRC_SEC_4 + 0x4, 0x1);
	io_write(REG_BASE_MDDRC_SEC_5 + 0x4, 0x1);

	qosb_buff_byp = io_read(REG_BASE_MDDRC_QOS + 0x88);
	io_write(REG_BASE_MDDRC_QOS + 0x88, 0x3);

	ddrc_cfg_pd[0] = io_read(REG_MDDRC_DMC0_BASE + 0x28);
	ddrc_cfg_pd[1] = io_read(REG_MDDRC_DMC1_BASE + 0x28);
	io_write(REG_MDDRC_DMC0_BASE + 0x28, ddrc_cfg_pd[0] & 0xfffffffe);
	io_write(REG_MDDRC_DMC1_BASE + 0x28, ddrc_cfg_pd[1] & 0xfffffffe);

	ddrc_cfg_ddrmode[0] = io_read(REG_MDDRC_DMC0_BASE + 0x50);
	ddrc_cfg_ddrmode[1] = io_read(REG_MDDRC_DMC1_BASE + 0x50);
	io_write(REG_MDDRC_DMC0_BASE + 0x50, ddrc_cfg_ddrmode[0] & 0xffffbfff);
	io_write(REG_MDDRC_DMC1_BASE + 0x50, ddrc_cfg_ddrmode[1] & 0xffffbfff);

	misc[0] = io_read(REG_DDRPHY_RNK0_BASE + 0x70);
	misc[1] = io_read(REG_DDRPHY_RNK1_BASE + 0x70);
	io_write(REG_DDRPHY_RNK0_BASE + 0x70, misc[0] & 0xfffeffff);
	io_write(REG_DDRPHY_RNK1_BASE + 0x70, misc[1] & 0xfffeffff);

	axi_base_addr[0] = 0x0;
	axi_base_addr[1] = 0x20000000;

	//choose mddrc chn and save ddr register
	if (chn_num == 0) {
		// DDRT  init
		mem_width = (io_read(REG_MDDRC_DMC0_BASE + 0x50) & 0x00000030);
		training->ddrt_reversed_data = io_read(REG_GEN3_BASE);
	}
	else if (chn_num == 1) {
		// DDRT  init
		mem_width = (io_read(REG_MDDRC_DMC1_BASE + 0x50) & 0x00000030);
		training->ddrt_reversed_data = io_read(REG_GEN4_BASE);
	}
	byte_width = (mem_width >> 3);
	ddrt_mem_config = (((mem_width >> 4) - 1) << 12) + (0x152 & 0xfff);
	io_write(REG_DDRT_BASE + DDRT_MEM_CONFIG, ddrt_mem_config);
	io_write(REG_DDRT_BASE + 0x1c, axi_base_addr[chn_num]);
	io_write(REG_DDRT_BASE + 0x08, 0x4f);
	io_write(REG_DDRT_BASE + 0x14, 0xffffffff);
	io_write(REG_DDRT_BASE + DDRT_LOOP_NUM, DDRT_LOOP_NUM_VAL);
	io_write(REG_DDRT_BASE + DDRT_ADDR, axi_base_addr[chn_num]);
	io_write(REG_DDRT_BASE + DDRT_BURST_NUM, DDRT_BURST_NUM_VAL);

	read_config_ddr(training, ddrphy_base_addr, start_dq, byte_width);

	/* only adjust in boot training */
	ret = io_read(SW_TRAINING_REG);
	if (0 == chn_num && !(ret & SWL_RNK0_MASK)) {
		ddr_wl_adj(training, ddrphy_base_addr, start_dq, byte_width);
		io_write(SW_TRAINING_REG, (ret | SWL_RNK0_MASK));
	}
	else if (1 == chn_num && !(ret & SWL_RNK1_MASK)) {
		ddr_wl_adj(training, ddrphy_base_addr, start_dq, byte_width);
		io_write(SW_TRAINING_REG, (ret | SWL_RNK1_MASK));
	}
	ret = 0;

#ifdef CMD_TRAINING
	uart_early_puts("\r\nwrite data eye training start... ...\r\n");
#endif
	for (i = 0; i < byte_width; i++)
		if (!training->hw_training_flag)
			ddr_byte_deskew(training, i, start_dq, ddrphy_base_addr, WR_MODE,chn_num);  //fine deskew

#ifdef CMD_TRAINING
       uart_early_puts("\r\nread data eye training start... ...\r\n");
#endif
	//read deskew
	for (i = 0; i < byte_width; i++)
		if (!training->hw_training_flag)
			ddr_byte_deskew(training, i, start_dq, ddrphy_base_addr, RD_MODE,chn_num);

	if (training->hw_training_flag) {
		training->hw_training_flag = 0;
		io_write(DDR_TRAINING_STAT_REG, 0);
		hw_training(ddrphy_base_addr, chn_num);
		read_config_ddr(training, ddrphy_base_addr, start_dq, byte_width);

		/* write data eye training */
		for (i = 0; i < byte_width; i++)
			ret = ddr_byte_deskew(training, i, start_dq, ddrphy_base_addr, WR_MODE,chn_num);  //write deskew

		/* read data eye training */
		if (!(io_read(SW_TRAINING_REG) & HW_RDDESKEW_MASK))
			ddr_rdbdl_adj(training, ddrphy_base_addr, chn_num);

		last_byte_deskew_flag = 0;
		first_deskew_flag = 0;
		for (i = 0; i < byte_width; i++) {
			ret = ddr_byte_deskew(training, i, start_dq, ddrphy_base_addr, RD_MODE,chn_num);
			byte_deskew_flag = byte_deskew_judge(training, i);

			/* try current byte until ok */
			if ((!first_deskew_flag && byte_deskew_flag) ||
				(first_deskew_flag && (byte_deskew_flag == last_byte_deskew_flag))) {
				last_byte_deskew_flag = byte_deskew_flag;
				first_deskew_flag = 1;
				rd_dqsbdl  = 0x7F & io_read(ddrphy_base_addr + DDRC_DXNRDQSDLY(i));
				if ((byte_deskew_flag == DQPHASE_DECREASE) && (rd_dqsbdl < (RDDQS_LEVEL-4))) {
					rd_dqsbdl += 4;
					goto next;
				}

				if ((byte_deskew_flag == DQPHASE_INCREASE) && (rd_dqsbdl >= 4)) {
					rd_dqsbdl -= 4;
					goto next;
				}
			}
			last_byte_deskew_flag = 0;
			first_deskew_flag = 0;
			continue;
next:
			io_write(ddrphy_base_addr + DDRC_DXNRDQSDLY(i), 
				rd_dqsbdl | (~0x7F & io_read(ddrphy_base_addr + DDRC_DXNRDQSDLY(i))));
			dqs_bdl_enable(ddrphy_base_addr);
			i--;
		}
	}

	if (ret)
		ddr_training_print(ret&0xffff, ret>>16);

#ifdef CMD_TRAINING
	save_training_result(chn_num);
#endif

	io_write(REG_MDDRC_BASE + 0x1e0, axi_rgn_map[0]);
	io_write(REG_MDDRC_BASE + 0x1f0, axi_rgn_map[1]);
	io_write(REG_MDDRC_BASE + 0x1e4, axi_rgn_attrib[0]);
	io_write(REG_MDDRC_BASE + 0x1f4, axi_rgn_attrib[1]);
	io_write(REG_MDDRC_BASE + 0x1e8, axi_rgn_scrmbl[0]);
	io_write(REG_MDDRC_BASE + 0x1f8, axi_rgn_scrmbl[1]);
	io_write(REG_BASE_MDDRC_SEC_4 + 0x4, sec_bypass[0]);
	io_write(REG_BASE_MDDRC_SEC_5 + 0x4, sec_bypass[1]);
	io_write(REG_BASE_MDDRC_QOS + 0x88, qosb_buff_byp);
	io_write(REG_MDDRC_DMC0_BASE + 0x28, ddrc_cfg_pd[0]);
	io_write(REG_MDDRC_DMC1_BASE + 0x28, ddrc_cfg_pd[1]);
	io_write(REG_MDDRC_DMC0_BASE + 0x50, ddrc_cfg_ddrmode[0]);
	io_write(REG_MDDRC_DMC1_BASE + 0x50, ddrc_cfg_ddrmode[1]);
	io_write(REG_DDRPHY_RNK0_BASE + 0x70, misc[0]);
	io_write(REG_DDRPHY_RNK1_BASE + 0x70, misc[1]);
}

/*****************************************************************************/
/* this function will set value to ddr register. */
int ddr_dataeye_training()
{
	unsigned int ctrl;

	io_write(DDR_TRAINING_STAT_REG, 0);

	ctrl = io_read(REG_SYSCTRL_BASE + 0xd0);
	if (!(ctrl & SDET_RNK0_MASK))
		ddr_training_entry(0x0, REG_DDRPHY_RNK0_BASE);
	if (!(ctrl & SDET_RNK1_MASK))
		ddr_training_entry(0x1, REG_DDRPHY_RNK1_BASE);

	return io_read(DDR_TRAINING_STAT_REG);
}

/*****************************************************************************/
