//RDA FM 5807X drv
//Version 4.0
#include <linux/device.h>
#include <linux/module.h>
#include <linux/moduleparam.h>
#include <linux/fs.h>
#include <asm/uaccess.h>
#include <asm/io.h>
#include <asm/delay.h>
#include <linux/poll.h>
#include <mach/hardware.h>
#include <linux/interrupt.h>
#include <linux/delay.h>
#include <linux/sched.h>
#include <linux/wait.h>

#include "RDAFM_5807X_drv_V4.0.h"
#include "hi_drv_i2c.h"
#include "hi_drv_fm.h"

#define READ	        1   
#define WRITE	        0   
                            
#define ADRW 	        0x20
#define ADRR 	        0x21




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
HI_U8 RDA5807X_REGW[10];


HI_U8 RDA5807N_initialization_reg[]={
    0xC0, 0x01,
#if defined(_FM_STEP_50K_)
    0x00,0x12,
#else
    0x00,0x10,
#endif
    0x04, 0x00,
    0xC6, 0xEF, //05h
    0x60, 0x00,
    0x42, 0x12,
    0x00, 0x00,
    0x00, 0x00,
    0x00, 0x00,  //0x0ah
    0x00, 0x00,
    0x00, 0x00,
    0x00, 0x00,
    0x00, 0x00,
    0x00, 0x00,
    0x00, 0x00,  //0x10h
    0x00, 0x19,
    0x2a, 0x11,
    0xB0, 0x42,  
    0x2A, 0x11,  
    0xb8, 0x31,  //0x15h 
    0xc0, 0x00,
    0x2a, 0x91,
    0x94, 0x00,
    0x00, 0xa8,
    0xc4, 0x00,  //0x1ah
    0xF7, 0xcF,   
    0x24, 0x14,  //0x1ch
    0x80, 0x6F, 
    0x46, 0x08,
    0x00, 0x86,
    0x06, 0x61, //0x20H
    0x00, 0x00,
    0x10, 0x9E,
    0x23, 0xC8,
    0x04, 0x06,
    0x0E, 0x1C, //0x25H
    0xE1, 0x05,
    0xBB, 0x6C,
    0x2B, 0xEC,
};




HI_VOID RDAFM_I2C_WriteOrderly(HI_U8* data, HI_U8 cnt)
{
	HI_U32 i;
	HI_S32 ret;
	HI_U32 StartAddr = 0x02;
	HI_U8 Data[2] = {0};
	
	for(i=0;i<cnt;i++)
	{
		Data[0] = data[i];
		Data[1] = data[i+1];
		
		ret = HI_DRV_I2C_Write(FM_I2C_NUM, FM_DEV_ADDR, StartAddr+i/2, 1, Data,2);
		if(ret)
		{
			HI_ERR_FM("HI_DRV_I2C_Write i2c error,ret:0x%x\n",ret);
		}
		i++;
	}

	return ;
}





HI_VOID RDAFM_I2C_ReadOrderly(HI_U8* data, HI_U8 cnt)
{
    HI_U32 i;
	HI_S32 ret;
	HI_U32 StartAddr = 0x0A;
	HI_U8 Data[2] = {0};
	
	for(i=0;i<cnt;i++)
	{
		ret = HI_DRV_I2C_Read(FM_I2C_NUM, FM_DEV_ADDR, StartAddr+i/2, 1, Data, 2);
		if(ret)
		{
			HI_ERR_FM("HI_DRV_I2C_Write i2c error,ret:0x%x\n",ret);
		}
		data[i] = Data[0];
		data[i+1] = Data[1];
		i++;
	}

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
	RDA5807X_REGW[1] &= (~1);
	RDAFM_I2C_WriteOrderly(&(RDA5807X_REGW[0]), 2);

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
	 	RDA5807X_REGW[0] &=  ~(1<<6);
	else
		RDA5807X_REGW[0] |=	1<<6;

	RDAFM_I2C_WriteOrderly(&(RDA5807X_REGW[0]), 2);
    mdelay(50);    //Dealy 50 ms
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

	if ((RDA5807X_REGW[3] & 0x0c) == 0x00) 
		bottomOfBand = 8700;
	else if ((RDA5807X_REGW[3] & 0x0c) == 0x04)	
		bottomOfBand = 7600;
	else if ((RDA5807X_REGW[3] & 0x0c) == 0x08)	
		bottomOfBand = 7600;	
	if ((RDA5807X_REGW[3] & 0x03) == 0x00) 
		channelSpacing = 10;
	else if ((RDA5807X_REGW[3] & 0x03) == 0x01) 
		channelSpacing = 10;
	else if ((RDA5807X_REGW[3] & 0x03) == 0x02) 
		channelSpacing = 5;
	channel = (frequency - bottomOfBand) / channelSpacing;
	return (channel);
}




