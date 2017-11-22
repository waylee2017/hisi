
#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <pthread.h>

#include "hi_type.h"
#include "hi_unf_common.h"
#include "hi_unf_demux.h"
#include "hi_unf_ecs.h"
#include "hi_adp_mpi.h"
#include "hi_adp_tuner.h"

#define DEMUX_ID        0
#define PORT_ID         HI_UNF_DMX_PORT_0_TUNER

#define PAT_PID         0
#define PAT_TABLEID     0

#define INVALID_PID     0x1FFF
#define INVALID_PTS     0xFFFFFFFFL

PMT_COMPACT_TBL    *g_pProgTbl = HI_NULL;
static HI_U32       g_index = 0;

typedef struct
{
    HI_HANDLE   RecHandle;
    HI_CHAR     FileName[256];
    HI_BOOL     ThreadRunFlag;
} TsFileInfo;

/* for change pid and pts test */
#define TS_PROCCES_SUPPOT

#define NEW_PID         0x23
#define NEW_PTS_BASE    5000

#ifdef TS_PROCCES_SUPPOT

#define BYTE_INVALID_VALUE 0xFF
#define TS_PKT_LEN          188
#define TS_HEAD_LEN         4
#define TS_A_F_LEN          1

#define PES_HEAD_LEN        9
static HI_S64  g_s64GapPts = 0;

//TS header struct
typedef struct hiTS_Header 
{ 
	HI_U32 sync_byte                        :8;      //同步字节，固定为0x47 
    HI_U32 transport_error_indicator        :1;
	HI_U32 payload_unit_start_indicator     :1;      
	HI_U32 transport_priority               :1;  
	HI_U32 PID                              :13;     //有效负载数据的类型 
	HI_U32 transport_scrambling_control     :2;      //加密标志位,00表示未加密 
	HI_U32 adaption_field_control           :2;      //调整字段控制,。01
	HI_U32 continuity_counter               :4;      //一个4bit的计数器，范围0-15 
    HI_U32 adapter_field_length;                   //自适应区的长度
} TS_Header; 

//PAT struct
typedef struct hiTS_PAT
{
	HI_U32 table_id                          :8; //固定为0x00 ，标志是该表是PAT
	HI_U32 section_syntax_indicator          :1; //段语法标志位，固定为1
	HI_U32 zero                              :1; //0
	HI_U32 reserved_1                        :2; // 保留位
	HI_U32 section_length                    :12; //表示这个字节后面有用的字节数，包括CRC32
	HI_U32 transport_stream_id               :16; //该传输流的ID，区别于一个网络中其它多路复用的流
	HI_U32 reserved_2                        :2;// 保留位
	HI_U32 version_number                    :5; //范围0-31，表示PAT的版本号
	HI_U32 current_next_indicator            :1; //发送的PAT是当前有效还是下一个PAT有效
	HI_U32 section_number                    :8; //分段的号码。PAT可能分为多段传输，第一段为00，以后每个分段加1，最多可能有256个分段
	HI_U32 last_section_number               :8;  //最后一个分段的号码
	//for(i=0;i<N;i++)
	//{
	HI_U32 program_number                    :16; 
	HI_U32 reserved_3                        :3; // 保留位
    union 
    {
    HI_U32 program_map_PID                   :13; //网络信息表（NIT）的PID,节目号为0时对应的PID为network_PID,节目号为1时节目映射表的PID    
    HI_U32 network_PID                       :13; //网络信息表（NIT）的PID,节目号为0时对应的PID为network_PID,节目号为1时节目映射表的PID
    }unProgNetPID;
    //}
    HI_U32 CRC_32                            :32;  //CRC32校验码
} TS_PAT; 
//14 bytes

//PMT struct
typedef struct hiTS_PMT
{ 
	HI_U32 table_id                         :8; 
	HI_U32 section_syntax_indicator         :1; 
	HI_U32 zero                             :1; 
	HI_U32 reserved_1                       :2; 
	HI_U32 section_length                   :12; 
	HI_U32 program_number                   :16; 
	HI_U32 reserved_2                       :2; 
	HI_U32 version_number                   :5; 
	HI_U32 current_next_indicator           :1; 
	HI_U32 section_number                   :8; 
	HI_U32 last_section_number              :8; 
	HI_U32 reserved_3                       :3; 
	HI_U32 PCR_PID                          :13; 
	HI_U32 reserved_4                       :4; 
	HI_U32 program_info_length              :12; 
	// for(i=0; i<N; i++) 
	// { 
	HI_U32 stream_type                      :8; 
	HI_U32 reserved_5                       :3; 
	HI_U32 elementary_PID                   :13; 
	HI_U32 reserved_6                       :4; 
	HI_U32 ES_info_length                   :12; 
	// } 
	HI_U32 CRC_32                           :32; 
} TS_PMT; 


