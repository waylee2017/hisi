
#include <sys/mman.h>
#include <pthread.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>

#include "uti_driver.h"
#include "unitend.h"
#include "hi_common.h"
 
#define SMI_BASE_ADDR (0x60000000)
#define SYS_BASE_ADDR (0x10203000)
#define SMI_BANK0_BASE_ADDR (0x30000000)
#define HISI_UTI_BASE	((unsigned int)bank0_map)

#define SMI_BIDCYR0    (SMI_BASE_ADDR + 0x0000) /*Controller 0 channel read and write steering cycle register   */
#define SMI_BWSTRDR0   (SMI_BASE_ADDR + 0x0004) /*Controller 0 channel to write to wait for the cycle register     */
#define SMI_BWSTWRR0   (SMI_BASE_ADDR + 0x0008) /*Controller 0  Channel read enable to wait for the cycle register  */
#define SMI_BWSTOENR0  (SMI_BASE_ADDR + 0x000C) /*Controller 0  Channel read enable to wait for the cycle register  */
#define SMI_BWSTWENR0  (SMI_BASE_ADDR + 0x0010) /*Controller 0  Channel write enable to wait for the cycle register  */
#define SMI_BCR0       (SMI_BASE_ADDR + 0x0014) /*Controller 0  channel control register  */
#define SMI_BSR0       (SMI_BASE_ADDR + 0x0018) /*Controller 0  channel status register            */
#define SMI_BWSTBRDR0  (SMI_BASE_ADDR + 0x001C) /*Controller 0  Channel burst read wait for the cycle register */
#define SMI_BIDCYR1    (SMI_BASE_ADDR + 0x00E0) /*Controller 1  Channel read and write steering cycle register    */
#define SMI_BWSTRDR1   (SMI_BASE_ADDR + 0x00E4) /*Controller 1  Channel read waiting for the cycle register     */
#define SMI_BWSTWRR1   (SMI_BASE_ADDR + 0x00E8) /*Controller 1  Channel write waiting for the cycle register     */
#define SMI_BWSTOENR1  (SMI_BASE_ADDR + 0x00EC) /*Controller 1  Channel read enable to wait for the cycle register  */
#define SMI_BWSTWENR1  (SMI_BASE_ADDR + 0x00F0) /*Controller 1  Channel write enable to wait for the cycle register  */
#define SMI_BCR1       (SMI_BASE_ADDR + 0x00F4) /*Controller 1  channel control register            */
#define SMI_BSR1       (SMI_BASE_ADDR + 0x00F8) /*Controller 1  channel status register            */
#define SMI_BWSTBRDR1  (SMI_BASE_ADDR + 0x00FC) /*Controller 1  Channel burst read wait for the cycle register */
#define SMI_SR         (SMI_BASE_ADDR + 0x0200) /*Controller asynchronous wait state register          */
#define SMI_CR         (SMI_BASE_ADDR + 0x0204) /*Controller clock configuration register     */


