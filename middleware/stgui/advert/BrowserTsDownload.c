#include "BrowserTsDownload.h"


#ifdef  BROWSER_SWITCH_FLAG

#define BROWSER_LOADER_MAGIC_NUM   0x50414E4F44494B43  //0x50414E4F44494B43ULL
#define BROWSER_LOADER_MAGIC_NUM_H   0x50414E4F  //0x50414E4F44494B43ULL
#define BROWSER_LOADER_MAGIC_NUM_L   0x44494B43  //0x50414E4F44494B43ULL
#define BROWSER_LD_FILE_END_FLAG	0xABCD1234
#define BROWSER_LD_LOGO_FLAG	0X12345678

#define BROWSER_LD_RECEIVE_TIMEOUT 30

//Channel
#define BROWSER_LD_DMX_MAX_CHANNEL 4
//Filter
#define BROWSER_LD_MAX_FILTER_DEPTH 10
#define BROWSER_LD_MAX_FILTER_PER_CHANNEL 6
#define BROWSER_LD_DMX_MAX_DATA_ITEMS  256 //32
#define BROWSER_LD_SECTION_SIZE 4096//1024

#define PARTITION_SIZE			(256*1024)
#define DATAGRAM_SIZE			2048
#define PARTITION_CNT			256
#define DGRAM_PER_PARTITION		(PARTITION_SIZE / DATAGRAM_SIZE)

#define DEFAULT_FREQ 		331
#define DEFAULT_SYMB 		6875
#define DEFAULT_MOD 		7
#define DEFAULT_PID 		7890

#define BROWSER_LD_DEFAULT_SF_VER 1

#define  USE_BRCM_KEY

#define WTCSR                0xFFC0000C /* WATCHDOG TIMER CONTROL/STAT REGI  */
#define WTCNT                0xFFC00008 /* WATCHDOG TIMER COUNTER REGISTER   */
#define WTCSR2               0xFFC0001C /* WATCHDOG TIMER CONTROL/STATUS REGISTER */

#define SECTION_NUM (64*1024 / 2048)

typedef enum
{
	BROWSER_ERRCODE_TIMEOUT = 1,
	BROWSER_ERRCODE_MALLOC_MEM_FAILED,

	BROWSER_ERRCODE_HEADER_CRC_ERR,
	BROWSER_ERRCODE_MANUID_NOT_MATCH,
	BROWSER_ERRCODE_HARDWARE_NOT_MATCH,
	BROWSER_ERRCODE_STBSN_NOT_MATCH,
	BROWSER_ERRCODE_VER_NOT_NEW,

	BROWSER_ERRCODE_LOCK_FAIL,
	BROWSER_ERRCODE_NO_DATA,
	BROWSER_ERRCODE_CRC_ERR_TOO_MUCH,
	BROWSER_ERRCODE_CRC_IMG_CHECK_FAIL,

	BROWSER_ERRCODE_IMG_SIGNATURE_FAIL,// add for security

	BROWSER_ERRCODE_FLASH_READ_FAIL,
	BROWSER_ERRCODE_FALSH_WRITE_FAIL,

	BROWSER_ERRCODE_NUM
} BROWSER_LOADER_ERROR;

typedef enum
{
	BROWSER_LOADER_MSG_KEY = 0x1,
	BROWSER_LOADER_MSG_TIMER,
	BROWSER_LOADER_MSG_DISPLAY,
	BROWSER_LOADER_MSG_SET_PARAM,
	BROWSER_LOADER_MSG_BEGIN_DOWNLOAD = 0x10,
	BROWSER_LOADER_MSG_CTRL_RECV,
	BROWSER_LOADER_MSG_HEAD_RECV,
	BROWSER_LOADER_MSG_DATAGRM_RECV,
	BROWSER_LOADER_MSG_ALL_RECVED,
	BROWSER_LOADER_MSG_WRITE_FLASH,
	BROWSER_LOADER_MSG_FAILED,

	BROWSER_LOADER_MSG_NUM
} BROWSER_LOADER_MSG_TYPE;

typedef enum
{
	BROWSER_LOADER_KEY_UP = 1,
	BROWSER_LOADER_KEY_DOWN,
	BROWSER_LOADER_KEY_LEFT,
	BROWSER_LOADER_KEY_RIGHT,
	BROWSER_LOADER_KEY_OK,
	BROWSER_LOADER_KEY_MENU,
	BROWSER_LOADER_KEY_NUM
} BROWSER_LOADER_KEY;

typedef enum
{
	BROWSER_INPUT_FREQ,
	BROWSER_INPUT_SYMB,
	BROWSER_INPUT_QAM,
	BROWSER_INPUT_PID,
	BROWSER_INPUT_OK,
	BROWSER_INPUT_ALL
} BROWSER_INPUT_EDIT;

typedef enum
{
	BROWSER_LOADER_STATUS_WAIT_KEY = 1,
	BROWSER_LOADER_STATUS_SET_PARAM,
	BROWSER_LOADER_STATUS_BEGIN_UPDATE,
	BROWSER_LOADER_STATUS_LOCKED,
	BROWSER_LOADER_STATUS_LOCKED_FAILED,
	BROWSER_LOADER_STATUS_RECV_CTRL,
	BROWSER_LOADER_STATUS_RECV_HEADER,
	BROWSER_LOADER_STATUS_ALL_RECVED,
	BROWSER_LOADER_STATUS_CHECK_IMAGE,
	BROWSER_LOADER_STATUS_CHECK_SIGNATURE,
	BROWSER_LOADER_STATUS_WRITE_FLASH,
	BROWSER_LOADER_STATUS_SUCCESS,
	BROWSER_LOADER_STATUS_FAILED,
	BROWSER_LOADER_STATUS_NUM
} BROWSER_LOADER_UPDATE_STATUS;