//PesHeader struct
typedef struct hiPES_Header
{ 
	//---
	HI_U32	packet_start_code_prefix         :24;		//PES包起始前缀码
	HI_U32	stream_id					   	 :8;		//PES流标识
	HI_U32	pes_packet_length		    	 :16;		//PES包长度
	// 6 bytes
	//--
	//	PES_header_flags  pes_header_flags;                    	//PES头标识
	HI_U32	fixed						     :2;		//固定10
	HI_U32	pes_scrambling_control           :2;		//PES加扰控制
	HI_U32	pes_priority					 :1;		//PES优先级
	HI_U32	data_alignment_indicator		 :1;		//数据定位指示符
	HI_U32	copyright						 :1;		//版权
	HI_U32	original_or_copy				 :1;		//原版或拷贝
	HI_U32	PTS_DTS_flags					 :2;		//PTS/DTS标志
	HI_U32	ESCR_flag						 :1;		//ESCR标志
	HI_U32	ES_rate_flag					 :1;		//ES速率标志
	HI_U32	DSM_trick_mode_flag				 :1;		//DSM特技方式标志
	HI_U32	additional_copy_info_flag   	 :1;		//附加的信息拷贝
	HI_U32	pes_CRC_flag					 :1;		//PES CRC标志
	HI_U32	pes_extension_flag				 :1;		//PES扩展标志

	HI_U32  pes_header_data_length			 :8;	    //PES头长度
	//--3 bytes
	//	unsigned int	pes_header_data_field_length;
	//	unsigned char	*pes_header_data_field;
	//-----
	//pts
	HI_U32	reserved3_1						 :4;
	HI_U32	PTS_3_32_30					     :3;
	HI_U32	marker_bit3_1					 :1;
	HI_U32	PTS_3_29_15					     :15;
	HI_U32	marker_bit3_2					 :1;
	HI_U32	PTS_3_14_0					     :15;
	HI_U32	marker_bit3_3					 :1;
	//dts
	HI_U32	reserved1_1						 :4;
	HI_U32	PTS_1_32_30					     :3;
	HI_U32	marker_bit1_1					 :1;
	HI_U32	PTS_1_29_15					     :15;
	HI_U32	marker_bit1_2					 :1;
	HI_U32	PTS_1_14_0					     :15;
	HI_U32	marker_bit1_3					 :1;
	//---10 bytes

} PES_Header;

typedef struct  {
	PES_Header		pes_header;		               //包头
	HI_U8          *pes_packetdata;					//PES包数据
} PESpacket;