#define EBI_ADR16  (SYS_BASE_ADDR + 0x00B4) 
#define EBI_DQ15   (SYS_BASE_ADDR + 0x00B8)  
#define EBI_DQ14   (SYS_BASE_ADDR + 0x00BC)  
#define EBI_DQ13   (SYS_BASE_ADDR + 0x00C0)  
#define EBI_DQ12   (SYS_BASE_ADDR + 0x00C4)  
#define EBI_DQ11   (SYS_BASE_ADDR + 0x00C8) 
#define EBI_DQ10   (SYS_BASE_ADDR + 0x00CC) 
#define EBI_DQ9    (SYS_BASE_ADDR + 0x00D0) 
#define EBI_DQ8    (SYS_BASE_ADDR + 0x00D4) 
#define EBI_WEN    (SYS_BASE_ADDR + 0x00D8)  //All together EBI_ADR{0,4,5,6,8,9,10,11,12,13}
#define EBI_CSN0   (SYS_BASE_ADDR + 0x00DC) 
#define EBI_CSN1   (SYS_BASE_ADDR + 0x00E0) 
#define EBI_OEN    (SYS_BASE_ADDR + 0x00E4) 
#define EBI_DQ0    (SYS_BASE_ADDR + 0x00E8) 
#define EBI_DQ1    (SYS_BASE_ADDR + 0x00EC) 
#define EBI_DQ2    (SYS_BASE_ADDR + 0x00F0) 
#define EBI_DQ3    (SYS_BASE_ADDR + 0x00F4) 
#define EBI_DQ4    (SYS_BASE_ADDR + 0x00F8) 
#define EBI_DQ5    (SYS_BASE_ADDR + 0x00FC) 
#define EBI_DQ6    (SYS_BASE_ADDR + 0x0100) 
#define EBI_DQ7    (SYS_BASE_ADDR + 0x0104) 
#define EBI_ADR15  (SYS_BASE_ADDR + 0x0114)  
#define EBI_ADR14  (SYS_BASE_ADDR + 0x0118) 
#define EBI_ADR1   (SYS_BASE_ADDR + 0x011C) 
#define EBI_ADR2   (SYS_BASE_ADDR + 0x0120) 
#define EBI_ADR3   (SYS_BASE_ADDR + 0x0124) 
#define EBI_ADR7   (SYS_BASE_ADDR + 0x0128) 




static HI_U8 *bank0_map;
static HI_S32 MemFd=-1;
static HI_U32 BitWidth;