typedef struct download_header
{
    BROWSER_U8 manufacturer_code_hi: 8;
    BROWSER_U8 manufacturer_code_mh:8;
    BROWSER_U8 manufacturer_code_ml:8;
    BROWSER_U8 manufacturer_code_lo:8;
    BROWSER_U8 hardware_code_hi: 8;
    BROWSER_U8 hardware_code_mh: 8;
    BROWSER_U8 hardware_code_ml: 8;
    BROWSER_U8 hardware_code_lo: 8;
    BROWSER_U8 software_version_hi: 8;
    BROWSER_U8 software_version_mh: 8;
    BROWSER_U8 software_version_ml: 8;
    BROWSER_U8 software_version_lo: 8;
    BROWSER_U8 download_time_day: 8;
    BROWSER_U8 download_time_month: 8;
    BROWSER_U8 download_time_year_lo: 8;
    BROWSER_U8 download_time_year_hi: 8;
    BROWSER_U8 serial_number_start_hi: 8;
    BROWSER_U8 serial_number_start_mh: 8;
    BROWSER_U8 serial_number_start_ml: 8;
    BROWSER_U8 serial_number_start_lo: 8;
    BROWSER_U8 serial_number_end_hi: 8;
    BROWSER_U8 serial_number_end_mh: 8;
    BROWSER_U8 serial_number_end_ml: 8;
    BROWSER_U8 serial_number_end_lo: 8;

    BROWSER_U8 partition_count: 8;
    BROWSER_U8 reserved_1: 1;
    BROWSER_U8 reserved_2: 1;
    BROWSER_U8 key_load: 1;
    BROWSER_U8 text_length: 5;
    BROWSER_U8 reserved_3: 1 ;
    BROWSER_U8 signature_length_hi: 7;
    BROWSER_U8 signature_length_lo: 8;
    BROWSER_U8 CRC_32_hi: 8;
    BROWSER_U8 CRC_32_mh: 8;
    BROWSER_U8 CRC_32_ml: 8;
    BROWSER_U8 CRC_32_lo: 8;
} DOWNLOAD_HEADER;

typedef struct partition_info
{
    BROWSER_U32 original_size;
    BROWSER_U16 section_size;
    BROWSER_U16 section_count;

    BROWSER_U8 recv_flag[SECTION_NUM];
    BROWSER_U8 *p_section_data[SECTION_NUM];

    BROWSER_U8 *p_data;

} PARTITION_INFO;

typedef struct partition_header
{
    unsigned memory_type: 4;
    unsigned compressed: 1;
    unsigned obscured: 1;
    unsigned continued: 1;
    unsigned digital_signature_flag: 1;
    unsigned original_size_hi: 8;
    unsigned original_size_mi: 8;
    unsigned original_size_lo: 8;
    unsigned start_address_hi: 8;
    unsigned start_address_mi: 8;
    unsigned start_address_lo: 8;
    unsigned O_CRC_32_hi: 8;
    unsigned O_CRC_32_mh: 8;
    unsigned O_CRC_32_ml: 8;
    unsigned O_CRC_32_lo: 8;
    unsigned block_size_hi: 8;
    unsigned block_size_lo: 8;
    unsigned block_count_hi: 8;
    unsigned block_count_lo: 8;
    unsigned partition_digital_signature_length: 8;
    unsigned signature_hi: 8;
    unsigned signature_mh: 8;
    unsigned signature_ml: 8;
    unsigned signature_lo: 8;
    unsigned crc32_hi: 8;
    unsigned crc32_mh: 8;
    unsigned crc32_ml: 8;
    unsigned crc32_lo: 8;
    unsigned reserved: 32;
} PARTITION_HEADER;

typedef struct s_stb_update_info
{
	BROWSER_U8	update_cmd; // 0x1 ~ 0x3  need update
	// 0x0 no need update
	BROWSER_U8     upflag;//0x01  force upgrade
	//0x02   vmx manufacture == 0
	//0x04	vmx private info == 0
	BROWSER_U16		download_freq;
	BROWSER_U16		download_symb;
	BROWSER_U8		download_mod;
	BROWSER_U16		download_pid;
	BROWSER_U32 		hardware_code;
	BROWSER_U32 		software_code;// high-8:middle-8:low-8:reserve-8
	BROWSER_U32 		download_time;
	BROWSER_U32 		FLAG;
} BROWSER_STB_UPDATE_INFO;


typedef struct browser_stb_sys_info
{
	BROWSER_U32 manufacturer_code;
	BROWSER_U32 STB_SN;
} BROWSER_STB_SYS_INFO;

typedef struct browser_loader_info
{
	BROWSER_U32 pdata_length;
	BROWSER_U8 *pdata_buf;

	BROWSER_U32 total_sec_num;

	BROWSER_U32 signature_length;
	BROWSER_U8 *signature;

	PARTITION_INFO *p_part;
} BROWSER_LOADER_INFO;




typedef struct
{
	BROWSER_LOADER_MSG_TYPE type;
	BROWSER_U32 p1;
	BROWSER_U32 p2;
	BROWSER_U32 p3;
} BROWSER_LOADER_MSG;

typedef struct download_control
{
	BROWSER_U8 table_id: 8;
	BROWSER_U8 file_size_hi: 8;
	BROWSER_U8 file_size_mh: 8;
	BROWSER_U8 file_size_ml: 8;
	BROWSER_U8 file_size_lo: 8;
} DOWNLOAD_CONTROL;

typedef struct _s_File_Header
{
	BROWSER_U32	file_length;
	BROWSER_U32	file_start_addr;
	BROWSER_U32	file_end_addr;
	BROWSER_U32	file_data_CRC32;
	BROWSER_U8	user_defined_data_length;
	BROWSER_U8	*user_defined_data;
	BROWSER_U8	*pdata;
} S_FILE_HEADER;


/// Image manager
/// Imagebuffer will hold image in DRAM buffer.
typedef struct
{
	BROWSER_U32 WaitFinish;
	BROWSER_U32 overtimer;
	BROWSER_U8 *ImageBuffer;
	BROWSER_U32 ImageSize;

	BROWSER_U8 numofmodule;
	BROWSER_U32 timer_count;
	S_FILE_HEADER *flist;
} BROWSER_LD_IMAGE_MANAGER;


#define 	STB_INFO_ADDRESS	0x60000
#define 	STB_LOADER_LOGO_ADDRESS		0x340000
#define					POLYNOMIAL	0x04c11db7
static BROWSER_HANDLE  f_browserld_task_handle; 

static DOWNLOAD_CONTROL	g_browserld_down_ctrl;
static DOWNLOAD_HEADER	g_browserld_down_hder;
static BROWSER_HANDLE  f_browserld_msg_queen_handle = BROWSER_INVALID_HANDLE;
static BROWSER_LOADER_UPDATE_STATUS g_browserld_Status = BROWSER_LOADER_STATUS_WAIT_KEY;
static BROWSER_U32				g_browserld_crc32_err_count = 0;
static unsigned int		g_browserld_crc_table[256];