static const unsigned int crc_table[256] = {
        0x00000000, 0x04c11db7, 0x09823b6e, 0x0d4326d9, 0x130476dc, 0x17c56b6b,
        0x1a864db2, 0x1e475005, 0x2608edb8, 0x22c9f00f, 0x2f8ad6d6, 0x2b4bcb61,
        0x350c9b64, 0x31cd86d3, 0x3c8ea00a, 0x384fbdbd, 0x4c11db70, 0x48d0c6c7,
        0x4593e01e, 0x4152fda9, 0x5f15adac, 0x5bd4b01b, 0x569796c2, 0x52568b75,
        0x6a1936c8, 0x6ed82b7f, 0x639b0da6, 0x675a1011, 0x791d4014, 0x7ddc5da3,
        0x709f7b7a, 0x745e66cd, 0x9823b6e0, 0x9ce2ab57, 0x91a18d8e, 0x95609039,
        0x8b27c03c, 0x8fe6dd8b, 0x82a5fb52, 0x8664e6e5, 0xbe2b5b58, 0xbaea46ef,
        0xb7a96036, 0xb3687d81, 0xad2f2d84, 0xa9ee3033, 0xa4ad16ea, 0xa06c0b5d,
        0xd4326d90, 0xd0f37027, 0xddb056fe, 0xd9714b49, 0xc7361b4c, 0xc3f706fb,
        0xceb42022, 0xca753d95, 0xf23a8028, 0xf6fb9d9f, 0xfbb8bb46, 0xff79a6f1,
        0xe13ef6f4, 0xe5ffeb43, 0xe8bccd9a, 0xec7dd02d, 0x34867077, 0x30476dc0,
        0x3d044b19, 0x39c556ae, 0x278206ab, 0x23431b1c, 0x2e003dc5, 0x2ac12072,
        0x128e9dcf, 0x164f8078, 0x1b0ca6a1, 0x1fcdbb16, 0x018aeb13, 0x054bf6a4,
        0x0808d07d, 0x0cc9cdca, 0x7897ab07, 0x7c56b6b0, 0x71159069, 0x75d48dde,
        0x6b93dddb, 0x6f52c06c, 0x6211e6b5, 0x66d0fb02, 0x5e9f46bf, 0x5a5e5b08,
        0x571d7dd1, 0x53dc6066, 0x4d9b3063, 0x495a2dd4, 0x44190b0d, 0x40d816ba,
        0xaca5c697, 0xa864db20, 0xa527fdf9, 0xa1e6e04e, 0xbfa1b04b, 0xbb60adfc,
        0xb6238b25, 0xb2e29692, 0x8aad2b2f, 0x8e6c3698, 0x832f1041, 0x87ee0df6,
        0x99a95df3, 0x9d684044, 0x902b669d, 0x94ea7b2a, 0xe0b41de7, 0xe4750050,
        0xe9362689, 0xedf73b3e, 0xf3b06b3b, 0xf771768c, 0xfa325055, 0xfef34de2,
        0xc6bcf05f, 0xc27dede8, 0xcf3ecb31, 0xcbffd686, 0xd5b88683, 0xd1799b34,
        0xdc3abded, 0xd8fba05a, 0x690ce0ee, 0x6dcdfd59, 0x608edb80, 0x644fc637,
        0x7a089632, 0x7ec98b85, 0x738aad5c, 0x774bb0eb, 0x4f040d56, 0x4bc510e1,
        0x46863638, 0x42472b8f, 0x5c007b8a, 0x58c1663d, 0x558240e4, 0x51435d53,
        0x251d3b9e, 0x21dc2629, 0x2c9f00f0, 0x285e1d47, 0x36194d42, 0x32d850f5,
        0x3f9b762c, 0x3b5a6b9b, 0x0315d626, 0x07d4cb91, 0x0a97ed48, 0x0e56f0ff,
        0x1011a0fa, 0x14d0bd4d, 0x19939b94, 0x1d528623, 0xf12f560e, 0xf5ee4bb9,
        0xf8ad6d60, 0xfc6c70d7, 0xe22b20d2, 0xe6ea3d65, 0xeba91bbc, 0xef68060b,
        0xd727bbb6, 0xd3e6a601, 0xdea580d8, 0xda649d6f, 0xc423cd6a, 0xc0e2d0dd,
        0xcda1f604, 0xc960ebb3, 0xbd3e8d7e, 0xb9ff90c9, 0xb4bcb610, 0xb07daba7,
        0xae3afba2, 0xaafbe615, 0xa7b8c0cc, 0xa379dd7b, 0x9b3660c6, 0x9ff77d71,
        0x92b45ba8, 0x9675461f, 0x8832161a, 0x8cf30bad, 0x81b02d74, 0x857130c3,
        0x5d8a9099, 0x594b8d2e, 0x5408abf7, 0x50c9b640, 0x4e8ee645, 0x4a4ffbf2,
        0x470cdd2b, 0x43cdc09c, 0x7b827d21, 0x7f436096, 0x7200464f, 0x76c15bf8,
        0x68860bfd, 0x6c47164a, 0x61043093, 0x65c52d24, 0x119b4be9, 0x155a565e,
        0x18197087, 0x1cd86d30, 0x029f3d35, 0x065e2082, 0x0b1d065b, 0x0fdc1bec,
        0x3793a651, 0x3352bbe6, 0x3e119d3f, 0x3ad08088, 0x2497d08d, 0x2056cd3a,
        0x2d15ebe3, 0x29d4f654, 0xc5a92679, 0xc1683bce, 0xcc2b1d17, 0xc8ea00a0,
        0xd6ad50a5, 0xd26c4d12, 0xdf2f6bcb, 0xdbee767c, 0xe3a1cbc1, 0xe760d676,
        0xea23f0af, 0xeee2ed18, 0xf0a5bd1d, 0xf464a0aa, 0xf9278673, 0xfde69bc4,
        0x89b8fd09, 0x8d79e0be, 0x803ac667, 0x84fbdbd0, 0x9abc8bd5, 0x9e7d9662,
        0x933eb0bb, 0x97ffad0c, 0xafb010b1, 0xab710d06, 0xa6322bdf, 0xa2f33668,
        0xbcb4666d, 0xb8757bda, 0xb5365d03, 0xb1f740b4
    };


unsigned int demux_crc32(unsigned char *data, unsigned int len)
{
    unsigned int    i;
    unsigned int    crc = 0xffffffff;
    unsigned char  *ptr = data;

    for (i = 0; i < len; ++i)
    {
        crc = (crc << 8) ^ crc_table[((crc >> 24) ^ *ptr++) & 0xff];
    }

    return crc;
}

HI_S32 ParseTSHeader(HI_U8 *pTSBuf, TS_Header *pheader) 
{ 
	pheader->sync_byte = pTSBuf[0]; 
	if (pheader->sync_byte != 0x47) 
		return HI_FAILURE; 
	pheader->transport_error_indicator       = pTSBuf[1] >> 7; 
	pheader->payload_unit_start_indicator    = pTSBuf[1] >> 6 & 0x01; 
	pheader->transport_priority              = pTSBuf[1] >> 5 & 0x01; 
	pheader->PID                             = (pTSBuf[1] & 0x1F) << 8 | pTSBuf[2]; 
	pheader->transport_scrambling_control    = pTSBuf[3] >> 6; 
	pheader->adaption_field_control          = pTSBuf[3] >> 4 & 0x03; 
	pheader->continuity_counter              = pTSBuf[3] & 0x0F;
	/* if (adaption_field_control == '10' || adaption_field_control == '11') */
	if (0x2 == pheader->adaption_field_control || 0x3 == pheader->adaption_field_control)
		pheader->adapter_field_length	   = pTSBuf[4];
	else
		pheader->adapter_field_length       = BYTE_INVALID_VALUE;

	return HI_SUCCESS; 
}

