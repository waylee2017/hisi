/******************************************************************************
 *    Copyright (C) 2014 Hisilicon STB Development Dept
 *    All rights reserved.
 * ***
 *    Create by Czyong
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *   http://www.apache.org/licenses/LICENSE-2.0
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
******************************************************************************/

#include <compile.h>
#include <stdio.h>
#include <string.h>
#include <run.h>
#include <env_set.h>
#include <module.h>
#include <mmu.h>
#include <cache.h>
#include <crc32.h>
#include <irq.h>
#include <board.h>

struct img_hdr_t {
#define UIMG_MAGIC        0x27051956
	uint32 magic;
	uint32 hcrc;
	uint32 time;
	uint32 size;
	uint32 load;
	uint32 entry;
	uint32 dcrc;
	uint8 os;
	uint8 arch;
	uint8 type;
	uint8 comp;
	char name[32];
};

typedef struct boot_img_hdr boot_img_hdr;

#define BOOT_MAGIC              "ANDROID!"
#define BOOT_MAGIC_SIZE         8
#define BOOT_NAME_SIZE          16
#define BOOT_ARGS_SIZE          512
#define HI_ADVCA_MAGIC          "Hisilicon_ADVCA_ImgHead_MagicNum"
#define HI_ADVCA_MAGIC_SIZE     32
#define MAX_BOOTIMG_LEN         0x4000000  /* 64M */

struct boot_img_hdr {
	char magic[BOOT_MAGIC_SIZE];

	uint32 kernel_size; /* kernel size in bytes */
	uint32 kernel_addr; /* physical load addr */

	uint32 ramdisk_size; /* ramdisk size in bytes */
	uint32 ramdisk_addr; /* physical load addr */

	uint32 second_size; /* size in bytes */
	uint32 second_addr; /* physical load addr */

	uint32 tags_addr; /* physical addr for kernel tags */
	uint32 page_size; /* flash page size we assume */
	uint32 unused[2]; /* future expansion: should be 0 */

	char name[BOOT_NAME_SIZE]; /* asciiz product name */

	char cmdline[BOOT_ARGS_SIZE];

	uint32 id[8]; /* timestamp / checksum / sha1 / etc */
};

typedef void (*kernel_fn)(int flags, int mach, uint32 tags);

/******************************************************************************/

static int check_android_image(const char *addr, const char **img_addr)
{
	struct boot_img_hdr *img_hdr = (struct boot_img_hdr *)addr;

	if (!memcmp(img_hdr->magic, BOOT_MAGIC, BOOT_MAGIC_SIZE)) {
		if ((!img_hdr->ramdisk_size)
				|| ((img_hdr->kernel_size + img_hdr->page_size) > MAX_BOOTIMG_LEN)) {
			printf("The image format invalid.\n");
			return -1;
		}
		unsigned int initrd_img_addr = (unsigned int)addr \
					       + roundup(img_hdr->kernel_size + img_hdr->page_size, img_hdr->page_size);
		memcpy((void *)img_hdr->ramdisk_addr, (void *)initrd_img_addr, img_hdr->ramdisk_size);

		/* add initrd to bootargs */
		char *bootargs = env_get("bootargs");
		if (bootargs) {
			char str[1024] = {0};
			memset(str, 0 ,sizeof(str));
			snprintf(str, sizeof(str),
					"%s initrd=0x%X,0x%X", bootargs,
					img_hdr->ramdisk_addr, img_hdr->ramdisk_size);
			str[sizeof(str)-1] = '\0';
			env_set("bootargs", str);

			/* show bootimg header */
			printf("\nFound Initrd at 0x%08X (Size %d Bytes), align at %d Bytes\n\n", \
					img_hdr->ramdisk_addr, img_hdr->ramdisk_size, img_hdr->page_size);
		}

		/* reset image address */
		*img_addr = (char *)((unsigned int)addr + (img_hdr->page_size));
	}

	return 0;
}
/******************************************************************************/

static int check_image(const char *addr, kernel_fn *kernel)
{
	uint32 tmp;
	const char *data;
	struct img_hdr_t hdr;

	/* check android image */
	if (check_android_image(addr, &addr))
		return -1;

	memcpy(&hdr, addr, sizeof(struct img_hdr_t));

	if (SWAP32(hdr.magic) != UIMG_MAGIC) {
		printf("The image format invalid.\n");
		return -1;
	}

	hdr.hcrc = 0;
	tmp = crc32(0, &hdr, sizeof(struct img_hdr_t));
	if (SWAP32(((struct img_hdr_t *)addr)->hcrc) != tmp) {
		printf("The image head crc32 check fail.\n");
		return -1;
	}

	hdr.name[sizeof(hdr.name)-1] = '\0';
	hdr.entry = SWAP32(hdr.entry);
	hdr.size = SWAP32(hdr.size);
	hdr.load = SWAP32(hdr.load);
	hdr.dcrc = SWAP32(hdr.dcrc);

	printf("Kernel Name:   %s\n", hdr.name);
	printf("Kernel Size:   %d\n", hdr.size);
	printf("Load Address:  0x%08X\n", hdr.load);
	printf("Entry Address: 0x%08X\n", hdr.entry);

	data = addr + sizeof(struct img_hdr_t);

#ifdef CONFIG_VERIFY_KERNEL
	printf("Verifying CRC ... ");
	tmp = crc32(0, data, hdr.size);
	if (tmp != hdr.dcrc) {
		printf("Fail\n");
		return -1;
	}
	printf("OK\n");
#endif /* CONFIG_VERIFY_KERNEL */

	if ((uint32)data != hdr.load) {
		printf("Loading Kernel Image ... ");
		memcpy((char *)hdr.load, data, hdr.size);
		printf("OK\n");
	}

	if (kernel)
		*kernel = (kernel_fn)hdr.entry;

	return 0;
}
/******************************************************************************/

int kern_load(const char *addr)
{
	int ret;
	uint32 params;
	kernel_fn kernel = NULL;

	ret = check_image(addr, &kernel);
	if (ret)
		return ret;

	module_exit();
	cpu_disable_irq();

	printf ("Starting kernel ...\n\n");

#ifdef CONFIG_NET
#ifndef CHIP_TYPE_hi3716mv330
	setup_eth_param();
#endif
#endif

	params = get_kern_tags((uint32)kernel);

	mmu_cache_disable();
	cache_flush_all();

	kernel(0, CONFIG_MACHINE_ID, params);

	return 0;
}
/******************************************************************************/

int image_load(const char *addr, const char *param)
{
	int (*entry)(const char *param) = (int(*)(const char *))addr;

	module_exit();

	cpu_disable_irq();
	mmu_cache_disable();
	cache_flush_all();

	invalidIcache();
	DSB();
	ISB();

	return entry(param);
}