static BROWSER_LD_IMAGE_MANAGER *g_browserld_ImageM = 0;
static BROWSER_STB_UPDATE_INFO	g_browserld_update_info;
static BROWSER_STB_SYS_INFO	g_browserld_sys_info;
static BROWSER_U8				*g_browserld_partition_data[PARTITION_CNT][DGRAM_PER_PARTITION];
///0xff:no rec/0x00:already rec
static BROWSER_U8				g_browserld_datagram_recflag[PARTITION_CNT][DGRAM_PER_PARTITION];
static BROWSER_U32				g_browserld_partition_start = 0;
///0xff:no rec/0x00:already rec
static BROWSER_U16				g_browserld_partition_recflag[PARTITION_CNT];
static BROWSER_U16				g_browserld_datagram_count = 0;
static BROWSER_U8				g_browserld_is_buffer_init = 0;
//static BROWSER_U8  *g_os_mem_start_p = 0;
//static BROWSER_U8  *g_os_mem_alloc_p = 0;
//static BROWSER_U32  g_os_mem_free_size = 0x1c00000;	//0x1E00000;
//static BROWSER_U32  g_os_mem_size = 0x1c00000;		//0x1E00000 ;	//30M
static BROWSER_HANDLE  f_data_sync_semaphore_p = BROWSER_INVALID_HANDLE;
static BROWSER_U32  g_data_flag = 0;
static BROWSER_U32  f_default_pid = 0;
static BROWSER_BOOLEAN_T f_filter_start_flag = BROWSER_FALSE;
static BROWSER_U8  *f_browser_data_p = 0;
static BROWSER_U32  f_browser_data_num = 0;
//static BROWSER_U8  f_init_flag = 0;

static BROWSER_U8 f_ctrl = 0, f_header = 0;
static BROWSER_U8 f_pdata[4096*2] = {0};
static BROWSER_U8 f_is_all_recv = 0;
static BROWSER_U32 f_err_num = 0;
static BROWSER_HANDLE  f_filter_handle = BROWSER_INVALID_HANDLE;
static BrowserMalloc_T  f_malloc_p = 0;

static  BROWSER_U8 browser_ld_check_downhder_crc(BROWSER_U8 *pdata, BROWSER_U32 len);
static  BROWSER_U8 browser_ld_check_downhder(void);
static  BROWSER_U32 browser_ld_dmx_recv(void);
static void  browser_ld_dmx_callback(BROWSER_U8  *p_data_p,  BROWSER_U32  p_length);


static BROWSER_U32  StartFilter(BROWSER_U32  p_pid, BROWSER_U8  p_table_id)
{	
	if (f_filter_start_flag == BROWSER_FALSE)
	{
		f_filter_handle = Browser_Stb_SetFilter(p_pid, p_table_id, browser_ld_dmx_callback);

		if (f_filter_handle == BROWSER_INVALID_HANDLE)
		{
			return 0;
		}

		f_filter_start_flag = BROWSER_TRUE;

		return  1;
	}

	return  0;
}

static BROWSER_U32  StopFilter(void)
{
	if (f_filter_start_flag == BROWSER_TRUE)
	{
		Browser_Stb_StopFilter(f_filter_handle);
		
		f_filter_start_flag = BROWSER_FALSE;

		return  1;
	}

	return  0;
}

#if 0
static  int  OS_MemoryInit(void)
#if 0	
{
	if (g_os_mem_start_p == 0)
	{
		g_os_mem_start_p = (BROWSER_U8  *)Browser_Os_Malloc(g_os_mem_size);

		if (g_os_mem_start_p != 0)
		{
			Browser_Os_Memset(g_os_mem_start_p, 0, g_os_mem_size);

			g_os_mem_alloc_p = g_os_mem_start_p;

			g_os_mem_free_size = g_os_mem_size;		

			return  1;
		}
	}

	return  0;
}
#else
{
	if (g_os_mem_start_p == 0)
	{
		g_os_mem_start_p = (BROWSER_U8  *)(0x82200000);

		if (g_os_mem_start_p != 0)
		{
			Browser_Os_Memset(g_os_mem_start_p, 0, g_os_mem_size);

			g_os_mem_alloc_p = g_os_mem_start_p;

			g_os_mem_free_size = g_os_mem_size;		

			return  1;
		}
	}

	return  0;
}
#endif
#endif

#if 0
static  void  OS_MemoryRelease(void)
{
	if (g_os_mem_start_p != 0)
	{
		g_os_mem_start_p = 0;
		
		g_os_mem_alloc_p = 0;
		
		g_os_mem_free_size = 0;
	}
}
#endif

#if 1
static  BROWSER_U8*  OS_GetMemory(BROWSER_U32  p_size)
{
	if (f_malloc_p == 0)
	{
		return  0;
	}

	
	return  (*f_malloc_p)(p_size);
}
#else
BROWSER_U8*  OS_GetMemory(BROWSER_U32  p_size)
{
	BROWSER_U8*  return_p = 0;
	int  aliagn_offset = 0;

	if ((g_os_mem_start_p == 0)
	|| (p_size == 0))
	{
		return  return_p;
	}

	if (p_size > g_os_mem_free_size)
	{
		g_os_mem_start_p = (BROWSER_U8  *)(0x82200000);
		g_os_mem_free_size = g_os_mem_size;	
		g_os_mem_alloc_p = g_os_mem_start_p;
	}

	if ((BROWSER_U32)(g_os_mem_alloc_p) % 4 != 0)
	{
		++aliagn_offset;
		
		while (((BROWSER_U32)(g_os_mem_alloc_p + aliagn_offset) % 4) != 0)
		{
			++aliagn_offset;
		}
	}

	if ((p_size + aliagn_offset) > g_os_mem_free_size)
	{
		g_os_mem_start_p = (BROWSER_U8  *)(0x82200000);
		g_os_mem_free_size = g_os_mem_size;	
		g_os_mem_alloc_p = g_os_mem_start_p;

		aliagn_offset = 0;
	}

	return_p = g_os_mem_alloc_p + aliagn_offset;

	g_os_mem_alloc_p += (p_size + aliagn_offset);

	g_os_mem_free_size -= (p_size + aliagn_offset);
	
	return  return_p;
}
#endif

static  void  m_gen_crc32_table(void)
{
	int i = 0, j = 0;
	unsigned int crc_accum = 0;
	
	for ( i = 0;  i < 256;  ++i)
	{
		crc_accum = ((unsigned int)i << 24);
		
		for (j = 0;  j < 8;  ++j )
		{
			if ( crc_accum & 0x80000000 )
			{
				crc_accum = ( crc_accum << 1 ) ^ POLYNOMIAL;
			}
			else
			{
				crc_accum = ( crc_accum << 1 );
			}
		}
		
		g_browserld_crc_table[i] = crc_accum;
	}
	
	return;
}

static  unsigned int m_gen_crc32(unsigned int crc_accum, unsigned char *data_blk_ptr,  unsigned int data_blk_size)
{
	register unsigned int i, j;
	
	for ( j = 0;  j < data_blk_size;  ++j)
	{
		i = ( (unsigned int) ( crc_accum >> 24) ^ *data_blk_ptr++ ) & 0xff;
		
		crc_accum = ( crc_accum << 8 ) ^ g_browserld_crc_table[i];
	}
	
	return crc_accum;
}

#if 0
static  unsigned int m_gen_dig32(unsigned char *data_blk_ptr, unsigned int data_blk_size)
{
	unsigned int  xx = m_gen_crc32(0x12345678, data_blk_ptr, data_blk_size);
	
	unsigned int  crc32 = (xx >> 24) + ((xx >> 8) & 0xff00) + ((xx << 8) & 0xff0000) + ((xx << 24) & 0xff000000);
		
	return crc32;
}
#endif

