#ifndef __ENV_OPT_H__
#define __ENV_OPT_H__

#include "mlm_type.h"

#define ENV_SIZE (0x10000)
#define ENV_DATA_SIZE (ENV_SIZE - sizeof(MBT_U32))


//------------------------------------------------------------------------------

typedef struct
{
    MBT_U32 u32crc;       //CRC32 over data bytes
    MBT_U8 data[ENV_DATA_SIZE];
} SPI_EnvInfo;



//------------------------------------------------------------------------------

MBT_BOOL ShareEnv_LoadEnv(void);
MBT_BOOL ShareEnv_StoreEnv(void);

MBT_BOOL ShareEnv_EnvSet(MBT_U8* pName , MBT_U8* pValue);
MBT_U8*  ShareEnv_EnvGet(MBT_U8* pName);

MBT_CHAR *ProjectBuildDateTime(void);
MBT_U32 MApp_AppSwGet(void);
MBT_U32 MApp_AppHwGet(void);
MBT_U32 MApp_AppOuiGet(void);
MBT_BOOL SysInit_InitCustomInfo(void);

void appCa_SetOtaFreq(MBT_U32 dvb_freq);
void appCa_SetOtaPID(MBT_U16 ota_pid);
void appCa_SetOtaMod(MBT_U8 dvb_mod);
void appCa_SetOtaSymb(MBT_U32 dvb_symb);
void appCa_triggerOta(void);
int ovt_fac_get_env(char *name, char *pBuffer);



#endif
