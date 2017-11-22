#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <arpa/inet.h>
#include "hi_type.h"
#include "hi_loader_info.h"

#define MODIFY_NUMBER(x) do {\
        HI_U32 num; \
        if (0 == get_input_number(&num)) { \
                (x) = num; \
        }}while(0)

#define MODIFY_IP(ip) do { \
        char *pstrip; \
        if (0 == get_input(&pstrip)) { \
                (ip) = inet_addr(pstrip);\
        }}while(0)

#define IP_PRINT(x) do {\
        unsigned int ip = (unsigned int)(x);\
        printf("%d.%d.%d.%d", (int)((ip) & 0xff), (int)((ip >> 8) & 0xff), \
                        (int)((ip >> 16)  & 0xff), (int)((ip >> 24) & 0xff));\
}while(0)

HI_VOID ShowUsageInfo(HI_VOID)
{
	printf("usage: sample_loader [-t trigger] [-s set] [-g get] [[command] arg].\n");
	printf("command as follows:\n");
	printf(" sample_loader -t               -- configure loader upgrade parameter and trigger it run.\n");
	printf(" sample_loader -s stbid   args  -- configure stbid.\n");
	printf(" sample_loader -s sw            -- configure software.\n");
	printf(" sample_loader -g stbid         -- get and display stbid info.\n");
	printf(" sample_loader -g sw            -- get and display software version info.\n");
}

static HI_CHAR * ltrim(HI_CHAR *pcString)
{
        HI_CHAR *pc;

        if(NULL == pcString)
                return HI_NULL;

        pc = pcString;
        while(*pc)
        {
                if((0x20 != *pc)&&('\t' != *pc)&&('\n' != *pc)&&('\r' != *pc))
                        return pc;
                pc++;
        }

        return pc;
}

static void rtrim(HI_CHAR *pcString)
{
        HI_CHAR *pc;

        if(NULL == pcString)
                return;

        if(!strlen(pcString))
                return;

        pc = pcString + 1;
        while(*pc)
        {
                if((0x20 == *pc)||('\t' == *pc)||('\n' == *pc)||('\r' == *pc))
                {
                        *pc = 0;
                        return;
                }
                pc++;
        }
}

static HI_CHAR g_aucBuffer[128];
static int get_input( char** ppstr )
{
        HI_U32  u32Bytes;
        HI_CHAR  *pc;

        if (NULL == ppstr)
                return -1;

        memset(g_aucBuffer, 0x00, sizeof(g_aucBuffer));
        printf(" ? ");
        fflush(stdout);
        read( 0, g_aucBuffer, 127);

        pc = ltrim(&g_aucBuffer[0]);
        rtrim(pc);
        u32Bytes = strlen(pc);
        if (u32Bytes == 0)
        {
                /* <CR> pressed as only input, don't modify current
                 * location and move to next. "-" pressed will go back.
                 */
                return -1;
        }
        else
        {
                *ppstr = pc;
                return 0;
        }
}

static int get_input_number(HI_U32 *pnum)
{
        HI_U32 u32Bytes;
        char  acBuf[128] = {0};       /* console I/O buffer   */

        printf(" ? ");
        fflush(stdout);
        read(0, acBuf, 127);

        u32Bytes = strlen(acBuf);

        if (u32Bytes == 0)
                return -1;
        else
        {
		char * endp;
		/* hex */
		if (!strncmp(acBuf, "0x", sizeof("0x") - 1))
			*pnum = strtoul(acBuf, &endp, 16);
		else
			*pnum = strtoul(acBuf, &endp, 10);

                u32Bytes = (HI_U32)(endp - acBuf);
                if (u32Bytes)
                        return 0;
                else
                        return -1;
        }
}

