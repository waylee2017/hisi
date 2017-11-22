/*
 *  this file only for hi3712v100
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

static void config_ddr(const struct training_data *);
static void read_config_ddr(struct training_data *);
static void set_bestbyte_skew(struct training_data *training,
			      unsigned int byte, unsigned int  rd_wr);

static void bitset_dq(unsigned int *, unsigned int ,
		      unsigned int , unsigned int );
static unsigned  int set_dqs(unsigned int , unsigned int ,
			     unsigned int , unsigned int );
static void get_byte_bestpara(struct training_data *,
			      unsigned int ,unsigned int );
static unsigned int calculate_para(unsigned int , unsigned int  );
static unsigned  int  ddr_level(unsigned int , unsigned int );
static void level_spilt(unsigned int , unsigned int * , unsigned int *);
static void byteset_dq(unsigned int *, unsigned int , unsigned int );

static void mutibyte_prebit_travel_rddqs(struct training_data *training,
					 unsigned int bit);
static void mutibyte_prebit_travel_rddq(struct training_data *training,
					unsigned int bit);
#ifdef WRITE_DESKEW
static void mutibyte_prebit_travel_wrdqs(struct training_data *training,
					 unsigned int bit);
static void mutibyte_prebit_travel_wrdq(struct training_data *training,
					unsigned int bit);
#endif
static unsigned int mutibyte_check_multi_ssn(const struct
					     training_data *training,unsigned int index);

static unsigned int prebit_addrtrain(struct training_data *training);
static unsigned int addr_bit_config(unsigned int reg_addr, unsigned int val,
				    unsigned int num);
static unsigned int addr_reg_config(unsigned int val);
static unsigned int addr_reg_sel(unsigned int sel);
static void set_bestaddr_skew(struct training_data *training);
static int check_ssn_addr_ddrt(unsigned int wr_mode);
static void ssn_addr_ddrt_init(int mode, int code_stream,
			       unsigned long send_len, unsigned long addr,
			       unsigned int reversed_bit);

void memcpy_soc(unsigned int *aim, const unsigned int *src,
				unsigned int size);
void memset_soc(void* s, char c, int count);

#ifdef SSN_DDRT
static void ssn_ddrt_init(int mode, int code_stream, unsigned long burst_num,
			  unsigned long send_len, unsigned long addr,
			  unsigned int change_bit);
static unsigned int ddrt_dq_overflowing(unsigned int count,
				        unsigned int offs8);
static unsigned int ddrt_pressure(int ddrt_mode, int ddrt_code_stream,
				  unsigned long burst_num, unsigned long sendlen,
				  unsigned int ddrt_change_bit);
#endif /* SSN_DDRT */

/*****************************************************************************/
static void save_training_result(void)
{
	result.count = 18;

	result.reg[0].reg = (REG_DDRC_BASE + DDRC_WRDQSKEW(0));
	result.reg[1].reg = (REG_DDRC_BASE + DDRC_WRDQSKEW(1));
	result.reg[2].reg= (REG_DDRC_BASE + DDRC_WRDQSKEW(2));
	result.reg[3].reg = (REG_DDRC_BASE + DDRC_WRDQSKEW(3));
	result.reg[4].reg= (REG_DDRC_BASE + DDRC_WRDQSKEW(4));
	result.reg[5].reg = (REG_DDRC_BASE + DDRC_WRDQSKEW(5));
	result.reg[6].reg = (REG_DDRC_BASE + DDRC_WRDQSKEW(6));
	result.reg[7].reg = (REG_DDRC_BASE + DDRC_WRDQSKEW(7));

	result.reg[8].reg = (REG_DDRC_BASE + DDRC_RDDQSKEW(0));
	result.reg[9].reg = (REG_DDRC_BASE + DDRC_RDDQSKEW(1));
	result.reg[10].reg = (REG_DDRC_BASE + DDRC_RDDQSKEW(2));
	result.reg[11].reg = (REG_DDRC_BASE + DDRC_RDDQSKEW(3));
	result.reg[12].reg = (REG_DDRC_BASE + DDRC_RDDQSKEW(4));
	result.reg[13].reg = (REG_DDRC_BASE + DDRC_RDDQSKEW(5));
	result.reg[14].reg = (REG_DDRC_BASE + DDRC_RDDQSKEW(6));
	result.reg[15].reg = (REG_DDRC_BASE + DDRC_RDDQSKEW(7));

	result.reg[16].reg = (REG_DDRC_BASE + DDRC_WRDQSSKEW);
	result.reg[17].reg = (REG_DDRC_BASE + DDRC_RDDQSSKEW);
}
/*****************************************************************************/

static void ddr_training_entry(unsigned int sta, unsigned int len)
{
	unsigned int start  = sta;
	unsigned int length = len;

	struct training_data tmp_result;
	struct training_data *training  = &tmp_result;

	unsigned int i, j;
	unsigned int tmp,tmp2;

	#ifdef DDRT_TIME
	/*** WatchDog count time ***/
	io_write(WATCH_DOG + WATCH_DOG_LOCK, 0x1acce551);
	io_write(WATCH_DOG + WATCH_DOG_LOAD, 0xffffffff);
	io_write(WATCH_DOG + WATCH_DOG_CONTROL, 0x3);
	#endif /* DDRT_TIME */

	training->rd_address = start;
	training->wr_address = start + length/2;

	/*init result*/
	for (i = 0; i < BITWIDTH; i++) {
		training->prebit_wr_result[i] = 0;
		training->prebit_wr_best[i] = 0;
		training->prebit_rd_result[i] = 0;
		training->prebit_rd_best[i] = 0;
	}

	training->level_data[0] = DQ_DATA_LEVEL0;
	training->level_data[1] = DQ_DATA_LEVEL1;
	training->level_data[2] = DQ_DATA_LEVEL2;
	training->level_data[3] = DQ_DATA_LEVEL3;
	training->level_data[4] = DQ_DATA_LEVEL4;
	training->level_data[5] = DQ_DATA_LEVEL5;
	training->level_data[6] = DQ_DATA_LEVEL6;
	training->level_data[7] = DQ_DATA_LEVEL7;

	read_config_ddr(training);	/* read default configure*/

#ifdef WRITE_DESKEW
	for (j=0; j<8; j++) {
		/*
		* write DQS set 0  , training  write DQ
		*/
		tmp = training->level_data[0];
		for( i = 0; i < BYTEWIDTH; i++)
			training->wrdqs_val =
				set_dqs(training->wrdqs_val, tmp, i, 0);

		mutibyte_prebit_travel_wrdq(training, j);

		/*
		* write DQ set 0  , training  write DQS
		*/
		tmp = training->level_data[0];
		for( i = 0; i < BYTEWIDTH; i++)
			bitset_dq(training->wrdq_val, tmp, j, i);

		mutibyte_prebit_travel_wrdqs(training , j);

		tmp = training->level_data[0];
		for( i = 0; i < BYTEWIDTH; i++) {
			training->wrdqs_val =
				set_dqs(training->wrdqs_val, tmp, i, 0);
			byteset_dq(training->wrdq_val, tmp, i);
		}
		uart_early_puts(".");
	}

	for (i = 0; i < BYTEWIDTH; i++) {
		get_byte_bestpara(training, i,0);
		set_bestbyte_skew(training, i,0);
	}
	config_ddr(training);
#endif

#ifdef READ_DESKEW
	for (j=0;  j<8; j++) { /*bit  num*/
		/*
		* read DQS set 0  , training  read DQ
		*/
		tmp = training->level_data[0];

		for ( i = 0; i < BYTEWIDTH; i++)
			training->rddqs_val =
				set_dqs(training->rddqs_val, tmp, i, 0);

		mutibyte_prebit_travel_rddq(training, j);

		/*
		* read DQ set 0  , training  read DQS
		*/
		mutibyte_prebit_travel_rddqs(training, j);

		/* set read DQS and DQ default vlaue  0*/
		tmp = training->level_data[0];
		for ( i = 0; i < BYTEWIDTH; i++) {
			training->rddqs_val =
				set_dqs(training->rddqs_val, tmp, i, 0);
			byteset_dq(training->rddq_val, tmp, i);
		}
		uart_early_puts(".");
	}
#if 0
	for (i=0; i<BITWIDTH; i++) {
		training->prebit_rd_result_dll2[i] =
			training->prebit_rd_result[i];
		training->prebit_rd_result[i] =
			dll_repair2(training->prebit_rd_result_dll2[i]);
	}
#endif
	for (i=0; i < BYTEWIDTH; i++) {
		get_byte_bestpara(training, i,1);
		set_bestbyte_skew(training, i,1);
	}
#endif

	training->flag = DDR_DQSTRAIN;
	config_ddr(training);
	memcpy_soc((unsigned int*)result.data,
			(unsigned int*)training, sizeof(*training));
	save_training_result();

#ifdef DDRT_TIME
	tmp2 = io_read(WATCH_DOG + WATCH_DOG_VALUE);
	tmp2 = 0xffffffff - tmp2;
	uart_early_puts("\r\n ddrt_time=");
	uart_early_put_hex(tmp2);
#endif /* DDRT_TIME */
}