static int browser_ld_alloc_image_mgr(void)
{
	g_browserld_ImageM = (BROWSER_LD_IMAGE_MANAGER*)OS_GetMemory(sizeof(BROWSER_LD_IMAGE_MANAGER));
	
	if(g_browserld_ImageM != 0)
	{
		Browser_Os_Memset(g_browserld_ImageM, 0, sizeof(BROWSER_LD_IMAGE_MANAGER));

		return 1;
	}
	
	return 0;
}

static  void browser_ld_init_update_info(void)
{
	g_browserld_update_info.FLAG = BROWSER_LD_FILE_END_FLAG;
	g_browserld_update_info.download_freq = DEFAULT_FREQ;
	g_browserld_update_info.download_symb = DEFAULT_SYMB;
	g_browserld_update_info.download_mod = DEFAULT_MOD;
	g_browserld_update_info.download_pid = f_default_pid;
	g_browserld_update_info.hardware_code = 0;
	g_browserld_update_info.software_code = 0;
	g_browserld_update_info.download_time = 0;
	g_browserld_update_info.upflag = 0;
	g_browserld_update_info.update_cmd = 3;

	g_browserld_sys_info.manufacturer_code = 0;
}

static int browser_ld_Connect(void)
{	
	g_browserld_Status = BROWSER_LOADER_STATUS_LOCKED;
	
	return 1;
}


static  void browser_ld_msg_send(BROWSER_LOADER_MSG_TYPE t, BROWSER_U32 p1, BROWSER_U32 p2, BROWSER_U32 p3)
{
	BROWSER_LOADER_MSG  *msg_p = 0;
	int  count = 0;

	while (count++ <= 10)
	{
		msg_p = (BROWSER_LOADER_MSG  *)Browser_Os_MessageQueueClaim(f_browserld_msg_queen_handle);

		if (msg_p != 0)
		{
			Browser_Os_Memset(msg_p, 0, sizeof(BROWSER_LOADER_MSG));
			
			msg_p->type = t;
			msg_p->p1 = p1;
			msg_p->p2 = p2;
			msg_p->p3 = p3;

			Browser_Os_MessageQueueSend(f_browserld_msg_queen_handle, msg_p);

			break;
		}
	}
}

static  BROWSER_U8 browser_ld_data_package_init(BROWSER_U8 *all_buf, BROWSER_U32 len)
{
	int i, j, partcnt;
	partcnt = len / PARTITION_SIZE;

	for(i = 0; i < partcnt; ++i)
	{
		for(j = 0; j < DGRAM_PER_PARTITION; ++j)
		{
			g_browserld_partition_data[i][j] = (BROWSER_U8 *)(all_buf + i * PARTITION_SIZE + j * DATAGRAM_SIZE);
		}
	}

	g_browserld_is_buffer_init = 1;
	
	return 0;
}

static  void browser_ld_data_process(BROWSER_U8 *pdata , BROWSER_U32 len)
{
	BROWSER_U16 ext_tblid = pdata[3] * 256 + pdata[4];
	BROWSER_U8 partition_cnt = pdata[6] - 1;

	//datagram
	//////libc_printf("\nrecv %03d-%03d :", partition_cnt, ext_tblid);
	if(g_browserld_datagram_recflag[partition_cnt][ext_tblid -1] == 0xff)
	{
		if((ext_tblid != 0) && (pdata[6] != 0) && (pdata[0] == g_browserld_down_ctrl.table_id))
		{
			Browser_Os_Memcpy(g_browserld_partition_data[partition_cnt][ext_tblid - 1], &(pdata[8]), DATAGRAM_SIZE);
			//g_browserld_partition_data[partition_cnt][ext_tblid -1] = &pdata[0] + 10;

			g_browserld_datagram_recflag[partition_cnt][ext_tblid -1] = 0x00;

			++g_browserld_datagram_count ;
			//libc_printf(" dta_cnt = %d   %d  %d .\n", g_browserld_datagram_count, g_browserld_down_hder.partition_count, DGRAM_PER_PARTITION);
		}
	}

	if (!f_is_all_recv && (g_browserld_down_hder.partition_count != 0) && (g_browserld_datagram_count >= g_browserld_down_hder.partition_count * DGRAM_PER_PARTITION))
	{		
		browser_ld_msg_send(BROWSER_LOADER_MSG_ALL_RECVED, 0, 0, 0);

		f_is_all_recv = 1;
	}
}

static  int browser_ld_data_package(void)
{
	BROWSER_U8 *ibuf = g_browserld_ImageM->ImageBuffer;
	BROWSER_U32 n = 0, i = 0;
	BROWSER_U8 file_num = ibuf[8];
	BROWSER_U8 *puser_df_buff = 0;
	BROWSER_U32 index = 0;
	BROWSER_U32 sfile_CRC32 = 0, file_end_flag = 0, xx  = 0;

	unsigned long magic_num_h = ibuf[0] << 24 | ibuf[1] << 16 | ibuf[2] << 8 | ibuf[3];
	unsigned long magic_num_l = ibuf[4] << 24 | ibuf[5] << 16 | ibuf[6] << 8 | ibuf[7];
	
	if ((magic_num_h != (BROWSER_LOADER_MAGIC_NUM_H )) 
	&& (magic_num_l != (BROWSER_LOADER_MAGIC_NUM_L & 0xffffffff)))
	{
		return -1;
	}

	g_browserld_ImageM->flist = (S_FILE_HEADER*)OS_GetMemory(file_num * sizeof(S_FILE_HEADER));
	
	if (g_browserld_ImageM->flist == 0)
	{
		return -1;
	}

	index = 9;
	
	g_browserld_ImageM->numofmodule = file_num;
	
	for (i = 0; i < file_num; ++i)
	{
		g_browserld_ImageM->flist[i].file_length = ibuf[index] << 24 | ibuf[index+1] << 16 | ibuf[index+2] << 8 | ibuf[index+3];
		index += 4;

		g_browserld_ImageM->flist[i].file_start_addr = ibuf[index] << 24 | ibuf[index+1] << 16 | ibuf[index+2] << 8 | ibuf[index+3];
		index += 4;

		g_browserld_ImageM->flist[i].file_end_addr = ibuf[index] << 24 | ibuf[index+1] << 16 | ibuf[index+2] << 8 | ibuf[index+3];
		index += 4;

		g_browserld_ImageM->flist[i].file_data_CRC32 = ibuf[index] << 24 | ibuf[index+1] << 16 | ibuf[index+2] << 8 | ibuf[index+3];
		index += 4;

		g_browserld_ImageM->flist[i].user_defined_data_length = ibuf[index];
		
		++index;
		
		if (g_browserld_ImageM->flist[i].user_defined_data_length > 0)
		{
			puser_df_buff = (BROWSER_U8 *)OS_GetMemory(g_browserld_ImageM->flist[i].user_defined_data_length);
			
			Browser_Os_Memset(puser_df_buff, 0 , g_browserld_ImageM->flist[i].user_defined_data_length);

			for (n = 0; n < g_browserld_ImageM->flist[i].user_defined_data_length; ++n)
			{
				puser_df_buff[n] = ibuf[index];
				++index ;
			}
			
			g_browserld_ImageM->flist[i].user_defined_data = puser_df_buff;
		}
		
		g_browserld_ImageM->flist[i].pdata = ibuf + index;

		xx = m_gen_crc32(0xffffffff, g_browserld_ImageM->flist[i].pdata, g_browserld_ImageM->flist[i].file_length);
		
		sfile_CRC32 = (xx >> 24) + ((xx >> 8) & 0xff00) + ((xx << 8) & 0xff0000) + ((xx << 24) & 0xff000000);

		if (sfile_CRC32 != g_browserld_ImageM->flist[i].file_data_CRC32)
		{
			return -1;
		}
		
		index += g_browserld_ImageM->flist[i].file_length;

		file_end_flag = ibuf[index] << 24 | ibuf[index + 1] << 16 | ibuf[index + 2] << 8 | ibuf[index + 3];
		
		if (file_end_flag != BROWSER_LD_FILE_END_FLAG)
		{
			return -1;
		}

		index += 4;
	}
	
	return 0;
}

