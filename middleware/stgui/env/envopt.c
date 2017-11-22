
#include "envopt.h"
#include "nvm_api.h"


#if 0
#define MLENVI_DEBUG(fmt, args...) MLMF_Print("\033[32m[%s:%d] "#fmt" \033[0m\r\n", __func__, __LINE__, ##args)
#else
#define MLENVI_DEBUG(fmt, args...)  {}
#endif

//----------------------------------------------------------------------------------
// Local Variable Declaration
//
//----------------------------------------------------------------------------------


static SPI_EnvInfo* EnvInfo = MM_NULL;



//---------------------------------------------------------------------------------




MBT_U32 _crc32 (MBT_U32 crc, const MBT_U8 *buf, MBT_U32 len)
{
#define DO1(buf)  crc = crc_table[((int)crc ^ (*buf)) & 0xff] ^ (crc >> 8);buf++;
#define DO2(buf)  DO1(buf); DO1(buf);
#define DO4(buf)  DO2(buf); DO2(buf);
#define DO8(buf)  DO4(buf); DO4(buf);

    const static MBT_U32 crc_table[] =
    {
        0x00000000L, 0x77073096L, 0xee0e612cL, 0x990951baL, 0x076dc419L,
        0x706af48fL, 0xe963a535L, 0x9e6495a3L, 0x0edb8832L, 0x79dcb8a4L,
        0xe0d5e91eL, 0x97d2d988L, 0x09b64c2bL, 0x7eb17cbdL, 0xe7b82d07L,
        0x90bf1d91L, 0x1db71064L, 0x6ab020f2L, 0xf3b97148L, 0x84be41deL,
        0x1adad47dL, 0x6ddde4ebL, 0xf4d4b551L, 0x83d385c7L, 0x136c9856L,
        0x646ba8c0L, 0xfd62f97aL, 0x8a65c9ecL, 0x14015c4fL, 0x63066cd9L,
        0xfa0f3d63L, 0x8d080df5L, 0x3b6e20c8L, 0x4c69105eL, 0xd56041e4L,
        0xa2677172L, 0x3c03e4d1L, 0x4b04d447L, 0xd20d85fdL, 0xa50ab56bL,
        0x35b5a8faL, 0x42b2986cL, 0xdbbbc9d6L, 0xacbcf940L, 0x32d86ce3L,
        0x45df5c75L, 0xdcd60dcfL, 0xabd13d59L, 0x26d930acL, 0x51de003aL,
        0xc8d75180L, 0xbfd06116L, 0x21b4f4b5L, 0x56b3c423L, 0xcfba9599L,
        0xb8bda50fL, 0x2802b89eL, 0x5f058808L, 0xc60cd9b2L, 0xb10be924L,
        0x2f6f7c87L, 0x58684c11L, 0xc1611dabL, 0xb6662d3dL, 0x76dc4190L,
        0x01db7106L, 0x98d220bcL, 0xefd5102aL, 0x71b18589L, 0x06b6b51fL,
        0x9fbfe4a5L, 0xe8b8d433L, 0x7807c9a2L, 0x0f00f934L, 0x9609a88eL,
        0xe10e9818L, 0x7f6a0dbbL, 0x086d3d2dL, 0x91646c97L, 0xe6635c01L,
        0x6b6b51f4L, 0x1c6c6162L, 0x856530d8L, 0xf262004eL, 0x6c0695edL,
        0x1b01a57bL, 0x8208f4c1L, 0xf50fc457L, 0x65b0d9c6L, 0x12b7e950L,
        0x8bbeb8eaL, 0xfcb9887cL, 0x62dd1ddfL, 0x15da2d49L, 0x8cd37cf3L,
        0xfbd44c65L, 0x4db26158L, 0x3ab551ceL, 0xa3bc0074L, 0xd4bb30e2L,
        0x4adfa541L, 0x3dd895d7L, 0xa4d1c46dL, 0xd3d6f4fbL, 0x4369e96aL,
        0x346ed9fcL, 0xad678846L, 0xda60b8d0L, 0x44042d73L, 0x33031de5L,
        0xaa0a4c5fL, 0xdd0d7cc9L, 0x5005713cL, 0x270241aaL, 0xbe0b1010L,
        0xc90c2086L, 0x5768b525L, 0x206f85b3L, 0xb966d409L, 0xce61e49fL,
        0x5edef90eL, 0x29d9c998L, 0xb0d09822L, 0xc7d7a8b4L, 0x59b33d17L,
        0x2eb40d81L, 0xb7bd5c3bL, 0xc0ba6cadL, 0xedb88320L, 0x9abfb3b6L,
        0x03b6e20cL, 0x74b1d29aL, 0xead54739L, 0x9dd277afL, 0x04db2615L,
        0x73dc1683L, 0xe3630b12L, 0x94643b84L, 0x0d6d6a3eL, 0x7a6a5aa8L,
        0xe40ecf0bL, 0x9309ff9dL, 0x0a00ae27L, 0x7d079eb1L, 0xf00f9344L,
        0x8708a3d2L, 0x1e01f268L, 0x6906c2feL, 0xf762575dL, 0x806567cbL,
        0x196c3671L, 0x6e6b06e7L, 0xfed41b76L, 0x89d32be0L, 0x10da7a5aL,
        0x67dd4accL, 0xf9b9df6fL, 0x8ebeeff9L, 0x17b7be43L, 0x60b08ed5L,
        0xd6d6a3e8L, 0xa1d1937eL, 0x38d8c2c4L, 0x4fdff252L, 0xd1bb67f1L,
        0xa6bc5767L, 0x3fb506ddL, 0x48b2364bL, 0xd80d2bdaL, 0xaf0a1b4cL,
        0x36034af6L, 0x41047a60L, 0xdf60efc3L, 0xa867df55L, 0x316e8eefL,
        0x4669be79L, 0xcb61b38cL, 0xbc66831aL, 0x256fd2a0L, 0x5268e236L,
        0xcc0c7795L, 0xbb0b4703L, 0x220216b9L, 0x5505262fL, 0xc5ba3bbeL,
        0xb2bd0b28L, 0x2bb45a92L, 0x5cb36a04L, 0xc2d7ffa7L, 0xb5d0cf31L,
        0x2cd99e8bL, 0x5bdeae1dL, 0x9b64c2b0L, 0xec63f226L, 0x756aa39cL,
        0x026d930aL, 0x9c0906a9L, 0xeb0e363fL, 0x72076785L, 0x05005713L,
        0x95bf4a82L, 0xe2b87a14L, 0x7bb12baeL, 0x0cb61b38L, 0x92d28e9bL,
        0xe5d5be0dL, 0x7cdcefb7L, 0x0bdbdf21L, 0x86d3d2d4L, 0xf1d4e242L,
        0x68ddb3f8L, 0x1fda836eL, 0x81be16cdL, 0xf6b9265bL, 0x6fb077e1L,
        0x18b74777L, 0x88085ae6L, 0xff0f6a70L, 0x66063bcaL, 0x11010b5cL,
        0x8f659effL, 0xf862ae69L, 0x616bffd3L, 0x166ccf45L, 0xa00ae278L,
        0xd70dd2eeL, 0x4e048354L, 0x3903b3c2L, 0xa7672661L, 0xd06016f7L,
        0x4969474dL, 0x3e6e77dbL, 0xaed16a4aL, 0xd9d65adcL, 0x40df0b66L,
        0x37d83bf0L, 0xa9bcae53L, 0xdebb9ec5L, 0x47b2cf7fL, 0x30b5ffe9L,
        0xbdbdf21cL, 0xcabac28aL, 0x53b39330L, 0x24b4a3a6L, 0xbad03605L,
        0xcdd70693L, 0x54de5729L, 0x23d967bfL, 0xb3667a2eL, 0xc4614ab8L,
        0x5d681b02L, 0x2a6f2b94L, 0xb40bbe37L, 0xc30c8ea1L, 0x5a05df1bL,
        0x2d02ef8dL
    };

    crc = crc ^ 0xffffffffL;
    while(len >= 8)
    {
        DO8(buf);
        len -= 8;
    }

    if(len)
    {
        do
        {
            DO1(buf);
        }
        while(--len);
    }

    MLENVI_DEBUG("CRC check Value = %08lX \n",crc ^ 0xffffffffL);
    return crc ^ 0xffffffffL;
}

