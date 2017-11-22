#ifndef __ADVERT_API_H__		/* Prevent multiple inclusion of the file */
#define __ADVERT_API_H__

#ifdef __cplusplus
extern "C" {
#endif

#include "BrowserHDI.h"
#include "wgui.h"

#define ENABLE_ADVERT	0

//////////////////advert pic pos and size//////////////////////////////
#define ADVERT_PIC_BOOT_POS_X	0
#define ADVERT_PIC_BOOT_POS_Y	0
#define ADVERT_PIC_BOOT_W	OSD_REGINMAXWIDHT
#define ADVERT_PIC_BOOT_H	OSD_REGINMAXHEIGHT

#define ADVERT_PIC_BANNER_POS_X	10
#define ADVERT_PIC_BANNER_POS_Y	213
#define ADVERT_PIC_BANNER_W	250
#define ADVERT_PIC_BANNER_H	380

#define ADVERT_PIC_CHANNEL_POS_X	801
#define ADVERT_PIC_CHANNEL_POS_Y	415
#define ADVERT_PIC_CHANNEL_W	356
#define ADVERT_PIC_CHANNEL_H	198

#define ADVERT_PIC_VOL_POS_X	10
#define ADVERT_PIC_VOL_POS_Y	598
#define ADVERT_PIC_VOL_W	183
#define ADVERT_PIC_VOL_H	125

#define ADVERT_PIC_EPG_POS_X	460
#define ADVERT_PIC_EPG_POS_Y	133
#define ADVERT_PIC_EPG_W	358
#define ADVERT_PIC_EPG_H	186
//////////////////////////////////////////////////////////////////////


BROWSER_BOOLEAN_T Advert_Start(void);
BROWSER_BOOLEAN_T Advert_Stop(void);
BROWSER_BOOLEAN_T  Advert_ShowAdBitmap(BROWSER_U16 x,BROWSER_U16 y,BROWSER_AD_POSITION_T  p_ad_position);
BROWSER_BOOLEAN_T  Advert_CleanAdvert(BROWSER_U16 x,BROWSER_U16 y,BROWSER_AD_POSITION_T  p_ad_position);


#ifdef __cplusplus
}
#endif

#endif 