static HI_S32 OTA_Cable(HI_LOADER_CAB_PARA_S *pstCableInfo)
{
	HI_U32 tmp;

	printf("> Input PID[%d]", pstCableInfo->u32OtaPid);
	MODIFY_NUMBER(pstCableInfo->u32OtaPid);
	if ((pstCableInfo->u32OtaPid < 32) || (pstCableInfo->u32OtaPid > 8190))
	{
		printf("pid error should be 32~8190\n");
		return -1;
	}

	printf("> Input Frequency(MHz)[%d]", pstCableInfo->u32OtaFreq/1000);
	if (0 == get_input_number(&tmp)) 
		pstCableInfo->u32OtaFreq = tmp * 1000;

	if ((pstCableInfo->u32OtaFreq/1000 < 100) || (pstCableInfo->u32OtaFreq/1000 > 900))
	{
		printf("frequency error, should be 100~900\n");
		return -1;
	}

	printf("> Input Symbol rate(KS/s)[%d]", pstCableInfo->u32OtaSymbRate);
	MODIFY_NUMBER(pstCableInfo->u32OtaSymbRate);
	if ((pstCableInfo->u32OtaSymbRate < 100) || (pstCableInfo->u32OtaSymbRate > 9000))
	{
		printf("symbol_rate error, should be 100~9000\n");
		return -1;
	}

	printf("> Input Modulation(0-16,1-32,2-64,3-128,4-256Qam)[%d]", pstCableInfo->u32OtaModulation);
	MODIFY_NUMBER(pstCableInfo->u32OtaModulation);
	if ((pstCableInfo->u32OtaModulation < 0) || (pstCableInfo->u32OtaModulation > 4))
	{
		printf("modulation error, should be 0~4\n");
		return -1;
	}

	return HI_SUCCESS;
}

static HI_S32 OTA_Terrestrial(HI_LOADER_TER_PARA_S *pstTerInfo)
{
	HI_U32 tmp;

	printf("> Input PID[%d]", pstTerInfo->u32OtaPid);
	MODIFY_NUMBER(pstTerInfo->u32OtaPid);
	if ((pstTerInfo->u32OtaPid < 32) || (pstTerInfo->u32OtaPid > 8190))
	{
		printf("pid error should be 32~8190\n");
		return -1;
	}

	printf("> Input Frequency(KHz)[%d]", pstTerInfo->u32OtaFreq);
	if (0 == get_input_number(&tmp)) 
		pstTerInfo->u32OtaFreq = tmp;

	if ((pstTerInfo->u32OtaFreq/1000 < 100) || (pstTerInfo->u32OtaFreq/1000 > 900))
	{
		printf("frequency error, should be 100~900\n");
		return -1;
	}

	printf("> Input BandWidth(MHz)[%d]", pstTerInfo->u32OtaBandWidth/1000);
       if (0 == get_input_number(&tmp)) 
		pstTerInfo->u32OtaBandWidth = tmp * 1000;
	if ((pstTerInfo->u32OtaBandWidth < 6000) || (pstTerInfo->u32OtaBandWidth > 9000))
	{
		printf("BandWidth error, should be 6000~9000\n");
		return -1;
	}

	printf("> Input Modulation(0-16,1-32,2-64,3-128,4-256Qam)[%d]", pstTerInfo->u32OtaModulation);
	MODIFY_NUMBER(pstTerInfo->u32OtaModulation);
	if ((pstTerInfo->u32OtaModulation < 0) || (pstTerInfo->u32OtaModulation > 4))
	{
		printf("modulation error, should be 0~4\n");
		return -1;
	}

	return HI_SUCCESS;
}

