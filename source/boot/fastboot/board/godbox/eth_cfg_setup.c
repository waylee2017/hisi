/******************************************************************************
 *    Copyright (c) 2009-2013 by Hisilicon.
 *    All rights reserved.
 * ***
 *    Create by LiuHui, 2013-08-24
 *
******************************************************************************/
#include <config.h>
#include <common.h>
#include <asm/io.h>
#include <asm/sizes.h>
#include <asm/arch/platform.h>
#include <version.h>
#include <ethcfg.h>
#include <linux/ctype.h>

static struct eth_config {
	char phyaddr[32];
	char phymdio[32];
	char phygpio[32];
	char phyintf[32];
} eth_config;


char *get_eth_phyaddr_str(void)
{
	return NULL;
}

int get_eth_phyaddr(int index, int defval)
{
	char *env = NULL;
	int phyvalue = -1;
	char *phyaddr_env_str[2] = {
		"phyaddrup",
		"phyaddrdown"
	};

	if (index >= sizeof(phyaddr_env_str)) {
		printf("%s: Invalid index %d\n", __func__, index);
		goto out;
	}

	env = getenv(phyaddr_env_str[index]);
	if (!env) {
		goto out;
	}

	phyvalue = (*env) - '0';
	if (phyvalue & (~0x1F)) {
		   printf("%s \"%s\" invalid. "
		   "The value should be DEC number, "
		   "Such as 0, 1, ... 31",
		   phyaddr_env_str[index], env);
	} else
		   defval = phyvalue;
		
out:
	return defval;
}

char *get_eth_phyintf_str(void)
{
	return NULL;
}

char *get_eth_phymdio_str(void)
{
	return NULL;
}

int get_eth_phygpio(int index, u32 *gpio_base, u32 *gpio_bit)
{

	*gpio_base = 0;
	*gpio_bit = 0;

	return -1;
}


void eth_config_init(void)
{
	memset(&eth_config, 0, sizeof(eth_config));
}