/*****************************************************************************/
/*
 *  addr bit training
 */
static void ddr_addrtrain_entry(void)
{
	struct training_data tmp_result;
	struct training_data *training  = &tmp_result;

	prebit_addrtrain(training);

	uart_early_puts("\r\n training->flag=");
	uart_early_put_hex(training->flag);
	memcpy_soc((unsigned int*)result.data,
		(unsigned int*)training, sizeof(*training));
}
static unsigned int prebit_addrtrain(struct training_data *training)
{
	unsigned int i,j;
	unsigned int tmp;
	unsigned int level;
	unsigned int ssn_result;
	unsigned int addr_reg, addr_sel, addr_tmp;

	training->flag = DDR_ADDRTRAIN;
	for (i = 0; i < 19; i++) {
		training->prebit_addr_result[i] = 0;
		training->prebit_addr_best[i] = 0;
	}

	for (i=0; i<19; i++) { 			/*i  address number */
		addr_tmp = addr_reg_sel(i);
		addr_sel = addr_tmp >> 31;
		addr_reg = addr_tmp & 0x7FFFFFFF;

		 /*set CLK  deskew=0 , change ADDR'*/
		io_write(REG_DDRC_BASE + DDRC_PHY_REG54, 0x0);

		for (j=0; j<8; j++) {   		/* j  deskew level*/
			/*add addr_reg and add_sel  */
			tmp = training->level_data[0];
			addr_bit_config(addr_reg, tmp, addr_sel);

			/*first wirte data use */
			ssn_result = check_ssn_addr_ddrt(ONLY_WRITE_MODE);
			level = ddr_level(0, j);
			tmp = training->level_data[j];
			addr_bit_config(addr_reg, tmp, addr_sel );

			ssn_result =  check_ssn_addr_ddrt(ONLY_READ_MODE);
			if (!ssn_result)
				training->prebit_addr_result[i] |= 1<< level;
		}

 		/*set ADDR  deskew=0 , change CLK'*/
		for (j=0; j<8; j++) {
			level = ddr_level(j, 0);
			/*add addr_reg and add_sel  */
			tmp = training->level_data[0];
			addr_reg_config(tmp);

			/*check_ssn_addr_ddrt(ONLY_WRITE_MODE);*/ /*first wirte data use */
			tmp = training->level_data[j];
			addr_reg_config(tmp);
			tmp = training->level_data[0];
			addr_bit_config(addr_reg, tmp, addr_sel );
			ssn_result =  check_ssn_addr_ddrt(ONLY_READ_MODE);

			if (!ssn_result)
				training->prebit_addr_result[i] |= 1<< level;

		}
		training->prebit_addr_best[i] = calculate_para(TRAINING_WR_CNT,
			training->prebit_addr_result[i]);
	}

	set_bestaddr_skew(training);

	return 0;
}

/******************************************************************************/
static unsigned int addr_bit_config(unsigned int reg_addr, unsigned int val,
				    unsigned int num)
{
	unsigned int addr_val;

	addr_val = io_read(REG_DDRC_BASE + reg_addr);
	if (num == 0) {
		val |= 0xfffffff8;
		addr_val &= 0xfffffff8 ;
		addr_val |= val;
	} else if (num == 1) {
		val |= 0xffffffc7;
		addr_val &= 0xffffffc7;
		addr_val |= val;
	} else
		addr_val = val;

	io_write(REG_DDRC_BASE + reg_addr, addr_val);
	return 0;
}

