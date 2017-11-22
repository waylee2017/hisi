/*
 * (C) Copyright 2002
 * Sysgo Real-Time Solutions, GmbH <www.elinos.com>
 * Marius Groeger <mgroeger@sysgo.de>
 *
 * Copyright (C) 2001  Erik Mouw (J.A.K.Mouw@its.tudelft.nl)
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307	 USA
 *
 */

#include <common.h>
#include <command.h>
#include <malloc.h>
#include <image.h>
#include <u-boot/zlib.h>
#include <asm/byteorder.h>
#include <ethcfg.h>
#include <params.h>

DECLARE_GLOBAL_DATA_PTR;

#if defined(CONFIG_SETUP_MEMORY_TAGS) || \
defined(CONFIG_CMDLINE_TAG) || \
defined(CONFIG_INITRD_TAG) || \
defined(CONFIG_SERIAL_TAG) || \
defined(CONFIG_REVISION_TAG) || \
defined(CONFIG_ETHADDR_TAG) || \
defined(CONFIG_ETHMDIO_INF) || \
defined(CONFIG_NANDID_TAG) || \
defined(CONFIG_SPIID_TAG) || \
defined(CONFIG_SDKVERSION_TAG) || \
defined(CONFIG_BOOTREG_TAG)
static void setup_start_tag (bd_t *bd);

# ifdef CONFIG_SETUP_MEMORY_TAGS
static void setup_memory_tags (bd_t *bd);
# endif
static void setup_commandline_tag (bd_t *bd, char *commandline);

# ifdef CONFIG_INITRD_TAG
static void setup_initrd_tag (bd_t *bd, ulong initrd_start,
			      ulong initrd_end);
# endif

static void setup_end_tag (bd_t *bd);

# if defined(CONFIG_ETHMDIO_INF)
static void setup_eth_mdiointf_tag(bd_t *bd, char *mdio_intf);
#endif

# if defined(CONFIG_ETHADDR_TAG)
static void setup_ethaddr_tag(bd_t *bd, char* ethaddr);
static void setup_phyaddr_tag(bd_t *bd,  int phy_addr_up, int phy_addr_down);
#endif

# if defined(CONFIG_NANDID_TAG)
static void setup_nandid_tag(bd_t *bd);
#endif

#  if defined(CONFIG_NAND_PARAM_TAG)
static void set_nand_param_tag(bd_t *bd);
#endif

# if defined(CONFIG_SPIID_TAG)
static void setup_spiid_tag(bd_t *bd);
#endif

# if defined(CONFIG_SDKVERSION_TAG)
static void setup_sdkversion_tag(bd_t *bd);
#endif

# if defined(CONFIG_BOOTREG_TAG)
static void setup_bootreg_tag(bd_t *bd);
#endif

static void setup_eth_param(void);
static void setup_param_tag(bd_t *bd);

static struct tag *params;
#endif /* CONFIG_SETUP_MEMORY_TAGS || CONFIG_CMDLINE_TAG || CONFIG_INITRD_TAG */

#if defined(CONFIG_BOOTARGS_MERGE)
static char *bootargs_merge(void)
{
	char *args_merge;
	char args_merge_name[32];
	unsigned int ddrsize = get_ddr_size();

	snprintf(args_merge_name, sizeof(args_merge_name), "bootargs_%s",
		 ultohstr((unsigned long long)ddrsize));

	args_merge = getenv(args_merge_name);

	return merge_args(getenv("bootargs"), args_merge, "booargs",
			  args_merge_name);
}
#endif /* CONFIG_BOOTARGS_MERGE */