static HI_S32 OTA_Satellite(HI_LOADER_SAT_PARA_S *pstSateInfo)
{
	HI_U32 tmp;

	printf("> Input PID[%d]", pstSateInfo->u32OtaPid);
	MODIFY_NUMBER(pstSateInfo->u32OtaPid);
	if ((pstSateInfo->u32OtaPid < 32) || (pstSateInfo->u32OtaPid > 8190))
	{
		printf("pid error should be 32~8190\n");
		return -1;
	}

	printf("> Input Frequency(MHz)[%d]", pstSateInfo->u32OtaFreq/1000);
	if (0 == get_input_number(&tmp)) 
		pstSateInfo->u32OtaFreq = tmp * 1000;

	printf("> Input Symbol rate(KS/s)[%d]", pstSateInfo->u32OtaSymbRate);
	MODIFY_NUMBER(pstSateInfo->u32OtaSymbRate);

	printf("> Input Polar(0-Horizontal,1-Vertical, 2-Left hand, 3-Right hand)[%d]", pstSateInfo->u32Polar );
	MODIFY_NUMBER(pstSateInfo->u32Polar);
	if ((pstSateInfo->u32Polar < 0) || (pstSateInfo->u32Polar > 4))
	{
		printf("Polay error, should be 0~3\n");
		return -1;
	}

	printf("> Input LNB Power Typte(0-LNB Power Off, 1-LNB Power On)[%d]", pstSateInfo->u32LNBPower);
    MODIFY_NUMBER(pstSateInfo->u32LNBPower);
	if (pstSateInfo->u32LNBPower > 1)
	{
		printf("LNB Power Error!");
		return -1;
	}
	else if (1 == pstSateInfo->u32LNBPower)
	{   
    	printf("> Select whether use unicable(0-no, 1-yes)[%d]",pstSateInfo->u32UnicFlag);
	    MODIFY_NUMBER(pstSateInfo->u32UnicFlag);
	    if (pstSateInfo->u32UnicFlag > 1)
	    {
	        printf("Unicable flag error!\n");
		 return -1;
	    }
		else if ((pstSateInfo->u32UnicFlag != 1))
		{
		    printf("> Input LNB Low Frequency(MHZ)[%d]", pstSateInfo->u32LowLO);
		    MODIFY_NUMBER(pstSateInfo->u32LowLO);

		    printf("> Input LNB High Frequency(MHZ)[%d]", pstSateInfo->u32HighLO);
		    MODIFY_NUMBER(pstSateInfo->u32HighLO);
		}
	}
	else
	{
	    printf("> Input LNB Low Frequency(MHZ)[%d]", pstSateInfo->u32LowLO);
	    MODIFY_NUMBER(pstSateInfo->u32LowLO);

	    printf("> Input LNB High Frequency(MHZ)[%d]", pstSateInfo->u32HighLO);
	    MODIFY_NUMBER(pstSateInfo->u32HighLO);
	}
	printf("> Input 22K Switch(0-Off, 1-On)[%d]", pstSateInfo->u32Switch22K);
	if (pstSateInfo->u32Switch22K > 1)
	{
		printf("22K Switch Error!");
		return -1;
	}
	MODIFY_NUMBER(pstSateInfo->u32Switch22K);

	printf("> Input DiSEqC1.1 Port(0-Disable, 1-port1, 2-port2,etc)[%d]", pstSateInfo->st16Port.u32Port);
	if (pstSateInfo->st16Port.u32Port > 16)
	{
		printf("DiSEqC1.1 Port Error!");
		return -1;
	}
	MODIFY_NUMBER(pstSateInfo->st16Port.u32Port);
	pstSateInfo->st16Port.u32Level = 0;

	printf("> Input DiSEqC1.0 Port(0-Disable, 1-port1, 2-port2,etc)[%d]", pstSateInfo->st4Port.u32Port);
	MODIFY_NUMBER(pstSateInfo->st4Port.u32Port);
	if (pstSateInfo->st4Port.u32Port > 4)
	{
		printf("DiSEqC1.0 Port Error!");
		return -1;
	}

	pstSateInfo->st4Port.u32Level = 0;
	pstSateInfo->st4Port.u32Polar = pstSateInfo->u32Polar;
	pstSateInfo->st4Port.u32LNB22K = pstSateInfo->u32Switch22K;

	return HI_SUCCESS;
}