static void  browser_ld_dmx_callback(BROWSER_U8  *p_data_p,  BROWSER_U32  p_length)
{
	unsigned short  ext_tblid = 0;
	BROWSER_U32 secnum = 0;
	BROWSER_U32 msize = 0;

	Browser_Os_Memset(f_pdata, 0, 4096*2);

	msize = p_length;

	Browser_Os_Memcpy(f_pdata, p_data_p, p_length);

	ext_tblid = f_pdata[3] << 8 | f_pdata[4];

	secnum = f_pdata[6];
	
	if ((ext_tblid != 0) 
	&& (secnum != 0))
	{
		if (g_browserld_is_buffer_init)
		{
			browser_ld_data_process(f_pdata, msize);
		}
	}
	//download_hder
	else if ((f_header == 0) 
		&& (ext_tblid == 0) 
		&& (secnum == 0) 
		&& (f_pdata[0] == g_browserld_down_ctrl.table_id))
	{
		static BROWSER_U8 header_pdata[4096];
	
		Browser_Os_Memcpy(header_pdata, p_data_p, p_length);
	
		Browser_Os_Memcpy(&g_browserld_down_hder, &(header_pdata[8]) , msize - 12);

		browser_ld_msg_send(BROWSER_LOADER_MSG_HEAD_RECV, (BROWSER_U32)header_pdata, msize, 0);

		f_header = 1;
	}
	//g_browserld_down_ctrl.table_id
	else if((f_ctrl == 0) 
		&& (ext_tblid == 0) 
		&& (secnum == 0) 
		&& (f_pdata[0] == 0xfe))
	{	
		Browser_Os_Memcpy(&g_browserld_down_ctrl, &(f_pdata[8]), 5);

		browser_ld_msg_send(BROWSER_LOADER_MSG_CTRL_RECV, (BROWSER_U32)f_pdata, msize, 0);

		f_ctrl = 1;
	}
}

static  BROWSER_U32 browser_ld_change_recv_data(BROWSER_U8 tblid)
{
	if (StopFilter() == 1)
	{
		Browser_Os_TaskSleep(10);

		if (StartFilter(f_default_pid, tblid) == 1)
		{
			return  1;
		}
	}

	return 0;
}

static  BROWSER_U32 browser_ld_dmx_recv(void)
{
	if (StartFilter(f_default_pid, 0xfe) == 1)
	{
		return  1;
	}

	return 0;
}

static  BROWSER_BOOLEAN_T browser_ld_begin_download(void)
{
	if (browser_ld_Connect())
	{
		if (browser_ld_dmx_recv() == 1)
		{
			return BROWSER_TRUE;
		}
	}

	return  BROWSER_FALSE;
}

