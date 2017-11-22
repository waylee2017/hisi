/*********************************************************************************
*
*  Copyright (C) 2014 Hisilicon Technologies Co., Ltd.  All rights reserved. 
*
*  This program is confidential and proprietary to Hisilicon Technologies Co., Ltd.
*  (Hisilicon), and may not be copied, reproduced, modified, disclosed to
*  others, published or used, in whole or in part, without the express prior
*  written permission of Hisilicon.
*
***********************************************************************************/
#define _LARGEFILE64_SOURCE
#include <stdio.h>
#include <errno.h>
#include <fcntl.h>
#include <sys/stat.h>
#include <sys/ioctl.h>
#include <sys/types.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <limits.h>

#include "hi_flash.h"
#include "nand.h"
#include "nand_raw.h"
#include "hi_debug.h"

#define NAND_PAGE_BUF_SIZE       16384
#define NAND_OOB_BUF_SIZE        1200

static struct nand_raw_ctrl * nandraw_ctrl = NULL;

static int check_skip_badblock(struct mtd_partition *ptn, int *blockindex, int blocksize);
/*****************************************************************************/

int nand_raw_init(void)
{
    int ix;
    int dev;
    int readonly;
    int max_partition;
    //struct stat status;
    struct mtd_partition *ptn;
    struct mtd_info_user mtdinfo;
    HI_Flash_PartInfo_S *pstPartInfo = NULL;
    char devname[32];

    char buf[PATH_MAX];

    if (nandraw_ctrl)
        return 0;

    if (0 > (max_partition = get_max_partition()))
    {

#ifdef NAND_RAW_DBG
        HI_PRINT("Can't find mtd device at /dev/mtdx.\n");
#endif
        return -1;
    }

    if (++max_partition >= MAX_MTD_PARTITION)
    {
        HI_PRINT("partition maybe more than %d, please increase MAX_MTD_PARTITION.\n", MAX_MTD_PARTITION);
    }

    if(0 != (flash_partition_info_init()))
    {
        HI_PRINT("Initial partition information failure.\n");
        return -1;
    }
    nandraw_ctrl = (struct nand_raw_ctrl *)malloc(sizeof(struct nand_raw_ctrl)
        + (HI_U32)max_partition * sizeof(struct mtd_partition));

    if (!nandraw_ctrl)
    {
        HI_PRINT("Not enough memory.\n");
        return -1;
    }

    nandraw_ctrl->num_partition = 0;
    nandraw_ctrl->size = 0;
    ptn = nandraw_ctrl->partition;

    for (ix = 0; ix < max_partition; ix++)
    {
        readonly = 0;
        ptn->fd = INVALID_FD;
        (HI_VOID)snprintf(buf, PATH_MAX, DEV_MTDBASE"%d", ix);
        if ((dev = open(buf, O_RDWR)) == -1)
        {
            if ((dev = open(buf, O_RDONLY)) == -1)
            {
                //HI_PRINT("%s->%d Can't open \"%s\", set to access none!\n", __func__,__LINE__,buf);
                ptn->perm = ACCESS_NONE;
                continue;
            }
            ptn->perm = ACCESS_RD;
            readonly = 1;
        } else {
            ptn->perm = ACCESS_RDWR;
        }

        if (ioctl(dev, MEMGETINFO, &mtdinfo))
        {
            HI_PRINT("Can't get \"%s\" information.\n", buf);
            close(dev);
            continue;
        }

        if (mtdinfo.type != MTD_NANDFLASH)
        {
            close(dev);
            continue;
        }

        memset(devname, 0, sizeof(devname));
        (HI_VOID)snprintf(devname, sizeof(devname), "mtd%d", ix);
        pstPartInfo = get_flash_partition_info(HI_FLASH_TYPE_NAND_0, devname);
        if(NULL == pstPartInfo)
        {
            DBG_OUT("Can't get \"%s\" partition information.\n", buf);
            close(dev);
            continue;
        }
        strncpy(ptn->mtddev, buf, sizeof(ptn->mtddev));
        ptn->mtddev[sizeof(ptn->mtddev) - 1] = '\0';
        ptn->fd = dev;
        ptn->readonly = readonly;
  #if 0
        ptn->start = nandraw_ctrl->size;
        nandraw_ctrl->size += mtdinfo.size;
        ptn->end   = nandraw_ctrl->size - 1;
  #else
        ptn->start = pstPartInfo->StartAddr;
        ptn->end   = pstPartInfo->StartAddr + mtdinfo.size -1;
  #endif
        nandraw_ctrl->num_partition++;

        ptn++;

        if (nandraw_ctrl->num_partition == 1)
        {
            nandraw_ctrl->pagesize  = mtdinfo.writesize;
            nandraw_ctrl->blocksize = mtdinfo.erasesize;
            nandraw_ctrl->pagemask  = (mtdinfo.writesize - 1);
            nandraw_ctrl->blockmask = (mtdinfo.erasesize - 1);
            nandraw_ctrl->oobsize   = mtdinfo.oobsize;
            nandraw_ctrl->oobused    = HINFC610_OOBSIZE_FOR_YAFFS;

            nandraw_ctrl->pageshift  = (HI_U32)offshift(mtdinfo.writesize);
            nandraw_ctrl->blockshift = (HI_U32)offshift(mtdinfo.erasesize);
        }
    }

    if (!nandraw_ctrl->num_partition)
    {
//        HI_PRINT("Can't find nand type mtd device at /dev/mtdx\n");
        free(nandraw_ctrl);
        nandraw_ctrl = NULL;
        return 0;
    }
    nandraw_ctrl->size = get_flash_total_size(HI_FLASH_TYPE_NAND_0);

    return 0;
}