static HI_S32 IP(HI_LOADER_IP_PARA_S *pstIPParam)
{
	char *pstr;

	printf("> Select protocol type(0-TFTP, 1-FTP, 2-HTTP)");
	MODIFY_NUMBER(pstIPParam->eProtoType);
	if (pstIPParam->eProtoType > 2)
	{
		printf("protocol type error!\n");
		return -1;
	}

	printf("> Select IP type(0-static, 1-dynamic)");
	MODIFY_NUMBER(pstIPParam->eIpType);
	if (pstIPParam->eIpType > 1)
	{
		printf("IP type error!\n");
		return -1;
	}

	if (HI_IP_STATIC == pstIPParam->eIpType)
	{
		printf("> Input IP address[");
		IP_PRINT(pstIPParam->ipOurIp);
		printf("]");
		MODIFY_IP(pstIPParam->ipOurIp);

		printf("> Input IP gateway[");
		IP_PRINT(pstIPParam->ipGateway);
		printf("]");
		MODIFY_IP(pstIPParam->ipGateway);

		printf("> Input subnet mask[");
		IP_PRINT(pstIPParam->ipSubnetMask);
		printf("]");
		MODIFY_IP(pstIPParam->ipSubnetMask);
	}

	printf("> Input server IP address[");
	IP_PRINT(pstIPParam->ipServer);
	printf("]");
	MODIFY_IP(pstIPParam->ipServer);

	printf("> Input server port(default:");
	if (HI_PROTO_TFTP == pstIPParam->eProtoType){
		printf("69");
		pstIPParam->ipServerPort = 69;
	}
	else if (HI_PROTO_FTP == pstIPParam->eProtoType){
		printf("21");
		pstIPParam->ipServerPort = 21;
	}
	else if (HI_PROTO_HTTP == pstIPParam->eProtoType){
		printf("80");
		pstIPParam->ipServerPort = 80;
	}
	printf(")");
	MODIFY_NUMBER(pstIPParam->ipServerPort);

	printf("> Input upgrade file name[%s]", pstIPParam->as8FileName);
	if (0 == get_input(&pstr))
	{
		strncpy((char*)pstIPParam->as8FileName, pstr, sizeof(pstIPParam->as8FileName));
                pstIPParam->as8FileName[sizeof(pstIPParam->as8FileName) - 1] = '\0';
	}

	if (HI_PROTO_FTP == pstIPParam->eProtoType)
	{
		printf("> Input user name[%s]", pstIPParam->as8UserName);
		if (0 == get_input(&pstr))
		{
			strncpy((char*)pstIPParam->as8UserName, pstr, sizeof(pstIPParam->as8UserName));
               		pstIPParam->as8UserName[sizeof(pstIPParam->as8UserName) - 1] = '\0';
		}

		printf("> Input password[%s]", pstIPParam->as8Password);
		if (0 == get_input(&pstr))
		{
			strncpy((char*)pstIPParam->as8Password, pstr, sizeof(pstIPParam->as8Password));
               		pstIPParam->as8Password[sizeof(pstIPParam->as8Password) - 1] = '\0';
		}
	}
	return 0;
}