/*****************************************************************************/
static unsigned int addr_reg_config(unsigned int val)
{
	addr_bit_config(DDRC_PHY_REG30, val, 2);  	/*A1,A0 de-skew 5:3 2:0*/
	addr_bit_config(DDRC_PHY_REG31, val, 2); 	 /*A3,A2 de-skew 5:3 2:0*/
	addr_bit_config(DDRC_PHY_REG32, val, 2);	/*A5,A4 de-skew 5:3 2:0*/
	addr_bit_config(DDRC_PHY_REG33, val, 2);	/*A7,A6 de-skew 5:3 2:0*/
	addr_bit_config(DDRC_PHY_REG34, val, 2);	/*A9,A8 de-skew 5:3 2:0*/
	addr_bit_config(DDRC_PHY_REG35, val, 2);  	/*A11,A10 de-skew 5:3 2:0*/
	addr_bit_config(DDRC_PHY_REG36, val, 2);	/*A13,A12 de-skew 5:3 2:0*/
	addr_bit_config(DDRC_PHY_REG37, val, 2);	/*B1,B0 de-skew 5:3 2:0*/
	addr_bit_config(DDRC_PHY_REG38, val, 2);	/*RAS,B2 de-skew 5:3 2:0*/
	addr_bit_config(DDRC_PHY_REG53, val, 0);	/*A14 de-skew*/
	addr_bit_config(DDRC_PHY_REG54, val, 2);	/*CKB0,CK0 de-skew 5:3 2:0*/
	addr_bit_config(DDRC_PHY_REG40, val, 2);	/*CKB1,CK1 de-skew 5:3 2:0*/
	return 0;

}
/*****************************************************************************/
static unsigned int addr_reg_sel(unsigned int sel)
{
	unsigned int addr_reg = 0;
	unsigned int addr_sel = 0;

	switch (sel)
	{
	case 0: addr_reg = DDRC_PHY_REG30;//a0
		    addr_sel = 0;
			break;
	case 1: addr_reg = DDRC_PHY_REG30;//a1
		    addr_sel = 1;
			break;
	case 2: addr_reg = DDRC_PHY_REG31;//a2
		    addr_sel = 0;
			break;
	case 3: addr_reg = DDRC_PHY_REG31;//a3
		    addr_sel = 1;
			break;
	case 4: addr_reg = DDRC_PHY_REG32;//a4
			addr_sel = 0;
			break;
	case 5: addr_reg = DDRC_PHY_REG32;//a5
			addr_sel = 1;
			break;
	case 6: addr_reg = DDRC_PHY_REG33;//a6
			addr_sel = 0;
			break;
	case 7: addr_reg = DDRC_PHY_REG33;//a7
			addr_sel = 1;
			break;
	case 8: addr_reg = DDRC_PHY_REG34;//a8
			addr_sel = 0;
			break;
	case 9: addr_reg = DDRC_PHY_REG34;//a9
			addr_sel = 1;
			break;
	case 10:addr_reg = DDRC_PHY_REG35;//a10
			addr_sel = 0;
			break;
	case 11:addr_reg = DDRC_PHY_REG35;//a11
			addr_sel = 1;
			break;
	case 12:addr_reg = DDRC_PHY_REG36;//a12
			addr_sel = 0;
			break;
	case 13:addr_reg = DDRC_PHY_REG36;//a13
			addr_sel = 1;
			break;
	case 14:addr_reg = DDRC_PHY_REG37;//b0
			addr_sel = 0;
			break;
	case 15:addr_reg = DDRC_PHY_REG37;//b1
			addr_sel = 1;
			break;
	case 16:addr_reg = DDRC_PHY_REG38;//b2
			addr_sel = 0;
		    break;
	case 17:addr_reg = DDRC_PHY_REG38;//ras
			addr_sel = 1;
			break;
	case 18:addr_reg = DDRC_PHY_REG53;//a14
			addr_sel = 0;
			break;
    default:
			addr_reg = addr_reg | (addr_sel<<31);
	}

	return addr_reg;
}
/*****************************************************************************/
 /* save the result of training at flash*/
/*****************************************************************************/

static void read_config_ddr(struct training_data *training)
{

	training->wrdq_val[0] = io_read(REG_DDRC_BASE + DDRC_WRDQSKEW(0));
	training->wrdq_val[1] = io_read(REG_DDRC_BASE + DDRC_WRDQSKEW(1));
	training->wrdq_val[2] = io_read(REG_DDRC_BASE + DDRC_WRDQSKEW(2));
	training->wrdq_val[3] = io_read(REG_DDRC_BASE + DDRC_WRDQSKEW(3));
	training->wrdq_val[4] = io_read(REG_DDRC_BASE + DDRC_WRDQSKEW(4));
	training->wrdq_val[5] = io_read(REG_DDRC_BASE + DDRC_WRDQSKEW(5));
	training->wrdq_val[6] = io_read(REG_DDRC_BASE + DDRC_WRDQSKEW(6));
	training->wrdq_val[7] = io_read(REG_DDRC_BASE + DDRC_WRDQSKEW(7));

	training->rddq_val[0] = io_read(REG_DDRC_BASE + DDRC_RDDQSKEW(0));
	training->rddq_val[1] = io_read(REG_DDRC_BASE + DDRC_RDDQSKEW(1));
	training->rddq_val[2] = io_read(REG_DDRC_BASE + DDRC_RDDQSKEW(2));
	training->rddq_val[3] = io_read(REG_DDRC_BASE + DDRC_RDDQSKEW(3));
	training->rddq_val[4] = io_read(REG_DDRC_BASE + DDRC_RDDQSKEW(4));
	training->rddq_val[5] = io_read(REG_DDRC_BASE + DDRC_RDDQSKEW(5));
	training->rddq_val[6] = io_read(REG_DDRC_BASE + DDRC_RDDQSKEW(6));
	training->rddq_val[7] = io_read(REG_DDRC_BASE + DDRC_RDDQSKEW(7));

	training->wrdqs_val = io_read(REG_DDRC_BASE + DDRC_WRDQSSKEW);
	training->rddqs_val = io_read(REG_DDRC_BASE + DDRC_RDDQSSKEW);
}

/*****************************************************************************/
static void config_ddr(const struct training_data *training)
{
	io_write(REG_DDRC_BASE + DDRC_WRDQSKEW(0), training->wrdq_val[0]);
	io_write(REG_DDRC_BASE + DDRC_WRDQSKEW(1), training->wrdq_val[1]);
	io_write(REG_DDRC_BASE + DDRC_WRDQSKEW(2), training->wrdq_val[2]);
	io_write(REG_DDRC_BASE + DDRC_WRDQSKEW(3), training->wrdq_val[3]);
	io_write(REG_DDRC_BASE + DDRC_WRDQSKEW(4), training->wrdq_val[4]);
	io_write(REG_DDRC_BASE + DDRC_WRDQSKEW(5), training->wrdq_val[5]);
	io_write(REG_DDRC_BASE + DDRC_WRDQSKEW(6), training->wrdq_val[6]);
	io_write(REG_DDRC_BASE + DDRC_WRDQSKEW(7), training->wrdq_val[7]);

	io_write(REG_DDRC_BASE + DDRC_RDDQSKEW(0), training->rddq_val[0]);
	io_write(REG_DDRC_BASE + DDRC_RDDQSKEW(1), training->rddq_val[1]);
	io_write(REG_DDRC_BASE + DDRC_RDDQSKEW(2), training->rddq_val[2]);
	io_write(REG_DDRC_BASE + DDRC_RDDQSKEW(3), training->rddq_val[3]);
	io_write(REG_DDRC_BASE + DDRC_RDDQSKEW(4), training->rddq_val[4]);
	io_write(REG_DDRC_BASE + DDRC_RDDQSKEW(5), training->rddq_val[5]);
	io_write(REG_DDRC_BASE + DDRC_RDDQSKEW(6), training->rddq_val[6]);
	io_write(REG_DDRC_BASE + DDRC_RDDQSKEW(7), training->rddq_val[7]);

	io_write(REG_DDRC_BASE + DDRC_WRDQSSKEW, training->wrdqs_val);
	io_write(REG_DDRC_BASE + DDRC_RDDQSSKEW, training->rddqs_val);
}