/*
Function: initialization
return : 0,success:-1,failure.
*/
HI_S32 HI_UNF_SMI_Init(HI_U32 bw)
{
	HI_S32 fd;
	HI_U32 RegVal;

	BitWidth = bw;

	/*pin multiplexing*/
	//control pin reuse  
	HI_SYS_WriteRegister(EBI_WEN, 0);  //all together EBI_ADR{0,4,5,6,8,9,10,11,12,13}
	HI_SYS_WriteRegister(EBI_CSN0, 0);
	HI_SYS_WriteRegister(EBI_CSN1, 1);
	HI_SYS_WriteRegister(EBI_OEN, 0);
	//data pin reuse	
	HI_SYS_WriteRegister(EBI_DQ0, 0);
	HI_SYS_WriteRegister(EBI_DQ1, 0);
	HI_SYS_WriteRegister(EBI_DQ2, 0);
	HI_SYS_WriteRegister(EBI_DQ3, 0);
	HI_SYS_WriteRegister(EBI_DQ4, 0);
	HI_SYS_WriteRegister(EBI_DQ5, 0);
	HI_SYS_WriteRegister(EBI_DQ6, 0);
	HI_SYS_WriteRegister(EBI_DQ7, 0);
	HI_SYS_WriteRegister(EBI_DQ8, 0);
	HI_SYS_WriteRegister(EBI_DQ9, 0);
	HI_SYS_WriteRegister(EBI_DQ10, 0);
	HI_SYS_WriteRegister(EBI_DQ11, 0);
	HI_SYS_WriteRegister(EBI_DQ12, 0);
	HI_SYS_WriteRegister(EBI_DQ13, 0);
	HI_SYS_WriteRegister(EBI_DQ14, 0);
	HI_SYS_WriteRegister(EBI_DQ15, 0);
	//addr pin reuse  
	HI_SYS_WriteRegister(EBI_ADR1, 0);
	HI_SYS_WriteRegister(EBI_ADR2, 0);
	HI_SYS_WriteRegister(EBI_ADR3, 0);
	HI_SYS_WriteRegister(EBI_ADR7, 0);
	HI_SYS_WriteRegister(EBI_ADR14, 1);
	HI_SYS_WriteRegister(EBI_ADR15, 1);
	HI_SYS_WriteRegister(EBI_ADR16, 0);

	/*Write 1 to the system controller PERI_CRG32 [ssmc_cken], you can open the SMI controller clock*/
	HI_SYS_ReadRegister((0x101F5000 + 0xC0), &RegVal);
	HI_SYS_WriteRegister((0x101F5000 + 0xC0), (RegVal | 0x100));

	/*******************
	Steps 1 write 1 to PERI_CRG32 ssmc_srst_req], it's a soft reset SMI controller.
	Steps 2 write 0 to PERI_CRG32 ssmc_srst_req], it's a reset revoke of SMI controller.
	********************/
	HI_SYS_ReadRegister((0x101F5000 + 0xC0), &RegVal);
	HI_SYS_WriteRegister((0x101F5000 + 0xC0), (RegVal | 0x1));
	HI_SYS_WriteRegister((0x101F5000 + 0xC0), (RegVal & 0xfffe));


    /* QAM TSO Clock inverter control ---20110618 */
	HI_SYS_ReadRegister((0x101F5000 + 0xA4), &RegVal);
	HI_SYS_WriteRegister((0x101F5000 + 0xA4), (RegVal | 0x40000)); //TSO clk reverse(pctrl)


    /* TSI/TSO pin multiplexing config ---20110618 */
	HI_SYS_WriteRegister((0x10203000 + 0x150), 0x0); 
	HI_SYS_WriteRegister((0x10203000 + 0x154), 0x0); 
	HI_SYS_WriteRegister((0x10203000 + 0x158), 0x0); 
	HI_SYS_WriteRegister((0x10203000 + 0x160), 0x2); 

	/*init SMC bank0 
	Step 1 configuration register SMI_CR: configure the SMI controller clock ratio
	Step 2 configuration register SMI_BIDCYR0 (idcy): configuration read and write steering cycle TWSTIDLY
	Step 3 configuration register SMI_BWSTRDR0 (wstrd): configuration read-wait cycle TWSTRD
	Step 4 configuration registers SMI_BWSTWRR0 (wstwr): configuration write wait for the cycle TWSTWR
	Step 5 configuration register SMI_BWSTOENR0 (wstoen): configuration read so that can wait for the cycle TWSTOEN
	Step 6 configuration register SMI_BWSTWENR0 (wstwen): Configuration Write Enable wait for the cycle TWSTWEN
	Step 7 configuration the register SMI_BWSTBRDR0: configuration burst read wait for the cycle TWSTBURSTRD
	Step 8 configuration the register SMI_BCR0:configuration memory channel control parameters  */

	HI_SYS_WriteRegister(SMI_CR, 0x3);		//fBUSCLK=200MHz,fSMICLK=200MHz
	if(BitWidth == 16)
	{
		RegVal = 0x303010;
	}
	else
	{
		RegVal = 0x303000;  //8bit BitWidth
	}
	HI_SYS_WriteRegister(SMI_BCR0, RegVal);

	/* set port loop-back*/
	/* TSI1_D0,TSI1_D1,TSI1_D2,TSI1_D3,TSI1_D4,TSI1_D5,TSI1_D6,TSI1_D7,
     TSI1_VALID,TSI1_CLK,TSI1_SYNC ping multiplexing control register*/
	HI_SYS_ReadRegister((0x10203000 + 0x0160),  &RegVal);
	RegVal |=  0x2;
	RegVal &= ~0x1;
	HI_SYS_WriteRegister((0x10203000 + 0x0160), RegVal);
	// open mem fd
	fd=open("/dev/mem", O_RDWR|O_SYNC, 00777);
	if(fd == HI_NULL_PTR)
	{
		printf("Error: open fd failed.\n");
		return HI_FAILURE;
	}

	close(fd);
	return HI_SUCCESS;
}

/*
function: deinitialization
return: 0,success -1,failure
*/
HI_S32 HI_UNF_SMI_DeInit()
{
	HI_U32 RegVal;
		
	/*Write to the system controller PERI_CRG32 [ssmc_cken] 0, you can open the SMI controller clock*/
	HI_SYS_ReadRegister((0x101F5000 + 0xC0), &RegVal);
	HI_SYS_WriteRegister((0x101F5000 + 0xC0), (RegVal & 0x0FF));

    return HI_SUCCESS;
}