void nand_raw_get_info
(
    unsigned long long *totalsize,
    unsigned long *pagesize,
    unsigned long *blocksize,
    unsigned long *oobsize,
    unsigned long *blockshift)
{
    if (!nandraw_ctrl) {
        HI_PRINT("Nandraw Control is not initialized!\n");
        return;
    }
    if (totalsize)
	*totalsize  = nandraw_ctrl->size;
    if (pagesize)
        *pagesize   = nandraw_ctrl->pagesize;
    if (blocksize)
        *blocksize  = nandraw_ctrl->blocksize;
    if (oobsize)
        *oobsize    = nandraw_ctrl->oobused;
    if (blockshift)
       *blockshift = nandraw_ctrl->blockshift;
}

/*****************************************************************************/
/*
 * warning:
 *    1. if open SPI/NOR FLASH, return 0
      2. if dev_name cannot match nandraw_ctrl, return error_valid;
 */
unsigned long long nand_raw_get_start_addr(const char *dev_name, int *value_valid)
{
    struct mtd_partition *ptn;
    int max_partition;
    int ix;

    ptn = nandraw_ctrl->partition;

    if (0 > (max_partition = get_max_partition()))
    {
        HI_PRINT("Can't find mtd device at /dev/mtdx.\n");
        return 0;
    }

    /*as the partition start with 0, if we have x partition,the max_partition will be x-1 ,
    so in following code,we use  " ix <= max_partition" instead of " ix < max_partition"
    which be used in old SDK version. as well as , the later "if (max_partition < ix)" ,we use
     "<" instead of "=" which be used in old SDK version*/
    for (ix = 0; ix <= max_partition; ix++)
    {
        if (!strncmp(ptn->mtddev, dev_name,
        strlen(ptn->mtddev) > strlen(dev_name) ?
            strlen(ptn->mtddev) : strlen(dev_name)))
        {
            break;
        }
        ptn++;
    }

    if (max_partition < ix)
    {
        *value_valid = 0;
        return 0;
    }
    else
    {
        *value_valid = 1;
        /*lint -e661*/
        return ptn->start;
        /*lint +e661*/
    }
}
/*****************************************************************************/
/*
 * warning:
 *    1. startaddr should be alignment with pagesize
 */

int nand_raw_read
(
    unsigned long long *startaddr, /* this address maybe change when meet bad block */
    unsigned char      *buffer,
    unsigned long       length,    /* if HI_FLASH_RW_FLAG_WITH_OOB, include oob*/
    unsigned long long  openaddr,
    unsigned long long  limit_leng,
    int                 read_oob,
    int                 skip_badblock)
{
    int ix;
    int rel;
    int totalread = 0;
    int num_read  = 0;
    struct mtd_partition *ptn;
    unsigned long long offset = *startaddr;

    if (!nandraw_ctrl)
    {
        HI_PRINT("Please initialize before use this function.\n");
        return -1;
    }

    if (offset >= nandraw_ctrl->size || !length)
    {
        return -1;
    }

    if ((unsigned long)offset & nandraw_ctrl->pagemask)
    {
        HI_PRINT("startaddr should be align with pagesize(0x%lX)\n",
            nandraw_ctrl->pagesize);
        return -1;
    }

    for (ix = 0; ix < nandraw_ctrl->num_partition && length; ix++)
    {
        ptn = &nandraw_ctrl->partition[ix];
        /*lint -save -e655 */
        while ((ptn->start <= offset) && (offset < ptn->end) && length && (ptn->perm & ACCESS_RD) && ptn->fd != INVALID_FD)
        {
            //DBG_OUT("dev: \"%s\", from: 0x%llX, length: 0x%lX\n",
                //ptn->mtddev, (offset - ptn->start), length);
            if (skip_badblock)
            {
                int blockindex = (int)((offset - ptn->start) / nandraw_ctrl->blocksize);

                rel = check_skip_badblock(ptn, &blockindex, (int)nandraw_ctrl->blocksize);
                if (rel < 0)
                    return rel;

                if (rel > 0)
                {
                    /* move to start address of the block */
                    offset += (unsigned long)((HI_U32)rel << nandraw_ctrl->blockshift);
                    continue;
                }

                /* rel == 0, no bad block */
            }

            DBG_OUT(">ptn->fd=%d, length=%#lx, *startaddr=%#llx, offset=%#llx\n", ptn->fd, length, *startaddr, offset);

            if (offset - openaddr >= limit_leng)
            {
                HI_PRINT("bad block cause read end(beyond limit_leng =%#llx)!\n", limit_leng);
                return totalread;
            }

            /* read all pages in one block */
            do
            {
                /* read one page one by one */
                num_read = (int)(length >= nandraw_ctrl->pagesize ? nandraw_ctrl->pagesize : length);
                if (lseek64(ptn->fd, (off64_t)(offset - ptn->start), SEEK_SET) != -1
                    && read(ptn->fd, buffer, (size_t)num_read) != num_read)
                {
                    HI_PRINT("read \"%s\" fail. %s\n",
                        ptn->mtddev, strerror(errno));
                    return -1;
                }

                buffer    += num_read;
                length    -= (unsigned long)num_read;
                totalread += num_read;

                if (read_oob)
                {
                    struct mtd_oob_buf oob;

                    if (length >= nandraw_ctrl->oobused)
                    {
                        oob.start  = (unsigned long)(offset - ptn->start);
                        oob.length = nandraw_ctrl->oobused;
                        oob.ptr    = (unsigned char *)buffer;

                        if (ioctl(ptn->fd, MEMREADOOB, &oob))
                        {
                            HI_PRINT("read oob \"%s\" fail. %s\n",
                                ptn->mtddev, strerror(errno));
                            return -1;
                        }

                        buffer    += nandraw_ctrl->oobused;
                        length    -= nandraw_ctrl->oobused;
                        totalread += (int)nandraw_ctrl->oobused;
                    }
                    else
                    {
                        /* read end when length less than oobsize. */
                        length = 0;
                    }
                }
                offset += (unsigned long)num_read;

            } while (length && (offset & nandraw_ctrl->blockmask));
        }
    }
    *startaddr = offset;

    return totalread;
}
/*****************************************************************************/
/*
 * warning:
 *    1. offset should be alignment with blocksize
 *    2. if there is a bad block, length should subtract.
 */
