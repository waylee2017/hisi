/******************************************************************************
 *    COPYRIGHT (C) 2013 Czyong. Hisilicon
 *    All rights reserved.
 * ***
 *    Create by Czyong 2013-03-07
 *
******************************************************************************/

#ifndef CPUINFOH
#define CPUINFOH
/******************************************************************************/

#define _HI3716L          (0x00)
#define _HI3716M          (0x08)
#define _HI3716H          (0x0D)
#define _HI3716C          (0x1E)

#define _HI3716M_V100     (0x0837200200LL)
#define _HI3716M_V200     (0x0837160200LL)
#define _HI3716M_V300     (0x0837160300LL)
/* for Hi3716MV310 BGA, chipid is 0x0037160310LL, 
 * for Hi3716MV310 QFP, chipid is 0x0137160310LL */
#define _HI3716M_V310     (0x0037160310LL)
#define _HI3716M_V320     (0x0237160310LL)
#define _HI3716M_V330     (0x0037160330LL)
#define _HI3716M_V330_MASK     (0x00FFFFFFFFLL)
#define _HI3110E_V500     (0x0337160310LL)

#define _HI3716C_V100     (0x1E37200200LL)
#define _HI3716H_V100     (0x0D37200200LL)
#define _HI3712_V100      (0x0037120100LL)
#define _HI3716X_MASK     (0xFFFFFFFFFFLL)
#define _HI3712_MASK      (0x00FFFFFFFFLL)
#define _HI3712_V100A      (0)
#define _HI3712_V100B      (1)
#define _HI3712_V100C      (2)
#define _HI3712_V100D      (3)
#define _HI3712_V100E      (4)
#define _HI3712_V100F      (5)
#define _HI3712_V100G      (6)
#define _HI3712_V100I      (7)

#define BOOT_MEDIA_UNKNOWN                                  (0)
#define BOOT_MEDIA_DDR                                      (1)
#define BOOT_MEDIA_NAND                                     (2)
#define BOOT_MEDIA_SPIFLASH                                 (3)
#define BOOT_MEDIA_SPI_NAND                                 (4)
#define BOOT_MEDIA_EMMC                                     (5)
#define BOOT_MEDIA_SD                                       (6)

void get_clock(unsigned int *cpu, unsigned int *timer);

long long get_chipid(void);

const char * get_cpu_name(void);

const char * get_cpu_version(void);

unsigned int get_bootmedia(char **media);
/******************************************************************************/
#endif /* CPUINFOH */
