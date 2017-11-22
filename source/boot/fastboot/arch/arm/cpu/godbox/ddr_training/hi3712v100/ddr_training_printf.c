#include <common.h>

#include "hi3712v100_ddr_training.h"

static int print_prebit_result(struct training_data * );
static int var_init(struct training_data *);
static int print_risk (unsigned int*, unsigned int);

/*****************************************************************************/
#if 0
static int print_config_ddr(struct training_data * training)
{
	unsigned int i;
	unsigned int tmp;

	printf("--------------------------------------------------------------------------------\n");
	printf("The window of write prebit-deskew config\n");
	printf("--------------------------------------------------------------------------------\n");
	tmp = training->wrdqs_val;
	printf("config wrdqs : 0x%x \n" , tmp);

	for (i = 0; i < 8 ;i++) {
		tmp = training->wrdq_val[i];
		printf("config wrdq  : 0x%x\n" , tmp);
	}

	printf("The window of read prebit-deskew config\n");
	tmp = training->rddqs_val;
	printf("config rddqs : 0x%x \n" , tmp);
	for (i = 0; i<8 ;i++) {
		tmp = training->rddq_val[i];
		printf("config rddq  : 0x%x\n" , tmp);
	}
	return 0;
}
#endif
/*****************************************************************************/
int hi3712v100_ddr_training_result(unsigned int TRAINING_ADDR)
{
	struct training_data *ddr = (struct training_data *)TRAINING_ADDR;

	var_init(ddr);
	print_prebit_result(ddr);

	return 0;
}
/*****************************************************************************/
static int level_spilt(unsigned int level, unsigned int * dqs_level,
	unsigned int *dq_level)
{
	if (level < 8) {
		*dqs_level = 0;
		*dq_level = 7-level;
	} else {
		*dqs_level = level-7;
		*dq_level = 0;
	}

	return 0;
}
/*****************************************************************************/
static int var_init(struct training_data *training)
{
	training->level_data[0] = DQ_DATA_LEVEL0;
	training->level_data[1] = DQ_DATA_LEVEL1;
	training->level_data[2] = DQ_DATA_LEVEL2;
	training->level_data[3] = DQ_DATA_LEVEL3;
	training->level_data[4] = DQ_DATA_LEVEL4;
	training->level_data[5] = DQ_DATA_LEVEL5;
	training->level_data[6] = DQ_DATA_LEVEL6;
	training->level_data[7] = DQ_DATA_LEVEL7;
	return 0;
}

#define PRINT_PREBIT(level, bit, result, best, dqs, dq, count) do {\
	printf("%-4d", bit);\
	for (k = 0; k < level; k++) {\
		if ((result >> k) & 0x1) {\
				printf("%-3s", "-");\
		} else {\
				printf("%-3s", "X");\
		}\
	}\
	printf(" 0x%-12x%-5d%-4d%-4d%-4d\n", result, best, dqs, dq, count);\
} while (0)

#define PRINT_PREBIT1(level, bit, result, best, clk, addr, count) do {\
	printf("%-4d", bit);\
	for (k = 0; k < level; k++) {\
		if ((result >> k) & 0x1) {\
				printf("%-3s", "-");\
		} else {\
				printf("%-3s", "X");\
		}\
	}\
	printf(" 0x%-12x%-5d%-4d%-4d%-4d\n", result, best, clk, addr, count);\
} while (0)

#define PRINT_PREBIT_TMP2(level) do {\
	printf("%-4s", "BIT");\
	for (k = 0; k < level; k++) {\
			printf("%-3d", k);\
	}\
	printf(" %-12s  %-5s%-4s%-4s%-4s\n", "HEX_VALUE", "BEST", "DQS", "DQ", "WIN");\
} while (0)

#define PRINT_PREBIT_TMP3(level) do {\
	printf("%-4s", "BIT");\
	for (k = 0; k < level; k++) {\
			printf("%-3d", k);\
	}\
	printf(" %-12s  %-5s%-4s%-4s%-4s\n", "HEX_VALUE", "BEST", "CLK", "ADDR", "WIN");\
} while (0)


/*****************************************************************************/
static int print_prebit_result(struct training_data * training)
{
	unsigned int i, k;
	unsigned int dqs_tmp, dq_tmp;
	unsigned int cnt_tmp, best_tmp;
	unsigned int level = 15;

	printf("THE flag = %d\n", training->flag);
	if (training->flag == DDR_DQSTRAIN){
#ifdef WRITE_DESKEW
		printf("The write window of prebit-deskew\n");
		printf("--------------------------------------------------------------------------------\n");
		PRINT_PREBIT_TMP2(15);
		for (i=0; i<BYTEWIDTH*8; i++) {
			cnt_tmp = training->prebit_wr_best[i]>>16;
			best_tmp =  training->prebit_wr_best[i] &0xffff;
			level_spilt(best_tmp, &dqs_tmp, &dq_tmp);
			PRINT_PREBIT(level, i, training->prebit_wr_result[i],
					training->prebit_wr_best[i] & 0xffff,
					dqs_tmp, dq_tmp, cnt_tmp);
		}
		printf("--------------------------------------------------------------------------------\n\n");
#endif

#ifdef READ_DESKEW
		printf("The read window of prebit-deskew\n");
		printf("--------------------------------------------------------------------------------\n");

		PRINT_PREBIT_TMP2(15);
		for (i=0; i<BYTEWIDTH*8; i++) {
			cnt_tmp = training->prebit_rd_best[i] >> 16;
			best_tmp =  training->prebit_rd_best[i] & 0xffff;
			level_spilt(best_tmp, &dqs_tmp, &dq_tmp);
			PRINT_PREBIT(level, i, training->prebit_rd_result[i],
					training->prebit_rd_best[i] & 0xffff,
					dqs_tmp, dq_tmp, cnt_tmp);
		}
		printf("--------------------------------------------------------------------------------\n\n");
#endif

#ifdef WRITE_DESKEW
		printf("Write: ");
		print_risk(training->prebit_wr_best, BITWIDTH);
#endif

#ifdef READ_DESKEW
		printf("Read: ");
		print_risk(training->prebit_rd_best, BITWIDTH);

#endif
	} else if (training->flag == DDR_ADDRTRAIN){
		printf("The A/C window of prebit-deskew\n");
		printf("--------------------------------------------------------------------------------\n");
		PRINT_PREBIT_TMP3(15);
		for (i=0; i<19; i++) {
			cnt_tmp = training->prebit_addr_best[i]>>16;
			best_tmp =  training->prebit_addr_best[i] &0xffff;
			level_spilt(best_tmp, &dqs_tmp, &dq_tmp);
			PRINT_PREBIT1(level, i, training->prebit_addr_result[i],
					training->prebit_addr_best[i] & 0xffff,
					dqs_tmp, dq_tmp, cnt_tmp);
		}
		printf("--------------------------------------------------------------------------------\n\n");
		printf("AC: ");
		print_risk(training->prebit_addr_best, 19);

	}
		return 0;
}

/*****************************************************************************/
static int print_risk (unsigned int *cnt, unsigned int  width)
{
	unsigned int min_cnt = cnt[0]>>16;
	unsigned int i, tmp;

	for (i=1; i<width; i++) {
		tmp = cnt[i]>>16;
		if(tmp <= min_cnt)
			min_cnt = tmp;
	}
	printf("The deskew minimum window is %d\n", min_cnt );
	return 0;
}
/*****************************************************************************/