//int nand_raw_erase(unsigned long long offset, unsigned long long length, unsigned long long limit_leng)
long long nand_raw_erase
(
    unsigned long long startaddr,
    unsigned long long length,
    unsigned long long openaddr,
    unsigned long long limit_leng)
{
    int ix;
    int rel;
    long long totalerase = 0;
    unsigned long long offset = startaddr;
    int blockindex;
    struct mtd_partition *ptn;

    if (!nandraw_ctrl)
    {
        HI_PRINT("Please initialize before use this function.\n");
        return -1;
    }

    if (offset >= nandraw_ctrl->size || !length)
    {
        return -1;
    }

    if (((unsigned long)offset & nandraw_ctrl->blockmask)
        || ((unsigned long)length & nandraw_ctrl->blockmask))
    {
        HI_PRINT("offset or length should be alignment with blocksize(0x%X)\n",
            (unsigned int)nandraw_ctrl->blocksize);
        return -1;
    }

    if (offset + length > nandraw_ctrl->size)
        length = nandraw_ctrl->size - offset;

    for (ix = 0; ix < nandraw_ctrl->num_partition && length; ix++)
    {
        ptn = &nandraw_ctrl->partition[ix];

        if (ptn->readonly)
        {
            HI_PRINT("erase a read only partition \"%s\".\n", ptn->mtddev);
            return -1;
        }

        while ((ptn->start <= offset) && (offset < ptn->end) && length && (ptn->perm & ACCESS_WR) && ptn->fd != INVALID_FD)
        {
            //DBG_OUT("dev: \"%s\", from: 0x%llX, length: 0x%llX\n",
                //ptn->mtddev, (offset - ptn->start), length);
            if (offset - openaddr >= limit_leng)
            {
                HI_PRINT("1bad block cause erase end(beyond limit_leng =%#llx)!\n", limit_leng);
                return totalerase;
            }

            blockindex = (int)((offset - ptn->start) >> nandraw_ctrl->blockshift);

            rel = check_skip_badblock(ptn, &blockindex, (int)nandraw_ctrl->blocksize);

            /* no bad block */
            if (!rel)
            {
                struct erase_info_user64 eraseinfo;

                eraseinfo.start  = (unsigned long long)(offset - ptn->start);
                eraseinfo.length = (unsigned long long)(nandraw_ctrl->blocksize);

                DBG_OUT(">ptn->fd=%d, length=%#llx, *startaddr=%#llx, offset=%#llx\n", ptn->fd, length, startaddr, offset);

                /* the block will be marked bad when erase error, so don't deal with */
                if (ioctl(ptn->fd, MEMERASE64, &eraseinfo))
                {
                    HI_PRINT("Erase 0x%llx failed!\n", offset);
                    if ((rel = nand_mark_badblock(offset, (unsigned long long)nandraw_ctrl->blocksize)) != 0)
                    {
                        HI_PRINT("\nMTD block_markbad at 0x%08llx failed: %d, aborting\n",
                                offset, rel);
                        return HI_FAILURE;
                    }
                }
                rel = 1;
                length -=   nandraw_ctrl->blocksize;
                totalerase +=  nandraw_ctrl->blocksize;
            }

            if (rel < 0)
                return HI_FAILURE;

            /* rel > 0 */
            offset += (unsigned long)((HI_U32)rel << nandraw_ctrl->blockshift);
        }
    }
    return totalerase;
}

