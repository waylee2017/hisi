/******************************************************************************
 *    COPYRIGHT (C) 2013 luohuamin. Hisilicon
 *    All rights reserved.
 * ***
 *    Create by l00187293 2013-06-05
 *
 ******************************************************************************/
//#include <asm/arch/platform.h>
//#include <config.h>

#include "ddr_dataeye_training.h"

#define  REG_BASE_MDDRC_AXI    0xff580000
#define  REG_BASE_MDDRC_RNK0   0xff588000
#define  REG_BASE_MDDRC_RNK1   0xff589000
#define  REG_BASE_DDRPHY_RNK0  0xff58c000
#define  REG_BASE_DDRPHY_RNK1  0xff58d000
#define  REG_BASE_SYSCTRL      0xf8000000
#define  REG_BASE_MDDRC_SEC_4  0xff582000
#define  REG_BASE_MDDRC_SEC_5  0xff582400
#define  REG_BASE_MDDRC_QOS    0xff584000

#define  REG_READ(addr)        (*(volatile unsigned int *)(addr))
#define  REG_WRITE(val, addr)  ((*(volatile unsigned *) (addr)) = (val))

extern void DDRPHY_WRLV_TRAIN_ROUTE(unsigned int);
extern int DDRPHY_GATE_TRAIN_ROUTE(unsigned int, unsigned int);
extern int DDRPHY_DATA_TRAIN_ROUTE(unsigned int, unsigned int);

/******************************************************************************/
static void update_ddrphy_timing(unsigned int addr)
{
	unsigned int tmp;
	tmp = REG_READ(addr);
	tmp |= 0x100000;
	REG_WRITE(tmp, addr);
	tmp &= 0xffefffff;
	REG_WRITE(tmp, addr);
}

static void reset_ddrphy_count(unsigned int addr)
{
#ifndef CONFIG_S5_FPGA
	/* PHY Counter Reset.
	 * Bit15 is used to set PHY counter reset signal.
	 * To issue reset signal to PHY counter, this field should be set to a '1'.
	 * To end the reset signal to PHY counter this field should be cleared to a '0'.
	 */
	REG_WRITE(0x8000, addr + 0x04);
	REG_WRITE(0x0000, addr + 0x04);
#endif
}

static void bdl_add(unsigned int *raw, unsigned int val)
{
	if (((*raw) + val) > 0x1f)
		*raw = 0x1f;
	else
		*raw += val;
}

static void bdl_sub(unsigned int *raw, unsigned int val)
{
	if ((*raw) > val)
		*raw -= val;
	else
		*raw = 0;
}