/*
function: open
return: 0,success; -1,failure
*/
HI_S32 HI_UNF_SMI_Open()
{
    MemFd=open("/dev/mem", O_RDWR|O_SYNC, 00777);
    if(MemFd == HI_NULL_PTR)
    {
        printf("Error: open fd failed.\n");
        return HI_NULL_PTR;
    }

    bank0_map = (HI_U8 *)mmap(NULL, 0x4000, PROT_READ|PROT_WRITE, MAP_SHARED, MemFd, SMI_BANK0_BASE_ADDR);
    if (bank0_map == MAP_FAILED)
    {
        printf("Error: mmap failed.\n");
        close(MemFd);
        return HI_NULL_PTR;
    }

    return MemFd;
}

/*
function: close
return: 0,success; -1,failure
*/
HI_S32 HI_UNF_SMI_Close()
{
    munmap( (HI_VOID *)bank0_map, 0x4000);
    close(MemFd);
    return HI_SUCCESS;
}


HI_U32 hisi_read_reg_buf(HI_U32 uRegAddr, HI_U8 *puBuf, HI_U32 uLen)
{
	HI_U32 len_count=0;
	HI_U16 val;
	
	if (uRegAddr%2)
	{
		uRegAddr = uRegAddr&(~1);
		val = *(volatile unsigned short*)uRegAddr;
		puBuf[len_count++]=(unsigned char)(val>>8);
		uRegAddr += 2;
	}
	
	for (;(len_count+2)<=uLen;len_count+=2)
	{
		val = *(volatile unsigned short*)uRegAddr;
		*(unsigned short*)(&puBuf[len_count])=val;
		uRegAddr += 2;
	}
	
	if (len_count < uLen)
	{
		val = *(volatile unsigned short*)uRegAddr;
		puBuf[len_count]=(unsigned char)val;
	}

	return 0;
}

HI_U32 hisi_write_reg_buf(HI_U32 uRegAddr, HI_U8 *puBuf, HI_U32 uLen)
{
	HI_U32 len_count=0;
	HI_U16 val;

	if (uRegAddr%2)
	{
		uRegAddr = uRegAddr&(~1);
		val = *(volatile unsigned short*)uRegAddr;
		*(volatile unsigned short*)uRegAddr = ((puBuf[len_count])<<8)|(val&0xFF);
		len_count++;
		uRegAddr += 2;
	}
	
	for (;(len_count+2)<=uLen;len_count+=2)
	{
		*(volatile unsigned short*)uRegAddr = *(unsigned short*)(&puBuf[len_count]);
		uRegAddr += 2;
	}
	
	if (len_count < uLen)
	{
		val = *(unsigned short*)uRegAddr;
		*(volatile unsigned short*)uRegAddr = (puBuf[len_count])|(val&0xFF00);
	}

	return 0;
}

UTI_SINT32 UTIDriverReadRegU8(UTI_UINT32 address, UTI_UINT8 *u8_data)
{
	if (u8_data == NULL)
	{
		return UTI_ERROR_UNKNOWN_ERROR;
	}

	if (0 == hisi_read_reg_buf(address+HISI_UTI_BASE,(unsigned char *)u8_data,1))
	{
		return UTI_ERROR_OK;
	}

	return UTI_ERROR_UNKNOWN_ERROR;
}


UTI_SINT32 UTIDriverWriteRegU8(UTI_UINT32 address, UTI_UINT8 u8_data)
{
	UTI_UINT8 u8Tmp = u8_data;
	
	if (0 == hisi_write_reg_buf(address+HISI_UTI_BASE,(unsigned char *)&u8Tmp,1))
	{
		return UTI_ERROR_OK;
	}

	return UTI_ERROR_UNKNOWN_ERROR;
}

UTI_SINT32 UTIDriverReadRegU16(UTI_UINT32 address, UTI_UINT16 *u16_data)
{
	if (u16_data == NULL)
	{
		return UTI_ERROR_UNKNOWN_ERROR;
	}
	
	if (0 == hisi_read_reg_buf(address+HISI_UTI_BASE,(unsigned char *)u16_data,2))
	{
		return UTI_ERROR_OK;
	}

	return UTI_ERROR_UNKNOWN_ERROR;
}