/*****************************************************************************/
/*
 * warning:
 *    1. offset should be alignment with blocksize
 */
int nand_raw_force_erase(unsigned long long offset)
{
    int ix;
    int rel;
    struct mtd_partition *ptn;

    if (!nandraw_ctrl)
    {
        HI_PRINT("Please initialize before use this function.\n");
        return -1;
    }

    if (offset >= nandraw_ctrl->size)
    {
        return 0;
    }

    if ((unsigned long)offset & nandraw_ctrl->blockmask)
    {
        HI_PRINT("offset should be alignment with blocksize(0x%X)\n",
            (unsigned int)nandraw_ctrl->blocksize);
        return -1;
    }

    for (ix = 0; ix < nandraw_ctrl->num_partition; ix++)
    {
        ptn = &nandraw_ctrl->partition[ix];

        if (ptn->readonly)
        {
            HI_PRINT("erase a read only partition \"%s\".\n", ptn->mtddev);
            return -1;
        }

        if ((ptn->start <= offset) && (offset < ptn->end) && (ptn->perm & ACCESS_WR) && ptn->fd != INVALID_FD)
        {
            DBG_OUT("dev: \"%s\", from: 0x%llX\n",
                ptn->mtddev, (offset - ptn->start));

            offset =offset - ptn->start;

            rel = ioctl(ptn->fd, MEMFORCEERASEBLOCK, &offset);
            if (rel)
            {
                HI_PRINT("Force Erase 0x%llx failed!\n", offset);
                return -1;
            }
        }
    }
    return 0;
}
/*****************************************************************************/
#define DATABUF_MAX_LEN                         0x5000 /* 20KB */
static unsigned char databuf[DATABUF_MAX_LEN] = {0};
/*
 * phyaddress is a write fail address
 * 1. find the next good block
 * 2. read from the block start when write fail
 * 3. write this page to "the next good block"
 */
static int move_data(struct mtd_partition *ptn,
		     struct nand_raw_ctrl * nandraw_ctrl,
		     unsigned long long *phyaddress,
		     int withoob)
{
	int ret;
	unsigned long long phyaddr_org = *phyaddress;
	unsigned long long newaddr; /* next good block start address */
	unsigned long long badaddr; /* the prev bad block start address */
	unsigned int move_length;   /* data length need to be move */
	unsigned int pagesize = nandraw_ctrl->pagesize;
	int blockindex = 0;
	int badblock_num = 0;
	unsigned char oobbuf[512];

	badaddr = phyaddr_org;
	move_length = (((unsigned int)phyaddr_org) & (nandraw_ctrl->blocksize - 1));
	if (!move_length) {
		(*phyaddress) += nandraw_ctrl->blocksize;
		return 0;
	}

find_next_block:
	/* find next good block */
	newaddr = (badaddr) & ~((nandraw_ctrl->blocksize) - 1);
	badblock_num = 1;
	do {
		newaddr += badblock_num * nandraw_ctrl->blocksize;
		blockindex = (int)((newaddr - ptn->start) >> nandraw_ctrl->blockshift);
		if (newaddr >= ptn->end) {
			printf("ERROR: Not found just one good block\n");
			return -1;
		}
		badblock_num = check_skip_badblock(ptn, &blockindex, 
						 (int)nandraw_ctrl->blocksize);
		if (badblock_num < 0) {
			HI_PRINT("Get nand badblock fail.\n");
			return -1;
		}
	} while (badblock_num);

	badaddr = phyaddr_org & ~((nandraw_ctrl->blocksize) - 1);
	move_length = (((unsigned int)phyaddr_org) & (nandraw_ctrl->blocksize - 1));

	do {
		/*
		 * read one page from the bad block.
		 * The old block address should be marked bad after move finish.
		 * otherwise, the BB will be moved to the new block.
		 */

		if (lseek64(ptn->fd, (off64_t)(badaddr - ptn->start), SEEK_SET) != -1
			&& read(ptn->fd, databuf, (size_t)pagesize) != pagesize)
		{
			HI_PRINT("read \"%s\" fail. %s\n", ptn->mtddev, strerror(errno));
			return -errno;
		}

		if (withoob)
		{
			struct mtd_oob_buf oob;

			if (move_length >= nandraw_ctrl->oobused)
			{
				oob.start  = (unsigned long)(badaddr - ptn->start);
				oob.length = nandraw_ctrl->oobused;
				oob.ptr    = (unsigned char *)(databuf + nandraw_ctrl->pagesize);

			if (ioctl(ptn->fd, MEMREADOOB, &oob))
			{
				HI_PRINT("read oob \"%s\" fail. %s\n", ptn->mtddev, strerror(errno));
				return -errno;
			}
		}
		else
		{
			/* read end when length less than oobsize. */
			move_length = 0;
		}
		}

		/* for ioctl cmd args */
		struct mtd_write_req write_req_buf;
                /* should reerase and write if write error when upgrade. */
                memset(&write_req_buf, 0xff, sizeof(write_req_buf));
                write_req_buf.start = newaddr - ptn->start;;
                write_req_buf.usr_data = (unsigned long long)(unsigned int)databuf;
                write_req_buf.len = nandraw_ctrl->pagesize;;
                write_req_buf.ooblen = nandraw_ctrl->oobused;
                write_req_buf.mode = MTD_OPS_PLACE_OOB;

		if (withoob)
			write_req_buf.usr_oob = (unsigned long long)(unsigned int)(databuf + nandraw_ctrl->pagesize);
		else {
			memset(oobbuf, 0xff, sizeof(oobbuf));
			write_req_buf.usr_oob = (unsigned long long)(unsigned int)oobbuf;
		}
	
		ret = ioctl(ptn->fd, MEMWRITE, &write_req_buf);
		if (ret < 0) {
			HI_PRINT("ioctl(%s, MEMEWRITEPAGE) fail. %s\n",
				ptn->mtddev, strerror(errno));
			badaddr = newaddr & ~((nandraw_ctrl->blocksize) - 1);

			printf("%s->%d: Mark bad block (0x%08llx) ", __func__, __LINE__, badaddr);
			ret = nand_mark_badblock(badaddr,
					(unsigned long long)nandraw_ctrl->blocksize);
			if (ret) {
				printf("fail.\n");
				return -1;
			}
			printf("success.\n");
			goto find_next_block;
		}

		badaddr     += nandraw_ctrl->pagesize;
		newaddr     += nandraw_ctrl->pagesize;
		move_length -= nandraw_ctrl->pagesize;
	} while (move_length);

	(*phyaddress) = newaddr;
	return 0;
}