int do_bootm_linux(int flag, int argc, char *argv[], bootm_headers_t *images)
{
	bd_t	*bd = gd->bd;
	char	*s;
	int	machid = bd->bi_arch_number;
	void	(*theKernel)(int zero, int arch, uint params);

#ifdef CONFIG_CMDLINE_TAG
	char *commandline = getenv ("bootargs");
#endif

	if ((flag != 0) && (flag != BOOTM_STATE_OS_GO))
		return 1;

	theKernel = (void (*)(int, int, uint))images->ep;

	s = getenv ("machid");
	if (s) {
		machid = simple_strtoul (s, NULL, 16);
		printf ("Using machid 0x%x from environment\n", machid);
	}

	show_boot_progress (15);

	debug ("## Transferring control to Linux (at address %08lx) ...\n",
	       (ulong) theKernel);

#if defined (CONFIG_SETUP_MEMORY_TAGS) || \
    defined (CONFIG_CMDLINE_TAG) || \
    defined (CONFIG_INITRD_TAG) || \
    defined (CONFIG_SERIAL_TAG) || \
    defined (CONFIG_REVISION_TAG) || \
    defined (CONFIG_BOOTREG_TAG)
	setup_start_tag (bd);
#ifdef CONFIG_SERIAL_TAG
	setup_serial_tag (&params);
#endif
#ifdef CONFIG_REVISION_TAG
	setup_revision_tag (&params);
#endif
#ifdef CONFIG_SETUP_MEMORY_TAGS
	setup_memory_tags (bd);
#endif
#ifdef CONFIG_CMDLINE_TAG
#  ifdef CONFIG_BOOTARGS_MERGE
	commandline = bootargs_merge();
	setup_commandline_tag (bd, commandline);
	if (commandline) {
		free(commandline);
		commandline = NULL;
	}
#  else
	setup_commandline_tag (bd, commandline);
#  endif /* CONFIG_BOOTARGS_MERGE */
#endif
#ifdef CONFIG_INITRD_TAG
	if (images->rd_start && images->rd_end)
		setup_initrd_tag (bd, images->rd_start, images->rd_end);
#endif
#if defined(CONFIG_ETHMDIO_INF)
	setup_eth_mdiointf_tag(bd, getenv("mdio_intf"));
#endif
#if defined(CONFIG_ETHADDR_TAG)
	setup_ethaddr_tag(bd, getenv("ethaddr"));
	setup_phyaddr_tag(bd, U_PHY_ADDR, D_PHY_ADDR);
#endif
#if defined(CONFIG_NANDID_TAG)
	setup_nandid_tag(bd);
#endif
#if defined(CONFIG_NAND_PARAM_TAG)
	set_nand_param_tag(bd);
#endif
#if defined(CONFIG_SPIID_TAG)
	setup_spiid_tag(bd);
#endif
#if defined(CONFIG_SDKVERSION_TAG)
	setup_sdkversion_tag(bd);
#endif
#if defined(CONFIG_BOOTREG_TAG)

	if (get_chipid() == _HI3716M_V200)
		setup_bootreg_tag(bd);

#endif
	setup_eth_param();
	setup_param_tag(bd);
	setup_end_tag (bd);
#endif

	/* we assume that the kernel is in place */
	printf ("\nStarting kernel ...\n\n");

#ifdef CONFIG_USB_DEVICE
	{
		extern void udc_disconnect (void);
		udc_disconnect ();
	}
#endif

	cleanup_before_linux ();

	theKernel (0, machid, bd->bi_boot_params);
	/* does not return */

	return 1;
}


#if defined(CONFIG_SETUP_MEMORY_TAGS) || \
defined(CONFIG_CMDLINE_TAG) || \
defined(CONFIG_INITRD_TAG) || \
defined(CONFIG_SERIAL_TAG) || \
defined(CONFIG_REVISION_TAG) || \
defined(CONFIG_ETHADDR_TAG) || \
defined(CONFIG_SDKVERSION_TAG) || \
defined(CONFIG_BOOTREG_TAG)
static void setup_start_tag (bd_t *bd)
{
	params = (struct tag *) bd->bi_boot_params;

	params->hdr.tag = ATAG_CORE;
	params->hdr.size = tag_size (tag_core);

	params->u.core.flags = 0;
	params->u.core.pagesize = 0;
	params->u.core.rootdev = 0;

	params = tag_next (params);
}

#ifdef CONFIG_SETUP_MEMORY_TAGS
static void setup_memory_tags (bd_t *bd)
{
	int i;

	for (i = 0; i < CONFIG_NR_DRAM_BANKS; i++) {
		params->hdr.tag = ATAG_MEM;
		params->hdr.size = tag_size (tag_mem32);

		params->u.mem.start = bd->bi_dram[i].start;
		params->u.mem.size = bd->bi_dram[i].size;

		params = tag_next (params);
	}
}
#endif /* CONFIG_SETUP_MEMORY_TAGS */