HI_S32 ChangePTSForPESHeader(HI_U8 * buffer, HI_S32 s32ParserLen, HI_U64 u64PtsBase)
{
    HI_S32  s32PesHeaderLen = 0;
    HI_U32  u32NewPtsValue = 0;
    HI_U64  u64CurrentPts = 0;
    HI_S64  s64NewPts = 0;
    
    HI_U32 streamId = buffer[3];
    PES_Header stPesHeader = {0};
    
	if ((buffer[0] != 0x00) || (buffer[1] != 0x00) || (buffer[2] != 0x01))
	{
		printf("pes start byte =%#x%x%x\n", buffer[0], buffer[1], buffer[2]);
        return HI_FAILURE;
    }
    /* the video or audio pes type */
    if ((streamId != 0xbc) //1011 1100  1   program_stream_map
        && (streamId != 0xbe) //1011 1110       padding_stream
        && (streamId != 0xbf) //1011 1111   3   private_stream_2
        && (streamId != 0xf0) //1111 0000   3   ECM_stream
        && (streamId != 0xf1) //1111 0001   3   EMM_stream
        && (streamId != 0xff) //1111 1111   4   program_stream_directory
        && (streamId != 0xf2) //1111 0010   5   ITU-T Rec. H.222.0 | ISO/IEC 13818-1 Annex A or ISO/IEC 13818-6_DSMCC_stream
        && (streamId != 0xf8)) //1111 1000  6   ITU-T Rec. H.222.1 type E
    {
        //the total size of pes, we didn't use it current
    	stPesHeader.pes_packet_length = buffer[4] << 8 | buffer[5];
        stPesHeader.pes_header_data_length = buffer[8];

        stPesHeader.PTS_DTS_flags= (buffer[7] & 0x80) >> 7;

        s32PesHeaderLen = PES_HEAD_LEN + buffer[8];

        if (stPesHeader.PTS_DTS_flags && (s32ParserLen > s32PesHeaderLen))
        {
            HI_U32 PTSLow = (((buffer[9] & 0x06) >> 1) << 30)
                     | ((buffer[10]) << 22)
                     | (((buffer[11] & 0xfe) >> 1) << 15)
                     | ((buffer[12]) << 7)
                     | (((buffer[13] & 0xfe)) >> 1);
            if (buffer[9] & 0x08)
            {
                u64CurrentPts = PTSLow+0x100000000LL;//(1<<32)
            }
            else
            {
                u64CurrentPts = PTSLow;
            }

            /* get the gap */
            if (0 == g_s64GapPts)
            {
                g_s64GapPts = u64CurrentPts - u64PtsBase*90;
            }


            s64NewPts = u64CurrentPts - g_s64GapPts;
            if(s64NewPts >= 0x200000000LL)
			{
                s64NewPts -= 0x200000000LL;
			}
            /* write back the new pts */
            u32NewPtsValue = ((HI_U32)s64NewPts)&0xFFFFFFFF;
            buffer[9] = (0x20 + (((u32NewPtsValue>>30) & 0x00000007 ) << 1 )) | 0x00000001;
            buffer[10] = (u32NewPtsValue>>22) & 0x000000ff;
            buffer[11] = ((((u32NewPtsValue>>15) & 0x000000ff ) << 1 )) | 0x00000001;
            buffer[12] = (u32NewPtsValue>>7) & 0x000000ff;
            buffer[13] = ((((u32NewPtsValue) & 0x000000ff ) << 1 )) | 0x00000001;
            if(s64NewPts > 0xFFFFFFFF)
            {
                buffer[9] |= 0x08;
            }
        }
        else
        {
            u64CurrentPts = INVALID_PTS;
        }
        
    }
    else
    {
        printf("pes stream id(%#x) invalid\n", streamId);
        return HI_FAILURE;
    }

    return HI_SUCCESS;
}

