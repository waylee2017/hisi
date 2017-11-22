#ifndef	__OSPCTR_H__
#define	__OSPCTR_H__

#include "mm_common.h"

extern MMT_STB_ErrorCode_E OSPAppMemCtr_Setup(MBT_VOID);
extern MMT_STB_ErrorCode_E OSPAppMemCtr_Close(MBT_VOID);

extern MBT_VOID *OSPMalloc(MBT_U32 uMenmSize);
extern MBT_VOID *OSPRealloc( MBT_VOID *memblock, MBT_U32 uMenmSize);
extern MBT_BOOL OSPFree(MBT_VOID *ptr);
extern MBT_VOID Svc_ShowMemoryInfo(MBT_VOID);


#endif		/* __OSPCTR_H__ */