/*****************************************************************************/
static void bitset_dq(unsigned int *dq, unsigned int val,
		      unsigned int bitnum, unsigned int bytenum)
{
	unsigned int i,j;

	i = bitnum & 0x1;
	j = bytenum*4 + (bitnum>>1);

	if (i==0)
		dq[j] = (dq[j]&0xfffffff8) | (val&0x7);
	else
		dq[j] = (dq[j]&0xffffffc7) | (val&0x38);

}
/*****************************************************************************/
static void byteset_dq(unsigned int *dq, unsigned int val,
		       unsigned int bytenum)
{
		dq[bytenum*4+0] = val;
		dq[bytenum*4+1] = val;
		dq[bytenum*4+2] = val;
		dq[bytenum*4+3] = val;

}
/*****************************************************************************/
static unsigned int set_dqs(unsigned int dqs, unsigned int val,
			    unsigned int bytenum, unsigned int bytewidth)
{
	if (bytewidth) {
		dqs = val;
	} else {
		switch (bytenum) {
		case 0:
			dqs = (dqs & 0xfffffff8) |(val & 0x7);
			break;
		case 1:
			dqs = (dqs & 0xffffffc7) |(val & 0x38);
			break;
		default:
			dqs = (dqs &0xfffffff8)|(val & 0x7);
			break;
		}
	}
	return dqs;
}