HI_S32 ChangePMTTable(TS_PMT * packet, unsigned char * buffer, HI_U32 u32OldPid, HI_U32 u32NewPid)
{
    HI_U32 u32CRC = 0;
    HI_S32 s32PmtLen = 0;      
	packet->table_id                            = buffer[0];      
	packet->section_syntax_indicator            = buffer[1] >> 7;     
	packet->zero                                = buffer[1] >> 6 & 0x01;      
	packet->reserved_1                          = buffer[1] >> 4 & 0x03;      
	packet->section_length                      = (buffer[1] & 0x0F) << 8 | buffer[2];         
	packet->program_number                      = buffer[3] << 8 | buffer[4];     
	packet->reserved_2                          = buffer[5] >> 6;      
	packet->version_number                      = buffer[5] >> 1 & 0x1F;     
	packet->current_next_indicator              = (buffer[5] << 7) >> 7;     
	packet->section_number                      = buffer[6];     
	packet->last_section_number                 = buffer[7];     
	packet->reserved_3                          = buffer[8] >> 5;      
	packet->PCR_PID                             = ((buffer[8] << 8) | buffer[9]) & 0x1FFF;     
	packet->reserved_4                          = buffer[10] >> 4;     
	packet->program_info_length                 = (buffer[10] & 0x0F) << 8 | buffer[11];      // Get CRC_32  
	s32PmtLen = packet->section_length + 3;          
	packet->CRC_32 = (buffer[s32PmtLen-4] & 0x000000FF) << 24   
		            |(buffer[s32PmtLen-3] & 0x000000FF) << 16   
		            |(buffer[s32PmtLen-2] & 0x000000FF) << 8   
		            |(buffer[s32PmtLen-1] & 0x000000FF);  
	int pos = 12;      
	// program info descriptor      
	if ( packet->program_info_length != 0 )         
		pos += packet->program_info_length;         
	// Get stream type and PID          
	for ( ;pos <= (packet->section_length + 2 ) -  4; )     
	{   
	    packet->stream_type = buffer[pos];
		packet->reserved_5  =   buffer[pos+1] >> 5;
        packet->elementary_PID = ((buffer[pos+1] << 8) | buffer[pos+2]) & 0x1FFF;
        /* change the  pid */
        if (u32OldPid == packet->elementary_PID)
        {
            buffer[pos+1] = (buffer[pos+1]&0xe0) | ((u32NewPid >> 8) & 0x1F);
            buffer[pos+2] = (u32NewPid & 0xFF);
        }
		packet->reserved_6     =   buffer[pos+3] >> 4;
        packet->ES_info_length = (buffer[pos+3] & 0x0F) << 8 | buffer[pos+4];

		if (packet->ES_info_length != 0)   
		{     
			pos += packet->ES_info_length;   
		}    
		pos += 5;
	}
    
    u32CRC = demux_crc32(buffer, s32PmtLen - 4) ;//update crc
    buffer[s32PmtLen - 1] = u32CRC & 0x000000FF;
    buffer[s32PmtLen - 2] = (u32CRC >> 8) & 0x000000FF;
    buffer[s32PmtLen - 3] = (u32CRC >> 16) & 0x000000FF;
    buffer[s32PmtLen - 4] = (u32CRC >> 24) & 0x000000FF;

    return HI_SUCCESS;
}

HI_S32 ChangeInfoCallBack(HI_U8 *pu8DataAddr, HI_U32 u32DataSize, HI_U32 u32OldPid, HI_U32 u32NewPid, HI_U32 u32PtsBase)
{
    HI_U8 *pData;
    HI_U32 pid;
    HI_S32 s32Ret;
    HI_S32 s32AdaptTotalLen = 0;
    HI_S32 s32ParseLen = 0;
    TS_PMT stPmt;
    TS_Header tTSHead = {0};
    pData = pu8DataAddr;
   
    while (u32DataSize > 0)
    {
        if(pData[0] == 0x47)
        {
        
            pid = ((pData[1] & 0x1f)<< 8 ) + pData[2];

            if(pid == g_pProgTbl->proginfo[g_index].PmtPid)
            {
                ChangePMTTable(&stPmt, pData+5, u32OldPid, u32NewPid);
			}
               
            if(pid == u32OldPid)
            {
                /* change the pid */
                pData[1] = (pData[1]&0xe0) | ((u32NewPid >> 8) & 0x1F);;
                pData[2] = u32NewPid & 0xFF;
				
				 /* change the pts this condition */
                if (0 != NEW_PTS_BASE)
                {
                    ParseTSHeader(pData, &tTSHead);
                    /* get the adapt field length */
            		if (1 == tTSHead.adaption_field_control || 3 == tTSHead.adaption_field_control)
            		{
            			s32AdaptTotalLen = 0;
            			if (3 == tTSHead.adaption_field_control && BYTE_INVALID_VALUE != tTSHead.adapter_field_length)
            			{
            				s32AdaptTotalLen = tTSHead.adapter_field_length + 1;
            			}
            		}
            		else
            		{
            			printf("This TS package has no valid data!\n");
                        u32DataSize -= TS_PKT_LEN;
                        pData += TS_PKT_LEN;
            			continue;
            		}

            		if (tTSHead.payload_unit_start_indicator == 1) 
            		{
            			/*change the pts of pes header*/
                        s32ParseLen = TS_PKT_LEN - TS_HEAD_LEN - s32AdaptTotalLen;
            			s32Ret = ChangePTSForPESHeader(pData+TS_HEAD_LEN+s32AdaptTotalLen, s32ParseLen, u32PtsBase);
                        if (HI_SUCCESS != s32Ret)
                        {
                            printf("invalid PES,continue\n");
                            u32DataSize -= TS_PKT_LEN;
                            pData += TS_PKT_LEN;
                            continue;
                        }
                    }
                }
            }         

       }
       else
       {
           //error ts packet,may be need sync here
       }
       
       u32DataSize -= TS_PKT_LEN;
       pData += TS_PKT_LEN;
   }
   return 0;
  
}

