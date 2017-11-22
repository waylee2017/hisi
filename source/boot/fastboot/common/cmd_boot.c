/*
 * (C) Copyright 2000-2003
 * Wolfgang Denk, DENX Software Engineering, wd@denx.de.
 *
 * See file CREDITS for list of people who contributed to this
 * project.
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License as
 * published by the Free Software Foundation; either version 2 of
 * the License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
 * MA 02111-1307 USA
 */

/*
 * Misc boot support
 */
#include <common.h>
#include <command.h>
#include <net.h>

/* Allow ports to override the default behavior */
__attribute__((weak))
unsigned long do_go_exec (ulong (*entry)(int, char *[]), int argc, char *argv[])
{
	return entry (argc, argv);
}

int do_go (cmd_tbl_t *cmdtp, int flag, int argc, char *argv[])
{
	ulong	addr, rc;
	int     rcode = 0;

	if (argc < 2) {
		cmd_usage(cmdtp);
		return 1;
	}

	addr = simple_strtoul(argv[1], NULL, 16);

	printf ("## Starting application at 0x%08lX ...\n", addr);

	/* invalidate I-cache */
	asm("mcr p15, 0, r0, c7, c5, 0");
	/* mem barrier to sync up things */
	asm("mcr p15, 0, r0, c7, c10, 4");

	/*
	 * pass address parameter as argv[0] (aka command name),
	 * and all remaining args
	 */
	rc = do_go_exec ((void *)addr, argc - 1, argv + 1);
	if (rc != 0) rcode = 1;

	printf ("## Application terminated, rc = 0x%lX\n", rc);
	return rcode;
}

/* -------------------------------------------------------------------- */

U_BOOT_CMD(
	go, CONFIG_SYS_MAXARGS, 1,	do_go,
	"start application at address 'addr'",
	"addr [arg ...]\n    - start application at address 'addr'\n"
	"      passing 'arg' as arguments"
);

extern int do_reset (cmd_tbl_t *cmdtp, int flag, int argc, char *argv[]);

U_BOOT_CMD(
	reset, 1, 0,	do_reset,
	"Perform RESET of the CPU",
	""
);

#ifdef CONFIG_MERGE_IMAGE_SUPPORT

extern char merge_image_start[];
extern int  merge_image_length;

int do_run (cmd_tbl_t *cmdtp, int flag, int argc, char *argv[])
{
	ulong  addr, rc;
	int    rcode = 0;

	if (argc < 1) {
		cmd_usage(cmdtp);
		return 1;
	}

	memcpy((char *)MERGE_IMAGE_BOOTADDR,
	       merge_image_start, merge_image_length);

	addr = (ulong)MERGE_IMAGE_BOOTADDR;
	printf ("## Runing merge image ...0x%08lX\n", addr);

	/* invalidate I-cache */
	asm("mcr p15, 0, r0, c7, c5, 0");
	/* mem barrier to sync up things */
	asm("mcr p15, 0, r0, c7, c10, 4");

	/*
	 * pass address parameter as argv[0] (aka command name),
	 * and all remaining args
	 */
	rc = do_go_exec ((void *)addr, argc - 1, argv + 1);
	if (rc != 0) rcode = 1;

	printf ("## Merge image terminated, rc = 0x%lX\n", rc);
	return rcode;
}

U_BOOT_CMD(
	run, CONFIG_SYS_MAXARGS, 1,	do_run,
	"run merge image in fastboot",
	"[arg ...]\n    - arguments passing to merge image\n"
);

#endif /* CONFIG_MERGE_IMAGE_SUPPORT */
