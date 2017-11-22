#include "base.h"
#include "sha1.h"


/*******************************************
  Advca runtime check & standby  macro & variables
********************************************/

typedef struct hiDDR_Vector_Table_S
{
    HI_U32    u32StartAddr;   /* Start address */
    HI_U32    u32VectorSize;  /* Data length   */
} DDR_Vector_Table_S;

xdata SHA1Context g_stSha1Info;
data HI_U32 g_u32CheckAddr;
data HI_U32 g_u32CheckSize;
xdata DDR_Vector_Table_S g_stCheckVector[4];
xdata HI_U32 g_u32OrgHashValue[5];
xdata HI_U8 g_u8CaVendorId;

#define WDG0_BASE_ADDR        0x10201000
#define WDG_LOAD                     0x0000
#define WDG_CONTROL              0x0008
#define WDG_LOCK                     0x0c00

#define CHECK_ADDR                  0x80000000
#define CHECK_LENGTH              0x8000000 //128M

/****************************************************************
**     Add runtime check and DDR wakp up check for advanced CA.
**
*****************************************************************/
HI_VOID do_reset()
{
    regAddr.val32 = WDG0_BASE_ADDR + WDG_LOCK;
    regData.val32 = 0x1ACCE551;
    write_regVal();

    regAddr.val32 = WDG0_BASE_ADDR + WDG_LOAD;
    regData.val32 = 0x1;
    write_regVal();

    regAddr.val32 = WDG0_BASE_ADDR + WDG_CONTROL;
    regData.val32 = 0x3;
    write_regVal();      
}

HI_VOID do_runtimecheck()
{
    HI_U8 u8SegNum = 0;
    HI_U8 i = 0, j = 0;
    HI_U32 u32TempVal = 0;	
    HI_U32 u32SegParamAddr = 0;
    HI_U32 u32HashParaAddr = 0;

     //check whether the runtime_check_en is enabled
    regAddr.val32 = 0x10180084; //OTP:runtime_check_en indicator :0xF8AB0084[20],0x6[4]
    read_regVal();
    u32TempVal = regData.val32;
    if( (u32TempVal & 0x100000) == 0x0 ) //OTP:runtime_check_en indicator :0xF8AB0084[20],0x6[4]
    {
#ifndef HI_ADVCA_RELEASE
        printf_str("\r\n------------------DDR runtime check is not enabled------------------\r\n");
#endif
        return;
    }

    //Read the start address and length
    regAddr.val32 = CHECK_VECTOR_BASE_ADDR + 0x50;
    read_regVal();
    u8SegNum = regData.val8[3];
#ifndef HI_ADVCA_RELEASE
    printf_str("u8SegNum: ");printf_hex(u8SegNum);
#endif
    u32SegParamAddr = CHECK_VECTOR_BASE_ADDR + 0x54;
    for(i = 0; i < u8SegNum; i++)
    {
    	regAddr.val32 = u32SegParamAddr + (i * 8 + 0);
    	read_regVal();	
    	g_stCheckVector[i].u32StartAddr = regData.val32;
           
    	regAddr.val32 = u32SegParamAddr + (i * 8 + 4);
    	read_regVal();
    	g_stCheckVector[i].u32VectorSize = regData.val32;
#ifndef HI_ADVCA_RELEASE
        printf_str("u32StartAddr: ");printf_hex(g_stCheckVector[i].u32StartAddr);
        printf_str("u32VectorSize: ");printf_hex(g_stCheckVector[i].u32VectorSize);
#endif
    }

    while (1)
    {
#ifndef HI_ADVCA_RELEASE
        printf_str("\r\n------------------Runtime check is enabled, start runtime check------------------\r\n");	
#endif
        u32HashParaAddr = CHECK_VECTOR_BASE_ADDR + 0x14;
        for(i = 0; i < u8SegNum; i++)
        {
            //get the original hash value
            for(j = 0; j < 5; j++)
            {
                regAddr.val32 = (u32HashParaAddr + i * 20) + (j * 4);
                read_regVal();
                g_u32OrgHashValue[j] = regData.val32;
            }
        #ifndef HI_ADVCA_RELEASE
            printf_str("Start address: ");printf_hex(g_stCheckVector[i].u32StartAddr);
            printf_str("Length: ");printf_hex(g_stCheckVector[i].u32VectorSize);

            printf_str("Original hash value:\r\n");
            for(j = 0; j < 5; j++)
            {
                printf_hex(g_u32OrgHashValue[j]);
            }
        #endif

            g_u32CheckAddr = g_stCheckVector[i].u32StartAddr;
            g_u32CheckSize = g_stCheckVector[i].u32VectorSize;

            SHA1Reset();
            CHECK_PMOC_STATUS(); //check if suspend happen
            SHA1DoBody();  
            CHECK_PMOC_STATUS(); //check if suspend happen
            SHA1DoTail();


            
        #ifndef HI_ADVCA_RELEASE
            printf_str("Calculated hash value:\r\n");
            for(j = 0; j < 5; j++)
            {
                printf_hex(g_stSha1Info.Intermediate_Hash[j]);
            }
        #endif

            for (j = 0; j < 5; j++)
            {
                if (g_stSha1Info.Intermediate_Hash[j] != g_u32OrgHashValue[j])
                {
                    break;
                }
            }
            if (j >= 5)			
            {
            #ifndef HI_ADVCA_RELEASE
                printf_str("\r\n------------------Runtime check PASS, continue next cycle check.------------------\r\n");
            #endif
            }
            else
            {
            #ifndef HI_ADVCA_RELEASE
                printf_str("\r\n------------------Runtime check ERROR, reboot system !------------------\r\n");
            #endif
                do_reset();
            }
        }
    }
    return;
}