#endif

HI_VOID* SaveRecDataThread(HI_VOID *arg)
{
    HI_S32      ret;
    TsFileInfo *Ts      = (TsFileInfo*)arg;
    FILE       *RecFile = HI_NULL;

    RecFile = fopen(Ts->FileName, "w");
    if (!RecFile)
    {
        perror("fopen error");

        Ts->ThreadRunFlag = HI_FALSE;

        return HI_NULL;
    }

    printf("[%s] open file %s\n", __FUNCTION__, Ts->FileName);

    while (Ts->ThreadRunFlag)
    {
        HI_UNF_DMX_REC_DATA_S RecData;

        ret = HI_UNF_DMX_AcquireRecData(Ts->RecHandle, &RecData, 100);
        if (HI_SUCCESS != ret)
        {
            if (HI_ERR_DMX_TIMEOUT == ret)
            {
                continue;
            }

            if (HI_ERR_DMX_NOAVAILABLE_DATA == ret)
            {
                continue;
            }

            printf("[%s] HI_UNF_DMX_AcquireRecData failed 0x%x\n", __FUNCTION__, ret);

            break;
        }

#ifdef TS_PROCCES_SUPPOT
        ret = ChangeInfoCallBack(RecData.pDataAddr, RecData.u32Len, 
        g_pProgTbl->proginfo[g_index].VElementPid, NEW_PID, NEW_PTS_BASE);
        if (HI_SUCCESS != ret)
        {
            printf("[%s] ChangeInfoCallBack failed 0x%x\n", __FUNCTION__, ret);
        }
#endif

        if (RecData.u32Len != fwrite(RecData.pDataAddr, 1, RecData.u32Len, RecFile))
        {
            perror("[SaveRecDataThread] fwrite error");

            break;
        }

        ret = HI_UNF_DMX_ReleaseRecData(Ts->RecHandle, &RecData);
        if (HI_SUCCESS != ret)
        {
            printf("[%s] HI_UNF_DMX_ReleaseRecData failed 0x%x\n", __FUNCTION__, ret);

            break;
        }
    }
    
    fclose(RecFile);
    Ts->ThreadRunFlag = HI_FALSE;

#ifdef TS_PROCCES_SUPPOT
    g_s64GapPts = 0;
#endif

    return HI_NULL;
}

HI_VOID* SaveIndexDataThread(HI_VOID *arg)
{
    HI_S32                  ret;
    TsFileInfo             *Ts          = (TsFileInfo*)arg;
    FILE                   *IndexFile   = HI_NULL;
    HI_U32                  IndexCount  = 0;
    HI_UNF_DMX_REC_INDEX_S  RecIndex[64];

    IndexFile = fopen(Ts->FileName, "w");
    if (!IndexFile)
    {
        perror("fopen error");

        Ts->ThreadRunFlag = HI_FALSE;

        return HI_NULL;
    }

    printf("[%s] open file %s\n", __FUNCTION__, Ts->FileName);

    while (Ts->ThreadRunFlag)
    {
        ret = HI_UNF_DMX_AcquireRecIndex(Ts->RecHandle, &RecIndex[IndexCount], 100);
        if (HI_SUCCESS != ret)
        {
            if ((HI_ERR_DMX_NOAVAILABLE_DATA == ret) || (HI_ERR_DMX_TIMEOUT == ret))
            {
                continue;
            }

            printf("[%s] HI_UNF_DMX_AcquireRecIndex failed 0x%x\n", __FUNCTION__, ret);

            break;
        }

        if (++IndexCount >= (sizeof(RecIndex) / sizeof(RecIndex[0])))
        {
            IndexCount = 0;

            if (sizeof(RecIndex) != fwrite(&RecIndex, 1, sizeof(RecIndex), IndexFile))
            {
                perror("[SaveIndexDataThread] fwrite error");

                break;
            }

            fflush(IndexFile);
        }
    }

    fclose(IndexFile);

    Ts->ThreadRunFlag = HI_FALSE;

    return HI_NULL;
}

