#ifndef BROWSER_TS_DOWNLOAD_H
#define BROWSER_TS_DOWNLOAD_H

#include "BrowserHDI.h"

#ifdef  BROWSER_SWITCH_FLAG

typedef void* (*BrowserMalloc_T)(BROWSER_U32  p_buffer_length);

BROWSER_U8 BrowserTsGetDataVersion(BROWSER_U32  p_download_pid, BROWSER_U32  *p_browser_version_p,  BROWSER_U32  p_timeout);	

BROWSER_U8 BrowserTsDataDownloadInit(BROWSER_U32  p_download_pid, BROWSER_U8  **p_browser_data_pp,  BROWSER_U32  *p_browser_data_size_p,  BROWSER_U32  p_timeout);

void  BrowserTsSetMemory(BrowserMalloc_T  p_malloc_p);

#endif

#endif