static  void Browser_Loader_Task(void)
{
	BROWSER_LOADER_MSG  *msg_p = 0;
	BROWSER_LOADER_MSG  msg;
//	BROWSER_U32  msg_size = 0;
	BROWSER_U8  exit_flag = 0;

	while (1)
	{		
		if ((msg_p = (BROWSER_LOADER_MSG  *)Browser_Os_MessageQueueReceive(f_browserld_msg_queen_handle, BROWSER_TIMEOUT_INFINITY)) != 0)
		{		
			Browser_Os_Memcpy(&msg, msg_p, sizeof(BROWSER_LOADER_MSG));

			Browser_Os_MessageQueueRelease(f_browserld_msg_queen_handle, msg_p);

			msg_p = 0;
		
			switch (msg.type)
			{
				case BROWSER_LOADER_MSG_HEAD_RECV:
				{
					g_browserld_Status = BROWSER_LOADER_STATUS_RECV_HEADER;

					if (browser_ld_check_downhder_crc((BROWSER_U8 *)&g_browserld_down_hder, msg.p2 - 12 - 4) != 0)
					{
						g_browserld_Status = BROWSER_LOADER_STATUS_FAILED;

						/*软件版本号不一致，前面板显示"0666"*/
						{
							g_data_flag = 0;
							
							Browser_Os_SemaphoreSignal(f_data_sync_semaphore_p);

							exit_flag = 1;
						}	
					}

					if ((f_err_num = browser_ld_check_downhder()) != 0)
					{
						g_browserld_Status = BROWSER_LOADER_STATUS_FAILED;

						/*软件版本号不一致，前面板显示"0666"*/
						{
							g_data_flag = 0;
							
							Browser_Os_SemaphoreSignal(f_data_sync_semaphore_p);

							exit_flag = 1;
						}	
					}

					break;
				}
				
				case BROWSER_LOADER_MSG_CTRL_RECV:
				{
					g_browserld_Status = BROWSER_LOADER_STATUS_RECV_CTRL;

					g_browserld_ImageM->ImageSize = (BROWSER_U32)((BROWSER_U32)((g_browserld_down_ctrl.file_size_hi << 24) & 0xff000000) | (BROWSER_U32)((g_browserld_down_ctrl.file_size_mh << 16) & 0x00ff0000) | (BROWSER_U32)((g_browserld_down_ctrl.file_size_ml << 8) & 0x0000ff00) | (BROWSER_U32)(g_browserld_down_ctrl.file_size_lo));
					
					g_browserld_ImageM->ImageBuffer = OS_GetMemory(g_browserld_ImageM->ImageSize);

					if (g_browserld_ImageM->ImageBuffer == 0)
					{
						/*获取内存失败，前面板显示"0777"*/
						{
							g_data_flag = 0;
							
							Browser_Os_SemaphoreSignal(f_data_sync_semaphore_p);

							exit_flag = 1;
						}
							
						
						break;
					}

					browser_ld_data_package_init(g_browserld_ImageM->ImageBuffer, g_browserld_ImageM->ImageSize);

					if (browser_ld_change_recv_data(g_browserld_down_ctrl.table_id) == 0)
					{
						g_data_flag = 0;
						
						Browser_Os_SemaphoreSignal(f_data_sync_semaphore_p);

						exit_flag = 1;
					}

					break;
				}
				
				case BROWSER_LOADER_MSG_ALL_RECVED:
				{					
					StopFilter();
					
					if (BROWSER_LOADER_STATUS_FAILED == g_browserld_Status && (f_err_num != BROWSER_ERRCODE_LOCK_FAIL))
					{
						/*提示数据接收完成，但因为其他原因导致失败*/
						{
							/*前面板显示"0888"*/
							{
								g_data_flag = 0;
								
								Browser_Os_SemaphoreSignal(f_data_sync_semaphore_p);

								exit_flag = 1;
							}
						}
						
						break;
					}
					
					g_browserld_Status = BROWSER_LOADER_STATUS_ALL_RECVED;
					
					g_browserld_ImageM->timer_count = 0;
					
					if (browser_ld_data_package() == 0 )
					{
						//run_cobrowserressed(g_browserld_ImageM->ImageBuffer, g_browserld_ImageM->ImageSize);
						browser_ld_msg_send(BROWSER_LOADER_MSG_WRITE_FLASH, 0, 0, 0);
					}
					else
					{
						/*CRC校验错误，前面板显示"0999"*/
						{
							g_data_flag = 0;
							
							Browser_Os_SemaphoreSignal(f_data_sync_semaphore_p);

							exit_flag = 1;
						}
					}

					break;
				}
				
				case BROWSER_LOADER_MSG_BEGIN_DOWNLOAD:
				{					
					g_browserld_Status = BROWSER_LOADER_STATUS_BEGIN_UPDATE;
					
					if (browser_ld_begin_download())
					{
						g_browserld_Status = BROWSER_LOADER_STATUS_LOCKED;
					}
					else
					{
						g_browserld_Status = BROWSER_LOADER_STATUS_LOCKED_FAILED;

						{
							g_data_flag = 0;
							
							Browser_Os_SemaphoreSignal(f_data_sync_semaphore_p);

							exit_flag = 1;
						}
					}

					break;
				}
				
				case BROWSER_LOADER_MSG_WRITE_FLASH:
				{
					BROWSER_U8 i = 0;
					BROWSER_U32 rel = 0;
					
					g_browserld_Status = BROWSER_LOADER_STATUS_WRITE_FLASH;
					//libc_printf("g_browserld_ImageM->numofmodule : %d   0x%x  0x%x \n", g_browserld_ImageM->numofmodule, g_browserld_ImageM->flist[i].file_start_addr, g_browserld_ImageM->flist[i].file_length);

					for (i = 0; i < g_browserld_ImageM->numofmodule; ++i)
					{
						f_browser_data_p = g_browserld_ImageM->flist[i].pdata;
						
						f_browser_data_num = g_browserld_ImageM->flist[i].file_length;
						
						rel = 1;
					}

					Browser_Os_TaskSleep(10);

					if (rel)
					{
						g_browserld_Status = BROWSER_LOADER_STATUS_SUCCESS;

						Browser_Os_TaskSleep(100);

						/*LOADER已完成，需要修改LOADER标记位*/
						{
							/*LOADER更新完成，前面板显示"0444"*/
							{
								g_data_flag = 1;
								
								Browser_Os_SemaphoreSignal(f_data_sync_semaphore_p);

								exit_flag = 1;
							}
						}
					}
					else
					{
						g_browserld_Status = BROWSER_LOADER_STATUS_FAILED;

						Browser_Os_TaskSleep(100);

						/*LOADER已完成，需要修改LOADER标记位*/
						{
							/*LOADER更新完成，前面板显示"0444"*/
							{
								g_data_flag = 0;
								
								Browser_Os_SemaphoreSignal(f_data_sync_semaphore_p);

								exit_flag = 1;
							}
						}
					}

					break;
				}
				
				default:
				{
					////libc_printf("[Warning]unkwnon request %d\n", msg_p.type);
					break;
				}
			}
		}

		if (exit_flag == 1)
		{
			break;
		}
	}
}

static  void Browser_Data_Version_Task(void)
{
	BROWSER_LOADER_MSG  *msg_p = 0;
	BROWSER_LOADER_MSG  msg;
//	BROWSER_U32  msg_size = 0;
	BROWSER_U8  exit_flag = 0;

	while (1)
	{		
		if ((msg_p = (BROWSER_LOADER_MSG  *)Browser_Os_MessageQueueReceive(f_browserld_msg_queen_handle, BROWSER_TIMEOUT_INFINITY)) != 0)
		{					
			Browser_Os_Memcpy(&msg, msg_p, sizeof(BROWSER_LOADER_MSG));

			Browser_Os_MessageQueueRelease(f_browserld_msg_queen_handle, msg_p);

			msg_p = 0;
		
			switch (msg.type)
			{
				case BROWSER_LOADER_MSG_HEAD_RECV:
				{
					StopFilter();
					
					g_browserld_Status = BROWSER_LOADER_STATUS_RECV_HEADER;

					if (browser_ld_check_downhder_crc((BROWSER_U8 *)&g_browserld_down_hder, msg.p2 - 12 - 4) != 0)
					{
						g_browserld_Status = BROWSER_LOADER_STATUS_FAILED;

						{
							g_data_flag = 0;
							
							Browser_Os_SemaphoreSignal(f_data_sync_semaphore_p);

							exit_flag = 1;
						}	
					}

					if ((f_err_num = browser_ld_check_downhder()) != 0)
					{
						g_browserld_Status = BROWSER_LOADER_STATUS_FAILED;

						{
							g_data_flag = 0;
							
							Browser_Os_SemaphoreSignal(f_data_sync_semaphore_p);

							exit_flag = 1;
						}	
					}
					else
					{
						g_browserld_Status = BROWSER_LOADER_STATUS_SUCCESS;

						{
							g_data_flag = 1;
							
							Browser_Os_SemaphoreSignal(f_data_sync_semaphore_p);

							exit_flag = 1;
						}	
					}

					break;
				}
				
				case BROWSER_LOADER_MSG_CTRL_RECV:
				{
					g_browserld_Status = BROWSER_LOADER_STATUS_RECV_CTRL;

					if (browser_ld_change_recv_data(g_browserld_down_ctrl.table_id) == 0)
					{
						g_data_flag = 0;
						
						Browser_Os_SemaphoreSignal(f_data_sync_semaphore_p);

						exit_flag = 1;
					}

					break;
				}
								
				case BROWSER_LOADER_MSG_BEGIN_DOWNLOAD:
				{					
					g_browserld_Status = BROWSER_LOADER_STATUS_BEGIN_UPDATE;
					
					if (browser_ld_begin_download())
					{
						g_browserld_Status = BROWSER_LOADER_STATUS_LOCKED;
					}
					else
					{
						g_browserld_Status = BROWSER_LOADER_STATUS_LOCKED_FAILED;

						{
							g_data_flag = 0;
							
							Browser_Os_SemaphoreSignal(f_data_sync_semaphore_p);

							exit_flag = 1;
						}
					}

					break;
				}
								
				default:
				{
					////libc_printf("[Warning]unkwnon request %d\n", msg_p.type);
					break;
				}
			}
		}

		if (exit_flag == 1)
		{
			break;
		}
	}
}