/*****************************************************************************/
/*
 * warning:
 *    1. startaddr should be alignment with pagesize
 */
int nand_raw_write
(
    unsigned long long *startaddr,
    unsigned char *buffer,
    unsigned long length,
    unsigned long long openaddr,
    unsigned long long limit_leng,
    int write_oob)
{
    int ix;
    int rel;
    int totalwrite = 0;
    int num_write = 0;
    int blockindex;
    unsigned char *databuf = NULL;
    unsigned char *oobbuf  = NULL;
    int ret = -1;

    /* for ioctl cmd args */
    struct mtd_write_req write_req_buf;
    unsigned long long start;
    unsigned long long datalen;
    unsigned long long ooblen;
    unsigned char *data_ptr;
    unsigned char *oob_ptr;

    struct mtd_partition *ptn;
    unsigned long long offset = *startaddr;

    databuf = malloc(NAND_PAGE_BUF_SIZE);
    if (NULL == databuf)
    {
        ret = -1;
        goto fail;
    }
    memset(databuf, 0, NAND_PAGE_BUF_SIZE);

    oobbuf = malloc(NAND_OOB_BUF_SIZE);
    if (NULL == oobbuf)
    {
        ret = -1;
        goto fail;
    }
    memset(oobbuf, 0, NAND_OOB_BUF_SIZE);

    if (!nandraw_ctrl)
    {
        HI_PRINT("Please initialize before use this function.\n");
        ret = -1;
        goto fail;
    }

    if (offset >= nandraw_ctrl->size || !length)
    {
        ret = -1;
        goto fail;
    }

    if ((unsigned long)offset & nandraw_ctrl->pagemask)
    {
        HI_PRINT("Startaddr should be alignment with pagesize(0x%lX)\n",
            nandraw_ctrl->pagesize);
        ret = -1;
        goto fail;

    }

    /* if write_oob is used, align with (oobsize + pagesize) */
    if (write_oob && (length % (nandraw_ctrl->pagesize + nandraw_ctrl->oobused)))
    {
        HI_PRINT("Length should be alignment with pagesize + oobsize when write oob.\n");
        ret = -1;
        goto fail;

    }

    if (!write_oob)
    {
        if (NAND_OOB_BUF_SIZE < nandraw_ctrl->oobused)
        {
            HI_PRINT("%s: BUG program need enough oobbuf.\n",
                __FUNCTION__);
            ret = -1;
            goto fail;
        }
        memset(oobbuf, 0xFF, NAND_OOB_BUF_SIZE);
    }

    if (NAND_PAGE_BUF_SIZE < nandraw_ctrl->pagesize)
    {
        HI_PRINT("%s: BUG program need enough databuf.\n",
            __FUNCTION__);
        ret = -1;
        goto fail;
    }

    for (ix = 0; ix < nandraw_ctrl->num_partition && length; ix++)
    {
        ptn = &nandraw_ctrl->partition[ix];
        if (ptn->readonly)
        {
            HI_PRINT("Write a read only partition \"%s\".\n", ptn->mtddev);
            ret = -1;
            goto fail;
        }

        while ((ptn->start <= offset) && (offset < ptn->end) && length && (ptn->perm & ACCESS_WR) && ptn->fd != INVALID_FD)
        {
            /* must skip bad block when write */
            blockindex = (int)((offset - ptn->start) >> nandraw_ctrl->blockshift);

            rel = check_skip_badblock(ptn, &blockindex, (int)nandraw_ctrl->blocksize);
            if (rel < 0) {
                ret = rel;
                goto fail;
            }

            if (rel > 0)
            {
                /* move to start address of the block */
                offset += (unsigned long)((HI_U32)rel << nandraw_ctrl->blockshift);
                continue;
            }

            /* rel == 0, no bad block */

            DBG_OUT(">ptn->fd=%d, length=%#lx, *startaddr=%#llx, offset=%#llx\n", ptn->fd, length, *startaddr, offset);

            if (offset - openaddr >= limit_leng)
            {
                HI_PRINT("bad block cause write end(beyond limit_leng =%#llx)!\n", limit_leng);
                ret = HI_FLASH_END_DUETO_BADBLOCK;
                goto fail;
            }

            /* write all pages in one block */
            do
            {
                num_write = (int)(length >= nandraw_ctrl->pagesize ? nandraw_ctrl->pagesize : length);

                start = offset - ptn->start;
                if ((HI_U32)num_write < nandraw_ctrl->pagesize)
                {
                    /* less than one pagesize */
                    memset(databuf, 0xFF, NAND_PAGE_BUF_SIZE);
                    memcpy(databuf, buffer, (size_t)num_write);
                    data_ptr = databuf;
                }
                else
                    data_ptr = buffer;

                datalen = nandraw_ctrl->pagesize;

                if (write_oob) /* if write_oob */
                {
                    if (length < nandraw_ctrl->oobused)
                    {
                        HI_PRINT("%s(%d): buf not align error!\n", __FILE__, __LINE__);
                        ret = -1;
                        goto fail;

                    }

		    oob_ptr = buffer + nandraw_ctrl->pagesize;
                }
                else
                    oob_ptr = oobbuf;

                ooblen = nandraw_ctrl->oobused;

                /* avoid mark bad block unexpected. */
                if ((*(oob_ptr + 1) << 8) + *oob_ptr != 0xFFFF)
                {
                    HI_PRINT("Please check input data, it maybe mark bad block. value:0x%04X\n",
                        (*(oob_ptr + 1) << 8) + *oob_ptr);
                    ret = -1;
                    goto fail;
                }

                /* should reerase and write if write error when upgrade. */
                memset(&write_req_buf, 0xff, sizeof(write_req_buf));
                write_req_buf.start = start;
                write_req_buf.usr_data = (unsigned long long)(unsigned int)data_ptr;
                write_req_buf.len = datalen;
                write_req_buf.usr_oob = (unsigned long long)(unsigned int)oob_ptr;
                write_req_buf.ooblen = ooblen;
                write_req_buf.mode = MTD_OPS_PLACE_OOB;

                if (ioctl(ptn->fd, MEMWRITE, &write_req_buf) != 0)
                {
			HI_PRINT("ioctl(%s, MEMWRITE) fail. %s\n",
				ptn->mtddev, strerror(errno));

			unsigned long long badaddr = offset & ~((nandraw_ctrl->blocksize) - 1);
			int ret = move_data(ptn, nandraw_ctrl, &offset, write_oob);
			if (ret) {
				goto fail;
			}

			ret = nand_mark_badblock(badaddr,
				(unsigned long long)nandraw_ctrl->blocksize);
			if (ret) {
				printf("fail. \n");
				ret = -1;
				 goto fail;
			}
			printf("success. \n");
			continue;
		}

		offset     += num_write;
		length     -= (HI_U32)num_write;
		buffer     += num_write;
		totalwrite += num_write;
		if (write_oob) {
			buffer     += nandraw_ctrl->oobused;
			length     -= nandraw_ctrl->oobused;
			totalwrite += (int)nandraw_ctrl->oobused;
		}
            } while (length && (offset & nandraw_ctrl->blockmask));
        }
    }

    *startaddr = offset;
    ret = totalwrite;

done:
    if (databuf)
        free(databuf);
    if (oobbuf)
        free(oobbuf);
    return ret;
fail:
    goto done; 
}
/*****************************************************************************/
/*
 * warning:
 *    1. offset and length should be alignment with blocksize
 */
