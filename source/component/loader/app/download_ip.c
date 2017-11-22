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
#ifdef __cplusplus
#if __cplusplus
extern "C"{
#endif
#endif

#include <fcntl.h>
#include <sys/mman.h>

#include <net/if.h>
#include <sys/ioctl.h>
#include <sys/wait.h>
#include <sys/stat.h>
#include <arpa/inet.h>

#include "download_ip.h"
#include "hi_loader_info.h"
#include "upgrd_osd.h"
#include "loaderdb_info.h"
#include "upgrd_common.h"

#ifdef HI_LOADER_APPLOADER
#include <curl.h>


#define TFTP_BLOCKSIZE_DEFAULT 512  /* according to RFC 1350, don't change */
#define TFTP_TIMEOUT            5   /* seconds */

/* opcodes */
#define TFTP_RRQ   1
#define TFTP_WRQ   2
#define TFTP_DATA  3
#define TFTP_ACK   4
#define TFTP_ERROR 5
#define TFTP_OACK  6

#define TFTP_MAX_NUM_RETRIES 5

#define NET_TMP_FILE_PATH    "/tmp"
#define NET_PATH_MAX_LEN     128
#define NET_TICK             500
#define NET_TIMEOUT          ((1000/NET_TICK )*60*1) /*1 min timeout*/
#define NET_LNKDNW           ((1000/NET_TICK )*10)


typedef enum Upgrd_LinkStatus_E
{
    UPGRD_ETH_LINK_STAT_OFF = 0,
    UPGRD_ETH_LINK_STAT_ON,

    UPGRD_ETH_LINK_STAT_BUFF
}UPGRD_LINKSTAT_E;

typedef enum UpgrdResultSET_E
{
    UPGRD_RES_SUCC = 0,  /* HI_SUCCESS */
    UPGRD_RES_NET_EXPT,     /* network expection */
    UPGRD_RES_NET_UNRCH,    /* network unreachable */
    UPGRD_RES_SER_NO_RESP,  /* server do not make a response*/
    UPGRD_RES_FILE_LEN_ERR, /* This length of file is incorrect*/

    UPGRD_RES_BUTT

}UPGRD_NET_RES_SET_E;
typedef enum NetShowStat_E
{
    NET_SHOW_CURR_STAT,
    NET_SHOW_NEW_STAT,
    NET_SHOW_STAT_BUTT
}NET_SHOW_STAT_E;

#define UPGRD_ETH_DEV_NUM         2

HI_PROTO_TYPE_E g_eProtoType = HI_PROTO_BUTT;

static HI_U32 g_u32Offset = 0;
static HI_U8* g_pBuff = HI_NULL;
static HI_U32 g_u32RecvLen = 0;

/* for tftp usage */
#define SLIDE_WINDOW_SIZE (64*1024)
static HI_U8 *g_ptrSlidWinSpace = HI_NULL;
static HI_U32 g_u32SlidInnerPos = 0;
static HI_U8  g_u8BlockDataReady = 0;
static HI_U8  g_u8DlEnd  = 0;
static CURLM * multi = HI_NULL;

typedef enum {
	PAUSE,
	WAIT,
	WRITE,
	WRITEND
} TFTP_STATE;

TFTP_STATE g_enState = WRITE;
#define CURRENT_STATE g_enState
#define NEXT_STATE      g_enState

static HI_U16 s_u16DeviceNo = 0xFFFF;

static CURL *g_pCurlHandle = HI_NULL;

static void ip2string (HI_U32 u32IP, char *pcDotIp)
{
	u32IP = ntohl (u32IP);
	HI_OSAL_Snprintf (pcDotIp, 20, "%d.%d.%d.%d",
		              (int) ((u32IP >> 24) & 0xff),
		              (int) ((u32IP >> 16) & 0xff),
		              (int) ((u32IP >> 8) & 0xff), (int) ((u32IP >> 0) & 0xff));
}

static HI_S32 net_device_down(HI_U32 u32DevNo)
{
	HI_S8 acCommand[128];

	/* set device down*/
	HI_OSAL_Snprintf(acCommand, sizeof(acCommand), "ifconfig eth%d down", u32DevNo);
	system(acCommand);

	return HI_SUCCESS;
}

static HI_S32 net_GetLinkStatus(HI_CHAR *pcEthDevName, UPGRD_LINKSTAT_E *ptrLinkStatus)
{
	HI_S32 sockfd, s32Ret;
	HI_S32 retryTimes = 0;
	struct ifreq ifr;

	if (NULL == pcEthDevName || NULL == ptrLinkStatus )
	{
		HI_ERR_LOADER("null pointer\n");
		return HI_FAILURE;
	}

	if ((sockfd = socket(AF_INET, SOCK_DGRAM, 0)) < 0)
	{
		HI_ERR_LOADER("create socket failed\n");
		return HI_FAILURE;
	}

#define MAX_RETRY_NETLINK_STATUS_TIMES (10)  /* 10 * 1s */
	while(retryTimes++ < MAX_RETRY_NETLINK_STATUS_TIMES)
	{
		bzero((char *)&ifr, sizeof(ifr));
		HI_OSAL_Strncpy(ifr.ifr_name, pcEthDevName, sizeof(ifr.ifr_name));
		ifr.ifr_name[sizeof(ifr.ifr_name) - 1] = '\0';
		
		s32Ret = ioctl(sockfd, SIOCGIFFLAGS, (char *)&ifr);
		if (-1 == s32Ret)
			break;

		if ((ifr.ifr_flags & IFF_RUNNING) == 0)
			*ptrLinkStatus = UPGRD_ETH_LINK_STAT_OFF;
		else
		{
			*ptrLinkStatus = UPGRD_ETH_LINK_STAT_ON;
			s32Ret = 0;
			break;
		}

		/* delay 1s */
		LOADER_Delayms(1000);
	}

	close(sockfd);
	return -1 == s32Ret ? HI_FAILURE : HI_SUCCESS;
}

static HI_S32 InitStaticIP(HI_CHAR *pcEthDevName, HI_U32 u32Ipaddr, HI_U32 u32SubnetMask, HI_U32 u32Gateway)
{

	HI_S8 acCommand[128];
	HI_CHAR acIP[20];
	HI_CHAR acMask[20];
	HI_CHAR acGateWay[20];
	HI_S32 s32Status;

	if( NULL == pcEthDevName)
		return HI_FAILURE;

	ip2string(u32Ipaddr, acIP);
	ip2string(u32SubnetMask, acMask);
	ip2string(u32Gateway, acGateWay);

	/*Config ip*/
	HI_OSAL_Snprintf(acCommand, sizeof(acCommand),  "ifconfig %s %s netmask %s", pcEthDevName, acIP, acMask);
	HI_DBG_LOADER("Command:%s\n", acCommand);

	s32Status = system(acCommand);
/*lint -save -e69 -e155*/	
	if( !WIFEXITED(s32Status) || HI_SUCCESS != (WEXITSTATUS(s32Status)))
		return HI_FAILURE;
/*lint -restore*/

	/* Config gateway */
	HI_OSAL_Snprintf(acCommand, sizeof(acCommand), "route add default gw %s", acGateWay);
	HI_DBG_LOADER("Command:%s\n", acCommand);
	
	s32Status = system(acCommand);
/*lint -save -e69 -e155*/	
	if( !WIFEXITED(s32Status) || HI_SUCCESS != (WEXITSTATUS(s32Status)))
		return HI_FAILURE;
/*lint -restore*/

	s32Status = HI_SUCCESS;

	return s32Status;
}

/*DHCPC*/
static HI_S32 InitDynamicIP(HI_CHAR *pcEthDevName)
{
	HI_S32 s32Status;
	pid_t  child_pid;
	HI_CHAR string[6][32] = {"/sbin/udhcpc", "-i", "-n", "-q", "-t", "10"};
	HI_CHAR * argv_list[8] =
	{	NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	};

	if( NULL == pcEthDevName)
		return HI_FAILURE;

	argv_list[0] = string[0];
	argv_list[1] = string[1];
	argv_list[2] = pcEthDevName;
	argv_list[3] = string[2];
	argv_list[4] = string[3];
	argv_list[5] = string[4];
	argv_list[6] = string[5];

	HI_DBG_LOADER("EthDevName:%s\n", argv_list[2]);
	child_pid = fork();
	if( 0 == child_pid )
	{
		execvp((const char *)argv_list[0], (char * const*)argv_list);
		HI_ERR_LOADER("on error occurred in execvp!\r\n");
		abort();
	}

	if(-1 == child_pid )
		return HI_FAILURE;

	waitpid(child_pid, &s32Status, 0);
/*lint -save -e69 -e155*/	
	if(WIFEXITED(s32Status))
		return (WEXITSTATUS(s32Status));
/*lint -restore*/

	return HI_FAILURE;

}

static HI_U8* net_ltrim(HI_U8 *pcString)
{
    HI_U8* pc =NULL;
    if( NULL == pcString )
    {
        return NULL;
    }

    for(pc = pcString; (( 0x20 == *pc || 0x09 == *pc)); pc++  )
    {
        continue;
    }

    return pc;
}

static HI_U8* net_rtrim(HI_U8 *pcString)
{
    HI_U8* pc =NULL;

    if( NULL == pcString )
    {
        return NULL;
    }

    for( pc= pcString + strlen((HI_CHAR*)pcString) -1;
           (0 == *pc)||(0x20 == *pc || 0x09 == *pc);
           pc--)
    {
        continue;
    }

    *(pc+1) = 0;
    return pcString;
}

static HI_S32 get_url(HI_U8  u8ProtoType,
		HI_CHAR *pcFileName,
		HI_CHAR *pcHost,
		HI_U16 u16Port,
		HI_U8 *pu8User,
		HI_U8 *pu8Pwd,
		HI_S8 *url,
		HI_U32 urllen)
{
	HI_S8 acCurDir[NET_PATH_MAX_LEN];
	HI_S8 acFilePathName[NET_PATH_MAX_LEN];

	if( NULL == pcFileName || NULL == pcHost || NULL == url)
	{
		HI_ERR_LOADER("invalid input parameter\n");
		return HI_FAILURE;
	}

	switch( u8ProtoType )
	{
		case HI_PROTO_TFTP:
			u16Port = (u16Port)? u16Port : 69;
			HI_OSAL_Snprintf(url, urllen, "tftp://%s:%d/%s",
					pcHost, u16Port, pcFileName);
			break;

		case HI_PROTO_FTP:
			u16Port = (u16Port)? u16Port : 21;
			pu8User = net_ltrim(pu8User);
			net_rtrim(pu8User);
			if( pu8User && 0 != pu8User[0])
			{
				pu8Pwd = net_ltrim(pu8Pwd);
				net_rtrim(pu8Pwd);
				if(pu8Pwd && 0 != pu8Pwd[0])
				{
					HI_OSAL_Snprintf(url, urllen, "ftp://%s:%s@%s:%d/%s",
							pu8User, pu8Pwd, pcHost, u16Port, pcFileName);
				}
				else
				{
					HI_OSAL_Snprintf(url, urllen, "ftp://%s@%s:%d/%s",
							pu8User, pcHost, u16Port, pcFileName);
				}
			}
			else
			{
				HI_OSAL_Snprintf(url, urllen, "ftp://%s:%d/%s", pcHost, u16Port, pcFileName);
			}

			break;

		case HI_PROTO_HTTP:
			u16Port = (u16Port)? u16Port : 80;
			HI_OSAL_Snprintf(url, urllen, "http://%s:%d/%s",
					pcHost, u16Port, pcFileName);
			break;

		default:
			return HI_FAILURE;
	}

	return HI_SUCCESS;
}

static HI_S32 InitIP(HI_LOADER_IP_PARA_S *pstIpParam)
{
	HI_U32     u32Loop;
	HI_CHAR    acDevName[16];
	UPGRD_LINKSTAT_E enLinkStatus;

	for( u32Loop = 0; u32Loop < UPGRD_ETH_DEV_NUM; u32Loop++ )
	{
		HI_OSAL_Snprintf(acDevName, sizeof(acDevName), "eth%d", u32Loop);
		switch(pstIpParam->eIpType )
		{
			case HI_IP_STATIC:
				if(HI_SUCCESS !=  InitStaticIP(acDevName,
							pstIpParam->ipOurIp,
							pstIpParam->ipSubnetMask,
							pstIpParam->ipGateway))
				{
					HI_ERR_LOADER("Failed to set ip configure.\n");
					continue;
				}

				break;

			case HI_IP_DHCP:
				if(HI_SUCCESS != InitDynamicIP(acDevName))
				{
					HI_ERR_LOADER("Failed to exec dhcpc.\n");
					continue;
				}

				HI_DBG_LOADER("exec dhcpc Successfully.\n");
				break;

			default:
				HI_FATAL_LOADER("Unknows IP TYPE :%d.\n", pstIpParam->eIpType);
				return HI_FAILURE;
		}

		if( HI_SUCCESS != net_GetLinkStatus(acDevName, &enLinkStatus))
		{
			HI_ERR_LOADER("Failed to get link status.\n");
			net_device_down(u32Loop);
			continue;
		}

		if( UPGRD_ETH_LINK_STAT_ON == enLinkStatus )
		{
			s_u16DeviceNo = u32Loop;
			HI_DBG_LOADER("device %s found.\n", acDevName);
			break;
		}

		net_device_down(u32Loop);
	}

	if( UPGRD_ETH_DEV_NUM == u32Loop)
	{
		HI_ERR_LOADER("Haven't found linked device.\n");
		return HI_FAILURE;
	}

	return HI_SUCCESS;
}

static size_t WriteFunction(void *ptr, size_t size, size_t nmemb, void *stream)
{
	int ii = 0;
	HI_CHAR *pt = (HI_CHAR *)ptr;

	if (g_pBuff != HI_NULL)
	{
		memcpy(g_pBuff+g_u32RecvLen, ptr, size * nmemb);
		g_u32RecvLen += size * nmemb;
	}
	
	return size * nmemb;
}

static size_t TftpWriteFunction(void *ptr, size_t size, size_t nmemb, void *stream)
{
	if (size * nmemb > SLIDE_WINDOW_SIZE)
	{
		HI_FATAL_LOADER("tftp write buffer(%d) is smaller than curl buffer(%d).\n", SLIDE_WINDOW_SIZE, size*nmemb);
		return CURLE_WRITE_ERROR;
	}

	if (g_ptrSlidWinSpace)
	{
		switch(CURRENT_STATE)
		{
			case WRITE:
				g_u32RecvLen =  size * nmemb;
				memcpy(g_ptrSlidWinSpace, ptr, size * nmemb);
				NEXT_STATE = WRITEND;
				g_u8BlockDataReady = 1;
				break;
			case PAUSE:
				NEXT_STATE = WAIT;
				return CURL_WRITEFUNC_PAUSE;
			case WAIT:
			case WRITEND:
				HI_FATAL_LOADER("WARNING: write-callback called in (%d) state\n", CURRENT_STATE);
				return CURLE_WRITE_ERROR;
		}
	}
	
	return size*nmemb;
}

static HI_S32 ErrorConvert(CURLcode code)
{
	HI_S32 s32Ret = HI_FAILURE;
	
	switch(code)
	{
		case CURLE_COULDNT_CONNECT:
			s32Ret = HI_UPGRD_CONNECT_FAIL;
			break;
		case CURLE_OPERATION_TIMEDOUT:
			{
				HI_CHAR    aucDevName[16];
				UPGRD_LINKSTAT_E LinkStatus;

				HI_OSAL_Snprintf(aucDevName, sizeof(aucDevName), "eth%d", s_u16DeviceNo);

				if (HI_SUCCESS == net_GetLinkStatus(aucDevName, &LinkStatus))
				{
					if (UPGRD_ETH_LINK_STAT_OFF == LinkStatus)
					{
						s32Ret = HI_UPGRD_NETWORK_ERROR;
					}
					else
					{
						s32Ret = HI_UPGRD_IP_TIMEOUT;
					}
				}
				else
				{
					s32Ret = HI_UPGRD_NETWORK_ERROR;
				}

				break;	
			}
		case CURLE_REMOTE_FILE_NOT_FOUND:
			s32Ret = HI_UPGRD_IP_FILE_ERROR;
			break;
		default:
			break;
	}

	return s32Ret;
}

static HI_VOID ShowIPParam(HI_LOADER_IP_PARA_S* pstIpParam)
{
	HI_CHAR netAddrBuf[20];

	if (pstIpParam)
	{
		HI_DBG_LOADER("*************** ip upgrade parameter *******************\n");
		HI_DBG_LOADER("protocol_type(0:TFTP, 1:FTP, 2:HTTP)    :  %d \n", pstIpParam->eProtoType);
		HI_DBG_LOADER("ip_get_way(0:static, 1:dynamic)         :  %d \n", pstIpParam->eIpType);
		if (HI_IP_STATIC == pstIpParam->eIpType)
		{
			ip2string(pstIpParam->ipOurIp, netAddrBuf);
			HI_DBG_LOADER("local_ip                                :  %s \n", netAddrBuf);
			ip2string(pstIpParam->ipGateway, netAddrBuf);
			HI_DBG_LOADER("gateway_ip                              :  %s \n", netAddrBuf);
			ip2string(pstIpParam->ipSubnetMask, netAddrBuf);
			HI_DBG_LOADER("netmask                                 :  %s \n", netAddrBuf);
		}
		ip2string(pstIpParam->ipServer, netAddrBuf);
		HI_DBG_LOADER("server_ip                               :  %s \n", netAddrBuf);
		HI_DBG_LOADER("server_port                             :  %d \n", pstIpParam->ipServerPort);
		HI_DBG_LOADER("********************** end *****************************\n");
	}
}

/**
\brief initialize IP download mode.
\attention \n
\param[in] Para: 
\retval ::HI_SUCCESS : get data success
\retval ::HI_FAILURE : failed to get data
*/
// OTA
HI_S32 LOADER_DOWNLOAD_IP_Init(HI_VOID * Para)
{
	HI_LOADER_IP_PARA_S *pstIpParam = (HI_LOADER_IP_PARA_S *)Para;
	HI_S8 url[256];
	HI_CHAR netAddrBuf[20];
	HI_S32 s32Ret = HI_FAILURE;
	CURLcode code = CURLE_OK;
	long sockextr;

	ShowIPParam(pstIpParam);
		
	if( HI_SUCCESS != InitIP(pstIpParam))
		return  HI_UPGRD_SET_IP_ERROR;

	if (CURLE_OK != curl_global_init(CURL_GLOBAL_ALL))
		return HI_FAILURE;

	g_pCurlHandle = curl_easy_init();
	if (HI_NULL == g_pCurlHandle)
		return HI_FAILURE;

	g_eProtoType = pstIpParam->eProtoType;

	if (HI_PROTO_TFTP ==g_eProtoType)
	{
		
		/* get slide window for tftp data receive */
		g_ptrSlidWinSpace = malloc(SLIDE_WINDOW_SIZE);
		if (!g_ptrSlidWinSpace)
			return HI_FAILURE;

		multi = curl_multi_init();
		if (!multi)
			return HI_FAILURE;

		if (CURLM_OK != curl_multi_add_handle(multi, g_pCurlHandle))
		{
			HI_ERR_LOADER("add easy handle into multihandle failed.\n");
			return HI_FAILURE;
		}
	}	

	g_u32Offset = 0;

	memset(url, 0, sizeof(url));

	ip2string(pstIpParam->ipServer, netAddrBuf);

	s32Ret = get_url(pstIpParam->eProtoType,
			pstIpParam->as8FileName,
			netAddrBuf,
			pstIpParam->ipServerPort,
			(HI_U8*)pstIpParam->as8UserName,
			(HI_U8*)pstIpParam->as8Password,
			url,
			sizeof(url));

	if (HI_SUCCESS != s32Ret)
		return s32Ret;

	HI_DBG_LOADER("url:%s.\n", url);

	/* for debug curl lib, uncomment next line */
	// curl_easy_setopt(g_pCurlHandle, CURLOPT_VERBOSE , 1);
	
	code = curl_easy_setopt(g_pCurlHandle, CURLOPT_URL, url);
	if (CURLE_OK != code)
	{
		HI_ERR_LOADER("curl_easy_setopt CURLOPT_URL failed.\n");
		return HI_FAILURE;
	}
	code = curl_easy_setopt(g_pCurlHandle, CURLOPT_WRITEFUNCTION, HI_PROTO_TFTP == g_eProtoType ? TftpWriteFunction : WriteFunction);
	if (CURLE_OK != code)
	{
		HI_ERR_LOADER("curl_easy_setopt CURLOPT_WRITEFUNCTION failed.\n");
		return HI_FAILURE;
	}
	code = curl_easy_setopt(g_pCurlHandle, CURLOPT_HEADER, 0L);
	if (CURLE_OK != code)
	{
		HI_ERR_LOADER("curl_easy_setopt CURLOPT_HEADER failed.\n");
		return HI_FAILURE;
	}
	code = curl_easy_setopt(g_pCurlHandle, CURLOPT_CONNECTTIMEOUT, 10L);
	if (CURLE_OK != code)
	{
		HI_ERR_LOADER("curl_easy_setopt CURLOPT_CONNECTTIMEOUT failed.\n");
		return HI_FAILURE;
	}
	
	/* network partition timeout set */
	if (HI_PROTO_FTP == g_eProtoType || HI_PROTO_HTTP == g_eProtoType)
		code = curl_easy_setopt(g_pCurlHandle, CURLOPT_TIMEOUT, 10L);	
		if (CURLE_OK != code)
		{
			HI_ERR_LOADER("curl_easy_setopt CURLOPT_TIMEOUT failed.\n");
			return HI_FAILURE;
		}

	/* 
	 * CURLOPT_TIMEOUT for tftp indicate max download procedure duration.
	 * so tftp 10s timeout control hardcode in curl library, refer to tftp_10s_timeout_quit.patch.
	 */

	return HI_SUCCESS;	
}

/**
\brief deinitialize USB download mode.
\attention \n
\retval ::HI_SUCCESS : get data success
\retval ::HI_FAILURE : failed to get data
*/
HI_S32 LOADER_DOWNLOAD_IP_DeInit(HI_VOID)
{
	curl_easy_cleanup(g_pCurlHandle);

	curl_global_cleanup();

	g_eProtoType = HI_PROTO_BUTT;
	if (g_ptrSlidWinSpace)
	{
		curl_multi_remove_handle(multi, g_pCurlHandle);
		curl_multi_cleanup(multi);
		free(g_ptrSlidWinSpace);
		g_ptrSlidWinSpace = HI_NULL;
	}

	return HI_SUCCESS;
}

/* 
 * tftp transfer data  
 */
HI_S32 LOADER_DOWNLOAD_IP_Tftp_Getdata(HI_VOID * pbuffer, HI_U32 size, HI_U32 * outlen)
{
	CURLMcode mCode = CURLM_OK;
	HI_U32 u32Pos = 0;
	HI_S32 handles = 0;
	HI_S32 msgcount;
	CURLMsg * msg = HI_NULL;

	if (g_u8DlEnd || HI_NULL == pbuffer || HI_NULL == outlen )
		return HI_FAILURE;

	/* there is no data now */
	if (0 == g_u32RecvLen)
		goto receive_data;

	/* data is part buffered in slide windows */
	if (size < g_u32RecvLen - g_u32SlidInnerPos)
	{
		//HI_DBG_LOADER("u32pos:%d innerpos:%d recv_len:%d size:%d \n", u32Pos, g_u32SlidInnerPos, g_u32RecvLen, size);
		memcpy((HI_U8 *)pbuffer + u32Pos, g_ptrSlidWinSpace + g_u32SlidInnerPos, size);
		u32Pos += size;
		g_u32SlidInnerPos += size;
	}else {
		/* copy remain data in slide windows  */
		//HI_DBG_LOADER("u32pos:%d innerpos:%d recv_len:%d size:%d \n", u32Pos, g_u32SlidInnerPos, g_u32RecvLen, size);
		memcpy((HI_U8 *)pbuffer + u32Pos, g_ptrSlidWinSpace + g_u32SlidInnerPos, g_u32RecvLen - g_u32SlidInnerPos);
		u32Pos += g_u32RecvLen - g_u32SlidInnerPos;

receive_data:
		g_u32SlidInnerPos = 0;

		/* receive new data */
		while(size > u32Pos)
		{
			mCode = curl_multi_perform(multi, &handles);
			if (CURLM_OK != mCode && CURLM_CALL_MULTI_PERFORM != mCode)
			{
				HI_ERR_LOADER("curl_multi_perform failed,err(%d)\n", mCode);
				return HI_FAILURE;
			}

			switch(CURRENT_STATE)
			{
				case WAIT:
				{
					NEXT_STATE = WRITE;
					CURLcode code = curl_easy_pause(g_pCurlHandle, CURLPAUSE_CONT);
					if (CURLE_OK != code)
					{
						HI_ERR_LOADER("curl_easy_pause failed.\n");
						return HI_FAILURE;
					}	

					/* curl_easy_pause maybe change state */
					if (WRITE != NEXT_STATE)
						NEXT_STATE = PAUSE;
					break;
				}
				case WRITEND:
					NEXT_STATE = PAUSE;
					break;
			}

			/* check download end */
			if (0 == handles)
			{
				msg = curl_multi_info_read(multi, &msgcount);
				if (msg)
				{
					if ((CURLMSG_DONE == msg->msg) && (CURLE_OK == msg->data.result))
					{
						g_u8DlEnd = 0;
						return HI_SUCCESS;
					}

					HI_ERR_LOADER("read fail info,err(%d) \n", msg->data.result);
				}
				
				return HI_FAILURE;
			}

			/* check data is ready in buffer */
			if (g_u8BlockDataReady)
				g_u8BlockDataReady = 0;
			else
				continue;

			//HI_DBG_LOADER("u32pos:%d innerpos:%d recv_len:%d size:%d \n", u32Pos, g_u32SlidInnerPos, g_u32RecvLen, size);
			if (size - u32Pos <= g_u32RecvLen)
			{
				memcpy((HI_U8 *)pbuffer + u32Pos, g_ptrSlidWinSpace + g_u32SlidInnerPos, size - u32Pos);
				g_u32SlidInnerPos = size -u32Pos;
				u32Pos = size;
			}else{
				memcpy((HI_U8 *)pbuffer + u32Pos, g_ptrSlidWinSpace + g_u32SlidInnerPos, g_u32RecvLen);
				g_u32SlidInnerPos = 0;
				u32Pos += g_u32RecvLen;
			}
		}
	}

	*outlen = u32Pos;

	return HI_SUCCESS;
}

/*
 * general transfer (ftp/http)support special range 
 */
HI_S32 LOADER_DOWNLOAD_IP_General_Getdata(HI_VOID * pbuffer, HI_U32 size, HI_U32 * outlen)
{
	HI_S8 range[32];
	CURLcode code = CURLE_OK;
	long filesize;

	if ((HI_NULL == pbuffer) || (HI_NULL == outlen))
		return HI_FAILURE;

	g_pBuff = (HI_U8*)pbuffer;
	g_u32RecvLen = 0;

	memset(range, 0, sizeof(range));
	HI_OSAL_Snprintf(range, sizeof(range), "%d-%d", g_u32Offset, g_u32Offset+size-1);
	code = curl_easy_setopt(g_pCurlHandle, CURLOPT_RANGE, range);
	code = curl_easy_perform(g_pCurlHandle);
	
	if (CURLE_OK == code)
	{
		*outlen = g_u32RecvLen;
		g_u32Offset += g_u32RecvLen;
		return HI_SUCCESS;
	}
	else
		return ErrorConvert(code);
}

/**
\brief Get upgrade data through protocy based on IP .
\attention \n
\param[in] pbuffer: data buffer, allocate by caller
\param[in] size: the max expected size, it must be smaller than the buffer length
\param[out] outlen: the really length of data
\retval ::HI_SUCCESS : get data success
\retval ::HI_FAILURE : failed to get data
*/
HI_S32 LOADER_DOWNLOAD_IP_Getdata(HI_VOID * pbuffer, HI_U32 size, HI_U32 * outlen)
{
	HI_S32 s32Ret = HI_FAILURE;
		
	if (HI_PROTO_TFTP == g_eProtoType)
	{
		s32Ret = LOADER_DOWNLOAD_IP_Tftp_Getdata(pbuffer, size, outlen);
	}else if (HI_PROTO_FTP == g_eProtoType || HI_PROTO_HTTP == g_eProtoType)
	{
		s32Ret = LOADER_DOWNLOAD_IP_General_Getdata(pbuffer, size, outlen);
	}else
		HI_FATAL_LOADER("invalid proto type(%d)!\n", g_eProtoType);

	return s32Ret;
}
#endif

#ifdef __cplusplus
#if __cplusplus
}
#endif
#endif