HI_S32 DmxStartRecord(HI_CHAR *Path, PMT_COMPACT_PROG *ProgInfo)
{
    HI_S32                  ret;
    HI_UNF_DMX_REC_ATTR_S   RecAttr;
    HI_HANDLE               RecHandle;
    HI_HANDLE               ChanHandle[8];
    HI_U32                  ChanCount       = 0;
    HI_BOOL                 RecordStatus    = HI_FALSE;
    pthread_t               RecThreadId     = -1;
    pthread_t               IndexThreadId   = -1;
    TsFileInfo              TsRecInfo;
    TsFileInfo              TsIndexInfo;
    HI_CHAR                 FileName[256];
    HI_U32                  i;

    RecAttr.u32DmxId        = DEMUX_ID;
    RecAttr.u32RecBufSize   = 4 * 1024 * 1024;
    RecAttr.enRecType       = HI_UNF_DMX_REC_TYPE_SELECT_PID;
    RecAttr.bDescramed      = HI_TRUE;

    if (ProgInfo->VElementPid < INVALID_PID)
    {
        RecAttr.enIndexType     = HI_UNF_DMX_REC_INDEX_TYPE_VIDEO;
        RecAttr.u32IndexSrcPid  = ProgInfo->VElementPid;
        RecAttr.enVCodecType    = HI_UNF_VCODEC_TYPE_MPEG2;
    }
    else if (ProgInfo->AElementPid < INVALID_PID)
    {
        RecAttr.enIndexType     = HI_UNF_DMX_REC_INDEX_TYPE_AUDIO;
        RecAttr.u32IndexSrcPid  = ProgInfo->AElementPid;
    }
    else
    {
        RecAttr.enIndexType     = HI_UNF_DMX_REC_INDEX_TYPE_NONE;
    }

    ret = HI_UNF_DMX_CreateRecChn(&RecAttr, &RecHandle);
    if (HI_SUCCESS != ret)
    {
        printf("[%s - %u] HI_UNF_DMX_CreateRecChn failed 0x%x\n", __FUNCTION__, __LINE__, ret);

        return ret;;
    }

    ret = HI_UNF_DMX_AddRecPid(RecHandle, PAT_PID, &ChanHandle[ChanCount]);
    if (HI_SUCCESS != ret)
    {
        printf("[%s - %u] HI_UNF_DMX_AddRecPid failed 0x%x\n", __FUNCTION__, __LINE__, ret);

        goto exit;
    }

    ++ChanCount;

    ret = HI_UNF_DMX_AddRecPid(RecHandle, ProgInfo->PmtPid, &ChanHandle[ChanCount]);
    if (HI_SUCCESS != ret)
    {
        printf("[%s - %u] HI_UNF_DMX_AddRecPid failed 0x%x\n", __FUNCTION__, __LINE__, ret);

        goto exit;
    }

    ++ChanCount;

    sprintf(FileName, "%s/rec", Path);

    if (ProgInfo->VElementPid < INVALID_PID)
    {
        ret = HI_UNF_DMX_AddRecPid(RecHandle, ProgInfo->VElementPid, &ChanHandle[ChanCount]);
        if (HI_SUCCESS != ret)
        {
            printf("[%s - %u] HI_UNF_DMX_AddRecPid failed 0x%x\n", __FUNCTION__, __LINE__, ret);

            goto exit;
        }

        sprintf(FileName, "%s_v%u", FileName, ProgInfo->VElementPid);

        ++ChanCount;
    }

    if (ProgInfo->AElementPid < INVALID_PID)
    {
        ret = HI_UNF_DMX_AddRecPid(RecHandle, ProgInfo->AElementPid, &ChanHandle[ChanCount]);
        if (HI_SUCCESS != ret)
        {
            printf("[%s - %u] HI_UNF_DMX_AddRecPid failed 0x%x\n", __FUNCTION__, __LINE__, ret);

            goto exit;
        }

        sprintf(FileName, "%s_a%u", FileName, ProgInfo->AElementPid);

        ++ChanCount;
    }

    ret = HI_UNF_DMX_StartRecChn(RecHandle);
    if (HI_SUCCESS != ret)
    {
        printf("[%s - %u] HI_UNF_DMX_StartRecChn failed 0x%x\n", __FUNCTION__, __LINE__, ret);

        goto exit;
    }

    RecordStatus = HI_TRUE;

    TsRecInfo.RecHandle     = RecHandle;
    TsRecInfo.ThreadRunFlag = HI_TRUE;
    sprintf(TsRecInfo.FileName, "%s.ts", FileName);

    ret = pthread_create(&RecThreadId, HI_NULL, SaveRecDataThread, (HI_VOID*)&TsRecInfo);
    if (0 != ret)
    {
        perror("[DmxStartRecord] pthread_create record error");

        goto exit;
    }

    TsIndexInfo.RecHandle       = RecHandle;
    TsIndexInfo.ThreadRunFlag   = HI_TRUE;
    sprintf(TsIndexInfo.FileName, "%s.ts.idx", FileName);

    ret = pthread_create(&IndexThreadId, HI_NULL, SaveIndexDataThread, (HI_VOID*)&TsIndexInfo);
    if (0 != ret)
    {
        perror("[DmxStartRecord] pthread_create index error");

        goto exit;
    }

    sleep(1);

    while (1)
    {
        HI_CHAR InputCmd[256]   = {0};

        printf("please input the q to quit!\n");

        fgets(InputCmd, sizeof(InputCmd) - 1, stdin);
        if ('q' == InputCmd[0])
        {
            break;
        }
    }

exit :
    if (-1 != RecThreadId)
    {
        TsRecInfo.ThreadRunFlag = HI_FALSE;
        pthread_join(RecThreadId, HI_NULL);
    }

    if (-1 != IndexThreadId)
    {
        TsIndexInfo.ThreadRunFlag = HI_FALSE;
        pthread_join(IndexThreadId, HI_NULL);
    }

    if (RecordStatus)
    {
        ret = HI_UNF_DMX_StopRecChn(RecHandle);
        if (HI_SUCCESS != ret)
        {
            printf("[%s - %u] HI_UNF_DMX_StopRecChn failed 0x%x\n", __FUNCTION__, __LINE__, ret);
        }
    }

    for (i = 0; i < ChanCount; i++)
    {
        ret = HI_UNF_DMX_DelRecPid(RecHandle, ChanHandle[i]);
        if (HI_SUCCESS != ret)
        {
            printf("[%s - %u] HI_UNF_DMX_DelRecPid failed 0x%x\n", __FUNCTION__, __LINE__, ret);
        }
    }

    ret = HI_UNF_DMX_DestroyRecChn(RecHandle);
    if (HI_SUCCESS != ret)
    {
        printf("[%s - %u] HI_UNF_DMX_DestroyRecChn failed 0x%x\n", __FUNCTION__, __LINE__, ret);
    }

    return ret;
}