int ddrphy_wl_training(unsigned int ddrc_base_addr, unsigned int ddrphy_base_addr,
		unsigned int ddrc_num)
{
	unsigned int ddr_byte_num;
	unsigned int wdqs_bdl_raw[4];
	unsigned int wdqs_bdl_new[4];
	unsigned int wdq_bdl[8];
	unsigned int dqsoe_bdl[4];
	unsigned int dqoe_bdl[4];
	unsigned int wdm_bdl;
	unsigned int tmp;
	unsigned int val;
	unsigned int i;
	unsigned int j;
	unsigned int write_leveling_retrain;
	unsigned int wdqs_phase[4];
	unsigned int wdq_phase[4];

	ddr_byte_num = (REG_READ(ddrc_base_addr + 0x50) >> 4) & 0x3;
	ddr_byte_num = ddr_byte_num << 1;

	REG_WRITE(0x10060002, ddrc_base_addr + 0x210);
	REG_WRITE(0x10001, ddrc_base_addr + 0x218);
	REG_WRITE(0x1, ddrc_base_addr + 0x00c);
	REG_WRITE(0x00860002, ddrc_base_addr + 0x210);
	REG_WRITE(0x10001, ddrc_base_addr + 0x218);
	REG_WRITE(0x1, ddrc_base_addr + 0x00c);

	for (i = 0; i < ddr_byte_num; i++)
		wdqs_bdl_raw[i] =
			REG_READ(ddrphy_base_addr + 0x230 + (i << 7)) & 0x1f;

	DDRPHY_WRLV_TRAIN_ROUTE(ddrphy_base_addr);

	write_leveling_retrain = 0;
	for (i = 0; i < ddr_byte_num; i++) {
		wdqs_bdl_new[i] = REG_READ(ddrphy_base_addr
				+ 0x230 + (i << 7)) & 0x1f;
		if (wdqs_bdl_new[i] <= 4) {
			tmp = REG_READ(ddrphy_base_addr + 0x230 + (i << 7));
			wdqs_phase[i] = (tmp >> 8) & 0xf;
			if(wdqs_phase[i] > 1) {
				wdqs_phase[i] = wdqs_phase[i] - 1;
				tmp = (tmp & 0x1f) + (wdqs_phase[i] << 8);
				REG_WRITE(tmp, ddrphy_base_addr + 0x230 + (i << 7));
				tmp = REG_READ(ddrphy_base_addr + 0x234 + (i << 7));
				wdq_phase[i] = (tmp >> 8) & 0x1f;
				wdq_phase[i] = wdq_phase[i] - 1;
				tmp = wdq_phase[i] << 8;
				REG_WRITE(tmp, ddrphy_base_addr + 0x234 + (i << 7));
				write_leveling_retrain = 1;
			}
		} else if (wdqs_bdl_new[i] >= 16) {
			tmp = REG_READ(ddrphy_base_addr + 0x230 + (i << 7));
			wdqs_phase[i] = (tmp >> 8) & 0xf;
			if(wdqs_phase[i] < 0xd) {
				wdqs_phase[i] = wdqs_phase[i] + 2;
				tmp = (tmp & 0x1f) + (wdqs_phase[i] << 8);
				REG_WRITE(tmp, ddrphy_base_addr + 0x230 + (i << 7));
				tmp = REG_READ(ddrphy_base_addr + 0x234 + (i << 7));
				wdq_phase[i] = (tmp >> 8) & 0x1f;
				if(wdq_phase[i] <= 0x1d) {
					wdq_phase[i] = wdq_phase[i] + 2;
					tmp = wdq_phase[i] << 8;
					REG_WRITE(tmp, ddrphy_base_addr + 0x234 + (i << 7));
				}
				write_leveling_retrain = 1;
			}
		}
	}

	if (write_leveling_retrain == 1) {
		DDRPHY_WRLV_TRAIN_ROUTE(ddrphy_base_addr);
	}

	REG_WRITE(0x60002, ddrc_base_addr + 0x210);
	REG_WRITE(0x10001, ddrc_base_addr + 0x218);
	REG_WRITE(0x1, ddrc_base_addr + 0x00c);
	REG_WRITE(0x10000, ddrc_base_addr + 0x218);
	REG_WRITE(0x0, ddrc_base_addr + 0x00c);

	for (i = 0; i < ddr_byte_num; i++) {
		wdqs_bdl_new[i] = REG_READ(ddrphy_base_addr + 0x230 + (i << 7)) & 0x1f;
		if (wdqs_bdl_new[i] == 0x1f)
			return ((i<<16) + (DDR_SWL_ERR(ddrc_num)));
	}

	for (i = 0; i < ddr_byte_num; i++) {
		wdqs_bdl_new[i] = REG_READ(ddrphy_base_addr + 0x230 + (i << 7)) & 0x1f;
		tmp = REG_READ(ddrphy_base_addr + 0x210 + (i << 7));
		wdq_bdl[0] = (tmp >> 0) & 0xff;
		wdq_bdl[1] = (tmp >> 8) & 0xff;
		wdq_bdl[2] = (tmp >> 16) & 0xff;
		wdq_bdl[3] = (tmp >> 24) & 0xff;
		tmp = REG_READ(ddrphy_base_addr + 0x214 + (i << 7));
		wdq_bdl[4] = (tmp >> 0) & 0xff;
		wdq_bdl[5] = (tmp >> 8) & 0xff;
		wdq_bdl[6] = (tmp >> 16) & 0xff;
		wdq_bdl[7] = (tmp >> 24) & 0xff;
		wdm_bdl = REG_READ(ddrphy_base_addr + 0x218 + (i << 7)) & 0x1f;
		tmp = REG_READ(ddrphy_base_addr + 0x258 + (i << 7));
		dqsoe_bdl[i] = (tmp >> 16) & 0x1f;
		dqoe_bdl[i] = tmp & 0x1f;

		if (wdqs_bdl_new[i] > wdqs_bdl_raw[i]) {
			val = wdqs_bdl_new[i] - wdqs_bdl_raw[i];
			for (j = 0; j < 8; j++)
				bdl_add(&wdq_bdl[j], val);

			bdl_add(&wdm_bdl, val);
			bdl_add(&dqsoe_bdl[i], val);
			bdl_add(&dqoe_bdl[i], val);
		} else if (wdqs_bdl_new[i] < wdqs_bdl_raw[i]) {
			val = wdqs_bdl_raw[i] - wdqs_bdl_new[i];
			for (j = 0; j < 8; j++)
				bdl_sub(&wdq_bdl[j], val);

			bdl_sub(&wdm_bdl, val);
			bdl_sub(&dqsoe_bdl[i], val);
			bdl_sub(&dqoe_bdl[i], val);
		}

		tmp = (wdq_bdl[3] << 24) + (wdq_bdl[2] << 16)
			+ (wdq_bdl[1] << 8) + wdq_bdl[0];
		REG_WRITE(tmp, ddrphy_base_addr + 0x210 + (i << 7));
		tmp = (wdq_bdl[7] << 24) + (wdq_bdl[6] << 16)
			+ (wdq_bdl[5] << 8) + wdq_bdl[4];
		REG_WRITE(tmp, ddrphy_base_addr + 0x214 + (i << 7));
		REG_WRITE(wdm_bdl, ddrphy_base_addr + 0x218 + (i << 7));
		tmp = (dqsoe_bdl[i] << 16) + dqoe_bdl[i];
		REG_WRITE(tmp, ddrphy_base_addr + 0x258 + (i << 7));
	}

	update_ddrphy_timing(ddrphy_base_addr + 0x70);

	return 0;
}

