#include <common.h>

#include "hi3716cv100_ddr_training.h"

static int print_prebit_result(struct hi_training * );
static int print_risk (unsigned int);

/*****************************************************************************/
static int print_risk (unsigned int cnt)
{
	if (cnt <= 1) {
		printf("No Skew!\n");
	} else if ((cnt > 1) && (cnt <= 3)) {
		printf("High Risk!\n");
	} else if ((cnt > 3) && (cnt <= 5)) {
		printf("Potential Risk!\n");
	} else {
		printf("Low Risk!\n");
	}
	return 0;
}
static int print_prebit_result(struct hi_training *training)
{
	unsigned int i;

	printf("----------------------------------------------------------\n");
	printf("The window of deskew\n");
	printf("----------------------------------------------------------\n");
	printf("Write DQS  DQ  Result\n");
	for (i = 0; i < 29; i++) {
		printf("      %d    %d   %s\n",
			training->wr_data[i] >> 16,
			training->wr_data[i] & 0xffff,
			training->wr_para&(1<<i)?"OK":"ERROR");
	}
	printf("Read  DQS  DQ  Result\n");
	for(i = 0; i < 15; i++){
		printf("      %d    %d   %s\n",
			training->rd_data[i] >> 16,
			training->rd_data[i] & 0xffff,
			training->rd_para&(1<<i)?"OK":"ERROR");
	}
	printf("----------------------------------------------------------\n");
	printf("The best deskew of DQS/DQ\n"
		"Write DQS:%d   DQ:%d\n"
		"Read  DQS:%d   DQ:%d\n",
		training->wr_data[training->wr_best] >> 16,
		training->wr_data[training->wr_best] & 0xffff,
		training->rd_data[training->rd_best] >> 16,
		training->rd_data[training->rd_best] & 0xffff);
	printf("----------------------------------------------------------\n");
	printf("Risk Assessment:\n");
	printf("Write:");
	print_risk(training->wr_skew_cnt);
	printf("Read: ");
	print_risk(training->rd_skew_cnt);
	return 0;
}

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

	for (i=0; i<8 ;i++) {
		tmp = training->wrdq_val[i];
		printf("config wrdq  : 0x%x\n" , tmp);
	}

	printf("The window of read prebit-deskew config\n");
	tmp = training->rddqs_val;
	printf("config rddqs : 0x%x \n" , tmp);
	for (i=0; i<8 ;i++) {
		tmp = training->rddq_val[i];
		printf("config rddq  : 0x%x\n" , tmp);
	}
	return 0;
}
#endif
/*****************************************************************************/
int hi3716cv100_ddr_training_result(unsigned int TRAINING_ADDR)
{
	struct hi_training *ddr = (struct hi_training *)TRAINING_ADDR;

	print_prebit_result(ddr);

	return 0;
}
/*****************************************************************************/