static  BROWSER_U8 browser_ld_check_downhder_crc(BROWSER_U8 *pdata, BROWSER_U32 len)
{
	BROWSER_U32 crc32_rec, crc32_local;

	crc32_local = m_gen_crc32(0xffffffff, pdata, len);
	
	crc32_local = ((crc32_local >> 24) & 0xff) + ((crc32_local >> 8) & 0xff00)
	+ ((crc32_local << 8) & 0xff0000) + ((crc32_local << 24) & 0xff000000);

	crc32_rec = (g_browserld_down_hder.CRC_32_hi << 24) | (g_browserld_down_hder.CRC_32_mh << 16)
			| (g_browserld_down_hder.CRC_32_ml << 8) | (g_browserld_down_hder.CRC_32_lo);
	
	////libc_printf("(browser_ld_check_downhder_crc)crc32_rec = 0x%x \n\r", crc32_rec);

	////libc_printf("(browser_ld_check_downhder_crc)crc32_local = 0x%x \n\r", crc32_local);

	if(crc32_rec == crc32_local)
	{
		g_browserld_crc32_err_count = 0;
		////libc_printf("(browser_ld_check_downhder_crc)g_browserld_down_hder OK\n\r");
	}
	else
	{
		++g_browserld_crc32_err_count;
	}
	
	return g_browserld_crc32_err_count;
}

static  BROWSER_U8 browser_ld_check_downhder(void)
{
	BROWSER_U32	rcv_manu_id;
	unsigned int	rcv_hw_ver, rcv_sw_ver, rcv_time, rcv_sn_start, rcv_sn_end;

	rcv_manu_id = g_browserld_down_hder.manufacturer_code_hi << 24 |g_browserld_down_hder.manufacturer_code_mh << 16
	|g_browserld_down_hder.manufacturer_code_ml << 8 | g_browserld_down_hder.manufacturer_code_lo;
	
	rcv_hw_ver = g_browserld_down_hder.hardware_code_hi << 24 | g_browserld_down_hder.hardware_code_mh << 16
	| g_browserld_down_hder.hardware_code_ml << 8 | g_browserld_down_hder.hardware_code_lo;
	
	rcv_sw_ver = g_browserld_down_hder.software_version_hi << 24 | g_browserld_down_hder.software_version_mh << 16
	| g_browserld_down_hder.software_version_ml << 8 | g_browserld_down_hder.software_version_lo;
	
	rcv_time = g_browserld_down_hder.download_time_year_hi << 24 | g_browserld_down_hder.download_time_year_lo << 16
	| g_browserld_down_hder.download_time_month << 8 | g_browserld_down_hder.download_time_day;
	
	rcv_sn_start = (g_browserld_down_hder.serial_number_start_hi << 24) | (g_browserld_down_hder.serial_number_start_mh << 16)
	| g_browserld_down_hder.serial_number_start_ml << 8 | g_browserld_down_hder.serial_number_start_lo;
	
	rcv_sn_end = g_browserld_down_hder.serial_number_end_hi << 24 | g_browserld_down_hder.serial_number_end_mh << 16
	| g_browserld_down_hder.serial_number_end_ml << 8 | g_browserld_down_hder.serial_number_end_lo;

	////libc_printf("%s :: manuid=%x, hw=%x, sw=%x, time=%x, sn_s = %x, sn_e =%d.\n", __FUNCTION__, rcv_manu_id, rcv_hw_ver, rcv_sw_ver, rcv_time, rcv_sn_start, rcv_sn_end);

	////libc_printf("%s :: partition_count = %d", __FUNCTION__, g_browserld_down_hder.partition_count);
	//if(g_browserld_update_info.update_cmd == 0xf0)//0xf0:no updating/0x0f updating
	{
		// TODO: modify in the future ! read frome flash!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
		
		if((g_browserld_update_info.upflag == 0x01) /*&& (browser_ld_getSwVersion() != rcv_sw_ver)*/)
		{
			g_browserld_partition_start = 0;
			
			g_browserld_update_info.software_code = rcv_sw_ver;
			
			g_browserld_update_info.download_time = rcv_time;
			
			return 0;
		}

		g_browserld_partition_start = 0;
		
		g_browserld_update_info.software_code = rcv_sw_ver;
		
		g_browserld_update_info.download_time = rcv_time;
		
		return 0;
	}
	
	return 0;
}

static  void Browser_Loader_Init_Msg(void)
{
	BROWSER_LOADER_MSG  *msg_p = 0;
	int  count = 0;
	
	while (count++ <= 10)
	{
		//发送初始化页面消息
		msg_p = (BROWSER_LOADER_MSG  *)Browser_Os_MessageQueueClaim(f_browserld_msg_queen_handle);

		if (msg_p != 0)
		{
			Browser_Os_Memset(msg_p, 0, sizeof(BROWSER_LOADER_MSG));
			
			msg_p->type = BROWSER_LOADER_MSG_BEGIN_DOWNLOAD;

			Browser_Os_MessageQueueSend(f_browserld_msg_queen_handle, msg_p);

			break;
		}
	}
}