//---------------------------------------------------------------------------------

MBT_BOOL _ShareEnv_GetStr(MBT_U32 u32Index, MBT_U8* pu8Buf, MBT_U32* pu32size)
{

    MBT_U32 index  = u32Index , size;
    if(MM_NULL == EnvInfo)
    {
        return MM_FALSE;
    }
    pu8Buf[0] = '\0';
    size = 0 ;

    while ( '\0' !=  EnvInfo->data[index])
    {
        pu8Buf[size] = EnvInfo->data[index];
        size ++;
        index ++;
    }
    pu8Buf[size] = '\0';

    *pu32size  = size ;

    if (0 == size) 
    {
        return MM_FALSE ;
    }

    return MM_TRUE ;


}

//---------------------------------------------------------------------------------

MBT_U32 _ShareEnv_Name(MBT_U8* Buf , MBT_U32 size )
{

    MBT_U32 i = 0 ;

    for(i = 0 ;  i < size ; i ++)
    {
        if( '=' == Buf[i]) return i ;
    }
    return 0;
}



//------------------------------------------------------------------------------
///// @brief ShareEnv_LoadEnv : Load env data from SPI flash
///// @param[in] : none
///// @return MM_TRUE  : Success .
///// @return MM_FALSE : Fail .
///// @sa
///// @note : Load env from SPI first .
////-----------------------------------------------------------------------------

