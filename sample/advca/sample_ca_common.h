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
#ifndef CA_COMMON_H
#define CA_COMMON_H

#ifdef  CONFIG_SUPPORT_CA_RELEASE
#define HI_DEBUG_ADVCA(format...)
#else
#define HI_DEBUG_ADVCA(format...)    printf(format)
#endif

#endif

