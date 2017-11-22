//RDA FM 5807X drv
//Version 4.0

//#include <linux/moduleparam.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <errno.h>
#include <string.h>

#include <sys/time.h>

#include "RDAFM_5807X_drv_V4.0.h"
#include "hi_unf_i2c.h"
//#include "hi_drv_fm.h"
#include "parse_rds.h"
//#define READ	        1   
//#define WRITE	        0   
                            
#define ADRW 	        0x20
#define ADRR 	        0x21



static HI_U32 g_I2cNum = 0;
/***************************************************
RDA5807X interfaces
****************************************************/
HI_VOID RDA5807X_PowerOnReset(HI_VOID);
HI_VOID RDA5807X_PowerOffProc(HI_VOID);

HI_VOID RDA5807X_SetMute(HI_BOOL mute);
HI_U16 RDA5807X_FreqToChan(HI_U16 frequency);
HI_VOID RDA5807X_SetFreq( HI_S16 curf );
HI_BOOL RDA5807X_ValidStop(HI_S16 freq);
HI_U8 RDA5807X_GetSigLvl( HI_S16 curf );
HI_VOID RDA5807X_SetVolumeLevel(HI_U8 level);
HI_BOOL RDA5807X_Intialization(HI_VOID);
HI_U16 RDA5807X_ChanToFreq(HI_U16 chan);
HI_U16 gChipID = 0;
HI_U16 RDA5807X_REGW[6];


HI_U16 RDA5807N_initialization_reg[]={
    0x0002,
    0xC001,
    0xC009,
#if defined(_FM_STEP_50K_)
    0x0012,
#else
    0x0010,
#endif
    0x0400,
    0xC6EF, //05h
    0x6000,
    0x4212,
    0x0000,
    0x0000,
    0x0000,  //0x0ah
    0x0000,
    0x0000,
    0x0000,
    0x0000,
    0x0000,
    0x0000,  //0x10h
    0x0019,
    0x2a11,
    0xB042,  
    0x2A11,  
    0xb831,  //0x15h 
    0xc000,
    0x2a91,
    0x9400,
    0x00a8,
    0xc400,  //0x1ah
    0xF7cF,   
    0x2414,  //0x1ch
    0x806F, 
    0x4608,
    0x0086,
    0x0661, //0x20H
    0x0000,
    0x109E,
    0x23C8,
    0x0406,
    0x0E1C, //0x25H
    0xE105,
    0xBB6C,
    0x2BEC,
};


HI_VOID RDAFM_SetI2cNum(HI_U32 I2cNum)
{
	g_I2cNum = I2cNum;
}


HI_VOID RDAFM_I2C_WriteReg(HI_U8 reg, HI_U16 data)
{
	HI_S32 ret;
	HI_U8 Data[2] = {0};
	
		Data[0] = data>>8;
		Data[1] = data&0x00FF;
		
		ret = HI_UNF_I2C_Write(g_I2cNum, FM_DEV_ADDR, reg, 1, Data,2);
		if(ret)
		{
			HI_ERR_FM("HI_UNF_I2C_Write i2c error,ret:0x%x\n",ret);
		}

	return ;
}

HI_VOID RDAFM_I2C_ReadReg(HI_U8 reg, HI_U16* data)
{
	HI_S32 ret;
	HI_U8 Data[2] = {0};
	
    ret = HI_UNF_I2C_Read(g_I2cNum, FM_DEV_ADDR, reg, 1, Data, 2);
    if(ret)
    {
        HI_ERR_FM("HI_UNF_I2C_Write i2c error,ret:0x%x\n",ret);
    }
    *data = (Data[0]<<8) | Data[1];

	return ;
    

}



/**
 * @brief RDA5807X power off function
 * @author RDA Ri'an Zeng
 * @date 2008-11-05
 * @param HI_VOID
 * @return HI_VOID
 * @retval
 */
HI_VOID  RDA5807X_PowerOffProc(HI_VOID)
{
	RDA5807X_REGW[2] &= (~1);
	RDAFM_I2C_WriteReg(0x02, RDA5807X_REGW[2]);

}






/**
 * @brief Set RDA5807X into mute mode
 * @author RDA Ri'an Zeng
 * @date 2008-11-05
 * @param HI_BOOL mute: if mute is true,then set mute; if mute is false,then set no mute
 * @return HI_VOID
 * @retval
 */
