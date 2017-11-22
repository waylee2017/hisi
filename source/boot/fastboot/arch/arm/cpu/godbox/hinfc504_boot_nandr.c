/******************************************************************************
*    NAND Flash Controller V504 Device Driver
*    Copyright (c) 2009-2010 by Hisilicon.
*    All rights reserved.
* ***
*    Create By xxx
******************************************************************************/

/* nand command */
#define NAND_CMD_READ0                  0
#define NAND_CMD_READSTART              0x30
#define NFC_CMD_READ  \
	((NAND_CMD_READSTART << 8) | NAND_CMD_READ0)

#define NFC_MAX_BLOCK_NUM               32
#define NFC_40BITECC_DATALENGTH         4096

/* nand controller v504 register */
#define HINFC504_CON                                   0x00
#define HINFC504_CON_OP_MODE_NORMAL                    (1U << 0)
#define HINFC504_CON_READY_BUSY_SEL                    (1U << 8)

#define HINFC504_CMD                                   0x0C
#define HINFC504_ADDRL                                 0x10
#define HINFC504_ADDRH                                 0x14

#define HINFC504_DMA_CTRL                              0x60
#define HINFC504_DMA_CTRL_DMA_START                    (1U << 0)
#define HINFC504_DMA_CTRL_BURST_EN                     (0x70)
#define HINFC504_DMA_CTRL_ADDR_NUM_SHIFT               (1U << 7)

#define HINFC504_DMA_ADDR_DATA                         0x64

#define HINFC504_DMA_ADDR_OOB                          0x68

#define HINFC504_DMA_PARA                              0x70
#define HINFC504_DMA_PARA_DATA_RW_EN                   (1U << 0)
#define HINFC504_DMA_PARA_OOB_RW_EN                    (1U << 1)
#define HINFC504_DMA_PARA_DATA_EDC_EN                  (1U << 2)
#define HINFC504_DMA_PARA_OOB_EDC_EN                   (1U << 3)
#define HINFC504_DMA_PARA_DATA_ECC_EN                  (1U << 4)
#define HINFC504_DMA_PARA_OOB_ECC_EN                   (1U << 5)
#define HINFC504_DMA_PARA_EXT_LEN_SHIFT                (6)
#define HINFC504_DMA_PARA_EXT_LEN_MASK                 (0x03)

#define HINFC504_LOG_READ_ADDR                         0x7C

#define HINFC504_LOG_READ_LEN                          0x80

#define HINFC504_DMA_ADDR_DATA1                        0xB4

#define HINFC504_BOOT_CFG                              0xC4
#define HINFC504_BOOT_CFG_PAGEISZE_SHIFT               (1)
#define HINFC504_BOOT_CFG_PAGESIZE_MASK                (0x07)
#define HINFC504_BOOT_CFG_PAGESIZE_512                 (0x00)
#define HINFC504_BOOT_CFG_ECCTYPE_SHIFT                (4)
#define HINFC504_BOOT_CFG_ECCTYPE_MASK                 (0x07)
#define HINFC504_BOOT_CFG_ECCTYPE_NONE                 (0x00)
#define HINFC504_BOOT_CFG_ECCTYPE_24BIT                (0x04)
#define HINFC504_BOOT_CFG_BLOCKISZE_SHIFT              (7)
#define HINFC504_BOOT_CFG_BLOCKISZE_MASK               (0x03)
#define HINFC504_BOOT_CFG_ADDR_NUM_PAD                 (1U << 9)

/******************************************************************************/
#define hinfc504_read(_offset) \
	(*((volatile unsigned *) \
		((unsigned)(_offset) + CONFIG_HINFC504_REG_BASE_ADDRESS)))

#define hinfc504_write(_value, _offset) do {\
	*(volatile unsigned *)((unsigned)(_offset) \
		+ CONFIG_HINFC504_REG_BASE_ADDRESS) = (unsigned)(_value); \
} while (0)
/******************************************************************************/

static void nand_page_read(void *data, void *oob, unsigned int data_length)
{
	unsigned int reg_val;

	hinfc504_write(data, HINFC504_DMA_ADDR_DATA);
	hinfc504_write((data + NFC_40BITECC_DATALENGTH),
		HINFC504_DMA_ADDR_DATA1);
	hinfc504_write(oob, HINFC504_DMA_ADDR_OOB);
	hinfc504_write(0, HINFC504_LOG_READ_ADDR);
	hinfc504_write(data_length,  HINFC504_LOG_READ_LEN);

	reg_val = hinfc504_read( HINFC504_DMA_CTRL);
	hinfc504_write(reg_val | HINFC504_DMA_CTRL_DMA_START,
		HINFC504_DMA_CTRL);

	while (hinfc504_read(HINFC504_DMA_CTRL) & HINFC504_DMA_CTRL_DMA_START)
		;
}