MBT_BOOL ShareEnv_LoadEnv(void)
{
    if (MM_NULL != EnvInfo)
    {
        MLENVI_DEBUG("ERROR loading Env. EnvInfo = %08lx \n",EnvInfo);
        return MM_FALSE ;
    }

    EnvInfo = MLMF_Malloc( sizeof(SPI_EnvInfo));
    if(MM_NULL == EnvInfo)
    {
        MLENVI_DEBUG("ERROR malloc faile\n");
        return MM_FALSE ;
    }

    MLENVI_DEBUG("Memory Allocation for Env structure : Addr = %08lX , Size = %08X \n", EnvInfo,sizeof(SPI_EnvInfo));
    if(MM_NO_ERROR != FLASHF_Read(ENV_PARA_BASE_ADDR,(MBT_VOID*)(EnvInfo), ENV_SIZE))
    {
        MLMF_Free(EnvInfo);
        EnvInfo = MM_NULL ;
        return MM_FALSE ;
    }

    if(EnvInfo->u32crc!=_crc32(0,EnvInfo->data,ENV_DATA_SIZE))
    {
        //If fail to read first block
        MLENVI_DEBUG("[ERROR] >>> Read Env 1 First Block Error , Read mirror block now ... \n");
        if(MM_NO_ERROR != FLASHF_Read(ENV_PARA_BACKUP_BASE_ADDR,(MBT_VOID*)(EnvInfo), ENV_SIZE))
        {
            MLMF_Free(EnvInfo);
            EnvInfo = MM_NULL ;
            return MM_FALSE ;
        }
    }

    if(EnvInfo->u32crc!=_crc32(0,EnvInfo->data,ENV_DATA_SIZE))
    {
        // fail to read second block
        MLENVI_DEBUG("[ERROR] >>> Read 2 mirror block Fail !!! \n");
        MLMF_Free(EnvInfo);
        EnvInfo = MM_NULL ;
        return MM_FALSE ;
    }

    return MM_TRUE ;
}


//------------------------------------------------------------------------------
///// @brief ShareEnv_StoreEnv : Store env data into SPI flash
///// @param[in] : none
///// @return MM_TRUE  : Success .
///// @return MM_FALSE : Fail .
///// @sa
///// @note : Store env into SPI first .
////-----------------------------------------------------------------------------