/*****************************************************************************/
static void set_bestaddr_skew(struct training_data *training)
{
	unsigned int tmp;
	unsigned int i;
	unsigned int max_clk, max_addr, max_result = 0;
	unsigned int clk, addr;
	unsigned int addr_tmp, addr_reg;
	/* find  max_result   for  addr  */
	for (i = 0; i < 19; i++) {
		if (i == 0) {
				tmp = training->prebit_addr_best[i] & 0xffff;
				max_result = tmp;
			} else {
				tmp = training->prebit_addr_best[i]	& 0xffff;
				if (max_result <= tmp)
					max_result = tmp;
			}
	}
	level_spilt(max_result, &max_clk, &max_addr);
	/*set  max_dqs  in wr_dqsval*/

	/*CKB0,CK0 de-skew 5:3 2:0*/
	addr_bit_config(DDRC_PHY_REG54, training->level_data[max_clk], 2);
	/*CKB1,CK1 de-skew 5:3 2:0*/
	addr_bit_config(DDRC_PHY_REG40, training->level_data[max_clk], 2);

	for (i = 0; i < 19; i++) {
		addr_tmp = addr_reg_sel(i);
		addr_reg = addr_tmp & 0x7FFFFFFF;

		tmp = training->prebit_addr_best[i] & 0xffff;
		level_spilt(tmp, &clk, &addr);
		if (max_clk != clk) {
			addr = addr + (max_result - tmp);
			if (addr > 7) {
				addr =7;
			}
		}
		/*rebuilt addr level*/
		addr_bit_config(addr_reg, training->level_data[addr] , addr_reg);
	}

}
/*****************************************************************************/
static void set_bestbyte_skew(struct training_data *training,
			      unsigned int byte, unsigned int  rd_wr)
{
	unsigned int tmp;
	unsigned int i;
	unsigned int max_dqs, max_dq, max_result = 0;
	unsigned int dqs, dq;

	/* find wr max_result   for  byte  */
	if (rd_wr==0) {
		for (i=0; i<8; i++) {
			if (i==0) {
				tmp = training->prebit_wr_best[byte*8 + i]
					& 0xffff;
				max_result = tmp;
			} else {
				tmp = training->prebit_wr_best[byte*8 + i]
					& 0xffff;
				if(max_result <= tmp )
					max_result = tmp;
			}
		}

		/*find byte wr max_dqs*/
		level_spilt(max_result, &max_dqs, &max_dq);

		/*set  max_dqs  in wr_dqsval*/
		training->wrdqs_val = set_dqs(training->wrdqs_val,
				training->level_data[max_dqs],byte, 0);

		for (i=0; i<8; i++) {
			tmp = training->prebit_wr_best[byte*8 + i] & 0xffff;
			level_spilt(tmp, &dqs, &dq);
			if (max_dqs != dqs) {
				dq = dq + (max_result - tmp);
				if (dq > 7) {
					dq =7;
				}
			}
			/*rebuilt wr DQ level*/
			bitset_dq(training->wrdq_val, training->level_data[dq],
					i, byte); /*set bit best  dq*/
		}
	} else {
		/*read dqs  and dq  set*/
		for(i=0; i<8; i++){
			if (i==0) {
				tmp = training->prebit_rd_best[byte*8 + i]
					& 0xffff;
				max_result = tmp;
			}
			else {
				tmp = training->prebit_rd_best[byte*8 + i]
					& 0xffff;
				if(max_result <= tmp )
					max_result = tmp;
			}
		}

		/*find byte rd max_dqs*/
		level_spilt(max_result, &max_dqs, &max_dq);
		/*set  max_dqs  in rd_dqsval*/
		training->rddqs_val = set_dqs(training->rddqs_val,
				training->level_data[max_dqs],byte, 0);

		for (i=0; i<8; i++) {
			tmp = training->prebit_rd_best[byte*8 + i] & 0xffff;
			level_spilt(tmp, &dqs, &dq);
			if (max_dqs != dqs) {
				dq = dq + (max_result-tmp);
				if (dq > 7) {
					dq =7;
				}
			}
			/*rebuilt rd DQ level*/
			bitset_dq(training->rddq_val, training->level_data[dq],
					i, byte);
		}
	}

}
/*****************************************************************************/
#if 0
static unsigned  int dll_repair2(unsigned int  dll2)
{
	unsigned int output;
	unsigned int i,bitnum =0 ;
	unsigned int tmp;
	for (i=8;i<16;i++) {
		tmp = dll2 >> i;
		tmp = tmp & 1;
		if (tmp == 0) {
			bitnum = i-1;
			break;
		}
	}
	tmp = 0;
	for (i=0; i<bitnum; i++) {
		tmp |= 1<<i;
	}
	output = dll2 & tmp;
	return output;
}
#endif
/*****************************************************************************/
static void mutibyte_prebit_travel_rddqs(struct training_data *training,
					 unsigned int bit)
{
	unsigned int i , j;
	unsigned int tmp;
	unsigned int bit_num;
	unsigned int level;
	unsigned int mutibyte_check_result = 0;
#ifdef TRAINING_DEBUG
	uart_early_puts("\r\n rddqs_deskew=");
	uart_early_put_hex(bit);
#endif

	for (i = 1; i < 8; i++)
	{
		tmp =  training->level_data[i];

		for (j = 0; j < BYTEWIDTH; j++)
		{
			byteset_dq(training->rddq_val, tmp, j);
			training->rddqs_val = set_dqs(training->rddqs_val,
					tmp, j, 0);
		}

		tmp =  training->level_data[0];
		for (j = 0; j < BYTEWIDTH; j++)
			bitset_dq(training->rddq_val, tmp, bit,  j);

		level = ddr_level(i, 0);
		config_ddr(training);
#ifdef TRAINING_DEBUG
		read_config_ddr(training);
		uart_early_puts("\r\n DDRC_RDDQSKEW(0)=");
		uart_early_put_hex(training->rddq_val[0]);
		uart_early_puts("\r\n DDRC_RDDQSKEW(1)=");
		uart_early_put_hex(training->rddq_val[1]);
		uart_early_puts("\r\n DDRC_RDDQSKEW(2)=");
		uart_early_put_hex(training->rddq_val[2]);
		uart_early_puts("\r\n DDRC_RDDQSKEW(3)=");
		uart_early_put_hex(training->rddq_val[3]);
		uart_early_puts("\r\n DDRC_RDDQSKEW(4)=");
		uart_early_put_hex(training->rddq_val[4]);
		uart_early_puts("\r\n DDRC_RDDQSKEW(5)=");
		uart_early_put_hex(training->rddq_val[5]);
		uart_early_puts("\r\n DDRC_RDDQSKEW(6)=");
		uart_early_put_hex(training->rddq_val[6]);
		uart_early_puts("\r\n DDRC_RDDQSKEW(7)=");
		uart_early_put_hex(training->rddq_val[7]);
		uart_early_puts("\r\n DDRC_RDDQSSKEW=");
		uart_early_put_hex(training->rddqs_val);
#endif

		mutibyte_check_result = mutibyte_check_multi_ssn(training, bit);
		bit_num = bit; /* low byte */
		if (mutibyte_check_result&0x1)
			training->prebit_rd_result[bit_num] |= (1<< level);
		bit_num = bit + 8; /* high byte */
		if (mutibyte_check_result&0x2)
			training->prebit_rd_result[bit_num] |= (1<< level);

		if (mutibyte_check_result == 0)
			break;

	}
}
/*****************************************************************************/
#ifdef WRITE_DESKEW
static void mutibyte_prebit_travel_wrdqs(struct training_data *training,
					 unsigned int bit)
{
	unsigned int i, j;
	unsigned int tmp;
	unsigned int bit_num;
	unsigned int level;
	unsigned int mutibyte_check_result = 0;

	for (i = 1; i < 8; i++)
	{
		tmp = training->level_data[i];
		for ( j = 0; j < BYTEWIDTH; j++)
		{
			byteset_dq(training->wrdq_val, tmp, j);
			training->wrdqs_val = set_dqs(training->wrdqs_val,
					tmp, j, 0);
		}

		tmp =  training->level_data[0];
		for ( j = 0; j < BYTEWIDTH; j++)
			bitset_dq(training->wrdq_val, tmp, bit,  j);

		level = ddr_level(i, 0);
		config_ddr(training);

		mutibyte_check_result = mutibyte_check_multi_ssn(training, bit);
		bit_num = bit; /* low byte */
		if (mutibyte_check_result&0x1)
			training->prebit_wr_result[bit_num] |= (1<< level);
		bit_num = bit + 8; /* high byte */
		if (mutibyte_check_result&0x2)
			training->prebit_wr_result[bit_num] |= (1<< level);

		if (mutibyte_check_result == 0)
			break;
	}
}
#endif
/*****************************************************************************/
static void mutibyte_prebit_travel_rddq(struct training_data *training,
					unsigned int bit)
{
	unsigned int i, j;
	unsigned int tmp;
	unsigned int bit_num;
	unsigned int level;
	unsigned int mutibyte_check_result = 0;

#ifdef TRAINING_DEBUG
	uart_early_puts("\r\n rddq_deskew=");
	uart_early_put_hex(bit);
#endif

	for (i = 0; i < 8; i++)
	{
		tmp =  training->level_data[i];

		for ( j = 0; j < BYTEWIDTH; j++)
			bitset_dq(training->rddq_val, tmp, bit, j);

		level = ddr_level(0, i);
		config_ddr(training);
#ifdef TRAINING_DEBUG
		read_config_ddr(training);
		uart_early_puts("\r\n DDRC_RDDQSKEW(0)=");
		uart_early_put_hex(training->rddq_val[0]);
		uart_early_puts("\r\n DDRC_RDDQSKEW(1)=");
		uart_early_put_hex(training->rddq_val[1]);
		uart_early_puts("\r\n DDRC_RDDQSKEW(2)=");
		uart_early_put_hex(training->rddq_val[2]);
		uart_early_puts("\r\n DDRC_RDDQSKEW(3)=");
		uart_early_put_hex(training->rddq_val[3]);
		uart_early_puts("\r\n DDRC_RDDQSKEW(4)=");
		uart_early_put_hex(training->rddq_val[4]);
		uart_early_puts("\r\n DDRC_RDDQSKEW(5)=");
		uart_early_put_hex(training->rddq_val[5]);
		uart_early_puts("\r\n DDRC_RDDQSKEW(6)=");
		uart_early_put_hex(training->rddq_val[6]);
		uart_early_puts("\r\n DDRC_RDDQSKEW(7)=");
		uart_early_put_hex(training->rddq_val[7]);
		uart_early_puts("\r\n DDRC_RDDQSSKEW=");
		uart_early_put_hex(training->rddqs_val);
#endif

		mutibyte_check_result = mutibyte_check_multi_ssn(training,bit);
		bit_num = bit; /* low byte */
		if (mutibyte_check_result&0x1)
			training->prebit_rd_result[bit_num] |= (1<< level);

		bit_num = bit + 8; /* high byte */
		if (mutibyte_check_result&0x2)
			training->prebit_rd_result[bit_num] |= (1<< level);

		if (mutibyte_check_result == 0)
			break;

	}

	tmp =  training->level_data[0];
	for (j = 0; j < BYTEWIDTH; j++)
		bitset_dq(training->rddq_val, tmp, bit, j);
}
/*****************************************************************************/
#ifdef WRITE_DESKEW
static void mutibyte_prebit_travel_wrdq(struct training_data *training,
					unsigned int bit)
{
	unsigned int i, j;
	unsigned int tmp;
	unsigned int bit_num;
	unsigned int level;
	unsigned int mutibyte_check_result = 0;

	for (i=0; i<8; i++)
	{
		tmp = training->level_data[i];
		for (j = 0; j < BYTEWIDTH; j++)
			bitset_dq(training->wrdq_val, tmp, bit, j);
		level = ddr_level(0, i);
		config_ddr(training);
		mutibyte_check_result = mutibyte_check_multi_ssn(training, bit);
		bit_num = bit; /* low byte */
		if (mutibyte_check_result&0x1)
			training->prebit_wr_result[bit_num] |= (1<< level);
		bit_num = bit + 8; /* high byte */
		if (mutibyte_check_result&0x2)
			training->prebit_wr_result[bit_num] |= (1<< level);

		if (mutibyte_check_result == 0)
			break;
	}
}
#endif /* WRITE_DESKEW */