void nand_read(unsigned char *data, unsigned int data_length)
{
	unsigned int boot_cfg, page_size, ecc_type, block_page_num, page0_mask;
	unsigned int tmp_reg;
	unsigned int page_num, copied_page = 0 ,cur_page = 0;
	unsigned int cur_block = 0;
	unsigned int lsl, lsr;
	unsigned char *read_ptr = data;

	boot_cfg = hinfc504_read(HINFC504_BOOT_CFG);
	page_size = boot_cfg >> HINFC504_BOOT_CFG_PAGEISZE_SHIFT;
	page_size = page_size & HINFC504_BOOT_CFG_PAGESIZE_MASK;
	if (page_size == HINFC504_BOOT_CFG_PAGESIZE_512) {
		page_num  = ((data_length - 1) >> 9) + 1;
		page_size = 512;
		lsl = 8;
		lsr = 24;
	} else {
		page_num  = ((data_length - 1) >> (page_size + 10)) + 1;
		page_size = 1 << (page_size + 10);
		lsl = 16;
		lsr = 16;
	}

	ecc_type = boot_cfg >> HINFC504_BOOT_CFG_ECCTYPE_SHIFT;
	ecc_type = ecc_type & HINFC504_BOOT_CFG_ECCTYPE_MASK;
	block_page_num = boot_cfg >> HINFC504_BOOT_CFG_BLOCKISZE_SHIFT;
	block_page_num = block_page_num & HINFC504_BOOT_CFG_BLOCKISZE_MASK;
	block_page_num = 1 << (block_page_num + 6);
	page0_mask = block_page_num - 1;

	tmp_reg = hinfc504_read(HINFC504_CON);
	tmp_reg |= HINFC504_CON_OP_MODE_NORMAL | HINFC504_CON_READY_BUSY_SEL;
	hinfc504_write(tmp_reg, HINFC504_CON);

	tmp_reg = HINFC504_DMA_CTRL_BURST_EN;
	if (!(boot_cfg & HINFC504_BOOT_CFG_ADDR_NUM_PAD))
		tmp_reg |= HINFC504_DMA_CTRL_ADDR_NUM_SHIFT;
	hinfc504_write(tmp_reg, HINFC504_DMA_CTRL);

	tmp_reg = HINFC504_DMA_PARA_DATA_RW_EN | HINFC504_DMA_PARA_OOB_RW_EN;

	if (ecc_type != HINFC504_BOOT_CFG_ECCTYPE_NONE) {
		tmp_reg |= HINFC504_DMA_PARA_DATA_EDC_EN |
			HINFC504_DMA_PARA_OOB_EDC_EN |
			HINFC504_DMA_PARA_DATA_ECC_EN |
			HINFC504_DMA_PARA_OOB_ECC_EN;
	}

	if (ecc_type == HINFC504_BOOT_CFG_ECCTYPE_24BIT) {
		if (page_size == 4096)
			tmp_reg |= 0x03 << HINFC504_DMA_PARA_EXT_LEN_SHIFT;
		else if (page_size == 8192)
			tmp_reg |= 0x01 << HINFC504_DMA_PARA_EXT_LEN_SHIFT;
	}

	hinfc504_write(tmp_reg, HINFC504_DMA_PARA);
	hinfc504_write(NFC_CMD_READ, HINFC504_CMD);

	while (copied_page < page_num) {
		hinfc504_write(cur_page << lsl, HINFC504_ADDRL);
		hinfc504_write(cur_page >> lsr, HINFC504_ADDRH);

		if (!(cur_page & page0_mask)) {
			/*first page in block*/
			++cur_block;
			if (cur_block > NFC_MAX_BLOCK_NUM)
				return;
			nand_page_read(read_ptr, read_ptr + page_size, page_size + 4);
			/*skip bad block*/
			if (*(read_ptr + page_size) != 0xff ) {
				cur_page += block_page_num;
				continue;
			}
		}

		nand_page_read(read_ptr, read_ptr + page_size, page_size);
		read_ptr += page_size;
		copied_page++;
		cur_page++;
	}

	tmp_reg = hinfc504_read(HINFC504_CON);
	tmp_reg &= ~HINFC504_CON_OP_MODE_NORMAL;
	hinfc504_write(tmp_reg, HINFC504_CON);
}