MBT_BOOL ShareEnv_StoreEnv(void)
{
    MBT_U32  ret = 0;
    if (MM_NULL == EnvInfo)
    {
        MLENVI_DEBUG("ENV not load yet ! \n");
        return MM_FALSE;
    }

    EnvInfo->u32crc = _crc32(0, EnvInfo->data, ENV_DATA_SIZE);
    
    FLASHF_ErasePartition(ENV_PARA_BACKUP_BASE_ADDR,ENV_SIZE);
    ret = FLASHF_ForceSaveFile (ENV_PARA_BACKUP_BASE_ADDR, (MBT_U8*)EnvInfo, ENV_SIZE);
    FLASHF_ErasePartition(ENV_PARA_BASE_ADDR,ENV_SIZE);
    ret  = FLASHF_ForceSaveFile (ENV_PARA_BASE_ADDR, (MBT_U8*)EnvInfo, ENV_SIZE);
    MLENVI_DEBUG("ENV write back 0, ret=%d \n", ret);

    MLENVI_DEBUG("Memory Free for Env structure : Addr = %08lX , Size = %08X \n",EnvInfo,sizeof(SPI_EnvInfo));
    MLMF_Free(EnvInfo);
    EnvInfo = MM_NULL ;

    return MM_TRUE;
}



//------------------------------------------------------------------------------
///// @brief ShareEnv_EnvGet : Get a environment variable.
///// @param[in] MBT_U8* pName : Ptr to name str.
///// @return MBT_U8 : Value of Environment pName.
///// @return MM_NULL : Fail .
///// @sa
///// @note : Load env from SPI first .
////-----------------------------------------------------------------------------
MBT_U8* ShareEnv_EnvGet(MBT_U8* pName)
{

    MBT_U32 size = 0 , index = 0 , NameSize = 0;//tmpindex = 0 ,
    MBT_U8 data[256],name[256];

    if(MM_NULL == EnvInfo)
    {
        MLENVI_DEBUG("Env Not init!!\n");
        return MM_NULL;
    }

    while(_ShareEnv_GetStr(index , data, &size) )
    {
        //HB_printf("ENV  >> %s \n",data);
        NameSize = _ShareEnv_Name(data, size ) ;
        strncpy((char*)name ,(char*)data, NameSize ) ;
        name[NameSize] = '\0';
        //HB_printf("Name >> %s \n",name);

        if (0 == strcmp((const char *)name, (const char *)pName))
        {
            return &(EnvInfo->data[index + NameSize + 1 ]);
        }
        index += size + 1;
    }

    return (MM_NULL);
}


//=====================================================================================

MBT_BOOL _ShareEnv_EnvSetVal(SPI_EnvInfo *T_EnvInfo  ,MBT_U8* pName , MBT_U8* pValue)
{
    MBT_U32 i = 0 , Cnt = 0;

    while(1)
    {
        if ((i + 1) >= ENV_DATA_SIZE)
        {
            return MM_FALSE;
        }
        if ((0 == T_EnvInfo->data[i] ) && ( 0 == T_EnvInfo->data[i+1])) // find the tail .
        {
            i = i + 1 ;
            while ( 0 != pName[Cnt] ) // copy name section ;
            {
                T_EnvInfo->data[i]  = pName[Cnt] ;
                i ++;
                Cnt ++;
                if (i >= ENV_DATA_SIZE)
                {
                    MLENVI_DEBUG("Environment size OverfLow \n");
                    return MM_FALSE ;
                }
            }

            T_EnvInfo->data[i] = '=' ;
            i ++;
            Cnt = 0 ;

            while ( 0 != pValue[Cnt] ) // copy value section
            {
                if(i<(ENV_SIZE - sizeof(MBT_U32)))
                {
                    T_EnvInfo->data[i]  = pValue[Cnt] ;
                }
                else
                {
                    return MM_FALSE ;
                }
                i ++;
                Cnt ++;
                if (i >= ENV_DATA_SIZE)
                {
                    MLENVI_DEBUG("Environment size OverfLow \n");
                    return MM_FALSE ;
                }
            }

            if ((i + 1) >= ENV_DATA_SIZE )
            {
                MLENVI_DEBUG("Environment size OverfLow \n");
                return MM_FALSE ;
            }
            // add tail flag
            T_EnvInfo->data[i] = 0 ;
            i ++;
            T_EnvInfo->data[i] = 0 ;
            i ++;
            return MM_TRUE ;
        }
        i ++ ;
    }
    return MM_FALSE;

}