static HI_VOID ShowSelect(HI_LOADER_PARAMETER_S *pstLoaderInfo)
{
    printf("\n=================================\n");
    printf("Upgrade Parameters \n");
    switch (pstLoaderInfo->eUpdateType)
    {
    case HI_LOADER_TYPE_USB:
    {
        printf("Download Type		: USB\n");
        printf("Upgrade file name	: %s\n",pstLoaderInfo->stPara.stUSBParam.as8FileName);

        break;
    }

    case HI_LOADER_TYPE_OTA:
    {
        printf("Download Type		: OTA\n");

        if (HI_UNF_TUNER_SIG_TYPE_CAB == pstLoaderInfo->stPara.stOTAPara.eSigType)
        {
            printf("Tuner Type		: Cable\n");
            printf("PID			: %d\n",pstLoaderInfo->stPara.stOTAPara.unConnPara.stCab.u32OtaPid);
            printf("Frequency		: %d(MHZ)\n",pstLoaderInfo->stPara.stOTAPara.unConnPara.stCab.u32OtaFreq/ 1000);
            printf("Symrate		: %d(Kbps)\n",pstLoaderInfo->stPara.stOTAPara.unConnPara.stCab.u32OtaSymbRate);
            printf("Modulation		: %dQAM\n",16 * (1 << pstLoaderInfo->stPara.stOTAPara.unConnPara.stCab.u32OtaModulation));
        }
        else if (HI_UNF_TUNER_SIG_TYPE_DVB_T == pstLoaderInfo->stPara.stOTAPara.eSigType
			  || HI_UNF_TUNER_SIG_TYPE_DVB_T2 == pstLoaderInfo->stPara.stOTAPara.eSigType
			  || (HI_UNF_TUNER_SIG_TYPE_DVB_T | HI_UNF_TUNER_SIG_TYPE_DVB_T2) == pstLoaderInfo->stPara.stOTAPara.eSigType)
        {
            printf("Tuner Type		: Terrestrial DVB-T/T2\n");
            printf("PID			: %d\n",pstLoaderInfo->stPara.stOTAPara.unConnPara.stTer.u32OtaPid);
            printf("Frequency		: %5.1f(MHZ)\n",pstLoaderInfo->stPara.stOTAPara.unConnPara.stTer.u32OtaFreq/ 1000.0);
            printf("BandWidth	        : %d(MHZ)\n",pstLoaderInfo->stPara.stOTAPara.unConnPara.stTer.u32OtaBandWidth/ 1000);
            printf("Modulation		: %dQAM\n",16 * (1 << pstLoaderInfo->stPara.stOTAPara.unConnPara.stTer.u32OtaModulation));
        }
        else if (HI_UNF_TUNER_SIG_TYPE_SAT == pstLoaderInfo->stPara.stOTAPara.eSigType)
        {
            printf("Tuner Type		: Satellite\n");
            printf("PID			: %d\n",pstLoaderInfo->stPara.stOTAPara.unConnPara.stSat.u32OtaPid);
            printf("Frequency		: %d(MHZ)\n",pstLoaderInfo->stPara.stOTAPara.unConnPara.stSat.u32OtaFreq/ 1000);
            printf("Symrate		: %d(Kbps)\n",pstLoaderInfo->stPara.stOTAPara.unConnPara.stSat.u32OtaSymbRate);

            switch (pstLoaderInfo->stPara.stOTAPara.unConnPara.stSat.u32Polar)
            {
            case 0:
                printf("Polar			: %s\n","Horizontal");
                break;
            case 1:
                printf("Polar			: %s\n","Vertical");
                break;
            case 2:
                printf("Polar			: %s\n","Left_hand");
                break;
            case 3:
                printf("Polar			: %s\n","Right_hand");
                break;
            default:
                pstLoaderInfo->stPara.stOTAPara.unConnPara.stSat.u32Polar = 0;
                printf("Polar			: %s\n","Horizontal");
                break;
            }

            switch (pstLoaderInfo->stPara.stOTAPara.unConnPara.stSat.u32LNBPower)
            {
            case 0:
                printf("LNB Power 		: Power Off\n");
                printf("LNB Low Frequency	: %d(MHZ)\n",pstLoaderInfo->stPara.stOTAPara.unConnPara.stSat.u32LowLO);
                printf("LNB High Frequency	: %d(MHZ)\n",pstLoaderInfo->stPara.stOTAPara.unConnPara.stSat.u32HighLO);
                break;
            case 1:
                printf("LNB Power 		: Power On\n");
                printf("Unicable Support        : %s\n", (pstLoaderInfo->stPara.stOTAPara.unConnPara.stSat.u32UnicFlag ==1 ?"YES":"NO"));
                if (pstLoaderInfo->stPara.stOTAPara.unConnPara.stSat.u32UnicFlag !=1)
                {
                    printf("LNB Low Frequency	: %d(MHZ)\n",pstLoaderInfo->stPara.stOTAPara.unConnPara.stSat.u32LowLO);
                    printf("LNB High Frequency	: %d(MHZ)\n",pstLoaderInfo->stPara.stOTAPara.unConnPara.stSat.u32HighLO);
                }
                break;

            default:
                break;
            }

            switch (pstLoaderInfo->stPara.stOTAPara.unConnPara.stSat.u32Switch22K)
            {
            case 0:
                printf("22K Switch 		: Off\n");
                break;
            case 1:
                printf("22K Switch 		: On\n");
                break;

            default:
                break;
            }

            switch (pstLoaderInfo->stPara.stOTAPara.unConnPara.stSat.st16Port.u32Port)
            {
            case 0:
                printf("DiSEqC1.1 		: Disable\n");
                break;
            default:
                printf("DiSEqC1.1 		: port%d\n",pstLoaderInfo->stPara.stOTAPara.unConnPara.stSat.st16Port.u32Port);
                break;
            }

            switch (pstLoaderInfo->stPara.stOTAPara.unConnPara.stSat.st4Port.u32Port)
            {
            case 0:
                printf("DiSEqC1.0 		: Disable\n");
                break;
            default:
                printf("DiSEqC1.0 		: port%d\n",pstLoaderInfo->stPara.stOTAPara.unConnPara.stSat.st4Port.u32Port);
                break;
            }
        }

        break;
    }

    case HI_LOADER_TYPE_IP:
    {
        HI_CHAR as8Buff[16];
        HI_U32 ip;
        char *protocol[] = {
            "TFTP",
            "FTP",
            "HTTP"
        };
        char *iptype[] = {
            "static ip",
            "dynamic"
        };
        printf("Download Type		: IP\n");
        printf("Protocol Type		: %s\n",protocol[pstLoaderInfo->stPara.stIPParam.eProtoType]);
        if (HI_PROTO_FTP == pstLoaderInfo->stPara.stIPParam.eProtoType)
        {
            printf("User Name		: %s\n",pstLoaderInfo->stPara.stIPParam.as8UserName);
            printf("Password		: %s\n",pstLoaderInfo->stPara.stIPParam.as8Password);
        }

        printf("IP Type			: %s\n",iptype[pstLoaderInfo->stPara.stIPParam.eIpType]);

        if (HI_IP_STATIC == pstLoaderInfo->stPara.stIPParam.eIpType)
        {
            ip = pstLoaderInfo->stPara.stIPParam.ipOurIp;
            memset(as8Buff, 0, sizeof(as8Buff));
            sprintf(as8Buff, "%d.%d.%d.%d", (int)((ip) & 0xff), (int)((ip >> 8) & 0xff), \
                    (int)((ip >> 16) & 0xff), (int)((ip >> 24) & 0xff));
            printf("Local IP		: %s\n",as8Buff);

            ip = pstLoaderInfo->stPara.stIPParam.ipGateway;
            memset(as8Buff, 0, sizeof(as8Buff));
            sprintf(as8Buff, "%d.%d.%d.%d", (int)((ip) & 0xff), (int)((ip >> 8) & 0xff), \
                    (int)((ip >> 16) & 0xff), (int)((ip >> 24) & 0xff));
            printf("Gateway			: %s\n",as8Buff);

            ip = pstLoaderInfo->stPara.stIPParam.ipSubnetMask;
            memset(as8Buff, 0, sizeof(as8Buff));
            sprintf(as8Buff, "%d.%d.%d.%d", (int)((ip) & 0xff), (int)((ip >> 8) & 0xff), \
                    (int)((ip >> 16) & 0xff), (int)((ip >> 24) & 0xff));
            printf("subnet mask		: %s\n",as8Buff);
        }

        ip = pstLoaderInfo->stPara.stIPParam.ipServer;
        memset(as8Buff, 0, sizeof(as8Buff));
        sprintf(as8Buff, "%d.%d.%d.%d", (int)((ip) & 0xff), (int)((ip >> 8) & 0xff), \
                (int)((ip >> 16) & 0xff), (int)((ip >> 24) & 0xff));
        printf("server ip		: %s\n",as8Buff);
        printf("server port		: %d\n",pstLoaderInfo->stPara.stIPParam.ipServerPort);

        printf("Upgrade file name	: %s\n",pstLoaderInfo->stPara.stIPParam.as8FileName);
        //printf("Upgrade file size		: %d\n",pstLoaderInfo->stPara.stIPParam.u32FileSize);

        break;
    }

    default:
        break;
    }

    printf("=================================\n");
}