#ifdef SSN_DDRT
/******************************ddrt_pressure**********************************/
static unsigned int ddrt_pressure(int ddrt_mode, int ddrt_code_stream,
				  unsigned long burst_num,unsigned long sendlen,
				  unsigned int ddrt_change_bit)
{
	unsigned int mode = RW_COMPRARE_MODE;
	unsigned int code_stream = DDRT_PATTERM_PRBS9;
	unsigned int tmp1 = 0;

	uart_early_puts("\r\n");
	switch (ddrt_mode) {
	case 0:
		mode = RW_COMPRARE_MODE;
		uart_early_puts("mode: RW_COMPRARE_MODE\r\n");
		break;
	case 1:
		mode = ONLY_WRITE_MODE;
		uart_early_puts("mode: ONLY_WRITE_MODE\r\n");
		break;
	case 2:
		mode = ONLY_READ_MODE;
		uart_early_puts("mode: ONLY_READ_MODE\r\n");
		break;
	case 3:
		mode = RANDOM_RW_MODE;
		uart_early_puts("mode: RANDOM_RW_MODE\r\n");
		break;
	}

	switch (ddrt_code_stream) {
	case 0:
		code_stream = DDRT_PATTERM_PRBS9;
		uart_early_puts("codetype: DDRT_PATTERM_PRBS9\r\n");
		break;
	case 1:
		code_stream = DDRT_PATTERM_PRBS7;
		uart_early_puts("codetype: DDRT_PATTERM_PRBS7\r\n");
		break;
	case 2:
		code_stream = DDRT_PATTERM_PRBS11;
		uart_early_puts("codetype: DDRT_PATTERM_PRBS11\r\n");
		break;
	case 3:
		code_stream = DDRT_PATTERM_K28_5;
		uart_early_puts("codetype: DDRT_PATTERM_K28_5\r\n");
		break;
	}

	uart_early_puts("###ddrt_pressure test!!!\r\n");

	#ifdef DDRT_TIME
	/*** WatchDog count time ***/
	io_write(WATCH_DOG + WATCH_DOG_LOCK, 0x1acce551);
	io_write(WATCH_DOG + WATCH_DOG_LOAD, 0xffffffff);
	io_write(WATCH_DOG + WATCH_DOG_CONTROL, 0x3);
	#endif /* DDRT_TIME */

	ssn_ddrt_init(mode, code_stream, burst_num,
			sendlen, 0x82000000, ddrt_change_bit);

	while ((tmp1 & 0x1) == 0) {
		tmp1 = io_read(REG_DDRT_BASE_CRG + DDRT_STATUS);
	}

	#ifdef DDRT_TIME
	tmp1 = io_read(WATCH_DOG + WATCH_DOG_VALUE);
	tmp1 = 0xffffffff - tmp1;
	uart_early_puts("\r\n ddrt_time=");
	uart_early_put_hex(tmp1);
	#endif /* DDRT_TIME */

	uart_early_puts("###ddrt_pressure test end!!!");
	return 0;
}
/**********************************DDRT init**********************************/
static void ssn_ddrt_init(int mode, int code_stream, unsigned long burst_num,
		unsigned long send_len, unsigned long addr, unsigned int reversed_bit)
{
	io_write(REG_DDRT_BASE_CRG + DDRT_MEM_CONFIG, 0x00122);
	io_write(REG_DDRT_BASE_CRG + DDRT_BURST_NUM, burst_num);

	io_write(REG_DDRT_BASE_CRG + DDRT_KDATA, 0xBC3EB053);
	io_write(REG_DDRT_BASE_CRG + DDRT_DATA0, 0x73656BEF);
	io_write(REG_DDRT_BASE_CRG + DDRT_DATA1, 0x0C4533D5);
	io_write(REG_DDRT_BASE_CRG + DDRT_DATA2, 0x1FC8160E);
	io_write(REG_DDRT_BASE_CRG + DDRT_DATA3, 0x84E34976);

	io_write(REG_DDRT_BASE_CRG + DDRT_LOOP_NUM, send_len);
	io_write(REG_DDRT_BASE_CRG + DDRT_ADDR, addr);
	io_write(REG_DDRT_BASE_CRG + DDRT_REVERSED_DQ, reversed_bit);
	io_write(REG_DDRT_BASE_CRG + DDRT_OP, mode | code_stream | DDRT_START);
}

/**********************************DQ overflowing ****************************/
static unsigned int ddrt_dq_overflowing(unsigned int count, unsigned int offs8)
{
	unsigned int tmp_overflowing;
	unsigned int overflowing_result = 1;  /* if error return 1 */

	/*
	 *	check DDRT_DQ_ERR_OVFL,
	 *	If the count is equal to 0,
	 *	the check DDRT_DQ_ERR_CNTx
	 */
	tmp_overflowing = io_read(REG_DDRT_BASE_CRG + DDRT_DQ_ERR_OVFL);
#ifdef TRAINING_DEBUG
	uart_early_puts("\r\n DDRT_DQ_ERR_OVFL=");
	uart_early_put_hex(tmp_overflowing);
#endif
	if (0 == (tmp_overflowing & (0x1 << (count + 8 * offs8))))
	{
		if (count < 4)
		{
			tmp_overflowing =
				io_read(REG_DDRT_BASE_CRG + DDRT_DQ_ERR_CNT0 + 0x8 * offs8);
		} else {
			tmp_overflowing =
				io_read(REG_DDRT_BASE_CRG + DDRT_DQ_ERR_CNT1 + 0x8 * offs8);
		}
		/**If DDRT_DQ_ERR_CNTx equal to 0, the result is right, return 0**/
		if (tmp_overflowing == 0)
		{
			overflowing_result = 0;
		}
	}
#ifdef TRAINING_DEBUG
	uart_early_puts("\r\n count=");
	uart_early_put_hex(count);
	uart_early_puts("\r\n offs8=");
	uart_early_put_hex(offs8);
	uart_early_puts("\r\n DDRT_DQ_ERR_CNT=");
	uart_early_put_hex(tmp_overflowing);
#endif
	return overflowing_result;
}
#endif /* SSN_DDRT */

/*****************************************************************************/
static unsigned int mutibyte_check_multi_ssn(const struct
				training_data *training, unsigned int index)