//------------------------------------------------------------------------------
///// @brief ShareEnv_EnvSet : Add/Modify a environment variable.
///// @param[in] MBT_U8* pName : Ptr to name str. MBT_U8* pValue : Pat to value str.
///// @return MM_TRUE  : Set env Success.
///// @return MM_FALSE : Set Env fail.
///// @sa
///// @note : Load env from SPI first ,then store to SPI after modified .
////-----------------------------------------------------------------------------

MBT_BOOL ShareEnv_EnvSet(MBT_U8* pName , MBT_U8* pValue)
{

    MBT_U32 size = 0 , index = 0 , tmpindex = 0 , NameSize;
    MBT_U8 data[512],name[256];
    SPI_EnvInfo *tmpEnvInfo ;


    MLENVI_DEBUG("SetEnv : %s = %s \n",pName,pValue);

    if(MM_NULL == EnvInfo)
    {
        MLENVI_DEBUG("Env Not init!!\n");
        return MM_FALSE;
    }

    tmpEnvInfo = MLMF_Malloc( sizeof(SPI_EnvInfo));
    //HB_printf("[%s] Memory Allocation for Env structure : Addr = %08lX , Size = %08X \n",__FUNCTION__ , tmpEnvInfo,sizeof(SPI_EnvInfo));
    if (!tmpEnvInfo)
    {
        return MM_FALSE ;
    }

    tmpindex = 0 ;
    tmpEnvInfo->u32crc = 0 ;
    memset(tmpEnvInfo->data,0,ENV_DATA_SIZE);
    while (_ShareEnv_GetStr(index , data, &size) )
    {
        //HB_printf("ENV  >> %s \n",data);
        NameSize = _ShareEnv_Name(data, size ) ;
        strncpy((char*)name ,(char*)data, NameSize ) ;
        name[NameSize] = '\0';
        //HB_printf("Name >> %s \n",name);
        if (0 != strcmp((const char *)name, (const char *)pName))
        {
            memcpy( &tmpEnvInfo->data[tmpindex], data , size );
            tmpindex += size ;
            tmpEnvInfo->data[tmpindex] = 0x0 ;
            tmpindex+= 1;
        }
        index += size + 1;
    }

    tmpEnvInfo->data[tmpindex] = 0 ;
    if (!_ShareEnv_EnvSetVal( tmpEnvInfo , pName , pValue ))
    {
        MLENVI_DEBUG("Set Env Fail !\n");
        MLMF_Free(tmpEnvInfo);
        return MM_FALSE ;
    }

    //HB_printf("Memory Allocation for Env structure : Addr = %08lX , Size = %08X \n",EnvInfo,sizeof(SPI_EnvInfo));
    MLMF_Free(EnvInfo);
    EnvInfo = tmpEnvInfo ;
    return MM_TRUE;
}

static MBT_U32 gAppSw;
static MBT_U32 gAppHw;
static MBT_U32 gAppOui;
static MBT_CHAR App_Build_DateTime[40];  //EXP: Format--> Oct 15 2010 06:03:20

MBT_CHAR *ProjectBuildDateTime(void)
{
    return App_Build_DateTime;
}

MBT_U32 MApp_AppSwGet(void)
{
	return gAppSw;
}


MBT_U32 MApp_AppHwGet(void)
{
	return gAppHw;
}

MBT_U32 MApp_AppOuiGet(void)
{
	return gAppOui;
}