HI_S32 TriggerLoaderUpgrd(HI_VOID)
{
	char *pstr;

	HI_LOADER_PARAMETER_S stLoaderInfo;

	if (HI_SUCCESS != HI_LOADER_ReadParameters(&stLoaderInfo))
	{
		printf("%s: read loaderdb failed \n", __func__);
		return -1;
	}

#ifdef HI_LOADER_APPLOADER
	printf("> Select upgrade type(0-OTA, 1-IP, 2-USB)");
	MODIFY_NUMBER(stLoaderInfo.eUpdateType);
	if ((stLoaderInfo.eUpdateType < 0) || (stLoaderInfo.eUpdateType > 2))
	{
		printf("Invalid input\n");
		return -1;
	}
#else
	printf("> Select upgrade type(0-OTA, 2-USB)");
	MODIFY_NUMBER(stLoaderInfo.eUpdateType);
	if ( !(stLoaderInfo.eUpdateType == 0 || stLoaderInfo.eUpdateType == 2) )
	{
		printf("Invalid input\n");
		return -1;
	}
#endif
	if (stLoaderInfo.eUpdateType == HI_LOADER_TYPE_OTA)
	{
		HI_U32 tmp = 0;

		printf("> Select signal type(0-CAB, 1-SAT, 2-DVB-T, 3-DVB-T2, 4-DVB-T|T2)");
		MODIFY_NUMBER(tmp);
		if ((tmp < 0) || (tmp > 4))
		{
			printf("Invalid input\n");
			return -1;
		}

		if (0 == tmp)/*set for cable signal*/
		{
			stLoaderInfo.stPara.stOTAPara.eSigType = HI_UNF_TUNER_SIG_TYPE_CAB;
			if (HI_SUCCESS != OTA_Cable(&(stLoaderInfo.stPara.stOTAPara.unConnPara.stCab)))
				return -1;
		}
		else if (1 == tmp)/*set for satelite signal*/
		{
			stLoaderInfo.stPara.stOTAPara.eSigType = HI_UNF_TUNER_SIG_TYPE_SAT;
			if (HI_SUCCESS != OTA_Satellite(&(stLoaderInfo.stPara.stOTAPara.unConnPara.stSat)))
				return -1;
		}
        else if (2 == tmp)/*set for Terrestrial dvb-t signal*/
		{
			stLoaderInfo.stPara.stOTAPara.eSigType = HI_UNF_TUNER_SIG_TYPE_DVB_T;
			if (HI_SUCCESS != OTA_Terrestrial(&(stLoaderInfo.stPara.stOTAPara.unConnPara.stTer)))
			return -1;
		}
        else if (3 == tmp)/*set for Terrestrial dvb-t2 signal*/
		{
			stLoaderInfo.stPara.stOTAPara.eSigType = HI_UNF_TUNER_SIG_TYPE_DVB_T2;
			if (HI_SUCCESS != OTA_Terrestrial(&(stLoaderInfo.stPara.stOTAPara.unConnPara.stTer)))
			return -1;
		}   
        else/*set for Terrestrial dvb-t|dvb-t2 signal*/
		{
			stLoaderInfo.stPara.stOTAPara.eSigType = HI_UNF_TUNER_SIG_TYPE_DVB_T|HI_UNF_TUNER_SIG_TYPE_DVB_T2;
			if (HI_SUCCESS != OTA_Terrestrial(&(stLoaderInfo.stPara.stOTAPara.unConnPara.stTer)))
			return -1;
		}
	}
	else if (stLoaderInfo.eUpdateType == HI_LOADER_TYPE_IP)
	{
		if (HI_SUCCESS != IP(&stLoaderInfo.stPara.stIPParam))
			return -1;
	}
	else if (stLoaderInfo.eUpdateType == HI_LOADER_TYPE_USB)
	{
		printf("> specify upgrade file name[%s]", stLoaderInfo.stPara.stUSBParam.as8FileName);
		if (0 == get_input(&pstr))
		{
			strncpy((char*)stLoaderInfo.stPara.stUSBParam.as8FileName, pstr, sizeof(stLoaderInfo.stPara.stUSBParam.as8FileName));
			stLoaderInfo.stPara.stUSBParam.as8FileName[sizeof(stLoaderInfo.stPara.stUSBParam.as8FileName) - 1] = '\0';
		}
	}
	else
	{
		printf("Error Download mode!\n");
		return -1;
	}

	ShowSelect(&stLoaderInfo);

	if (HI_SUCCESS != HI_LOADER_WriteParameters(&stLoaderInfo))
	{
		printf("Write LoaderDB info failed!\n");
		return -1;
	}

	return 0;
}