UTI_SINT32 UTIDriverWriteRegU16(UTI_UINT32 address, UTI_UINT16 u16_data)
{
	UTI_UINT16 u16Tmp = u16_data;
	if (0 == hisi_write_reg_buf(address+HISI_UTI_BASE,(unsigned char *)&u16Tmp,2))
	{
		return UTI_ERROR_OK;
	}

	return UTI_ERROR_UNKNOWN_ERROR;
}

UTI_SINT32 UTIDriverReadRegU32(UTI_UINT32 address, UTI_UINT32 *u32_data)
{
	if (u32_data == NULL)
	{
		return UTI_ERROR_UNKNOWN_ERROR;
	}
	
	if (0 == hisi_read_reg_buf(address+HISI_UTI_BASE,(unsigned char *)u32_data,4))
	{
		return UTI_ERROR_OK;
	}

	return UTI_ERROR_UNKNOWN_ERROR;
}

UTI_SINT32 UTIDriverWriteRegU32(UTI_UINT32 address, UTI_UINT32 u32_data)
{
	UTI_UINT32 u32Tmp = u32_data;
	if (0 == hisi_write_reg_buf(address+HISI_UTI_BASE,(unsigned char *)&u32Tmp,4))
	{
		return UTI_ERROR_OK;
	}

	return UTI_ERROR_UNKNOWN_ERROR;
}

UTI_SINT32 UTIDriverReadRegBuffer(UTI_UINT32 address, UTI_UINT8 *u8_data, UTI_UINT32 buffer_len)
{
	if (u8_data == NULL)
	{
		return UTI_ERROR_UNKNOWN_ERROR;
	}
	
	if (0 == hisi_read_reg_buf(address+HISI_UTI_BASE,(unsigned char *)u8_data,buffer_len))
	{
		return UTI_ERROR_OK;
	}

	return UTI_ERROR_UNKNOWN_ERROR;
}

UTI_SINT32 UTIDriverWriteRegBuffer(UTI_UINT32 address, UTI_UINT8 *u8_data, UTI_UINT32 buffer_len)
{
	if (u8_data == NULL)
	{
		return UTI_ERROR_UNKNOWN_ERROR;
	}
	
	if (0 == hisi_write_reg_buf(address+HISI_UTI_BASE,(unsigned char *)u8_data,buffer_len))
	{
		return UTI_ERROR_OK;
	}

	return UTI_ERROR_UNKNOWN_ERROR;
}

UTI_SINT32 UTIDriverSetBaseAddress(void *address)
{
	return UTI_ERROR_NOT_SUPPORT;
}


void enterLowpowerUTI()
{
	unsigned short	 wValue16=0;

	UTIDriverWriteRegU16(0x812,0x00);
	UTIDriverWriteRegU16(0x810,0x00);// Set Ts direction

	UTIDriverReadRegU16(0x800,&wValue16);	
	UTIDriverWriteRegU16(0x800,wValue16&(~0x08));//close UTI  clock

	UTIDriverReadRegU16(0x800,&wValue16);
	UTIDriverWriteRegU16(0x800,wValue16&(~0x04));//close system clock

	UTIDriverReadRegU16(0x800,&wValue16);
	UTIDriverWriteRegU16(0x800,wValue16&(~0x02));//close PLL clock

	UTIDriverReadRegU16(0x800,&wValue16);
	UTIDriverWriteRegU16(0x800,wValue16&(~0x01));//close OSC clock

}

/*add by guoyuqi 20101011, Used the following code for testing purposes only*/
#if 0 
void exitLowpowerUTI()
{

	unsigned char bValue8=0;

	unsigned short	 wValue16=0;

	unsigned char strMsg[64]={0};

	UTIDriverReadRegU16(0x800,&wValue16);	
	UTIDriverWriteRegU16(0x800,wValue16|(0x01));//open OSC clock
	
	UTIDriverReadRegU16(0x800,&wValue16);	
	UTIDriverWriteRegU16(0x800,wValue16|(0x02));//open PLL clock

	UTIDriverReadRegU16(0x800,&wValue16);
	UTIDriverWriteRegU16( 0x800,wValue16|(0x04));//open system clock

	UTIDriverReadRegU16( 0x800,&wValue16);
	UTIDriverWriteRegU16( 0x800,wValue16|(0x08));//open UTI  clock


	UTIDriverWriteRegU16( 0x812,0x01);
		
	UTIDriverWriteRegU16(0x810,0x224);// Set Ts direction
}