MBT_BOOL SysInit_InitCustomInfo(void)
{
    MBT_U8   au8StrTmp[10];
    MBT_U8*  pu8StoreVal = NULL;
    MBT_U8   bChange = MM_FALSE;

    ShareEnv_LoadEnv();

	sprintf((char *)&au8StrTmp,"0x%X",LOGO_ADDR);
	pu8StoreVal = ShareEnv_EnvGet((MBT_U8 *)"logoaddr");

	if ((pu8StoreVal == NULL))
	{
	 ShareEnv_EnvSet((MBT_U8 *)"logoaddr",(MBT_U8 *)au8StrTmp);
	 bChange = MM_TRUE;
	}

    sprintf((char *)&au8StrTmp,"0x%04X",CUSTOMER_OUI);
    pu8StoreVal = ShareEnv_EnvGet((MBT_U8 *)"CUSTOMER_OUI");

    if ((pu8StoreVal == NULL) || ((MBT_U8 *)pu8StoreVal != (MBT_U8 *)&au8StrTmp))
    {
        ShareEnv_EnvSet((MBT_U8 *)"CUSTOMER_OUI",(MBT_U8 *)au8StrTmp);
        bChange = MM_TRUE;
	 gAppOui = CUSTOMER_OUI;	
    }
    else
    {
    	 gAppOui = strtoul((char*)pu8StoreVal, NULL, 16);	
    }

    sprintf((char *)&au8StrTmp,"0x%04X",AP_SW_MODEL);
    pu8StoreVal = ShareEnv_EnvGet((MBT_U8 *)"AP_SW_MODEL");

    if ((pu8StoreVal == NULL) || ((MBT_U8 *)pu8StoreVal != (MBT_U8 *)&au8StrTmp))
    {
        ShareEnv_EnvSet((MBT_U8 *)"AP_SW_MODEL",(MBT_U8 *)au8StrTmp);
        bChange = MM_TRUE;
    }

    sprintf((char *)&au8StrTmp,"0x%04X",AP_SW_VERSION >> 16);
    pu8StoreVal = ShareEnv_EnvGet((MBT_U8 *)"AP_SW_VERSION");
    
    if ((pu8StoreVal == NULL) || ((MBT_U8 *)pu8StoreVal != (MBT_U8 *)&au8StrTmp))
    {
        ShareEnv_EnvSet((MBT_U8 *)"AP_SW_VERSION",(MBT_U8 *)au8StrTmp);
        bChange = MM_TRUE;
	 gAppSw = AP_SW_VERSION;	
    }
    else
    {
        gAppSw = strtoul((char*)pu8StoreVal, NULL, 16);	
    }

    sprintf((char *)&au8StrTmp,"0x%04X",HW_MODELNO);
    pu8StoreVal = ShareEnv_EnvGet((MBT_U8 *)"HW_MODEL");

    if ((pu8StoreVal == NULL) || ((MBT_U8 *)pu8StoreVal != (MBT_U8 *)&au8StrTmp))
    {
        ShareEnv_EnvSet((MBT_U8 *)"HW_MODEL",(MBT_U8 *)au8StrTmp);
        bChange = MM_TRUE;
    }


    sprintf((char *)&au8StrTmp,"0x%04X",HW_VERSION);
    pu8StoreVal = ShareEnv_EnvGet((MBT_U8 *)"HW_VERSION");
    
    if ((pu8StoreVal == NULL) || ((MBT_U8 *)pu8StoreVal != (MBT_U8 *)&au8StrTmp))
    {
        ShareEnv_EnvSet((MBT_U8 *)"HW_VERSION",(MBT_U8 *)au8StrTmp);
        bChange = MM_TRUE;
	 gAppHw = HW_VERSION;		
    }
    else
    {
    	 gAppHw = strtoul((char*)pu8StoreVal, NULL, 16);	
    }

    if (bChange == MM_TRUE)
    {
        ShareEnv_StoreEnv();
    }

	memset(App_Build_DateTime,0,sizeof(App_Build_DateTime));
	sprintf(App_Build_DateTime,"%s %s",__DATE__,__TIME__);
	
    return MM_TRUE;
}