HI_VOID GetDDRWakeUpParams(HI_VOID)
{
    HI_U32 u32TempVal =0;

    //check whether otp bit:ddr_wakeup_disable is enabled,
    regAddr.val32 = 0x10180080; //  0xF8AB0080[4],  0x0[4]:0:enable;1:disabled
    read_regVal();
    u32TempVal = regData.val32;
    if(0x0!= (u32TempVal & 0x10) )
    {
    #ifndef HI_ADVCA_RELEASE
    	printf_str("------------------DDR wakeup is disabled------------------\r\n");
    #endif
    	return;
    }

#ifndef HI_ADVCA_RELEASE
    printf_str("------------------DDR wakeup is enabled, start DDR wakeup progress------------------\r\n");
#endif

    regAddr.val32 = CFG_BASE_ADDR + SC_GEN19;
    regData.val32 = 0x600b7800;
    write_regVal();

    /* Read the ddr wakeup checking data from SRAM,  then write it to 51 RAM */
    regAddr.val32 = 0x4700 + 0x00;//HASH[0];	//A9 RAM address
    read_regVal();

    *((unsigned char volatile xdata*)0x600b7800) = regData.val8[3];
    *((unsigned char volatile xdata*)0x600b7801) = regData.val8[2];
    *((unsigned char volatile xdata*)0x600b7802) = regData.val8[1];
    *((unsigned char volatile xdata*)0x600b7803) = regData.val8[0];

    regAddr.val32 = 0x4700 + 0x04;//HASH[1];	
    read_regVal();

    *((unsigned char volatile xdata*)0x600b7804) = regData.val8[3];
    *((unsigned char volatile xdata*)0x600b7805) = regData.val8[2];
    *((unsigned char volatile xdata*)0x600b7806) = regData.val8[1];
    *((unsigned char volatile xdata*)0x600b7807) = regData.val8[0];

    regAddr.val32 = 0x4700 + 0x08;//HASH[2];	
    read_regVal();

    *((unsigned char volatile xdata*)0x600b7808) = regData.val8[3];
    *((unsigned char volatile xdata*)0x600b7809) = regData.val8[2];
    *((unsigned char volatile xdata*)0x600b780A) = regData.val8[1];
    *((unsigned char volatile xdata*)0x600b780B) = regData.val8[0];

    regAddr.val32 = 0x4700 + 0x0c;//HASH[3];	
    read_regVal();

    *((unsigned char volatile xdata*)0x600b780C) = regData.val8[3];
    *((unsigned char volatile xdata*)0x600b780D) = regData.val8[2];
    *((unsigned char volatile xdata*)0x600b780E) = regData.val8[1];
    *((unsigned char volatile xdata*)0x600b780F) = regData.val8[0];

    regAddr.val32 = 0x4700 + 0x10;//HASH[4];	
    read_regVal();

    *((unsigned char volatile xdata*)0x600b7810) = regData.val8[3];
    *((unsigned char volatile xdata*)0x600b7811) = regData.val8[2];
    *((unsigned char volatile xdata*)0x600b7812) = regData.val8[1];
    *((unsigned char volatile xdata*)0x600b7813) = regData.val8[0];

    *((unsigned char volatile xdata*)0x600b7814) = 0x01;
    *((unsigned char volatile xdata*)0x600b7815) = 0x00;
    *((unsigned char volatile xdata*)0x600b7816) = 0x00;
    *((unsigned char volatile xdata*)0x600b7817) = 0x00;
    
    *((unsigned char volatile xdata*)0x600b7818) = (unsigned char)CHECK_ADDR;
    *((unsigned char volatile xdata*)0x600b7819) = (unsigned char)(CHECK_ADDR >> 8);
    *((unsigned char volatile xdata*)0x600b781A) = (unsigned char)(CHECK_ADDR >> 16);
    *((unsigned char volatile xdata*)0x600b781B) = (unsigned char)(CHECK_ADDR >> 24);

    *((unsigned char volatile xdata*)0x600b781C) = (unsigned char)CHECK_LENGTH;
    *((unsigned char volatile xdata*)0x600b781D) = (unsigned char)(CHECK_LENGTH >> 8);
    *((unsigned char volatile xdata*)0x600b781E) = (unsigned char)(CHECK_LENGTH >> 16);
    *((unsigned char volatile xdata*)0x600b781F) = (unsigned char)(CHECK_LENGTH >> 24);    
#ifndef HI_ADVCA_RELEASE
    printf_str("------------------DDR suspend ok,wait IR remoter controller wakeup------------------\r\n");
    printf_str("------------------Wait the LED array to be NUMBER: 0958------------------\r\n");
    printf_str("------------------If the LED array is NUMBER: 0958, you can resume the system------------------\r\n");
#endif
    return;
}