#include <string.h>
#define GET_VAL(data, shift,mask)	((data&mask)>>shift)

static void test_print_buffer(UTI_UINT8 * buffaddr , int bufferlen)
{
	int ii = 0;
	for (ii=0; ii<bufferlen; ii++)
	{
		printf("0x%x ",buffaddr[ii]);
		if((ii%8==0)&&( ii>0))
		{
			printf("\r\n");
		}
	}
	printf("\r\n");
	return;
}
static int  check_data_valid(UTI_UINT8 value8,UTI_UINT16 value16, UTI_UINT32 value32,UTI_UINT8 uReadbuffer[4])
{
	int  bValid = HI_FALSE;
	
	if((value8 ==  GET_VAL(value16,0,0x00ff)) 
		&& (value8 ==  GET_VAL(value32,0,0x000000ff)) 
		&&(value16 ==  GET_VAL(value32,0,0x0000ffff))
		&&(uReadbuffer[0] == GET_VAL(value32,0,0x000000ff))
		&&(uReadbuffer[1] == GET_VAL(value32,8,0x0000ff00))
		&&(uReadbuffer[2] == GET_VAL(value32,16,0x00ff0000))
		&&(uReadbuffer[3] == GET_VAL(value32,24,0xff000000))
		)
		{
			bValid = HI_TRUE;
		}

	return bValid;
}

