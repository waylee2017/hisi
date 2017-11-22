
/*********************************************************************************
*
*  Copyright (C) 2014 Hisilicon Technologies Co., Ltd.  All rights reserved. 
*
*  This program is confidential and proprietary to Hisilicon Technologies Co., Ltd.
*  (Hisilicon), and may not be copied, reproduced, modified, disclosed to
*  others, published or used, in whole or in part, without the express prior
*  written permission of Hisilicon.
*
***********************************************************************************
  File Name     : drv_ao.c
  Version       : Initial Draft
  Author        : Hisilicon multimedia software group
  Created       : 2013/04/17
  Description   :
  History       :
  1.Date        : 2013/04/17
    Author      : zgjie
    Modification: Created file

******************************************************************************/
#ifndef _RESAMPLERS_CONFIG_H_
#define _RESAMPLERS_CONFIG_H_

#include "resampler_statname.h"

#ifdef __cplusplus
extern "C" {
#endif

//#define ENA_QUALITY_LOW
#define ENA_QUALITY_MEDIUM
#define ENA_QUALITY_GOOD

/*
   quality defination
 */
enum
{
#ifdef ENA_QUALITY_LOW
    QUALITY_LOW = 0, // as low a quality as we dare
#endif

#ifdef ENA_QUALITY_MEDIUM
    QUALITY_MEDIUM = 1, // somewhat better
#endif

#ifdef ENA_QUALITY_GOOD
    QUALITY_GOOD = 2, // the default, probably sufficient for the player
#endif
};

#define NBLOCK (MAXFRAMESIZE * 2)  /* 2058 */

//#define CONFIG_RES_GENERATE_TRIGTABS_FLOAT
#ifndef CONFIG_RES_GENERATE_TRIGTABS_FLOAT
 #define NEW_RATE_SUPPORT
#endif

#endif /* _RESAMPLERS_CONFIG_H_ */