{
	unsigned int tmp1;
	unsigned int num_test_cycle = 5;

	unsigned int word_cmp_result[2] = {0};
	unsigned int final_result = 0;

#ifdef TRAINING_DEBUG
	uart_early_puts("\r\n bitnum=");
	uart_early_put_hex(index);
#endif /* TRAINING_DEBUG */

#ifdef SSN_DDRT
	ssn_ddrt_init(RW_COMPRARE_MODE, DDRT_PATTERM_PRBS9, BURST_NUM,
			num_test_cycle, 0x82000000, 0);

	tmp1 = io_read(REG_DDRT_BASE_CRG + DDRT_STATUS);
	while ((tmp1 & 0x1) == 0) {
		tmp1 = io_read(REG_DDRT_BASE_CRG + DDRT_STATUS);
	}

	if ((tmp1 & 0x2) == 0) {
		/*	if error return 1 ,
		 *	and set word_cmp_result =1 ,
		 *	if return 0  word_cmp_result dont change
		 */
		if (ddrt_dq_overflowing(index, 0))
			word_cmp_result[0] = 1;
		if (ddrt_dq_overflowing(index, 1))
			word_cmp_result[1] = 1;
	}

	ssn_ddrt_init(RW_COMPRARE_MODE, DDRT_PATTERM_PRBS9, BURST_NUM,
			num_test_cycle, 0x82000000, 0x2796);

	tmp1 = io_read(REG_DDRT_BASE_CRG + DDRT_STATUS);
	while ((tmp1 & 0x1) == 0) {
		tmp1 = io_read(REG_DDRT_BASE_CRG + DDRT_STATUS);
	}

	if ((tmp1 & 0x2) == 0) {
		if (ddrt_dq_overflowing(index, 0))
			word_cmp_result[0] = 1;
		if (ddrt_dq_overflowing(index, 1))
			word_cmp_result[1] = 1;
	}
	ssn_ddrt_init(RW_COMPRARE_MODE, DDRT_PATTERM_PRBS9, BURST_NUM,
			num_test_cycle, 0x82000000, 0x2796);

	tmp1 = io_read(REG_DDRT_BASE_CRG + DDRT_STATUS);
	while ((tmp1 & 0x1) == 0) {
		tmp1 = io_read(REG_DDRT_BASE_CRG + DDRT_STATUS);
	}

	if ((tmp1 & 0x2) == 0) {
		if (ddrt_dq_overflowing(index, 0))
			word_cmp_result[0] = 1;
		if (ddrt_dq_overflowing(index, 1))
			word_cmp_result[1] = 1;
	}
	ssn_ddrt_init(RW_COMPRARE_MODE, DDRT_PATTERM_PRBS7, BURST_NUM,
			num_test_cycle, 0x83000000, 0);


	tmp1 = io_read(REG_DDRT_BASE_CRG + DDRT_STATUS);
	while ((tmp1 & 0x1) == 0) {
		tmp1 = io_read(REG_DDRT_BASE_CRG + DDRT_STATUS);
	}

	if ((tmp1 & 0x2) == 0){
		if (ddrt_dq_overflowing(index, 0))
			word_cmp_result[0] = 1;
		if (ddrt_dq_overflowing(index, 1))
			word_cmp_result[1] = 1;
	}

	ssn_ddrt_init(RW_COMPRARE_MODE, DDRT_PATTERM_PRBS7, BURST_NUM,
			num_test_cycle, 0x83000000, 0x2796);


	tmp1 = io_read(REG_DDRT_BASE_CRG + DDRT_STATUS);
	while ((tmp1 & 0x1) == 0) {
		tmp1 = io_read(REG_DDRT_BASE_CRG + DDRT_STATUS);
	}

	if ((tmp1 & 0x2) == 0) {
		if (ddrt_dq_overflowing(index, 0))
			word_cmp_result[0] = 1;
		if (ddrt_dq_overflowing(index, 1))
			word_cmp_result[1] = 1;
	}

	ssn_ddrt_init(RW_COMPRARE_MODE, DDRT_PATTERM_PRBS11,  BURST_NUM,
			num_test_cycle, 0x84000000, 0x0);

	tmp1 = io_read(REG_DDRT_BASE_CRG + DDRT_STATUS);
	while ((tmp1 & 0x1) == 0) {
		tmp1 = io_read(REG_DDRT_BASE_CRG + DDRT_STATUS);
	}

	if ((tmp1 & 0x2) == 0) {
		if (ddrt_dq_overflowing(index, 0))
			word_cmp_result[0] = 1;
		if (ddrt_dq_overflowing(index, 1))
			word_cmp_result[1] = 1;
	}

#endif /* SSN_DDRT */

	if ((word_cmp_result[0] == 0)&&(word_cmp_result[1] == 0))
		final_result = 0x3;   /* all bit ok */
	else if ((word_cmp_result[0] == 1)&&(word_cmp_result[1] == 0))
		final_result = 0x2;  /* bit 1 error  ,bit 8 OK */
	else if ((word_cmp_result[0] == 0)&&(word_cmp_result[1] == 1))
		final_result = 0x1; /* bit 1 OK , bit 8 error */
	else
		final_result = 0x0; /* all bit error */

	return final_result;
}
/*******************************addr DDRT init********************************/
static void ssn_addr_ddrt_init(int mode, int code_stream,
				unsigned long send_len, unsigned long addr,
				unsigned int reversed_bit)
{
	io_write(REG_DDRT_BASE_CRG + DDRT_MEM_CONFIG, 0x10122);
	io_write(REG_DDRT_BASE_CRG + DDRT_BURST_NUM, 0xffff);

	io_write(REG_DDRT_BASE_CRG + DDRT_KDATA, 0xBC3EB053);
	io_write(REG_DDRT_BASE_CRG + DDRT_DATA0, 0x73656BEF);
	io_write(REG_DDRT_BASE_CRG + DDRT_DATA1, 0x0C4533D5);
	io_write(REG_DDRT_BASE_CRG + DDRT_DATA2, 0x1FC8160E);
	io_write(REG_DDRT_BASE_CRG + DDRT_DATA3, 0x84E34976);

	io_write(REG_DDRT_BASE_CRG + DDRT_ADDR_NUM, 7/*no*/);
	io_write(REG_DDRT_BASE_CRG + DDRT_ADDR_OFFSET0, 0x800);
	io_write(REG_DDRT_BASE_CRG + DDRT_LOOP_NUM, send_len);
	io_write(REG_DDRT_BASE_CRG + DDRT_ADDR, addr);
	io_write(REG_DDRT_BASE_CRG + DDRT_REVERSED_DQ, reversed_bit);
	io_write(REG_DDRT_BASE_CRG + DDRT_OP, mode | code_stream | DDRT_START);
}
/*****************************************************************************/
static int check_ssn_addr_ddrt(unsigned int wr_mode)
{
	unsigned int result = 0;
	unsigned int tmp1;

	ssn_addr_ddrt_init(wr_mode, DDRT_PATTERM_PRBS9, 0, 0x82FFC700, 0);
	tmp1 = io_read(REG_DDRT_BASE_CRG + DDRT_STATUS);

	while((tmp1 & 0x1) == 0){
		tmp1 = io_read(REG_DDRT_BASE_CRG + DDRT_STATUS);
	}

	if (ONLY_READ_MODE == wr_mode){
		if ((tmp1 & 0x2) == 0)
			result = -1;
		else
			result = 0;
	}

	return result;
}

/*****************************************************************************/
static unsigned int ddr_level(unsigned int dqs_level, unsigned int dq_level)
{
	unsigned int level;
	if (dqs_level == 0) {
		level = 7 - dq_level;
	} else {
		level = 7 + dqs_level;
	}
	return level;
}
/*****************************************************************************/
static void level_spilt(unsigned int level, unsigned int * dqs_level,
			unsigned int *dq_level)
{
	if (level < 8) {
		*dqs_level = 0;
		*dq_level  = 7-level;
	} else {
		*dqs_level = level-7;
		*dq_level  = 0;
	}
}

/*****************************************************************************/
#if 0
static void prs_rebuilt(unsigned int input, unsigned int *output,
			const unsigned int *data)
{
	int n;
	unsigned int tmp = input;

	for (n = 15; n >= 0; n--) {
		output[n] = data[tmp & 0x3];
		tmp >>= 2;
	}
}
#endif
/*****************************************************************************/
void memcpy_soc(unsigned int *aim, const unsigned int *src, unsigned int size)
{
	unsigned int i;
	unsigned int sizetemp;

	sizetemp = (size >> 2);
	for (i = 0; i < sizetemp; i ++) {
		aim[i] = src[i];
	}
 }