typedef struct 
{
    MBT_U16 		ota_len;/*OTA数据的总长度*/
    MBT_U32		ota_Mesg_id;/*OTA消息的MessageID*/
    MBT_U8		ota_date[5];/*OTA数据的发送时间*/
    MBT_U16		ota_pid;/*OTA数据的PID*/
    MBT_U8		dvb_recieve_type;/*接收机的类型IRD Type :DVB-C   DVB-S DVB-T*/
    MBT_U8		dvb_manufactor;/*厂商代码*/
    MBT_U32		dvb_hardvesion;/*硬件版本号*/
    MBT_U32		dvb_softversion;/*软件版本号*/
    MBT_U8		dvb_Modulation;/*调制方式*/
    MBT_U32		dvb_freq;/*frequencyOTA数据所在的发送频点的频率*/
    MBT_U32		dvb_symb;/*symbolrateOTA数据所在的发送频点的符号率*/
    MBT_U8		dvb_polarization;/*极化方式*/
    MBT_U8		dvb_FEC;/*DVB-C和DVB-S中使用的前向纠错编码*/
    MBT_U8		dvb_Guard_interval;/*保护间隔*/
    MBT_U8		dvb_Transmission_mode;/*传输模式*/
    MBT_U8		dvb_code_rate;/*优先级码率*/
    MBT_U8		dvb_BandWidth;/*带宽*/
    MBT_U8		dvb_Constellation;/*卫星所在的经度*/
}Ota_info_t;

static Ota_info_t gstOtaInfo;


void appCa_SetOtaFreq(MBT_U32 dvb_freq)
{
	gstOtaInfo.dvb_freq = dvb_freq;
}
void appCa_SetOtaPID(MBT_U16 ota_pid)
{
	gstOtaInfo.ota_pid = ota_pid;
}
void appCa_SetOtaMod(MBT_U8 dvb_mod)
{
	gstOtaInfo.dvb_Modulation = dvb_mod;
}
void appCa_SetOtaSymb(MBT_U32 dvb_symb)
{
	gstOtaInfo.dvb_symb = dvb_symb;
}