HI_U16 RDA5807X_ChanToFreq(HI_U16 chan) 
{
	HI_U8 channelSpacing = 0;
	HI_U16 bottomOfBand = 0;
	HI_U16 freq;

	if ((RDA5807X_REGW[3] & 0x0c) == 0x00) 
		bottomOfBand = 8700;
	else if ((RDA5807X_REGW[3] & 0x0c) == 0x04)	
		bottomOfBand = 7600;
	else if ((RDA5807X_REGW[3] & 0x0c) == 0x08)	
		bottomOfBand = 7600;	
	if ((RDA5807X_REGW[3] & 0x03) == 0x00) 
		channelSpacing = 10;
	else if ((RDA5807X_REGW[3] & 0x03) == 0x01) 
		channelSpacing = 10;
	else if ((RDA5807X_REGW[3] & 0x03) == 0x02) 
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

    mdelay(20); 
*/
	curChan=RDA5807X_FreqToChan(curFreq);
	printk("RDA5807X_SetFreq curFreq %d,curChan %d\n",curFreq,curChan);
	//SetNoMute
	RDA5807X_REGW[0] |=	1<<7;
	RDA5807X_REGW[2]=curChan>>2;
	RDA5807X_REGW[3]=(((curChan&0x0003)<<6)|0x10) | (RDA5807X_REGW[3]&0x0f);	//set tune bit

	RDAFM_I2C_WriteOrderly(&(RDA5807X_REGW[0]), 4);
	mdelay(50);     //Delay
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
	HI_U8 RDA5807X_reg_data[4]={0};	
	HI_U8 falseStation = 0;
	HI_U8 i=0;
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

    mdelay(20); 
*/
	curChan=RDA5807X_FreqToChan(freq);
	
	//SetNoMute
	RDA5807X_REGW[0] |=	1<<7;
	
	RDA5807X_reg_data[0]=RDA5807X_REGW[0];
	RDA5807X_reg_data[1]=RDA5807X_REGW[1];
	RDA5807X_reg_data[2]=curChan>>2;
	RDA5807X_reg_data[3]=(((curChan&0x0003)<<6)|0x10) | (RDA5807X_REGW[3]&0x0f);
	RDAFM_I2C_WriteOrderly(&(RDA5807X_reg_data[0]), 4);
	
	mdelay(50);    //Dealy 25 ms

    if (0x5808 == gChipID)
        RDAFM_I2C_ReadOrderly(&(RDA5807X_reg_data[0]), 4);	
    else
    {
    	do
    	{
    		i++;
    		if(i>5) return 0; 
    
    		mdelay(30);
    		//read REG0A&0B	
    		RDAFM_I2C_ReadOrderly(&(RDA5807X_reg_data[0]), 4);	
    	}while((RDA5807X_reg_data[0]&0x40)==0);
     }
	
	//check FM_TURE
	if((RDA5807X_reg_data[2] &0x01)==0) falseStation=1;

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
    HI_U8 RDA5807X_reg_data[4]={0};	

    RDAFM_I2C_ReadOrderly(&(RDA5807X_reg_data[0]), 4);
	mdelay(50);    //Dealy 50 ms
    return  (RDA5807X_reg_data[2]>>1);  /*·µ»Ørssi*/
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
    HI_U8 RDA5807X_reg_data[8];
    HI_U8 i = 0;

    for (i=0;i<8;i++)
        RDA5807X_reg_data[i] = RDA5807X_REGW[i];

    RDA5807X_reg_data[7]=(( RDA5807X_REGW[7] & 0xf0 ) | (level & 0x0f)); 
    
    RDA5807X_reg_data[3] &= (~(0x10));

	RDAFM_I2C_WriteOrderly(&(RDA5807X_reg_data[0]), 8);
    mdelay(50);    //Dealy 50 ms
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
	HI_U8 RDA5807X_REGR[10]={0x0};
    HI_U8 i = 0;
	printk("RDA5807X_Intialization\n");
    RDA5807X_REGW[0] = 0x00;
    RDA5807X_REGW[1] = 0x02;

	RDAFM_I2C_WriteOrderly((HI_U8 *)&RDA5807X_REGW[0], 2);
	mdelay(50);

	RDAFM_I2C_ReadOrderly((HI_U8 *)&RDA5807X_REGR[0], 10);
	mdelay(50);

    gChipID = RDA5807X_REGR[8];
    gChipID = ((gChipID<<8) | RDA5807X_REGR[9]);
	printk("chipid 0x%x\n",gChipID);
    if (gChipID == 0x5808)  //RDA5807N
    {
        for (i=0;i<8;i++)
            RDA5807X_REGW[i] = RDA5807N_initialization_reg[i];
     
        RDAFM_I2C_WriteOrderly((HI_U8 *)&RDA5807N_initialization_reg[0], 2);
        mdelay(600); 
	    RDAFM_I2C_WriteOrderly((HI_U8 *)&RDA5807N_initialization_reg[0], sizeof(RDA5807N_initialization_reg));
    }

	mdelay(50);         //Dealy 50 ms

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
            printk("Found station : %d", freq);
        }
    }
    
}