int nand_mark_badblock(unsigned long long offset, unsigned long long length)
{
    int ix;
    unsigned long long blockoffset;
    struct mtd_partition *ptn;
    int block_isbad = 0;
    int blockindex;

    if (!nandraw_ctrl)
    {
        HI_PRINT("Please initialize before use this function.\n");
        return -1;
    }

    if (offset >= nandraw_ctrl->size || !length)
    {
        return 0;
    }

    if (((unsigned long)offset & nandraw_ctrl->blockmask)
        || ((unsigned long)length & nandraw_ctrl->blockmask))
    {
        HI_PRINT("offset or length should be alignment with blocksize(0x%X)\n",
            (unsigned int)nandraw_ctrl->blocksize);
        return -1;
    }

    if (offset + length > nandraw_ctrl->size)
        length = nandraw_ctrl->size - offset;

    for (ix = 0; ix < nandraw_ctrl->num_partition && length; ix++)
    {
        ptn = &nandraw_ctrl->partition[ix];

        while ((ptn->start <= offset) && (offset < ptn->end) && length && ptn->fd != INVALID_FD)
        {
            if (ptn->readonly)
            {
                HI_PRINT("mark bad block error, a read only partition \"%s\".\n", ptn->mtddev);
                return -1;
            }

            DBG_OUT("dev: \"%s\", from: 0x%llX, length: 0x%llX\n",
                ptn->mtddev, (offset - ptn->start), length);

            blockoffset = offset - ptn->start;

            if (ioctl(ptn->fd, MEMSETBADBLOCK, &blockoffset))
            {
                HI_PRINT("Mark bad block 0x%llX failed!\n", offset);
            }
	    blockindex = blockoffset / nandraw_ctrl->blocksize;
	    block_isbad = check_skip_badblock(ptn, &blockindex, nandraw_ctrl->blocksize);
	    if (block_isbad) {
		offset += (1UL << nandraw_ctrl->blockshift);
		length -= (1UL << nandraw_ctrl->blockshift);
		continue;
	    }

	    struct erase_info_user64 eraseinfo;

	    eraseinfo.start  = (unsigned long long)(offset - ptn->start);
	    eraseinfo.length = (unsigned long long)(nandraw_ctrl->blocksize);
	    /* the block will be marked bad when erase error, so don't deal with */
	    if (ioctl(ptn->fd, MEMERASE64, &eraseinfo))
	    {
		HI_PRINT("Erase 0x%llx failed!\n", offset);
		return -1;
	    }
            if (ioctl(ptn->fd, MEMSETBADBLOCK, &blockoffset))
            {
                HI_PRINT("Mark bad block 0x%llX failed!\n", offset);
		return -1;
            }
	    block_isbad = check_skip_badblock(ptn, &blockindex, nandraw_ctrl->blocksize);
	    if (block_isbad) {
		offset += (unsigned long)(1UL << nandraw_ctrl->blockshift);
		length -= (unsigned long)(1UL << nandraw_ctrl->blockshift);
		continue;
	    } else
		return -1;
        }
    }
    return 0;
}
/*****************************************************************************/
/*
 * warning:
 *    1. offset and length should be alignment with blocksize
 */