int cs_hisi_utidriver_test(void)
{
	UTI_UINT8 value8=0,i, jj;
	UTI_UINT16 value16 ;
	UTI_UINT32 value32;
	UTI_UINT32 uAddr ,tmp;
	UTI_SINT32 err = 0;
	UTI_UINT8 uRegVal[4] = {0};
	UTI_UINT8 uReadbuffer[4];		
	
	UTI_UINT8 udrm_register_buffer[256];
	
	const UTI_UINT32 udrm_register_size = 0x30;
	const UTI_UINT8 udrm_register_default_vaule[0x30] =
	{
		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x91, 
		0x95, 0x94, 0xf0, 0x1f, 0xf0, 0x1f, 0xf1, 0x1f, 
		0xff, 0x1f, 0xff, 0x1f, 0xff, 0x1f, 0xff, 0x1f, 
		0xff, 0x1f, 0xff, 0x1f, 0xff, 0x1f, 0xff, 0x1f, 
		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
		0x00, 0x00, 0x00, 0x00, 0x00, 0x92, 0xf2, 0x1f
	};

	uAddr = 0x980;
	// read all register
	memset(udrm_register_buffer, 0x0, sizeof(udrm_register_buffer));
	for (i=0; i<udrm_register_size; i++)
	{
		err = UTIDriverReadRegU8(i+uAddr, &udrm_register_buffer[i]);
		if (err != UTI_ERROR_OK)
		{
			printf("self test read register[0x%x] failed! \n", i);
			continue;
		}
		
		if (udrm_register_buffer[i] != udrm_register_default_vaule[i])
		{
			printf("self test read register[0x%x] error, current is 0x%x, default is 0x%x. \n", i, udrm_register_buffer[i], udrm_register_default_vaule[i]);
		}

	}
	
	if(memcmp(udrm_register_default_vaule,udrm_register_buffer,udrm_register_size) == 0)
	{
		printf("addr 0x%x len 0x%x read successful \r\n",uAddr,udrm_register_size);
	}
	else
	{
		printf("addr 0x%x len 0x%x read fail \r\n",uAddr,udrm_register_size);
	}
	
	memset(udrm_register_buffer, 0x0, sizeof(udrm_register_buffer));	
	
	err = UTIDriverReadRegBuffer(uAddr, udrm_register_buffer,udrm_register_size);
	if (err != UTI_ERROR_OK)
	{
		printf("self test read register[0x%x] failed! \n", i);			
	}
	
	if(memcmp(udrm_register_default_vaule,udrm_register_buffer,udrm_register_size) == 0)
	{
		printf("addr 0x%x len 0x%x read successful \r\n",uAddr,udrm_register_size);
	}
	else
	{
		printf("addr 0x%x len 0x%x read fail \r\n",uAddr,udrm_register_size);
	}
	
	memset(udrm_register_buffer, 0x0, sizeof(udrm_register_buffer));
	for (i=0; i<udrm_register_size/2; i++)
	{
		err = UTIDriverReadRegU16(i*2+uAddr,((UTI_UINT16*)udrm_register_buffer)+i);

		if (err != UTI_ERROR_OK)
		{
			printf("self test read register[0x%x] failed! \n", i);
			continue;
		}
		if (*(((UTI_UINT16*)udrm_register_buffer)+i) != *(((UTI_UINT16*)udrm_register_buffer)+i))
		{
			printf("self test read register[0x%x] error, current is 0x%x, default is 0x%x. \n", i, udrm_register_buffer[i], udrm_register_default_vaule[i]);
		}
	}
	
	if(memcmp(udrm_register_default_vaule,udrm_register_buffer,udrm_register_size) == 0)
	{
		printf("addr 0x%x len 0x%x read successful \r\n",uAddr,udrm_register_size);
	}
	else
	{
		printf("addr 0x%x len 0x%x read fail \r\n",uAddr,udrm_register_size);
	}

	memset(udrm_register_buffer, 0x0, sizeof(udrm_register_buffer));
	for (i=0; i<udrm_register_size/4; i++)
	{
		err = UTIDriverReadRegU32(i*4+uAddr, (((UTI_UINT32*)udrm_register_buffer)+i));

		if (err != UTI_ERROR_OK)
		{
			printf("self test read register[0x%x] failed! \n", i);
			continue;
		}
		
		if (*(((UTI_UINT32*)udrm_register_buffer)+i) != *(((UTI_UINT32*)udrm_register_buffer)+i))
		{
			printf("self test read register[0x%x] error, current is 0x%x, default is 0x%x. \n", i, udrm_register_buffer[i], udrm_register_default_vaule[i]);
		}
		
	}
	
	if(memcmp(udrm_register_default_vaule,udrm_register_buffer,udrm_register_size) == 0)
	{
		printf("addr 0x%x len 0x%x read successful \r\n",uAddr,udrm_register_size);
	}
	else
	{
		printf("addr 0x%x len 0x%x read fail \r\n",uAddr,udrm_register_size);
	}
	
	uAddr = 0x988;
	for(jj=0; jj<4; jj++)
	{
		uAddr = uAddr+ jj;
		UTIDriverReadRegU8(uAddr, &value8);
		printf("addr 0x%x :8: %x\r\n",uAddr, value8);
		
		UTIDriverReadRegU16(uAddr, &value16);
		printf("addr 0x%x :16: %x\r\n",uAddr, value16);
		
		UTIDriverReadRegU32(uAddr,&value32);
		printf("addr 0x%x :32: %x\r\n",uAddr ,value32);
		
		memset(uReadbuffer,0,sizeof(uReadbuffer));
		if (UTIDriverReadRegBuffer(uAddr,uReadbuffer,4))
		{
			printf("error line %d\r\n",__LINE__);
		}
		printf("addr 0x%x \r\n",uAddr);
		test_print_buffer(uReadbuffer,4);

		for(i=0; i<4; i++)
		{
			UTIDriverReadRegU8(uAddr+i, &uRegVal[i]);
			printf("addr 0x%x :8: %x\r\n",uAddr+i, uRegVal[i]);
		}
		
		for(i=0; i<4; i++)
		{
			UTI_UINT16 value16_4[4] ;
			UTIDriverReadRegU16(uAddr+i, &value16_4[i]);
			printf("addr 0x%x :16: %x\r\n",uAddr+i, value16_4[i]);
		}
		
		for(i=0; i<4; i++)
		{
			UTI_UINT32 value32_4[4] ;
			UTIDriverReadRegU32(uAddr+i, &value32_4[i]);
			printf("addr 0x%x :32: %x\r\n",uAddr+i, value32_4[i]);
		}
		
		if(check_data_valid(value8, value16, value32, uReadbuffer))
		{
			printf("addr 0x%x read successful",uAddr);
		}
		else
		{
			printf("addr 0x%x read failed",uAddr);
		}

	}
     printf("\n--------test write  begin---------- \r\n");
	// test write
	{
		uAddr = 0x7a;
		UTI_UINT8 uReadbuffer_bak[4];	

		//recode the reg before write
		if (UTIDriverReadRegBuffer(uAddr,uReadbuffer_bak,4))
		{
			printf("error line %d\r\n",__LINE__);
		}
		
		uRegVal[0] = 0x12;
		uRegVal[1] = 0x34;
		uRegVal[2] = 0x56;
		uRegVal[3] = 0x78;
		if (UTIDriverWriteRegBuffer(uAddr,uRegVal,4))
		{
			printf("error line %d\r\n",__LINE__);
		}

		memset(uReadbuffer,0,sizeof(uReadbuffer));
		if (UTIDriverReadRegBuffer(uAddr,uReadbuffer,4))
		{
			printf("error line %d\r\n",__LINE__);
		}
		printf("addr 0x%x \r\n",uAddr);
		test_print_buffer(uReadbuffer,4);

		UTIDriverReadRegU32(uAddr,&value32);
		printf("====value32:%x\n",value32);
		
		value8 = 0x55;
		UTIDriverWriteRegU8(uAddr,value8);
		value8 = 0;
		UTIDriverReadRegU8(uAddr, &value8);
		printf("addr 0x%x :8: %x\r\n",uAddr, value8);

		value16 = 0x55aa;
		UTIDriverWriteRegU16(uAddr,value16);
		value16 = 0;
		UTIDriverReadRegU16(uAddr, &value16);
		printf("addr 0x%x :8: %x\r\n",uAddr, value16);

		value32 = 0x12345678;
		UTIDriverWriteRegU32(uAddr,value32);
		value32 = 0;
		UTIDriverReadRegU32(uAddr, &value32);
		printf("addr 0x%x :32: %x\r\n",uAddr, value32);
		
		memset(uReadbuffer,0,sizeof(uReadbuffer));
		if (UTIDriverReadRegBuffer(uAddr,uReadbuffer,4))
		{
			printf("error line %d\r\n",__LINE__);
		}
		printf("addr 0x%x \r\n",uAddr);
		test_print_buffer(uReadbuffer,4);
		
		//recover  the reg after write test
		if (UTIDriverWriteRegBuffer(uAddr,uReadbuffer_bak,4))
		{
			printf("recover error line %d\r\n",__LINE__);
		}
		
		memset(uReadbuffer,0,sizeof(uReadbuffer));
		if (UTIDriverReadRegBuffer(uAddr,uReadbuffer,4))
		{
			printf("error line %d\r\n",__LINE__);
		}
	}//test write

	printf("Test Finished\n");
	return 0;
}


int main(int argc, char **argv)
{

	unsigned char bValue8=0;
	unsigned short	 wValue16=0;
	
	HI_UNF_SMI_Init(16);
	HI_UNF_SMI_Open();
	

	system("himd.l 0x30000000");

	UTIDriverReadRegU8(0x01, &bValue8);		
	printf("bValue8 = 0x%x\n", bValue8);
	UTIDriverWriteRegU8(0x01, 0x20);//POWER

	UTIDriverReadRegU8(0x01, &bValue8);
	printf("bValue8 = 0x%x\n", bValue8);
	UTIDriverWriteRegU8(0x01, bValue8|0x01);//POWER
	
	UTIDriverReadRegU8(0x01, &bValue8);	
	printf("bValue8 = 0x%x\n", bValue8);	

	
	system("himd.l 0x30000980");

	cs_hisi_utidriver_test();
	
	HI_UNF_SMI_Close();
	HI_UNF_SMI_DeInit();

	return 0;
}

#endif