int ddrphy_gt_training(unsigned int ddrc_base_addr, unsigned int ddrphy_base_addr, unsigned int ddr_addr,
		unsigned int ddrc_num)
{
	unsigned int ddr_byte_num;
	unsigned int dqsg_phase[4];
	unsigned int tmp;
	unsigned int i;

	ddr_byte_num = (REG_READ(ddrc_base_addr + 0x50) >> 4) & 0x3;
	ddr_byte_num = ddr_byte_num << 1;

	for (i = 0; i < ddr_byte_num; i++) {
		for (dqsg_phase[i] = 60; dqsg_phase[i] > 16; dqsg_phase[i] -= 4) {
			REG_WRITE(dqsg_phase[i] << 8,
				ddrphy_base_addr + 0x23c + (i << 7));
			update_ddrphy_timing(ddrphy_base_addr + 0x70);
			reset_ddrphy_count(ddrphy_base_addr);
			if (DDRPHY_DATA_TRAIN_ROUTE(0xff << (i << 3), ddr_addr) == 0) {
				break;
			}
		}
		if (dqsg_phase[i] <= 16) {
			return ((i<<16) + (DDR_SGT_ERR(ddrc_num)));
		} else {
			dqsg_phase[i] -= 8;
			REG_WRITE(dqsg_phase[i] << 8,
					ddrphy_base_addr + 0x23c + (i << 7));
		}
	}

	update_ddrphy_timing(ddrphy_base_addr + 0x70);

	if (DDRPHY_GATE_TRAIN_ROUTE(ddrphy_base_addr, ddr_addr) != 0)
		return 0x2;

	for (i = 0; i < ddr_byte_num; i++) {
		dqsg_phase[i] -= 8;
		tmp = REG_READ(ddrphy_base_addr + 0x23c + (i << 7));
		tmp &= 0xffff00ff;
		tmp |= dqsg_phase[i] << 8;
		REG_WRITE(tmp, ddrphy_base_addr + 0x23c + (i << 7));
	}

	update_ddrphy_timing(ddrphy_base_addr + 0x70);

	return 0;
}