HI_VOID SetSTBID(HI_CHAR *args)
{
	HI_CHAR tmpVal1[2] = {0};
	HI_CHAR tmpVal2[2] = {0};
	HI_U8 u8Val = 0;
	HI_U32 i;
	HI_LOADER_STB_INFO_S stLoaderStbInfo= {0} ;

	if (!args || !strlen(args))
	{
		ShowUsageInfo();
		return;
	}

	memcpy(stLoaderStbInfo.au8OutSn, args, HI_SYSCFG_STBID_LEN); //Writing STBID

	for(i=0;i<HI_SYSCFG_STBID_LEN / 2;i++)
	{
		tmpVal1[0] = *(char*)(args + 2 * i);
		tmpVal2[0] = *(char*)(args + 2 * i + 1);

		u8Val = strtoul((HI_CHAR*)tmpVal1, NULL,16);
		u8Val = (u8Val<<4) | (strtoul((HI_CHAR*)tmpVal2, NULL,16));
		stLoaderStbInfo.au8OutSn[i] = u8Val ;
	}

	if(HI_SYSCFG_STBID_LEN % 2 != 0)
	{
		tmpVal1[0] = *(char*)(args + HI_SYSCFG_STBID_LEN - 1);
		u8Val = strtoul((HI_CHAR*)tmpVal1, NULL,16);
		u8Val = (u8Val << 4);
		stLoaderStbInfo.au8OutSn[HI_SYSCFG_STBID_LEN / 2] = u8Val;
	}

	if (HI_SUCCESS != HI_LOADER_WriteSTBInfo(&stLoaderStbInfo))
	{
		printf("%s: write loaderdb info Error!!!\n", __func__);
		return ;
	}
}