/* for A9 calculate HASH */
HI_VOID SetDDRWakeUpParams(HI_VOID)
{
    *((unsigned char volatile xdata*)0x600b7818) = (unsigned char)CHECK_ADDR;
    *((unsigned char volatile xdata*)0x600b7819) = (unsigned char)(CHECK_ADDR >> 8);
    *((unsigned char volatile xdata*)0x600b781A) = (unsigned char)(CHECK_ADDR >> 16);
    *((unsigned char volatile xdata*)0x600b781B) = (unsigned char)(CHECK_ADDR >> 24);

    *((unsigned char volatile xdata*)0x600b781C) = (unsigned char)CHECK_LENGTH;
    *((unsigned char volatile xdata*)0x600b781D) = (unsigned char)(CHECK_LENGTH >> 8);
    *((unsigned char volatile xdata*)0x600b781E) = (unsigned char)(CHECK_LENGTH >> 16);
    *((unsigned char volatile xdata*)0x600b781F) = (unsigned char)(CHECK_LENGTH >> 24);
}

HI_VOID ADVCA_RUN_CHECK(HI_VOID)
{
    SetDDRWakeUpParams(); //for A9 calculate HASH
     while(1) //Add for advanced CA to check if suspend happen
    {
        regAddr.val32 = (CFG_BASE_ADDR + SC_GEN15);
        read_regVal();
        if(PMOC_CHECK_TO_SUSPEND == regData.val32)
        {
            break;
        }
		regAddr.val32 = (CFG_BASE_ADDR + SC_GEN27);
        read_regVal();
        if(PMOC_RUNTIME_CHECK_OK == regData.val32)
        {
            //regAddr.val32 = (CFG_BASE_ADDR + SC_GEN27);
            //regData.val32 = 0;
            //write_regVal();
            break;
        }
        wait_minute_2(100,100);
    }

    regAddr.val32 = (CFG_BASE_ADDR + SC_GEN27);
    read_regVal();
    if(PMOC_RUNTIME_CHECK_OK == regData.val32) 
    {
        regAddr.val32 = (CFG_BASE_ADDR + SC_GEN27);
        regData.val32 = 0;
        write_regVal();    
        do_runtimecheck(); //Add for advanced CA to support runtime check
    }
    
    while(1) //Add for advanced CA to check if suspend happen
    {
        regAddr.val32 = (CFG_BASE_ADDR + SC_GEN15);
        read_regVal();
        if(PMOC_CHECK_TO_SUSPEND == regData.val32)
        {
            regAddr.val32 = (CFG_BASE_ADDR + SC_GEN15);
            regData.val32 = 0;
            write_regVal();
            break;
        }
        wait_minute_2(100,100);
    }
    GetDDRWakeUpParams();
}