int nand_show_badblock(unsigned long long offset, unsigned long long length)
{
    int ix;
    int badblock;
    unsigned long long blockoffset;
    struct mtd_partition *ptn;

    if (!nandraw_ctrl)
    {
        HI_PRINT("Please initialize before use this function.\n");
        return -1;
    }

    if (offset >= nandraw_ctrl->size || !length)
    {
        return 0;
    }

    if (((unsigned long)offset & nandraw_ctrl->blockmask)
        || ((unsigned long)length & nandraw_ctrl->blockmask))
    {
        HI_PRINT("offset or length should be alignment with blocksize(0x%X)\n",
            (unsigned int)nandraw_ctrl->blocksize);
        return -1;
    }

    if (offset + length > nandraw_ctrl->size)
        length = nandraw_ctrl->size - offset;

    for (ix = 0; ix < nandraw_ctrl->num_partition && length; ix++)
    {
        ptn = &nandraw_ctrl->partition[ix];

        while ((ptn->start <= offset) && (offset < ptn->end) && length && ptn->fd != INVALID_FD)
        {
            DBG_OUT("dev: \"%s\", from: 0x%llX, length: 0x%llX\n",
                ptn->mtddev, (offset - ptn->start), length);

            blockoffset = offset - ptn->start;

            if ((badblock = ioctl(ptn->fd, MEMGETBADBLOCK, &blockoffset)) < 0)
            {
                HI_PRINT("Get nand badblock fail. %s\n", strerror(errno));
                return -1;
            }
            if (badblock == 1)
            {
                HI_PRINT("Bad block at address: 0x%lX of \"%s\", absolute address: 0x%llX\n",
                    (unsigned long)blockoffset, ptn->mtddev, (unsigned long long)offset);
            }

            offset += (unsigned long)(1UL << nandraw_ctrl->blockshift);
            length -= (unsigned long)(1UL << nandraw_ctrl->blockshift);
        }
    }
    return 0;
}
/*****************************************************************************/