static HI_U32 GetLocalSN(HI_LOADER_STB_INFO_S *pstStbinfo)
{
#define SN_OFFSET_BYTES (9)
	
	char buf[32] = {0};
	/*
	   AAAA BB CCC DD EE X FFFF FFFF FFFF //Hex binary style
	   AAAA: AREA CODE
	   BB: OUI
	   CCC: HW Batch
	   EE: HW Ver
	   X: Identification Code
	   FFFF FFFFFFFF: Number defined based on the previous digit, now use last 4 bytes indicate SN.
	 */
	
	snprintf(buf, sizeof(buf), "0x%02x%02x%02x%02x", pstStbinfo->au8OutSn[SN_OFFSET_BYTES],
		pstStbinfo->au8OutSn[SN_OFFSET_BYTES + 1],
		pstStbinfo->au8OutSn[SN_OFFSET_BYTES + 2],
		pstStbinfo->au8OutSn[SN_OFFSET_BYTES + 3]);

	return strtoul(buf, HI_NULL, 16);
	
}

HI_VOID GetSTBID(HI_VOID)
{
	HI_LOADER_STB_INFO_S stStbinfo;
	HI_LOADER_PARAMETER_S stLoaderInfo;

	if (HI_SUCCESS != HI_LOADER_ReadSTBInfo(&stStbinfo))
	{
		printf("%s: get stb info Error!!!\n", __func__);
		return ;
	}

	if (HI_SUCCESS != HI_LOADER_ReadParameters(&stLoaderInfo))
	{
		printf("%s: get loaderdb info Error!!!\n", __func__);
		return ;
	}

	printf("==================stb info================\n");
	printf("Factory id             \t0x%08x\n", stStbinfo.u32OUI);
	printf("Area code              \t0x%08x\n", stStbinfo.u32AreaCode);
	printf("Hw ver id              \t0x%08x\n", stStbinfo.u32HWVersion);
	printf("Hw batch id            \t0x%08x\n", stStbinfo.u32HWBatch);
	printf("Local SN               \t0x%08x\n", GetLocalSN(&stStbinfo));
	printf("Cur software version   \t0x%08x\n", stLoaderInfo.u32CurSoftware);
	printf("==========================================\n");
}

HI_VOID SetSoftwareVer(HI_CHAR *args)
{
	HI_U32 value = 0;
	HI_LOADER_PARAMETER_S stLoaderInfo;

	if (HI_SUCCESS != HI_LOADER_ReadParameters(&stLoaderInfo))
	{
		printf("%s: get stb info Error!!!\n", __func__);
		return ;
	}

	printf("=============modify software ver==============\n");
	printf("cur software version \t0x%08x", stLoaderInfo.u32CurSoftware);
	get_input_number(&value);
	stLoaderInfo.u32CurSoftware = value;

	if (HI_SUCCESS != HI_LOADER_WriteParameters(&stLoaderInfo))
	{
		printf("%s: write stb info Error!!!\n", __func__);
		return ;
	}
}

HI_VOID GetSoftwareVer(HI_VOID)
{
	HI_LOADER_PARAMETER_S stLoaderInfo;

	if (HI_SUCCESS != HI_LOADER_ReadParameters(&stLoaderInfo))
	{
		printf("%s: get stb info Error!!!\n", __func__);
		return ;
	}

	printf("cur software version \t0x%08x\n", stLoaderInfo.u32CurSoftware);
}

HI_S32 main(HI_S32 argc, HI_CHAR *argv[])
{
	int result;
	
	HI_SYS_Init();

	while( (result = getopt(argc, argv, "ts:g:")) != -1 )
	{
		switch(result)
		{
		case 't':
			TriggerLoaderUpgrd();
			break;	
		case 's':
			if (!strcmp("stbid", optarg))
				SetSTBID(argv[optind]);
			else if (!strcmp("sw", optarg))
				SetSoftwareVer(argv[optind]);	
			break;
		case 'g':
			if (!strcmp("stbid", optarg))
				GetSTBID();
			else if (!strcmp("sw", optarg))
				GetSoftwareVer();
			break;
		default:
			ShowUsageInfo();
			break;
		}

		goto out;
	}

	ShowUsageInfo();
	return -1;

out:
	return 0;
}