BROWSER_U8 BrowserTsGetDataVersion(BROWSER_U32  p_download_pid, BROWSER_U32  *p_browser_version_p,  BROWSER_U32  p_timeout)	
{
	BROWSER_U32 i = 0, j = 0;

	if (p_browser_version_p == 0)
	{	
		return  0;
	}

	f_default_pid = p_download_pid;
	f_filter_start_flag = BROWSER_FALSE;
	f_browser_data_p = 0;
	f_browser_data_num = 0;
	f_ctrl = 0;
	f_header = 0;
	f_is_all_recv = 0;
	f_err_num = 0;
	g_browserld_datagram_count = 0;
	f_browserld_task_handle = BROWSER_INVALID_HANDLE;
	f_browserld_msg_queen_handle = BROWSER_INVALID_HANDLE;
	g_browserld_Status = BROWSER_LOADER_STATUS_WAIT_KEY;
	g_browserld_crc32_err_count = 0;
	g_browserld_ImageM = 0;
	g_browserld_is_buffer_init = 0;
	f_data_sync_semaphore_p = BROWSER_INVALID_HANDLE;
	g_data_flag = 0;

	Browser_Os_Memset(&g_browserld_down_ctrl, 0, sizeof(g_browserld_down_ctrl));
	Browser_Os_Memset(&g_browserld_down_hder, 0, sizeof(g_browserld_down_hder));
	
	m_gen_crc32_table();

	browser_ld_init_update_info();

	for (i = 0; i < PARTITION_CNT; ++i)
	{
		g_browserld_partition_recflag[i] = 0xffff;

		for (j = 0; j < DGRAM_PER_PARTITION; ++j)
		{
			g_browserld_datagram_recflag[i][j] = 0xff;
		}
	}
	
	g_browserld_down_ctrl.table_id = 0xff;
	
	if ((f_data_sync_semaphore_p = Browser_Os_CreateSemaphore(BROWSER_FALSE)) == BROWSER_INVALID_HANDLE)
	{		
		return  0;
	}
	
	if ((f_browserld_msg_queen_handle = Browser_Os_CreateMessageQueue(sizeof(BROWSER_LOADER_MSG), 50)) == BROWSER_INVALID_HANDLE)
	{
		Browser_Os_DeleteSemaphore(f_data_sync_semaphore_p);
		
		return 0;
	}

	if ((f_browserld_task_handle = Browser_Os_CreateTask("VER", Browser_Data_Version_Task, 32 * 1024)) == BROWSER_INVALID_HANDLE)
	{
		Browser_Os_DeleteMessageQueue(f_browserld_msg_queen_handle);
	
		Browser_Os_DeleteSemaphore(f_data_sync_semaphore_p);
		
		return 0;
	}
	
	Browser_Os_TaskSleep(100);

	/*启动下载指令*/
	Browser_Loader_Init_Msg();

	Browser_Os_SemaphoreWait(f_data_sync_semaphore_p, p_timeout);

	StopFilter();

	Browser_Os_DeleteTask(f_browserld_task_handle);

	Browser_Os_DeleteMessageQueue(f_browserld_msg_queen_handle);

	Browser_Os_DeleteSemaphore(f_data_sync_semaphore_p);
	
	if (g_data_flag == 0)
	{		
		return 0;
	}
	else if (g_data_flag == 1)
	{
		*p_browser_version_p = g_browserld_update_info.software_code;
	}

	return 1;
}

BROWSER_U8 BrowserTsDataDownloadInit(BROWSER_U32  p_download_pid, BROWSER_U8  **p_browser_data_pp,  BROWSER_U32  *p_browser_data_size_p,  BROWSER_U32  p_timeout)	
{
	BROWSER_U32 i = 0, j = 0;

	if ((p_browser_data_pp == 0)
	||(p_browser_data_size_p == 0))
	{	
		return  0;
	}

	f_default_pid = p_download_pid;
	f_filter_start_flag = BROWSER_FALSE;
	f_browser_data_p = 0;
	f_browser_data_num = 0;
	f_ctrl = 0;
	f_header = 0;
	f_is_all_recv = 0;
	f_err_num = 0;
	g_browserld_datagram_count = 0;
	f_browserld_task_handle = BROWSER_INVALID_HANDLE;
	f_browserld_msg_queen_handle = BROWSER_INVALID_HANDLE;
	g_browserld_Status = BROWSER_LOADER_STATUS_WAIT_KEY;
	g_browserld_crc32_err_count = 0;
	g_browserld_ImageM = 0;
	g_browserld_is_buffer_init = 0;
	f_data_sync_semaphore_p = BROWSER_INVALID_HANDLE;
	g_data_flag = 0;

	Browser_Os_Memset(&g_browserld_down_ctrl, 0, sizeof(g_browserld_down_ctrl));
	Browser_Os_Memset(&g_browserld_down_hder, 0, sizeof(g_browserld_down_hder));

#if 0	
	if (OS_MemoryInit() == 0)
	{		
		return  0;
	}
#endif
	m_gen_crc32_table();

	if (browser_ld_alloc_image_mgr() == 0)
	{
		//OS_MemoryRelease();
		
		return  0;
	}

	browser_ld_init_update_info();

	for (i = 0; i < PARTITION_CNT; ++i)
	{
		g_browserld_partition_recflag[i] = 0xffff;

		for (j = 0; j < DGRAM_PER_PARTITION; ++j)
		{
			g_browserld_datagram_recflag[i][j] = 0xff;
		}
	}
	
	g_browserld_down_ctrl.table_id = 0xff;
	
	f_data_sync_semaphore_p = Browser_Os_CreateSemaphore(BROWSER_FALSE);

	if (f_data_sync_semaphore_p == BROWSER_INVALID_HANDLE)
	{	
		//OS_MemoryRelease();
	
		return  0;
	}
	
	if ((f_browserld_msg_queen_handle = Browser_Os_CreateMessageQueue(sizeof(BROWSER_LOADER_MSG), 50)) == BROWSER_INVALID_HANDLE)
	{
		Browser_Os_DeleteSemaphore(f_data_sync_semaphore_p);
	
		//OS_MemoryRelease();
	
		return 0;
	}

	f_browserld_task_handle = Browser_Os_CreateTask("BRS", Browser_Loader_Task, 32 * 1024);

	if (f_browserld_task_handle == BROWSER_INVALID_HANDLE)
	{
		Browser_Os_DeleteMessageQueue(f_browserld_msg_queen_handle);
	
		Browser_Os_DeleteSemaphore(f_data_sync_semaphore_p);
	
		//OS_MemoryRelease();
		
		return 0;
	}
	
	Browser_Os_TaskSleep(100);

	/*启动下载指令*/
	Browser_Loader_Init_Msg();

	Browser_Os_SemaphoreWait(f_data_sync_semaphore_p, p_timeout);

	StopFilter();

	Browser_Os_DeleteTask(f_browserld_task_handle);

	Browser_Os_DeleteMessageQueue(f_browserld_msg_queen_handle);

	Browser_Os_DeleteSemaphore(f_data_sync_semaphore_p);

	if (g_data_flag == 0)
	{
		return 0;
	}
	else if (g_data_flag == 1)
	{
		*p_browser_data_pp = f_browser_data_p;
		
		*p_browser_data_size_p = f_browser_data_num;
	}

	return 1;
}

void  BrowserTsSetMemory(BrowserMalloc_T  p_malloc_p)
{
	f_malloc_p = p_malloc_p;
}

#endif