static void setup_commandline_tag (bd_t *bd, char *commandline)
{
	char *p;

	if (!commandline)
		return;

	/* eat leading white space */
	for (p = commandline; *p == ' '; p++);

	/* skip non-existent command lines so the kernel will still
	 * use its default command line.
	 */
	if (*p == '\0')
		return;

	params->hdr.tag = ATAG_CMDLINE;
	params->hdr.size =
		(sizeof (struct tag_header) + strlen (p) + 1 + 4) >> 2;

	strncpy (params->u.cmdline.cmdline, p, strlen(p));
	params->u.cmdline.cmdline[strlen(p)] = '\0';

	params = tag_next (params);
}

#ifdef CONFIG_ETHMDIO_INF
static void setup_eth_mdiointf_tag(bd_t *bd, char *mdio_intf)
{
	unsigned char mac[6];
	if (!mdio_intf)
		return ;
	params->hdr.tag = CONFIG_ETH_MDIO_INF_TAG_VAL;
	params->hdr.size = 4;

	memcpy(&params->u, mdio_intf, (strlen(mdio_intf)+1));
	params = tag_next(params);
}
#endif
#ifdef CONFIG_ETHADDR_TAG
static void string_to_mac(unsigned char *mac, char* s)
{
	int i;
	char *e;

	for (i = 0; i < 6; ++i) {
		mac[i] = s ? simple_strtoul(s, &e, 16) : 0;
		if (s)
			s = (*e) ? e+1 : e;
	}
}

static void setup_ethaddr_tag(bd_t *bd, char *ethaddr)
{
	unsigned char mac[6];
	if (!ethaddr)
		return ;

	params->hdr.tag = CONFIG_ETHADDR_TAG_VAL;
	params->hdr.size = 4;

	string_to_mac(&mac[0], ethaddr);
	memcpy(&params->u, mac, 6);

	params = tag_next(params);
}

static void setup_phyaddr_tag(bd_t *bd, int phy_addr_up, int phy_addr_down)
{
	params->hdr.tag = CONFIG_PHYADDR_TAG_VAL;
	params->hdr.size = 4;

	*(int*)(&params->u) = phy_addr_up;
	*((int*)(&params->u) + 1) = phy_addr_down;

	params = tag_next(params);
}
#endif

#ifdef CONFIG_NANDID_TAG
extern struct nand_tag nandtag[1];

static void setup_nandid_tag(bd_t *bd)
{
	if (nandtag->length == 0)
		return;

	params->hdr.tag = ATAG_NDNDID;
	params->hdr.size = (sizeof(struct tag_header)
			+ sizeof(struct nand_tag)) >> 2;

	memcpy(&params->u, nandtag, sizeof(struct nand_tag));

	params = tag_next(params);
}
#endif

#ifdef CONFIG_NAND_PARAM_TAG
extern int nand_get_rr_param(char *param);

static void set_nand_param_tag(bd_t *bd)
{
	int size;

	params->hdr.tag = ATAG_NAND_PARAM;
	size = nand_get_rr_param((char *)&params->u);
	params->hdr.size = (sizeof(struct tag_header) + size) >> 2;
	params = tag_next(params);
}
#endif /* CONFIG_NAND_PARAM_TAG */

#ifdef CONFIG_SPIID_TAG
extern struct spi_tag spitag[1];

static void setup_spiid_tag(bd_t *bd)
{
	if (spitag->id_len == 0)
		return;

	params->hdr.tag = ATAG_SPIID;
	params->hdr.size = (sizeof(struct tag_header) +
			sizeof(struct spi_tag)) >> 2;

	memcpy(&params->u, &spitag, sizeof(struct spi_tag));

	params = tag_next(params);
}
#endif