/*****************************************************************************/
void  memset_soc(void* s, char c, int count)
{
	char *xs = (char *)s;

	while (count--)
		*xs++ = c;
}
/*****************************************************************************/
#if 0
static void check_ssn_code(unsigned int input,unsigned int *ssn_code)
{
	unsigned int i,j;
	unsigned int ssn_code_tmp[16];
	/*PRBS7*/
	unsigned int prbs_sole0[12] ;

	prbs_sole0[0] = 0x73656BEF;
	prbs_sole0[1] = 0x0C4533D5;
	prbs_sole0[2] = 0x1FC8160E;
	prbs_sole0[3] = 0x84E34976;
	prbs_sole0[4] = 0x73656BEF;
	prbs_sole0[5] = 0x0C4533D5;
	prbs_sole0[6] = 0x1FC8160E;
	prbs_sole0[7] = 0x84E34976;
	prbs_sole0[8] = 0x3f56b6fe;
	prbs_sole0[9] = 0xc054335d;
	prbs_sole0[10] = 0xf18c61e0;
	prbs_sole0[11] = 0xe83e9467;

	/*PRBS9*/
	unsigned int prbs_sole1[16] ;
	prbs_sole1[0] = 0xff83df17;
	prbs_sole1[1] = 0x32094ed1;
	prbs_sole1[2] = 0xe7cd8a91;
	prbs_sole1[3] = 0xc6d5c4c4;
	prbs_sole1[4] = 0x4021184e;
	prbs_sole1[5] = 0x5586f4dc;
	prbs_sole1[6] = 0x8a15a7ec;
	prbs_sole1[7] = 0x92df9353;
	prbs_sole1[8] = 0x3018ca34;
	prbs_sole1[9] = 0xbfa2c759;
	prbs_sole1[10] = 0x678fba0d;
	prbs_sole1[11] = 0x6dd82d7d;
	prbs_sole1[12] = 0x540a5797;
	prbs_sole1[13] = 0x7039d27a;
	prbs_sole1[14] = 0xea243385;
	prbs_sole1[15] = 0xed9a1de1;
	unsigned int prbs_sole3[4] ;

	prbs_sole3[0] = 0xF00F8778;
	prbs_sole3[1] = 0xE11ED22D;
	prbs_sole3[2] = 0xC33CB44B;
	prbs_sole3[3] = 0xA55A9669;

	/*300*/
	unsigned int prs_data0[4] ;

	prs_data0[0] = 0x00000000;
	prs_data0[1] = 0xff00ff00;
	prs_data0[2] = 0x00ff00ff;
	prs_data0[3] = 0xffffffff;

	unsigned int prs_data2[4] ;

	prs_data2[0] = 0x66666666;
	prs_data2[1] = 0x99669966;
	prs_data2[2] = 0x66996699;
	prs_data2[3] = 0x99999999;

	unsigned int prs_data3[4] ;

	prs_data3[0] = 0x99999999;
	prs_data3[1] = 0x66996699;
	prs_data3[2] = 0x99669966;
	prs_data3[3] = 0x66666666;


	if (input == 0) {
		for (i = 0; i < 12; i++) {
			prs_rebuilt(prbs_sole0[i], ssn_code_tmp, prs_data0);
			for(j=0;j<16;j++) {
				ssn_code[i*16+j]=ssn_code_tmp[j];
			}
		}
	} else if (input == 1) {
		for (i = 0; i < 12; i++) {
			prs_rebuilt(prbs_sole1[i], ssn_code_tmp, prs_data0);
			for(j=0;j<16;j++){
				 ssn_code[i*16+j]=ssn_code_tmp[j];
			}
		}
	} else if ( input ==2) {
		for (i = 0; i < 12; i++) {
			prs_rebuilt(prbs_sole0[i], ssn_code_tmp, prs_data2);
			for(j=0;j<16;j++) {
				ssn_code[i*16+j]=ssn_code_tmp[j];
			}
		}
	} else if (input == 3) {
		for (i = 0; i < 12; i++) {
			prs_rebuilt(prbs_sole1[i], ssn_code_tmp, prs_data3);
			for(j=0;j<16;j++) {
				 ssn_code[i*16+j]=ssn_code_tmp[j];
			}
		}
	} else if(input == 4) {
		for (i = 0; i < 48; i++) {
			for(j=0;j<4;j++) {
			   ssn_code[i*4+j] = prbs_sole3[j];
			}
		}
	} else {
		for (i = 0; i < 192; i++) {
			ssn_code[i]=0xff00ff00;
		}
	}
}
#endif
/*****************************************************************************/

static unsigned  int calculate_para(unsigned int size, unsigned int val)
{
	unsigned int record_first = 0;
	unsigned int record_cnt = 0;
	unsigned int tmp_first = 0;
	unsigned int tmp_last = 0;
	unsigned int tmp_cnt = 0;
	unsigned int flag = 0;
	unsigned int i = 0;
	unsigned int tmp_result;

	while (i < size) {
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
		 tmp_result= 0;
		return 0;
	} else {
		tmp_result = record_cnt<<16;
		tmp_result = (tmp_result & 0xffff0000) |
			(record_cnt/2 + record_first);
		return tmp_result;
	}
}

/*****************************************************************************/
static void get_byte_bestpara(struct training_data *training,
			      unsigned int byte, unsigned int rd_wr)
{
	unsigned int i;
	unsigned int bitnum;
	if (rd_wr == 0) { /*write*/
		/*first : find  every bit best result*/
		for (i = 0; i< 8; i++) {
			bitnum = byte*8+i;
			training->prebit_wr_best[bitnum]
				 = calculate_para(TRAINING_WR_CNT,
				training->prebit_wr_result[bitnum]);
		}
	} else { /*read */
		for (i = 0; i < 8; i++ ) {
			bitnum = byte*8+i;
			training->prebit_rd_best[bitnum]
				 = calculate_para(TRAINING_RD_CNT,
				training->prebit_rd_result[bitnum]);
		}
	}
}

/*****************************************************************************/
/* this function will set value to ddr register. */
struct ddrtr_result_t *ddr_training(struct ddrtr_param_t *param)
{
	if (param->cmd == DDRTR_PARAM_TRAINING) {
		uart_early_puts("DDR training start ");
		ddr_training_entry(param->train.start, param->train.length);
		uart_early_puts("\r\n");
	} else if (param->cmd == DDRTR_PARAM_PRESSURE) {
		uart_early_puts("DDR pressure start ");
		ddrt_pressure(param->pressure.mode, param->pressure.codetype,
			param->pressure.burstnum,
			param->pressure.count,
			param->pressure.changebit);
		uart_early_puts("\r\n");
	} else if (param->cmd == DDRTR_PARAM_ADDRTRAIN) {
		uart_early_puts("DDR addrtrain start ");
		ddr_addrtrain_entry();
		uart_early_puts("\r\n");
	}

	return &result;
}
/*****************************************************************************/

