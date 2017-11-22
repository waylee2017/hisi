/*
 *  this file only for hi3716mv300
 */
#include <config.h>

#include "ddr_training.h"
#include "libc.h"

#ifndef CONFIG_SUPPORT_CA_RELEASE
extern void uart_early_puts(const char *s);
#else
# define uart_early_puts(_s)
#endif

static struct ddrtr_result_t result;
static void config_ddr(const struct training_data *);
static void read_config_ddr(struct training_data *);
static void set_bestbyte_skew(struct training_data *training,
		unsigned int byte, unsigned int  rd_wr);
static unsigned int dll_repair2(unsigned int  dll2);
static void bitset_dq(unsigned int *, unsigned int ,
		unsigned int , unsigned int );
static unsigned  int set_dqs(unsigned int , unsigned int ,
		unsigned int , unsigned int );
static void get_byte_bestpara(struct training_data *, unsigned int ,
		unsigned int );
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
		training_data *training,unsigned int type);
static void check_ssn_code(unsigned int input,unsigned int *ssn_code);
void memcpy_soc(unsigned int *aim, const unsigned int *src,
		unsigned int size);
void  memset_soc(void* s, char c, int count);

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

static void ddr_training_entry(unsigned int sta,unsigned int len)
{

	unsigned int start  = sta;
	unsigned int length = len;

	struct training_data tmp_result;
	struct training_data *training  = &tmp_result;

	unsigned int i, j;
#ifdef WRITE_DESKEW
	unsigned int tmp;
#endif
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
	for (j = 0; j < 8; j++) {
		/*
		* write DQS set 0  , training  write DQ
		*/
		tmp = training->level_data[0];
		for (i = 0; i < BYTEWIDTH; i++)
			training->wrdqs_val =
				set_dqs(training->wrdqs_val, tmp, i, 0);

		mutibyte_prebit_travel_wrdq(training , j);

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
		for( i = 0; i < BYTEWIDTH; i++)
			training->rddqs_val =
				set_dqs(training->rddqs_val, tmp, i, 0);

		mutibyte_prebit_travel_rddq(training, j);


		/*
		* read DQ set 0  , training  read DQS
		*/
		mutibyte_prebit_travel_rddqs(training, j);

		/* set read DQS and DQ default vlaue  0*/
		tmp = training->level_data[0];
		for( i = 0; i < BYTEWIDTH; i++) {
			training->rddqs_val =
				set_dqs(training->rddqs_val, tmp, i, 0);
			byteset_dq(training->rddq_val, tmp, i);
		}
		uart_early_puts(".");
	}
	for (i=0; i<BITWIDTH; i++) {
		training->prebit_rd_result_dll2[i] =
			training->prebit_rd_result[i];
		training->prebit_rd_result[i] =
			dll_repair2(training->prebit_rd_result_dll2[i]);
	}
	for (i=0; i < BYTEWIDTH; i++) {
		get_byte_bestpara(training, i,1);
		set_bestbyte_skew(training, i,1);
	}
#endif

	config_ddr(training);
	memcpy_soc((unsigned int*)result.data,
		(unsigned int*)training, sizeof(*training));
	save_training_result();
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

/****************************************************************************/
static void bitset_dq(unsigned int *dq, unsigned int val,
				unsigned int bitnum, unsigned int bytenum)
{
	unsigned int i,j;
	i = bitnum & 0x1;
	j = bytenum*4 + (bitnum>>1);
	if (i==0)
		dq[j] = (dq[j]&0xfffffff8)|(val&0x7);
	else
		dq[j] = (dq[j]&0xffffffc7)|(val&0x38);

}
/****************************************************************************/
static void byteset_dq(unsigned int *dq, unsigned int val,
		unsigned int bytenum)
{
	dq[bytenum*4+0] = val;
	dq[bytenum*4+1] = val;
	dq[bytenum*4+2] = val;
	dq[bytenum*4+3] = val;

}
static unsigned int set_dqs(unsigned int dqs,unsigned int val,
			unsigned int bytenum, unsigned int bytewidth)
{
	if (bytewidth) {
		dqs = val;
	} else {

		switch (bytenum){
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

/******************************************************************************/
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
			if(i==0){
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

		for(i=0; i<8; i++){
			tmp = training->prebit_rd_best[byte*8 + i] & 0xffff;
			level_spilt(tmp, &dqs, &dq);
			if(max_dqs != dqs){
				dq = dq + (max_result-tmp);
				if(dq > 7){
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
static unsigned  int dll_repair2(unsigned int  dll2)
{
	unsigned int output;
	unsigned int i,bitnum =0 ;
	unsigned int tmp;
	for(i=8;i<16;i++){
		tmp = dll2 >> i;
		tmp = tmp & 1;
		if(tmp == 0){
			bitnum = i-1;
			break;
		}
	}
	tmp = 0;
	for(i=0; i<bitnum; i++){
		tmp |= 1<<i;
	}
	output = dll2 & tmp;
	return output;
}
/*****************************************************************************/
static void mutibyte_prebit_travel_rddqs(struct training_data *training,
		unsigned int bit)
{
	unsigned int i , j;
	unsigned int tmp;
	unsigned int bit_num;
	unsigned int level;
	unsigned int mutibyte_check_result = 0;

	for (i = 1; i < 8; i++)
	{
		tmp =  training->level_data[i];
		for( j = 0; j < BYTEWIDTH; j++)
		{
			byteset_dq(training->rddq_val, tmp, j);
			training->rddqs_val = set_dqs(training->rddqs_val,
					tmp, j, 0);
		}

		tmp =  training->level_data[0];
		for( j = 0; j < BYTEWIDTH; j++)
			bitset_dq(training->rddq_val, tmp, bit,  j);

		level = ddr_level(i, 0);
		config_ddr(training);

		mutibyte_check_result = mutibyte_check_multi_ssn(training,1);
		bit_num = bit; // low byte
		if (mutibyte_check_result&0x1)
			training->prebit_rd_result[bit_num] |= (1<< level);
		bit_num = bit + 8; // high byte
		if (mutibyte_check_result&0x2)
			training->prebit_rd_result[bit_num] |= (1<< level);

		if(mutibyte_check_result == 0)
			break;

	}
}
/*****************************************************************************/
#ifdef WRITE_DESKEW
static void mutibyte_prebit_travel_wrdqs(struct training_data *training,
		unsigned int bit)
{
	unsigned int i , j;
	unsigned int tmp;
	unsigned int bit_num;
	unsigned int level;
	unsigned int mutibyte_check_result = 0;

	for (i = 1; i < 8; i++)
	{
		tmp =  training->level_data[i];
		for( j = 0; j < BYTEWIDTH; j++)
		{
			byteset_dq(training->wrdq_val, tmp, j);
			training->wrdqs_val = set_dqs(training->wrdqs_val,
					tmp, j, 0);
		}

		tmp =  training->level_data[0];
		for( j = 0; j < BYTEWIDTH; j++)
			bitset_dq(training->wrdq_val, tmp, bit,  j);

		level = ddr_level(i, 0);
		config_ddr(training);

		mutibyte_check_result = mutibyte_check_multi_ssn(training,1);
		bit_num = bit; // low byte
		if (mutibyte_check_result&0x1)
			training->prebit_wr_result[bit_num] |= (1<< level);
		bit_num = bit + 8; // high byte
		if (mutibyte_check_result&0x2)
			training->prebit_wr_result[bit_num] |= (1<< level);

		if(mutibyte_check_result == 0)
			break;
	}
}
#endif
/*****************************************************************************/
static void mutibyte_prebit_travel_rddq(struct training_data *training,
		unsigned int bit)
{
	unsigned int i , j;
	unsigned int tmp;
	unsigned int bit_num;
	unsigned int level;
	unsigned int mutibyte_check_result = 0;

	for (i=0; i<8; i++)
	{
		tmp =  training->level_data[i];
		for( j = 0; j < BYTEWIDTH; j++)
			bitset_dq(training->rddq_val, tmp, bit, j);
		level = ddr_level(0, i);
		config_ddr(training);
		mutibyte_check_result = mutibyte_check_multi_ssn(training,1);
		bit_num = bit; // low byte
		if (mutibyte_check_result&0x1)
			training->prebit_rd_result[bit_num] |= (1<< level);
		bit_num = bit + 8; // high byte
		if (mutibyte_check_result&0x2)
			training->prebit_rd_result[bit_num] |= (1<< level);

		if(mutibyte_check_result == 0)
			break;

	}

	tmp =  training->level_data[0];
		for( j = 0; j < BYTEWIDTH; j++)
			bitset_dq(training->rddq_val, tmp, bit, j);
}
/*****************************************************************************/
#ifdef WRITE_DESKEW
static void mutibyte_prebit_travel_wrdq(struct training_data *training,
		unsigned int bit)
{
	unsigned int i , j;
	unsigned int tmp;
	unsigned int bit_num;
	unsigned int level;
	unsigned int mutibyte_check_result = 0;

	for (i=0; i<8; i++)
	{
		tmp =  training->level_data[i];
		for( j = 0; j < BYTEWIDTH; j++)
			bitset_dq(training->wrdq_val, tmp, bit, j);
		level = ddr_level(0, i);
		config_ddr(training);
		mutibyte_check_result = mutibyte_check_multi_ssn(training,1);
		bit_num = bit; // low byte
		if (mutibyte_check_result&0x1)
			training->prebit_wr_result[bit_num] |= (1<< level);
		bit_num = bit + 8; // high byte
		if (mutibyte_check_result&0x2)
			training->prebit_wr_result[bit_num] |= (1<< level);

		if(mutibyte_check_result == 0)
			break;
	}
}
#endif
/*****************************************************************************/
static unsigned int mutibyte_check_multi_ssn(const struct
		training_data *training, unsigned int type)

{
	unsigned int i ,j,n,tmp_vedu = 0;
	unsigned int ssn_code[BURST_LENGTH];
	unsigned int tmp1,tmp2;
	unsigned int base_wr_address;
	unsigned int base_rd_address;
	unsigned int num_ssn = 5;
	unsigned int num_test_cycle = 20;

	unsigned int word_cmp_result[2] = {0};
	unsigned int final_result;

	base_wr_address = training->wr_address;
	base_rd_address =  training->rd_address;

	for(n = 0; n<num_ssn; n++)
	{
		check_ssn_code(n,ssn_code);

#ifdef SSN_VEDU
		/* VEDU write */
		io_write(REG_BASE_CRG + REG_VEDU_ENABLE, 0x100);
		io_write(REG_VEDU_BASE + VEDU_AXIT_MODE, 0x1);
		memcpy_soc((unsigned int *)(REG_VEDU_BASE + VEDU_AXIT_STBUF),
				(unsigned int *)ssn_code, BURST_LENGTH*4 );
		memcpy_soc((unsigned int *)base_rd_address,
				(unsigned int *)ssn_code, BURST_LENGTH*4 );
		io_write(REG_VEDU_BASE + VEDU_AXIT_CFG, 0x3); /* axit_cmd_num */

		/* axit_blk_strid<<16 | axit_cmd_stride */
		io_write(REG_VEDU_BASE + VEDU_AXIT_STRIDE, 0x400<<16|0x100);

		/* wr cmd axit_blk_height<<5 | axit_blk_width */
		io_write(REG_VEDU_BASE + VEDU_AXIT_BLK(0), (0x0<<5)+0xf);
		io_write(REG_VEDU_BASE + VEDU_AXIT_BLK(1), (0x0<<5)+0xf);
		io_write(REG_VEDU_BASE + VEDU_AXIT_BLK(2), (0x0<<5)+0xf);
		io_write(REG_VEDU_BASE + VEDU_AXIT_LOOP, 0x0);
#endif

	 /*****************************vedu read write***********************/
		for (j = 0; j< num_test_cycle; j++){

			io_write(REG_VEDU_BASE + VEDU_AXIT_LOOP, 0x0);
			memset_soc((void *)(base_wr_address+2*0x100000+j*0x300)
					,0, BURST_LENGTH);
			io_write(REG_VEDU_BASE + VEDU_AXIT_ADDR,
					base_wr_address + 2*0x100000 + j*0x300);

			/**********************  vedu write ******************/
			io_write(REG_VEDU_BASE + VEDU_AXIT_WR, 0x7);
			io_write(REG_VEDU_BASE + VEDU_AXIT_START, 0x1);

			tmp_vedu = io_read(REG_VEDU_BASE + VEDU_AXIT_STATUS);
			while(!tmp_vedu){
				tmp_vedu = io_read(REG_VEDU_BASE +
						VEDU_AXIT_STATUS);
			}
			/**********************  vedu read ********************/
			io_write(REG_VEDU_BASE + VEDU_AXIT_ADDR,
					base_rd_address);
			io_write(REG_VEDU_BASE + VEDU_AXIT_WR,0x0);
			io_write(REG_VEDU_BASE + VEDU_AXIT_START,0x1);

			tmp_vedu = io_read(REG_VEDU_BASE + VEDU_AXIT_STATUS);
			while(!tmp_vedu){
				tmp_vedu = io_read(REG_VEDU_BASE +
						VEDU_AXIT_STATUS);
			}
			/** compare write result 16bit compare **/
			for(i=0;i< BURST_LENGTH ;i++)
			{
				tmp1 = io_read(base_wr_address+2*0x100000+
							j*0x300 + i*0x4);
				tmp2 = ssn_code[i];
				if(tmp1 != tmp2)
				{
					if ((tmp1&0xffff) != (tmp2&0xffff))
						word_cmp_result[0] = 1;

					if((tmp1&0xffff0000) !=
							(tmp2&0xffff0000))
						word_cmp_result[1] = 1;
				}
				if((word_cmp_result[0] == 1) &&
						(word_cmp_result[1] == 1))
					return 0;  //faulse result ;
			}

			/** compare read result **/
			for(i = 0;i < BURST_LENGTH ;i++)
			{
				tmp1 = io_read(REG_VEDU_BASE +
						VEDU_AXIT_LDBUF + i*0x4);
				tmp2 = ssn_code[i];


				if((tmp1&0xffff) != (tmp2&0xffff))
					word_cmp_result[0] = 1;

				if((tmp1&0xffff0000) != (tmp2&0xffff0000))
					word_cmp_result[1] = 1;

				if((word_cmp_result[0] == 1) &&
						(word_cmp_result[1] == 1))
					return 0;  //faulse result ;
			}
		}
	}

	if ((word_cmp_result[0] == 0)&&(word_cmp_result[1] == 0))
		final_result = 0x3;
	else if ((word_cmp_result[0] == 1)&&(word_cmp_result[1] == 0))
		final_result = 0x2;
	else if ((word_cmp_result[0] == 0)&&(word_cmp_result[1] == 1))
		final_result = 0x1;
	else
		final_result = 0x0;

	return final_result;
}

/***************************************************************************/
static unsigned int  ddr_level(unsigned int dqs_level, unsigned int dq_level)
{
	unsigned int level;
	if (dqs_level == 0) {
		level = 7 - dq_level;
	} else {
		level = 7 + dqs_level;
	}
	return level;
}
/****************************************************************************/
static void level_spilt(unsigned int level, unsigned int * dqs_level,
		unsigned int *dq_level)
{
	if (level < 8) {
		*dqs_level = 0;
		*dq_level = 7 - level;
	} else {
		*dqs_level = level - 7;
		*dq_level = 0;
	}
}

/*****************************************************************************/
static void prs_rebuilt(unsigned int input,
		unsigned int *output, const unsigned int *data)
{
	int n;
	unsigned int tmp = input;

	for (n = 15; n >= 0; n--) {
		output[n] = data[tmp & 0x3];
		tmp >>= 2;
	}
}

/*****************************************************************************/
void memcpy_soc(unsigned int *aim, const unsigned int *src, unsigned int size)
{
	unsigned int i;
	unsigned int sizetemp;
	sizetemp = (size >> 2);
	for (i = 0; i < sizetemp; i++) {
		aim[i] = src[i];
	}
 }
/*****************************************************************************/
void  memset_soc(void* s, char c, int count)
{
	char *xs = (char *) s;

	while (count--)
		*xs++ = c;

}
/*****************************************************************************/
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

	/*MV300*/
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


	if(input == 0) {
		for (i = 0; i < 12; i++) {
			prs_rebuilt(prbs_sole0[i], ssn_code_tmp, prs_data0);
			for(j=0;j<16;j++){
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
	} else if (input ==2) {
		for (i = 0; i < 12; i++) {
			prs_rebuilt(prbs_sole0[i], ssn_code_tmp, prs_data2);
			for(j=0;j<16;j++){
				ssn_code[i*16+j]=ssn_code_tmp[j];
			}
		}
	} else if (input == 3) {
		for (i = 0; i < 12; i++) {
			prs_rebuilt(prbs_sole1[i], ssn_code_tmp, prs_data3);
			for(j=0;j<16;j++){
				 ssn_code[i*16+j]=ssn_code_tmp[j];
			}
		}
	} else if (input == 4) {
		for (i = 0; i < 48; i++)
		{
			for(j=0;j<4;j++)
			{
			   ssn_code[i*4+j] = prbs_sole3[j];
			 }
		}
	} else {
		for (i = 0; i < 192; i++) {
			ssn_code[i]=0xff00ff00;
		}
	}
}
/****************************************************************************/

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
static void get_byte_bestpara(struct training_data *training, unsigned int byte,
	unsigned int rd_wr)
{
	unsigned int i;
	unsigned int bitnum;

	if (rd_wr==0) { /*write*/
		/*first : find  every bit best result*/
		for (i=0; i< 8; i++) {
			bitnum = byte*8+i;
			training->prebit_wr_best[bitnum]  =
				calculate_para(TRAINING_WR_CNT,
					training->prebit_wr_result[bitnum]);
		}
	} else { /*read */
		for(i=0; i< 8; i++ ){
			bitnum = byte*8+i;
			training->prebit_rd_best[bitnum] =
				calculate_para(TRAINING_RD_CNT,
					training->prebit_rd_result[bitnum]);
		}
	}
}

/*****************************************************************************/
/* this function will set value to ddr register. */
struct ddrtr_result_t *ddr_training(struct ddrtr_param_t *ddr_param)
{
	/* The 'ddr_param' on the DDR, we should move the value to SRAM */
	struct ddrtr_param_t param;
	memcpy((void *)&param, ddr_param, sizeof(struct ddrtr_param_t));

	if (param.cmd != DDRTR_PARAM_TRAINING) {
		uart_early_puts("Hi3716Mv300 Not Support This Feature \n\r");
		return &result; 
	}

	uart_early_puts("DDR training start ");

	ddr_training_entry(param.train.start, param.train.length);

	uart_early_puts("\r\n");

	return &result;
}
/*****************************************************************************/