HI_S32 main(HI_S32 argc, HI_CHAR *argv[])
{
    HI_S32      ret;
    HI_CHAR    *Path            = HI_NULL;
    HI_U32      Freq            = 610;
    HI_U32      SymbolRate      = 6875;
    HI_U32      ThridParam      = 64;
    HI_U32      ProgNum         = 0;
    HI_CHAR     InputCmd[256]   = {0};

    if (argc < 3)
    {
        printf( "Usage: %s path freq [srate] [qamtype or polarization]\n"
                "       qamtype or polarization: \n"
                "           For cable, used as qamtype, value can be 16|32|[64]|128|256|512 defaut[64] \n"
                "           For satellite, used as polarization, value can be [0] horizontal | 1 vertical defaut[0] \n",
                argv[0]);

        return -1;
    }

    Path        = argv[1];
    Freq        = strtol(argv[2], NULL, 0);
    SymbolRate  = (Freq > 1000) ? 27500 : 6875;
    ThridParam  = (Freq > 1000) ? 0 : 64;

    if (argc >= 4)
    {
        SymbolRate  = strtol(argv[3], NULL, 0);
    }

    if (argc >= 5)
    {
        ThridParam = strtol(argv[4], NULL, 0);
    }

    HI_SYS_Init();

    // HIADP_MCE_Exit();

    ret = HIADP_Tuner_Init();
    if (HI_SUCCESS != ret)
    {
        printf("call HIADP_Demux_Init failed.\n");
        goto TUNER_DEINIT;
    }

    ret = HIADP_Tuner_Connect(PORT_ID, Freq, SymbolRate, ThridParam);
    if (HI_SUCCESS != ret)
    {
        printf("call HIADP_Tuner_Connect failed.\n");
        goto TUNER_DEINIT;
    }

    ret = HI_UNF_DMX_Init();
    if (HI_SUCCESS != ret)
    {
        printf("HI_UNF_DMX_Init failed 0x%x\n", ret);
        goto TUNER_DEINIT;
    }

    ret = HI_UNF_DMX_AttachTSPort(DEMUX_ID, PORT_ID);
    if (HI_SUCCESS != ret)
    {
        printf("HI_UNF_DMX_AttachTSPort failed 0x%x\n", ret);
        goto DMX_DEINIT;
    }

    HIADP_Search_Init();

    ret = HIADP_Search_GetAllPmt(DEMUX_ID, &g_pProgTbl);
    if (HI_SUCCESS != ret)
    {
        printf("call HIADP_Search_GetAllPmt failed\n");
        goto PSISI_FREE;
    }

    printf("\nPlease input the number of program to record: ");

    fgets(InputCmd, sizeof(InputCmd) - 1, stdin);

    ProgNum = (atoi(InputCmd) - 1) % g_pProgTbl->prog_num;

    g_index = ProgNum;
    DmxStartRecord(Path, g_pProgTbl->proginfo + ProgNum);

PSISI_FREE:
    HIADP_Search_FreeAllPmt(g_pProgTbl);
    HIADP_Search_DeInit();

DMX_DEINIT:
    HI_UNF_DMX_DetachTSPort(DEMUX_ID);
    HI_UNF_DMX_DeInit();

TUNER_DEINIT:
    HIADP_Tuner_DeInit();
    HI_SYS_DeInit();

    return ret;
}