int ddrphy_train_route(int sf_gt)
{
	unsigned int auto_ref_timing[2];
	unsigned int axi_rgn_map[2];
	unsigned int axi_rgn_attrib[2];
	unsigned int axi_base_addr[2];
	unsigned int ddrc_cfg_ddrmode[2];
	unsigned int ctrl;
	unsigned int axi_rgn_scrmbl[2];
	unsigned int sec_bypass[2];
	unsigned int qosb_buff_byp;
	unsigned int ddrc_cfg_pd[2];
	unsigned int misc[2];
	int ret = 0;

	ctrl = REG_READ(REG_BASE_SYSCTRL + 0xd0);
	/*
	 * this function is called just after DDR Init
	 * it will trainning the ddrphy to find the best wdqs and gate
	 */

	auto_ref_timing[0] = REG_READ(REG_BASE_MDDRC_RNK0 + 0x108);
	auto_ref_timing[1] = REG_READ(REG_BASE_MDDRC_RNK1 + 0x108);
	REG_WRITE(auto_ref_timing[0] & 0xfffff000, REG_BASE_MDDRC_RNK0 + 0x108);
	REG_WRITE(auto_ref_timing[1] & 0xfffff000, REG_BASE_MDDRC_RNK1 + 0x108);

	axi_rgn_map[0] = REG_READ(REG_BASE_MDDRC_AXI + 0x1e0);
	axi_rgn_map[1] = REG_READ(REG_BASE_MDDRC_AXI + 0x1f0);
	REG_WRITE(0x1500, REG_BASE_MDDRC_AXI + 0x1e0);
	REG_WRITE(0x1520, REG_BASE_MDDRC_AXI + 0x1f0);

	axi_rgn_attrib[0] = REG_READ(REG_BASE_MDDRC_AXI + 0x1e4);
	axi_rgn_attrib[1] = REG_READ(REG_BASE_MDDRC_AXI + 0x1f4);
	REG_WRITE(0x71050014, REG_BASE_MDDRC_AXI + 0x1e4);
	REG_WRITE(0x71050015, REG_BASE_MDDRC_AXI + 0x1f4);

	axi_rgn_scrmbl[0] = REG_READ(REG_BASE_MDDRC_AXI + 0x1e8);
	axi_rgn_scrmbl[1] = REG_READ(REG_BASE_MDDRC_AXI + 0x1f8);
	REG_WRITE(0x0, REG_BASE_MDDRC_AXI + 0x1e8);
	REG_WRITE(0x0, REG_BASE_MDDRC_AXI + 0x1f8);

	sec_bypass[0] = REG_READ(REG_BASE_MDDRC_SEC_4 + 0x4);
	sec_bypass[1] = REG_READ(REG_BASE_MDDRC_SEC_5 + 0x4);
	REG_WRITE(0x1, REG_BASE_MDDRC_SEC_4 + 0x4);
	REG_WRITE(0x1, REG_BASE_MDDRC_SEC_5 + 0x4);

	qosb_buff_byp = REG_READ(REG_BASE_MDDRC_QOS + 0x88);
	REG_WRITE(0x3, REG_BASE_MDDRC_QOS + 0x88);

	ddrc_cfg_pd[0] = REG_READ(REG_BASE_MDDRC_RNK0 + 0x28);
	ddrc_cfg_pd[1] = REG_READ(REG_BASE_MDDRC_RNK1 + 0x28);
	REG_WRITE(ddrc_cfg_pd[0] & 0xfffffffe, REG_BASE_MDDRC_RNK0 + 0x28);
	REG_WRITE(ddrc_cfg_pd[1] & 0xfffffffe, REG_BASE_MDDRC_RNK1 + 0x28);

	ddrc_cfg_ddrmode[0] = REG_READ(REG_BASE_MDDRC_RNK0 + 0x50);
	ddrc_cfg_ddrmode[1] = REG_READ(REG_BASE_MDDRC_RNK1 + 0x50);
	REG_WRITE(ddrc_cfg_ddrmode[0] & 0xffffbfff, REG_BASE_MDDRC_RNK0 + 0x50);
	REG_WRITE(ddrc_cfg_ddrmode[1] & 0xffffbfff, REG_BASE_MDDRC_RNK1 + 0x50);

	misc[0] = REG_READ(REG_BASE_DDRPHY_RNK0 + 0x70);
	misc[1] = REG_READ(REG_BASE_DDRPHY_RNK1 + 0x70);
	REG_WRITE(misc[0] & 0xfffeffff, REG_BASE_DDRPHY_RNK0 + 0x70);
	REG_WRITE(misc[1] & 0xfffeffff, REG_BASE_DDRPHY_RNK1 + 0x70);

	axi_base_addr[0] = 0x0;
	axi_base_addr[1] = 0x20000000;

	if (!sf_gt) {
		if (!(ctrl & 0x10))
			ret = ddrphy_wl_training(REG_BASE_MDDRC_RNK0, REG_BASE_DDRPHY_RNK0, 0);
		if (!(ctrl & 0x20))
			ret = ddrphy_wl_training(REG_BASE_MDDRC_RNK1, REG_BASE_DDRPHY_RNK1, 1);

		reset_ddrphy_count(REG_BASE_DDRPHY_RNK0);
		reset_ddrphy_count(REG_BASE_DDRPHY_RNK1);
	}

	if (!(ctrl & 0x100) || 0x100 == sf_gt)
		ret = ddrphy_gt_training(REG_BASE_MDDRC_RNK0, REG_BASE_DDRPHY_RNK0, axi_base_addr[0],0);
	else {
		if (REG_READ(REG_BASE_DDRPHY_RNK0 + 0x8)&0x20)
			return DDR_HGT_ERR(0);
	}

	if (!(ctrl & 0x200) || 0x200 == sf_gt)
		ret = ddrphy_gt_training(REG_BASE_MDDRC_RNK1, REG_BASE_DDRPHY_RNK1, axi_base_addr[1],1);
	else {
		if (REG_READ(REG_BASE_DDRPHY_RNK1 + 0x8)&0x20)
			return DDR_HGT_ERR(1);
	}

	REG_WRITE(auto_ref_timing[0], REG_BASE_MDDRC_RNK0 + 0x108);
	REG_WRITE(auto_ref_timing[1], REG_BASE_MDDRC_RNK1 + 0x108);
	REG_WRITE(axi_rgn_map[0], REG_BASE_MDDRC_AXI + 0x1e0);
	REG_WRITE(axi_rgn_map[1], REG_BASE_MDDRC_AXI + 0x1f0);
	REG_WRITE(axi_rgn_attrib[0], REG_BASE_MDDRC_AXI + 0x1e4);
	REG_WRITE(axi_rgn_attrib[1], REG_BASE_MDDRC_AXI + 0x1f4);
	REG_WRITE(axi_rgn_scrmbl[0], REG_BASE_MDDRC_AXI + 0x1e8);
	REG_WRITE(axi_rgn_scrmbl[1], REG_BASE_MDDRC_AXI + 0x1f8);
	REG_WRITE(sec_bypass[0], REG_BASE_MDDRC_SEC_4 + 0x4);
	REG_WRITE(sec_bypass[1], REG_BASE_MDDRC_SEC_5 + 0x4);
	REG_WRITE(qosb_buff_byp, REG_BASE_MDDRC_QOS + 0x88);
	REG_WRITE(ddrc_cfg_pd[0], REG_BASE_MDDRC_RNK0 + 0x28);
	REG_WRITE(ddrc_cfg_pd[1], REG_BASE_MDDRC_RNK1 + 0x28);
	REG_WRITE(ddrc_cfg_ddrmode[0], REG_BASE_MDDRC_RNK0 + 0x50);
	REG_WRITE(ddrc_cfg_ddrmode[1], REG_BASE_MDDRC_RNK1 + 0x50);
	REG_WRITE(misc[0], REG_BASE_DDRPHY_RNK0 + 0x70);
	REG_WRITE(misc[1], REG_BASE_DDRPHY_RNK1 + 0x70);

	return ret;
}

/******************************************************************************/