HI_VOID RDA5807X_SetMute(HI_BOOL mute)
{
	if(mute)
	 	RDA5807X_REGW[2] &=  ~(1<<14);
	else
		RDA5807X_REGW[2] |=	1<<14;

	RDAFM_I2C_WriteReg(0x02, RDA5807X_REGW[2]);
    usleep(50*1000);    //Dealy 50 ms
}




/**
 * @brief Cover the frequency to channel value
 * @author RDA Ri'an Zeng
 * @date 2008-11-05
 * @param HI_U16 frequency:covered frequency
 * @return HI_U16: channel value
 * @retval
 */
HI_U16 RDA5807X_FreqToChan(HI_U16 frequency) 
{
	HI_U8 channelSpacing = 0;
	HI_U16 bottomOfBand = 0;
	HI_U16 channel;

	if ((RDA5807X_REGW[3] & 0x000c) == 0x0000) 
		bottomOfBand = 8700;
	else if ((RDA5807X_REGW[3] & 0x000c) == 0x0004)	
		bottomOfBand = 7600;
	else if ((RDA5807X_REGW[3] & 0x000c) == 0x0008)	
		bottomOfBand = 7600;	
	if ((RDA5807X_REGW[3] & 0x0003) == 0x0000) 
		channelSpacing = 10;
	else if ((RDA5807X_REGW[3] & 0x0003) == 0x0001) 
		channelSpacing = 10;
	else if ((RDA5807X_REGW[3] & 0x0003) == 0x0002) 
		channelSpacing = 5;
	channel = (frequency - bottomOfBand) / channelSpacing;
	return (channel);
}




HI_U16 RDA5807X_ChanToFreq(HI_U16 chan) 
{
	HI_U8 channelSpacing = 0;
	HI_U16 bottomOfBand = 0;
	HI_U16 freq;

	if ((RDA5807X_REGW[3] & 0x000c) == 0x0000) 
		bottomOfBand = 8700;
	else if ((RDA5807X_REGW[3] & 0x000c) == 0x0004)	
		bottomOfBand = 7600;
	else if ((RDA5807X_REGW[3] & 0x000c) == 0x0008)	
		bottomOfBand = 7600;	
	if ((RDA5807X_REGW[3] & 0x0003) == 0x0000) 
		channelSpacing = 10;
	else if ((RDA5807X_REGW[3] & 0x0003) == 0x0001) 
		channelSpacing = 10;
	else if ((RDA5807X_REGW[3] & 0x0003) == 0x0002) 
		channelSpacing = 5;
	freq = bottomOfBand + chan * channelSpacing;

	return (freq);
}




/**
 * @brief Set frequency function
 * @author RDA Ri'an Zeng
 * @date 2008-11-05
 * @param HI_S16 curFreq:frequency value
 * @return HI_VOID
 * @retval
 */
HI_VOID RDA5807X_SetFreq( HI_S16 curFreq )
{
	HI_U16 curChan;
/*
	HI_U16 regValue = 0;

	if(gChipID==0x5808)
	{
		if(curFreq<=9500)
		{
			regValue = 0x8831; 
			RDAFM_write_data(0x15, &regValue , 1);
		}
		else
		{
			regValue = 0xf831; 
			RDAFM_write_data(0x15, &regValue , 1);	
		}
	}

    msleep(20); 
*/
	curChan=RDA5807X_FreqToChan(curFreq);
	printf("RDA5807X_SetFreq curFreq %d,curChan %d\n",curFreq,curChan);
    RDA5807X_REGW[3]=((curChan<<6) | 0x0010 | (RDA5807X_REGW[3]&0x000f));	//set tune bit

	RDAFM_I2C_WriteReg(0x03, RDA5807X_REGW[3]);
	usleep(50*1000);     //Delay
	StartRdsParse();
}





/**
 * @brief Station judge for auto search
 * @In auto search mode,uses this function to judge the frequency if has a station
 * @author RDA Ri'an Zeng
 * @date 2008-11-05
 * @param HI_S16 freq:frequency value
 * @return HI_BOOL: if return true,the frequency has a true station;otherwise doesn't have a station
 * @retval
 */