int nand_raw_info(struct mtd_info_user *mtdinfo)
{
    int rel;

    if (!nandraw_ctrl)
    {
        HI_PRINT("Please initialize before use this function.\n");
        return -1;
    }

    if (nandraw_ctrl->partition[0].fd == INVALID_FD)
        return -1;
    rel = ioctl(nandraw_ctrl->partition[0].fd, MEMGETINFO, mtdinfo);

    if (rel)
    {
        HI_PRINT("ioctl \"%s\" fail. %s\n",
                nandraw_ctrl->partition[0].mtddev, strerror(errno));
        return rel;
    }

    if (nandraw_ctrl->size > 0xFFFFFFFF)
    {
        HI_PRINT("nand flash size out of range of an unsigned long.\n");
    }
    mtdinfo->size = (unsigned long)nandraw_ctrl->size;

    return 0;
}
/*****************************************************************************/

int nand_raw_dump_partition(void)
{
    int ix;
    struct mtd_partition *ptn;

    if (!nandraw_ctrl)
    {
        HI_PRINT("Please initialize before use this function.\n");
        return -1;
    }

    HI_PRINT("-------------------------\n");
    HI_PRINT("mtd device   start length mode\n");
    for (ix = 0; ix < nandraw_ctrl->num_partition; ix++)
    {
        ptn = &nandraw_ctrl->partition[ix];

        HI_PRINT("%-12s ", ptn->mtddev);
        HI_PRINT("%5s ", int_to_size(ptn->start));
        HI_PRINT("%6s ", int_to_size(ptn->end + 1 - ptn->start));
        HI_PRINT("%2s ", ptn->readonly ? "r" : "rw");
        HI_PRINT("\n");
    }

    return 0;
}
/*****************************************************************************/

int nand_raw_destroy(void)
{
    int ix;

    if (!nandraw_ctrl)
        return 0;

    for (ix = 0; ix < nandraw_ctrl->num_partition; ix++)
    {
        if( INVALID_FD != nandraw_ctrl->partition[ix].fd)
        {
            close(nandraw_ctrl->partition[ix].fd);
        }
    }

    if( NULL != nandraw_ctrl)
    {
        free(nandraw_ctrl);
    }
    nandraw_ctrl = NULL;
    //DBG_OUT("\n");

    return 0;
}

/*****************************************************************************/
/*
 *  > 0 skip bad block num.
 *  = 0 no bad block.
 *  < 0 error.
 */
static int check_skip_badblock(struct mtd_partition *ptn, int *blockindex,
    int blocksize)
{
    int rel = 0;
    int badblock;
    unsigned long long size = (ptn->end - ptn->start) + 1;
    loff_t offset = ((loff_t)(*blockindex) * (loff_t)blocksize);

    if (ptn->fd == INVALID_FD)
        return -1;
    do
    {
        if ((badblock = ioctl(ptn->fd, MEMGETBADBLOCK, &offset)) < 0)
        {
            HI_PRINT("Get nand badblock fail. %s\n", strerror(errno));
            return -1;
        }
        if (badblock == 1)
        {
            HI_PRINT("Skip bad block at address: 0x%llX of \"%s\", absolute address: 0x%llX\n",
                offset, ptn->mtddev, ((unsigned long long)offset + ptn->start));
            (*blockindex)++;
            rel++;
        }
        offset = (loff_t)(*blockindex) * (loff_t)blocksize;
    } while (badblock == 1 && offset < (loff_t)size);

    return rel;
}

//HI_PRINT("\t> ptn->start=%#llx,end=%#llx,endaddr=%#llx,offset_addr=%#llx, offset=%#x, ptn->fd=%d\n",
    //ptn->start, ptn->end, endaddr, offset_addr, (unsigned int)offset, ptn->fd);
int nand_raw_get_physical_index(unsigned long long startaddr, int *blockindex, int blocksize)
{
    struct mtd_partition *ptn;
    int badblock;
    int ix, i = 0;

    loff_t offset = (unsigned long)0;
    unsigned long long offset_addr = startaddr;
    int logcial_index = *blockindex;
    int physical_index = 0;

    for (ix = 0; i < logcial_index && ix < nandraw_ctrl->num_partition; ix++)
    {
        ptn = &nandraw_ctrl->partition[ix];

        if (ptn->end + 1 <= startaddr)
        {
            continue;
        }

        if (ptn->fd == INVALID_FD)
            return -1;
        while ((i < logcial_index) && (offset_addr < ptn->end))
        {
            offset = (loff_t)(offset_addr - ptn->start);

            if ((badblock = ioctl(ptn->fd, MEMGETBADBLOCK, &offset)) < 0)
            {
                HI_PRINT("Get nand badblock fail. %s\n", strerror(errno));
                return -1;
            }
            if (0 == badblock)
            {
                //HI_PRINT("> Skip bad block at address: 0x%lX of \"%s\", absolute address: 0x%llX\n",
                //(unsigned long)offset, ptn->mtddev, (unsigned long long)(offset + ptn->start));
                i++;
            }
            physical_index++;
            offset_addr += (unsigned long)blocksize;
        }
    }

    DBG_OUT("logcial_addr=%d, physical_addr=%d\n", logcial_index, physical_index);
    //(unsigned long long)physical_index << nandraw_ctrl->blockshift, physical_index);
    *blockindex = physical_index;

    return 0;
}

/*****************************************************************************/