void appCa_triggerOta(void)
{
    MBT_U8   buffer[256];
    MBT_U32  u8QAMType;

    MLENVI_DEBUG("\n----------------------------\n");
    MLENVI_DEBUG("appCa_triggerOta\n");
    MLENVI_DEBUG("----------------------------\n");
    MLENVI_DEBUG("gstOtaInfo.ota_pid=0x%04X(%d)\n",          gstOtaInfo.ota_pid,             gstOtaInfo.ota_pid);
    MLENVI_DEBUG("gstOtaInfo.dvb_recieve_type=%d\n",         gstOtaInfo.dvb_recieve_type);
    MLENVI_DEBUG("gstOtaInfo.dvb_manufactor=0x%02X(%d)\n",   gstOtaInfo.dvb_manufactor,      gstOtaInfo.dvb_manufactor);
    MLENVI_DEBUG("gstOtaInfo.dvb_hardvesion=0x%08X(%d)\n",   gstOtaInfo.dvb_hardvesion,      gstOtaInfo.dvb_hardvesion);
    MLENVI_DEBUG("gstOtaInfo.dvb_softversion=0x%08X(%d)\n",  gstOtaInfo.dvb_softversion,     gstOtaInfo.dvb_softversion);
    MLENVI_DEBUG("gstOtaInfo.dvb_Modulation=%d\n",           gstOtaInfo.dvb_Modulation);
    MLENVI_DEBUG("gstOtaInfo.dvb_freq=%d\n",                 gstOtaInfo.dvb_freq);
    MLENVI_DEBUG("gstOtaInfo.dvb_symb=%d\n",                 gstOtaInfo.dvb_symb);
    MLENVI_DEBUG("gstOtaInfo.dvb_polarization=%d\n",         gstOtaInfo.dvb_polarization);
    MLENVI_DEBUG("gstOtaInfo.dvb_FEC=%d\n",                  gstOtaInfo.dvb_FEC);
    MLENVI_DEBUG("gstOtaInfo.dvb_Guard_interval=%d\n",       gstOtaInfo.dvb_Guard_interval);
    MLENVI_DEBUG("gstOtaInfo.dvb_Transmission_mode=%d\n",    gstOtaInfo.dvb_Transmission_mode);
    MLENVI_DEBUG("gstOtaInfo.dvb_code_rate=%d\n",            gstOtaInfo.dvb_code_rate);
    MLENVI_DEBUG("gstOtaInfo.dvb_BandWidth=%d\n",            gstOtaInfo.dvb_BandWidth);
    MLENVI_DEBUG("gstOtaInfo.dvb_Constellation=%d\n",        gstOtaInfo.dvb_Constellation);

    ShareEnv_LoadEnv();
    ShareEnv_EnvSet((MBT_U8 *)"OAD_NEED_UPGRADE",   (MBT_U8 *)"1");
    ShareEnv_EnvSet((MBT_U8 *)"OAD_NEED_SCAN",      (MBT_U8 *)"1");
    ShareEnv_EnvSet((MBT_U8 *)"OAD_TRIGGER_TYPE",   (MBT_U8 *)"1");


    ShareEnv_EnvSet((MBT_U8 *)"upgrade_mode", (MBT_U8 *)"oad");
    ShareEnv_EnvSet((MBT_U8 *)"oad_group_pid", (MBT_U8 *)"0");
    ShareEnv_EnvSet((MBT_U8 *)"oad_upgrade_dvbc", (MBT_U8 *)"1");	

    memset(buffer, 0 , 256);
    sprintf((char*)buffer,"%d",    1);
    ShareEnv_EnvSet((MBT_U8 *)"OAD_IN_MBOOT", (MBT_U8*)buffer);

    memset(buffer, 0 , 256);
    sprintf((char*)buffer,"%d",    0);
    ShareEnv_EnvSet((MBT_U8 *)"oad_complete", (MBT_U8*)buffer);

    memset(buffer, 0 , 256);
    sprintf((char*)buffer,"%d", gstOtaInfo.dvb_freq/10);
    ShareEnv_EnvSet((MBT_U8 *)"OAD_FREQ", (MBT_U8*)buffer);

    memset(buffer, 0 , 256);
    sprintf((char*)buffer,"%d", 3); // 3=>  8M
    ShareEnv_EnvSet((MBT_U8 *)"OAD_BAND", (MBT_U8*)buffer);

    memset(buffer, 0 , 256);
    sprintf((char*)buffer, "%d", gstOtaInfo.ota_pid);
    ShareEnv_EnvSet((MBT_U8 *)"OAD_PID", (MBT_U8*)buffer);

    if(gstOtaInfo.dvb_recieve_type==0)
    {
        //DVB-C

        //OAD PID
        memset(buffer, 0 , 256);
        sprintf((char*)buffer, "%d", gstOtaInfo.ota_pid);
        ShareEnv_EnvSet((MBT_U8 *)"OAD_PID", (MBT_U8 *)buffer);

        //Frequency (KHZ)
        memset(buffer, 0 , 256);
        sprintf((char*)buffer, "%d", gstOtaInfo.dvb_freq/10);
        ShareEnv_EnvSet((MBT_U8 *)"oad_upgrade_freq", (MBT_U8 *)buffer);

        switch(gstOtaInfo.dvb_Modulation)
        {
            case 0x01:
                u8QAMType = MM_TUNER_QAM_16; 
                break;

            case 0x02:
                u8QAMType = MM_TUNER_QAM_32; 
                break;

            default:
            case 0x03:
                u8QAMType = MM_TUNER_QAM_64; 
                break;

            case 0x04:
                u8QAMType = MM_TUNER_QAM_128; 
                break;

            case 0x05:
                u8QAMType = MM_TUNER_QAM_256; 
                break;
        }
        
        memset(buffer, 0 , 256);
        sprintf((char*)buffer, "%d", u8QAMType);
        ShareEnv_EnvSet((MBT_U8 *)"oad_upgrade_qam", (MBT_U8 *)buffer);

        //Symbol Rate
        memset(buffer, 0 , 256);
        sprintf((char*)buffer, "%d", gstOtaInfo.dvb_symb/10);
        ShareEnv_EnvSet((MBT_U8 *)"oad_upgrade_sym", (MBT_U8 *)buffer);

    }
    else 
    {
		return;
	}
    

    ShareEnv_StoreEnv();
}

int ovt_fac_get_env(char *name, char *pBuffer)
{
	int _ret=0;
	char *_env=NULL;
	
	if(pBuffer == NULL)  return -1;
	
	ShareEnv_LoadEnv();
	_env=(char*)ShareEnv_EnvGet((MBT_U8*)name);
	if(_env == NULL) //not find 
	{
		_ret = -1;
	}
	else
	{
		memcpy(pBuffer,_env,strlen(_env));
	}	
	return _ret;
}

