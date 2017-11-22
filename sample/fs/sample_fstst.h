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

#ifndef  _SAMPLE_FSTST_H_
#define  _SAMPLE_FSTST_H_

#ifdef __cplusplus
extern "C" {
#endif

typedef struct
{
    HI_S32 u32WriteDiskRate; //KBPS
    HI_S32 u32ReadDiskRate;  //KBPS
} Disk_PERFORMANCE_INFO_S;

HI_S32 DataWriteToDisk(void);
HI_S32 DataReadFromDisk(void);

HI_S32 test_diskPeformance_list(void);
HI_S32 test_fdisk_list(void);

#ifdef __cplusplus
}
#endif

#endif