#ifdef CONFIG_SDKVERSION_TAG
#define SDKVERSION_LENGTH                 64
static void setup_sdkversion_tag(bd_t *bd)
{
	char *version = CONFIG_SDKVERSION;

	params->hdr.tag = CONFIG_SDKVERSION_TAG_VAL;
	params->hdr.size = (sizeof(struct tag_header) + SDKVERSION_LENGTH) >> 2;
	memcpy(&params->u, version, SDKVERSION_LENGTH);

	params = tag_next(params);
}
#endif

#ifdef CONFIG_BOOTREG_TAG
static void setup_bootreg_tag(bd_t *bd)
{
	extern unsigned int _blank_zone_start;
	extern unsigned int _blank_zone_end;
	int length = _blank_zone_end - _blank_zone_start;

	params->hdr.tag = CONFIG_BOOTREG_TAG_VAL;
	params->hdr.size = (sizeof(struct tag_header)
		+ sizeof(int) + length) >> 2;
	*(int *)&params->u = length;
	memcpy(((char *)&params->u + sizeof(int)),
		(char *)_blank_zone_start, length);

	params = tag_next(params);
}
#endif

#ifdef CONFIG_INITRD_TAG
static void setup_initrd_tag (bd_t *bd, ulong initrd_start, ulong initrd_end)
{
	/* an ATAG_INITRD node tells the kernel where the compressed
	 * ramdisk can be found. ATAG_RDIMG is a better name, actually.
	 */
	params->hdr.tag = ATAG_INITRD2;
	params->hdr.size = tag_size (tag_initrd);

	params->u.initrd.start = initrd_start;
	params->u.initrd.size = initrd_end - initrd_start;

	params = tag_next (params);
}
#endif /* CONFIG_INITRD_TAG */

#ifdef CONFIG_SERIAL_TAG
void setup_serial_tag (struct tag **tmp)
{
	struct tag *params = *tmp;
	struct tag_serialnr serialnr;
	void get_board_serial(struct tag_serialnr *serialnr);

	get_board_serial(&serialnr);
	params->hdr.tag = ATAG_SERIAL;
	params->hdr.size = tag_size (tag_serialnr);
	params->u.serialnr.low = serialnr.low;
	params->u.serialnr.high= serialnr.high;
	params = tag_next (params);
	*tmp = params;
}
#endif

#ifdef CONFIG_REVISION_TAG
void setup_revision_tag(struct tag **in_params)
{
	u32 rev = 0;
	u32 get_board_rev(void);

	rev = get_board_rev();
	params->hdr.tag = ATAG_REVISION;
	params->hdr.size = tag_size (tag_revision);
	params->u.revision.rev = rev;
	params = tag_next (params);
}
#endif  /* CONFIG_REVISION_TAG */

extern int get_param_tag_data(char *tagbuf);

static void setup_eth_param(void)
{
	int i;
	char *env;
#define MAX_MAC_NUMS    (2)

	env = get_eth_phymdio_str();
	if (env)
		set_param_data("phymdio", env, strlen(env));

	env = get_eth_phyaddr_str();
	if (env)
		set_param_data("phyaddr", env, strlen(env));

	env = get_eth_phyintf_str();
	if (env)
		set_param_data("phyintf", env, strlen(env));

	env = getenv("ethaddr");
	if (env)
		set_param_data("ethaddr", env, strlen(env));

	for (i = 0; i < MAX_MAC_NUMS; i++) {
		char name[16];
		u32 gpio_base, gpio_bit, data[2];

		get_eth_phygpio(i, &gpio_base, &gpio_bit);
		if (!gpio_base)
			continue;
		snprintf(name, sizeof(name), "phyio%d", i);
		data[0] = gpio_base;
		data[1] = gpio_bit;
		set_param_data(name, (const char *)&data, sizeof(data));
	}
}

static void setup_param_tag(bd_t *bd)
{
	int length;

	length = get_param_tag_data((char *)&params->u);
	if (!length)
		return;

	params->hdr.tag  = 0x70000001;
	params->hdr.size = ((sizeof(struct tag_header) + length) >> 2);

	params = tag_next(params);
}

static void setup_end_tag (bd_t *bd)
{
	params->hdr.tag = ATAG_NONE;
	params->hdr.size = 0;
}

#endif /* CONFIG_SETUP_MEMORY_TAGS || CONFIG_CMDLINE_TAG || CONFIG_INITRD_TAG */