HI_BOOL RDA5807X_ValidStop(HI_S16 freq)
{
	//HI_U16 regA = 0;
	HI_U16 regB = 0;		
	HI_U8 falseStation = 0;
	//HI_U8 i=0;
	HI_U16 curChan;
/*
	HI_U16 regValue = 0;

	if(gChipID==0x5808)
	{
		if(freq<=9500)
		{
			regValue = 0x8831; 
			RDAFM_write_data(0x15, &regValue , 1);
		}
		else
		{
			regValue = 0xf831; 
			RDAFM_write_data(0x15, &regValue , 1);	
		}
	}

    msleep(20); 
*/
	curChan=RDA5807X_FreqToChan(freq);
	
    RDA5807X_REGW[3]=((curChan<<6) | 0x0010 | (RDA5807X_REGW[3]&0x000f));	//set tune bit

	RDAFM_I2C_WriteReg(0x03, RDA5807X_REGW[3]);
	
	usleep(50*1000);    //Dealy 25 ms


    RDAFM_I2C_ReadReg(0x0B, &regB);	

	//check FM_TURE
	if((regB & 0x0100)==0) falseStation=1;

	if(freq==9600) falseStation=1;
		
	if (falseStation==1)
		return 0;   
	else 
		return 1;
}





/**
 * @brief Get the signal level(RSSI) of the current frequency
 * @author RDA Ri'an Zeng
 * @date 2008-11-05
 * @param HI_S16 curf:frequency value
 * @return HI_U8: the signal level(RSSI)
 * @retval
 */
HI_U8 RDA5807X_GetSigLvl( HI_S16 curf )
{    
    HI_U16 regB = 0;	

    RDAFM_I2C_ReadReg(0x0B, &regB);
	usleep(50*1000);    //Dealy 50 ms
    return  (regB >> 9);  /*·µ»Ørssi*/
}





/**
 * @brief Set FM volume
 * @It has better use the system volume operation to replace this function
 * @author RDA Ri'an Zeng
 * @date 2008-11-05
 * @param HI_U8 level: volume value
 * @return HI_VOID
 * @retval
 */
HI_VOID RDA5807X_SetVolumeLevel(HI_U8 level)
{
    RDA5807X_REGW[5] = (( RDA5807X_REGW[5] & 0xfff0 ) | (level & 0x0f)); 

	RDAFM_I2C_WriteReg(0x05, RDA5807X_REGW[5]);
    usleep(50*1000);    //Dealy 50 ms
}





/**
 * @brief Initialize RDA5807X
 * @author RDA Ri'an Zeng
 * @date 2008-11-05
 * @param HI_VOID
 * @return HI_BOOL:if true,the operation is successful;otherwise is failed
 * @retval
 */
HI_BOOL  RDA5807X_Intialization(HI_VOID)
{
	HI_U16 regE = 0;
    HI_U8 i = 0;
	printf("RDA5807X_Intialization\n");

	RDAFM_I2C_WriteReg(0x02, RDA5807X_REGW[0]);
	usleep(50*1000);

	RDAFM_I2C_ReadReg(0x0E, &regE);
	printf("RDA5807X_Intialization read chid=0x%x\n", regE);
	usleep(50*1000);

    gChipID = regE;

    if (gChipID == 0x5808)  //RDA5807N
    {
        for (i=0;i<6;i++)
            RDA5807X_REGW[i] = RDA5807N_initialization_reg[i];
     
        RDAFM_I2C_WriteReg(0x02, RDA5807X_REGW[1]);
        usleep(600*1000); 

        for  (i=2;i<((sizeof(RDA5807N_initialization_reg))/(sizeof(RDA5807N_initialization_reg[0])));i++)
	        RDAFM_I2C_WriteReg(i, RDA5807N_initialization_reg[i]);
    }

	usleep(50*1000);         //Dealy 50 ms

    return 1;
}




HI_VOID RDA507X_Test(HI_VOID)
{
    RDA5807X_Intialization();
    RDA5807X_SetFreq(9390);
}


HI_VOID RDA5807X_AutoSearchStation(HI_VOID)
{
    HI_U8 j=0;
	HI_U16 freq;
    HI_U16 stations[40] = {0};
    for (freq=8750; freq<=10800; freq+=10)
    {
        if (RDA5807X_ValidStop(freq))
        {
            stations[j] = freq;
            j++;
            printf("Found station : %d", freq);
        }
    }
    RDA5807X_SetFreq(stations[0]);
}

