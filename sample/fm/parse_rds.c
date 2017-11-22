/*********************************************************************************
*
*  Copyright (C) 2014 Hisilicon Technologies Co., Ltd.  All rights reserved. 
*
*  This program is confidential and proprietary to Hisilicon Technologies Co., Ltd.
*  (Hisilicon), and may not be copied, reproduced, modified, disclosed to
*  others, published or used, in whole or in part, without the express prior
*  written permission of Hisilicon.
*
***********************************************************************************
  File Name	: parse_rds.c
  Version		: Initial Draft
  Author		: Hisilicon multimedia software group
  Created		: 
  Description	:
  History		:
  1.Date		: 
    Author		: 
    Modification	: Created file

*******************************************************************************/

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <errno.h>
#include <string.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <sys/time.h>
#include <sys/times.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <string.h>
#include <pthread.h>

#include <assert.h>
#include <linux/fb.h>
#include <sys/mman.h>
#include <sys/ioctl.h>
#include <fcntl.h>
#include <unistd.h>

//#include "drv_sys_ext.h"
//#include "hi_drv_fm.h"
//#include "drv_stat_ext.h"i
#include "hi_common.h"
#include "parse_rds.h"
#include "RDAFM_5807X_drv_V4.0.h"


#define        RDS_GLOBE


RDS_TASK_STATUS g_rds_status;
RT_INFO	RT;
HI_U8 m_rds_flag;


HI_U8  m_ptyDisplay;             // Displayed Program Type

// RDS Radio Text
HI_U8 m_rtDisplay[64];   // Displayed Radio Text
HI_U8 m_rtTmp0[64];      // Temporary Radio Text (high probability)
HI_U8   m_rtTmp1[64];      // Temporary radio text (low probability)
HI_U8   m_rtCnt[64];       // Hit count of high probabiltiy radio text
HI_U8   m_rtFlag;          // Radio Text A/B flag
HI_U8   m_rtFlagValid;     // Radio Text A/B flag is valid

	// RDS Program Service
HI_U8   m_psDisplay[8];    // Displayed Program Service text
HI_U8   m_psTmp0[8];       // Temporary PS text (high probability)
HI_U8   m_psTmp1[8];       // Temporary PS text (low probability)
HI_U8   m_psCnt[8];        // Hit count of high probability PS text

	// RDS UTC Service
UTC_struct UTC;

	

static const HI_U8 error_count[4] = {0,2,5,6};
static const HI_U8 rdsBlerMax[4] = {2,1,2,2};
static HI_BOOL	g_RdsStop = HI_TRUE;
static pthread_t      g_pRdsTask;

///////////////////////////////////////////////////
HI_U32 RDS_GetSysTime(HI_VOID)
{
    HI_U32   SysTime = 0;

	HI_SYS_GetTimeStampMs(&SysTime);
	
    return SysTime;
}


HI_U8 RdsSyn(HI_VOID)
{
    HI_U16 rdss = 0,rdsr = 0;//error_flag;
    HI_U16 regA = 0;

    RDAFM_I2C_ReadReg(0x0A, &regA);
    rdss = ( regA >> 12 ) & 0x01;
    rdsr = ( regA >> 15 ) & 0x01;
//	printf("reg0A 0x%x\n",regA);
    return  (rdss&&rdsr); 
} 

HI_VOID RDS_T (HI_VOID)
{  
    HI_U16 rds_data[4];
    
    if(RdsSyn())
    {
        RDAFM_I2C_ReadReg(0x0C,&rds_data[0]); 
        RDAFM_I2C_ReadReg(0x0D,&rds_data[1]); 
        RDAFM_I2C_ReadReg(0x0E,&rds_data[2]); 
        RDAFM_I2C_ReadReg(0x0F,&rds_data[3]);
        UpdateRDSText(rds_data);
    }
}


HI_U8  Error_Check(HI_U8  block)
{
    HI_U8 error_num = 0;
    HI_U16 reg = 0;

    switch(block)
    {
        case BLOCK_A:
            RDAFM_I2C_ReadReg(0x0B, &reg);
            error_num = ( reg >> 2 ) & 0x03;
        break;

        case  BLOCK_B:
            RDAFM_I2C_ReadReg(0x0B, &reg);
            error_num = reg & 0x03;
        break;

        case  BLOCK_C:
            RDAFM_I2C_ReadReg(0x10, &reg);
            error_num = ( reg >> 14 ) & 0x03;
        break;

        case  BLOCK_D:
            RDAFM_I2C_ReadReg(0x10, &reg);
            error_num = ( reg >> 12 ) & 0x03;
        break;

        default:
            break;
    }
    return error_num;
}

//////////////////////////////////////////////////////////////////////
// Construction/Destruction
//////////////////////////////////////////////////////////////////////

HI_U32 div_val(HI_U64 val1,HI_U32 val2)
{
	HI_U64 tmp=0;

	tmp = val1;
	//do_div(tmp, val2);
	return (HI_U32)tmp;
}

#if 0
HI_VOID UTCProcess(HI_U16 *group)
{
    HI_U64 MJD;
	HI_U64 TMP;
    HI_U32 Y,M,D,WD,WN;
    HI_U32  WY,W;
    HI_U8 K;
    HI_U8 Hour,Min;
    HI_U8 a,b,c,d;

    a = Error_Check(BLOCK_A);
    b = Error_Check(BLOCK_B);
    c = Error_Check(BLOCK_C);
    d = Error_Check(BLOCK_D); 
	printf("abcd %d,%d,%d,%d\n",a,b,c,d);
	printf("group abcd %d,%d,%d,%d\n",group[BLOCK_A],group[BLOCK_B],group[BLOCK_C],group[BLOCK_D]);
    if((a <= rdsBlerMax[0]) && (b <= rdsBlerMax[1]) && (c <= rdsBlerMax[2]) && (d <= rdsBlerMax[3]) 
        && ((b+c+d) <= rdsBlerMax[1]))
        
    {

	MJD = (HI_U64)((group[BLOCK_B]&0x0003) <<15) + (HI_U32)((group[BLOCK_C]&0xFFFE)>>1);
      //  Y = ((HI_FLOAT) ((HI_FLOAT)MJD - 15078.2 )) / 365.25 ;

	//	Y = (MJD*20 - 301564 ) / 7305 ;
	  Y = div_val(MJD*20 - 301564,7305);
     //   M = (HI_U32) ((HI_FLOAT)((HI_FLOAT)MJD - 14956.1 - ((HI_U32)(Y*365.25))) / 30.6001);

	//	M = (MJD*100 - 1495610 - (Y*36525)) / 3060;

		M = div_val(MJD*100 - 1495610 - Y*36525,3060);
     //   D = MJD - 14956 - (HI_U32)(Y * 365.25) - (HI_U32)(M * 30.6001);
		D = MJD*100 - 14956*100 - (HI_U32)(Y * 36525) - (HI_U32)(M * 3060);
		
        if (15==M || 14==M)
            K=1;
        else
            K=0;

        Y+=K;
        M=M-1-K*12;
		
		TMP = (MJD+2)/7;
		
    //    WD= (HI_U32)( (MJD+3)-7*TMP );
#if 1
        W = (MJD*100-214464*7)/7;
   //     WY = ((HI_FLOAT)W*28/1461) - 0.0079;
   //     WN = W - ((HI_U32)(((HI_FLOAT)WY*1461/28)+0.41) );

		
        Y += 1900;
        Hour=((group[BLOCK_C]&0x01) << 4 ) + ((group[BLOCK_D]&0xF000) >> 12);
        Min =(group[BLOCK_D]&0x0FC0)>>6;
#endif
		printf("UTC YEAR %d\n",Y);
		
		printf("UTC Month %d\n",M);
		printf("UTC Day %d\n",D);
		printf("UTC Weekday %d\n",WD);
		printf("UTC Hour %d\n",Hour);
		printf("UTC Min %d\n",Min);
		
		
#if 1		
        UTC.year=(HI_U32)Y;
        UTC.month=(HI_U32)M;
        UTC.day=(HI_U32)D;
        UTC.weekday=(HI_U32)WD;
      //  UTC.weeknumbers=(HI_U32)WN;
        UTC.hour=(HI_U32)Hour;
        UTC.minutes=(HI_U32)Min;
		
        /*if(!(group[BLOCK_D]&0x0020))
        UTC.local_time_difference=group[BLOCK_D]&0x001F;
        else
        UTC.local_time_difference =0-(group[BLOCK_D]&0x001F);
        */
#endif        
        UTC.local_time_difference = group[BLOCK_D]&0x003F;
        if((UTC.day > 31)||(UTC.month > 12)||(UTC.year > 2050))
        {
            return;
        }
        else
        {
            m_rds_flag |= UTCTIME;
            m_rds_flag |= UTCDATA;
        }
    }
}
#endif
#if 1
HI_VOID UTCProcess(HI_U16 *group)
{
    HI_U64 MJD;
    HI_U32 Y,M,D,WD,WN;
    HI_U32  WY,W;
    HI_U8 K;
    HI_U8 Hour,Min;
    HI_U8 a,b,c,d;

    a = Error_Check(BLOCK_A);
    b = Error_Check(BLOCK_B);
    c = Error_Check(BLOCK_C);
    d = Error_Check(BLOCK_D); 

    if((a <= rdsBlerMax[0]) && (b <= rdsBlerMax[1]) && (c <= rdsBlerMax[2]) && (d <= rdsBlerMax[3]) 
        && ((b+c+d) <= rdsBlerMax[1]))
        
    {
        MJD = (HI_U64)((group[BLOCK_B]&0x0003) <<15) + (HI_U32)((group[BLOCK_C]&0xFFFE)>>1);
        Y = ((HI_FLOAT) ((HI_FLOAT)MJD - 15078.2 )) / 365.25 ;
        M = (HI_U32) ((HI_FLOAT)((HI_FLOAT)MJD - 14956.1 - ((HI_U32)(Y*365.25))) / 30.6001);
        D = MJD - 14956 - (HI_U32)(Y * 365.25) - (HI_U32)(M * 30.6001);
		
        if (15==M || 14==M)
            K=1;
        else
            K=0;

        Y+=K;
        M=M-1-K*12;

        WD= ( (MJD+2)%7 )+1;

        W = ((HI_FLOAT) MJD/7)-2144.64;
        WY = ((HI_FLOAT)W*28/1461) - 0.0079;
        WN = W - ((HI_U32)(((HI_FLOAT)WY*1461/28)+0.41) );

		
        Y += 1900;
        Hour=((group[BLOCK_C]&0x01) << 4 ) + ((group[BLOCK_D]&0xF000) >> 12);
        Min =(group[BLOCK_D]&0x0FC0)>>6;
		
        UTC.year=(HI_U32)Y;
        UTC.month=(HI_U32)M;
        UTC.day=(HI_U32)D;
        UTC.weekday=(HI_U32)WD;
        UTC.weeknumbers=(HI_U32)WN;
        UTC.hour=(HI_U32)Hour;
        UTC.minutes=(HI_U32)Min;
		
        /*if(!(group[BLOCK_D]&0x0020))
        UTC.local_time_difference=group[BLOCK_D]&0x001F;
        else
        UTC.local_time_difference =0-(group[BLOCK_D]&0x001F);
        */
        
        UTC.local_time_difference = group[BLOCK_D]&0x003F;
        if((UTC.day > 31)||(UTC.month > 12)||(UTC.year > 2050))
        {
            return;
        }
        else
        {
            m_rds_flag |= UTCTIME;
            m_rds_flag |= UTCDATA;
        }
    }
}
#endif

//////////////////////////////////////////////
HI_VOID UpdateRDSText(HI_U16* group)
{
    HI_U8 group_type;      // bits 4:1 = type,  bit 0 = version
    HI_U8 addr;
    HI_U8 errorFlags = 0;
    HI_U8 abflag;
    
    if(Error_Check(BLOCK_B) > rdsBlerMax[1])
        return;

    group_type = group[BLOCK_B] >> 11;  // upper five bits are the group type 
    //and version
    // update pty code.  
    update_pty((group[BLOCK_B]>>5) & 0x1f);  // gdc:  fix this so all 16 bits 
    //are passed and other bits are also updated here?
    //printf("group_type %d\n",group_type);
    switch (group_type) 
    {
        case RDS_TYPE_0A:
            addr = (group[BLOCK_B]&0x3)*2;
            if(Error_Check(BLOCK_D) < rdsBlerMax[3])
            {
                update_ps(addr+0, group[BLOCK_D] >> 8);
                update_ps(addr+1, group[BLOCK_D] & 0xff);
            }
            break;

        case RDS_TYPE_0B:
            addr = (group[BLOCK_B]&0x3)*2;
            if(Error_Check(BLOCK_D) < rdsBlerMax[3])
            {
                update_ps(addr+0, group[BLOCK_D] >> 8  );
                update_ps(addr+1, group[BLOCK_D] & 0xff);
            }
            break;

        case RDS_TYPE_2A:
            addr = (group[BLOCK_B] & 0xf) * 4;
            abflag = (group[BLOCK_B] & 0x0010) >> 4;
            update_rt(abflag, 4, addr, (HI_U8*)&(group[BLOCK_C]), errorFlags);
            break;

        case RDS_TYPE_2B:
            addr = (group[BLOCK_B] & 0xf) * 2;
            abflag = (group[BLOCK_B] & 0x0010) >> 4;
            // The last 32 bytes are unused in this format
            m_rtTmp0[32]    = 0x0d;
            m_rtTmp1[32]    = 0x0d;
            m_rtCnt[32]     = RT_VALIDATE_LIMIT;
            update_rt(abflag, 2, addr, (HI_U8*)&(group[BLOCK_C]), errorFlags);
            break;

        case RDS_TYPE_4A:
            UTCProcess(group);
            break;      

        default:
            break;                
    }
}

HI_VOID update_pty(HI_U8 current_pty)
{
    static HI_U8 rds_pty_validate_count = 0;
    static HI_U8 rds_pty_nonvalidated = 0;
	HI_U8 str[20] = {0};
    // if the pty value is the same for a certain number of times, update
    // a validated pty variable
    if (rds_pty_nonvalidated != current_pty)
    {
        rds_pty_nonvalidated =  current_pty;
        rds_pty_validate_count = 1;
    }
    else
    /**一旦显示与当前不同开始重新计数****/
    {
        rds_pty_validate_count++;
    }

	//printf("rds_pty_validate_count %d current_pty %d rds_pty_nonvalidated %d\n",rds_pty_validate_count,current_pty,rds_pty_nonvalidated);

    if (rds_pty_validate_count > RDS_PTY_VALIDATE_LIMIT)
    {
        m_rds_flag |= RDSPTY;
#ifdef    RDSCOMP
        if(m_ptyDisplay    !=    rds_pty_nonvalidated)
#endif
        {
            m_ptyDisplay = rds_pty_nonvalidated;
        }

	switch (m_ptyDisplay) 
	{
	        case 1: memcpy(str, "News", 20);break;
	        case 2: memcpy(str, "Current Affairs", 20);break;
	        case 3: memcpy(str, "Information", 20);break;
	        case 4: memcpy(str, "Sport", 20);break;
	        case 5: memcpy(str, "Education", 20);break;
	        case 6: memcpy(str, "Drama", 20);break;
	        case 7: memcpy(str, "Culture", 20);break;
	        case 8: memcpy(str, "Science", 20);break;
	        case 9: memcpy(str, "Varied", 20);break;
	        case 10: memcpy(str, "Pop Music", 20);break;
	        case 11: memcpy(str, "Rock Music", 20);break;
	        case 12: memcpy(str, "Easy Listening", 20);break;
	        case 13: memcpy(str, "Light Classic Music", 20);break;
	        case 14: memcpy(str, "Serious Classic Music", 20);break;
	        case 15: memcpy(str, "Other Music", 20);break;
	        case 16: memcpy(str, "Weather & Metr", 20);break;
	        case 17: memcpy(str, "Finance", 20);break;
	        case 18: memcpy(str, "Children's Progs", 20);break;
	        case 19: memcpy(str, "Social Affairs", 20);break;
	        case 20: memcpy(str, "Religion", 20);break;
	        case 21: memcpy(str, "Phone In", 20);break;
	        case 22: memcpy(str, "Travel & Touring", 20);break;
	        case 23: memcpy(str, "Leisure & Hobby", 20);break;
	        case 24: memcpy(str, "Jazz Music", 20);break;
	        case 25: memcpy(str, "Country Music", 20);break;
	        case 26: memcpy(str, "National Music", 20);break;
	        case 27: memcpy(str, "Oldies Music", 20);break;
	        case 28: memcpy(str, "Folk Music", 20);break;
	        case 29: memcpy(str, "Documentary", 20);break;
	        case 30: memcpy(str, "Alarm Test", 20);break;
	        case 31: memcpy(str, "Alarm - Alarm !", 20);break;
	        default: memcpy(str, "", 20);break;
	}
		printf("##%s\n",str);
        rds_pty_validate_count    =    0;                                /**如果m_ptyDisplay除计数****/
    }
}


HI_VOID update_ps(HI_U8 addr, HI_U8 byte)
{
    HI_U8 i = 0;
    HI_U8 textChange = 0; // indicates if the PS text is in transition
    HI_U8 psComplete = 1; // indicates that the PS text is ready to be 

	printf("update ps byte 0x%x, %d\n",byte,byte);
    if(m_psTmp0[addr] == byte)
    {
        // The new byte matches the high probability byte
        if(m_psCnt[addr] < PS_VALIDATE_LIMIT)
        {
            m_psCnt[addr]++;
        }
        else
        {
            // we have recieved this byte enough to max out our counter
            // and push it into the low probability array as well
            m_psCnt[addr] = PS_VALIDATE_LIMIT;
            m_psTmp1[addr] = byte;
        }
    }
    else if(m_psTmp1[addr] == byte)
    {
        // The new byte is a match with the low probability byte. Swap
        // them, reset the counter and flag the text as in transition.
        // Note that the counter for this character goes higher than
        // the validation limit because it will get knocked down later
        if(m_psCnt[addr] >= PS_VALIDATE_LIMIT)
        {
            textChange = 1;
        }
        m_psCnt[addr] = PS_VALIDATE_LIMIT + 1;
        m_psTmp1[addr] = m_psTmp0[addr];
        m_psTmp0[addr] = byte;
    }
    else if(!m_psCnt[addr])
    {
        // The new byte is replacing an empty byte in the high
        // proability array
        m_psTmp0[addr] = byte;
        m_psCnt[addr] = 1;
    }
    else
    {
        // The new byte doesn't match anything, put it in the
        // low probablity array.
        m_psTmp1[addr] = byte;
    }

    if(textChange)
    {
        // When the text is changing, decrement the count for all 
        // characters to prevent displaying part of a message
        // that is in transition.
        for(i=0;i<sizeof(m_psCnt);i++)
        {
            if(m_psCnt[i] > 1)
            {
                m_psCnt[i]--;
            }
        }
    }

    // The PS text is incomplete if any character in the high
    // probability array has been seen fewer times than the
    // validation limit.
    for (i=0;i<sizeof(m_psCnt);i++)
    {
        if(m_psCnt[i] < PS_VALIDATE_LIMIT)
        {
            psComplete = 0;
            break;
        }
    }

    
#ifdef    RDSCOMP
    if (psComplete)
    {
        if(memcmp(m_psDisplay,m_psTmp0,sizeof(m_psDisplay))    ==    0)
        psComplete    =    0;    
    }
#endif

    // If the PS text in the high probability array is complete
    // copy it to the display array
    if (psComplete)                                                                                                
    {
        m_rds_flag |= RDSPS;

        for (i=0;i<sizeof(m_psDisplay); i++)
        {
            m_psDisplay[i] = m_psTmp0[i];
        }
    }
}
#if 0
HI_VOID display_rt(HI_VOID)
{
    HI_U8 rtComplete = 1;
    HI_U8 i;
    //HI_U8  d;
    // The Radio Text is incomplete if any character in the high
    // probability array has been seen fewer times than the
    // validation limit.

    for (i=0; i<sizeof(m_rtTmp0);i++)
    {
        if(m_rtCnt[i] < RT_VALIDATE_LIMIT)
        {
            rtComplete = 0;
            break;
        }
        if(m_rtTmp0[i] == 0x0d)
        {
            //d = i;      // The array is shorter than the maximum allowed
            break;
        }
    }

    // If the Radio Text in the high probability array is complete
    // copy it to the display array
    if (rtComplete)
    {
#ifdef    RDSCOMP
        if(memcmp(m_rtDisplay,m_rtTmp0,sizeof(m_rtDisplay))    !=    0)
#endif
        {
            for (i=0;i<sizeof(m_rtDisplay); i++)
            {
                m_rtDisplay[i] = m_rtTmp0[i];
                if(m_rtTmp0[i] == 0x0d)
                    break;
            }
            // Wipe out everything after the end-of-message marker
            for (i++;i<sizeof(m_rtDisplay);i++)
            {
                m_rtDisplay[i] = 0;
                m_rtCnt[i]     = 0;
                m_rtTmp0[i]    = 0;
                m_rtTmp1[i]    = 0;
            }
            if((RT.tail+1)%RT_BLENTH  !=  RT.head)
            {
                for(i = 0;i< sizeof(m_rtDisplay);i++)
                RT.str[RT.tail*RT_LENTH+i]  = m_rtDisplay[i];
                for(i = 0;i< sizeof(m_rtDisplay);i++)
                {
                    if(m_rtDisplay[i]==  0x0d)
                    break;
                }
                RT.len[RT.tail]  = i;
                RT.tail++;
                RT.tail %=  RT_BLENTH;
                m_rds_flag |= RDSRT;

                if(RT.len >=  64)
                {
                    for(i = 63;i>=0;i--)
                    {
                        if((m_rtDisplay[i] !=  0x0d)&&(m_rtDisplay[i] !=  0)&&(m_rtDisplay[i] !=  0x20))
                        break;
                        RT.len[RT.tail]--;
                    }
                }
            }
        }
        for (i=0;i<sizeof(m_rtDisplay); i++)
        {
            m_rtCnt[i]     = 0;
            m_rtTmp0[i]    = 0;
            m_rtTmp1[i]    = 0;
        }
    }
}
#endif

HI_VOID update_rt(HI_U8 abFlag, HI_U8 count, HI_U8 addr, 
HI_U8* byte, HI_U8 errorFlags)
{
    HI_U8 i;
    HI_U8  error,blerMax;
    HI_U8 textChange = 0; // indicates if the Radio Text is changing
    
    errorFlags  = errorFlags;
    
    if (abFlag != m_rtFlag && m_rtFlagValid)
    {
        for (i=0;i<sizeof(m_rtCnt);i++)
        {
            m_rtCnt[i] = 0;
            m_rtTmp0[i] = 0;
            m_rtTmp1[i] = 0;
        }
    }
    
    m_rtFlag = abFlag;    // Save the A/B flag
    m_rtFlagValid = 1;    // Our copy of the A/B flag is now valid

    for(i=0;i<count;i++)
    {
        if(i < 2)
        {
            error = Error_Check(BLOCK_C);
            blerMax = rdsBlerMax[2];
        }
        else
        {
            error = Error_Check(BLOCK_D);
            blerMax = rdsBlerMax[3];
        }

        if(error <= blerMax)
        {
            if(!byte[i])
            {
                byte[i] = ' '; // translate nulls to spaces
            }

            // The new byte matches the high probability byte
            if(m_rtTmp0[addr+i] == byte[i])
            {
                if(m_rtCnt[addr+i] < RT_VALIDATE_LIMIT)
                {
                    m_rtCnt[addr+i]++;
                }
                else
                {
                    // we have recieved this byte enough to max out our counter
                    // and push it into the low probability array as well
                    m_rtCnt[addr+i] = RT_VALIDATE_LIMIT;
                    m_rtTmp1[addr+i] = byte[i];
                }
            }
            
            else if(m_rtTmp1[addr+i] == byte[i])
            {

                // The new byte is a match with the low probability byte. Swap
                // them, reset the counter and flag the text as in transition.
                // Note that the counter for this character goes higher than
                // the validation limit because it will get knocked down later
                if(m_rtCnt[addr+i] >= PS_VALIDATE_LIMIT)
                {
                    textChange = 1;
                }
                m_rtCnt[addr+i] = RT_VALIDATE_LIMIT + 1;
                m_rtTmp1[addr+i] = m_rtTmp0[addr+i];
                m_rtTmp0[addr+i] = byte[i];
            }
            else if(!m_rtCnt[addr+i])
            {
                // The new byte is replacing an empty byte in the high
                // proability array
                m_rtTmp0[addr+i] = byte[i];
                m_rtCnt[addr+i] = 1;
            }
            else
            {
                // The new byte doesn't match anything, put it in the
                // low probablity array.
                m_rtTmp1[addr+i] = byte[i];
            }
        }

        if(textChange)
        {
            // When the text is changing, decrement the count for all 
            // characters to prevent displaying part of a message
            // that is in transition.
            for(i=0;i<sizeof(m_rtCnt);i++)
            {
                if(m_rtCnt[i] > 1)
                {
                    m_rtCnt[i]--;
                }
            }
        }

        // Display the Radio Text
   //     display_rt();
    }
}


/**********************************************/
HI_VOID    StartRdsParse(HI_VOID)
{
    g_rds_status = RDS_STA_START;
}

HI_VOID    StopRdsParse(HI_VOID)
{
    g_rds_status = RDS_STA_STOP;
}


HI_VOID    ParseRdsTask(HI_VOID)
{
	HI_U32 u32BeginTime = 0;
	HI_U32 u32CurrentTime = 0;
	HI_U32 u32Delta = 0;
    switch(g_rds_status)
    {
        case    RDS_STA_IDLE:
        break;

        case    RDS_STA_START:
		if(u32BeginTime)
		{
			HI_ERR_FM("Error cmd!Before start rds,make sure the state of RDS is idle or stop!!\n");
			break;
		}
		printf("rds start!!\n");
        Reset_RDS_Data();
        g_rds_status = RDS_STA_WAIT;
		u32BeginTime = RDS_GetSysTime();
        break;
        
        case    RDS_STA_WAIT:
		u32Delta = 0;
		u32CurrentTime = RDS_GetSysTime();
	//	HI_DRV_SYS_GetTimeStampMs(&u32CurrentTime);
		u32Delta = (u32CurrentTime >= u32BeginTime)?(u32CurrentTime - u32BeginTime):(0xFFFFFFF - u32BeginTime + u32CurrentTime);
        if(u32Delta >= RDS_WAIT_TIME)
        {
            if(RdsSyn())
            {
            	printf("go to ready!\n");
                g_rds_status = RDS_STA_READY;
            }
            
            u32BeginTime = RDS_GetSysTime();
        }
        
        break;
//HI_DRV_SYS_GetTimeStampMs(HI_U32 * pu32TimeMs)
        case    RDS_STA_READY:

		u32Delta = 0;
		u32CurrentTime = RDS_GetSysTime();
		u32Delta = (u32CurrentTime >= u32BeginTime)?(u32CurrentTime - u32BeginTime):(0xFFFFFFF - u32BeginTime + u32CurrentTime);

        if(u32Delta >= RDS_READY_TIME)
        {
            RDS_T();

            u32BeginTime = RDS_GetSysTime();
        }
        break;

        case    RDS_STA_STOP:
		printf("rds stop!!\n");
        g_rds_status = RDS_STA_IDLE;
        u32BeginTime = 0;
        break;

        default:break;
    }


}

/******************************************************/
HI_VOID Reset_RDS_Data(HI_VOID)
{
    HI_U8 i = 0;
    // Clear Radio Text
    m_ptyDisplay  = 0;
    m_rtFlagValid     = 0;
    for (i=0; i<sizeof(m_rtDisplay); i++)
    {
        m_rtDisplay[i] = 0;
        m_rtTmp0[i]    = 0;
        m_rtTmp1[i]    = 0;
        m_rtCnt[i]     = 0;
    }

    // Clear Program Service
    for (i=0;i<sizeof(m_psDisplay);i++)
    {
        m_psDisplay[i] = 0;
        m_psTmp0[i]    = 0;
        m_psTmp1[i]    = 0;
        m_psCnt[i]     = 0;
    }

    //Clear Date Service
    UTC.year=0;
    UTC.month=0;
    UTC.day=0;
    UTC.weekday=0;
    UTC.weeknumbers=0;
    
    m_rds_flag = 0;
}    

HI_VOID Get_RDS_PS(HI_U8 *str,HI_U8 *len)
{
    if(m_rds_flag & RDSPS)
    {
        memcpy(str,m_psDisplay,8);
        *len = 8;
    }
    else
    {
        *len = 0;
    }
}


HI_VOID Get_RDS_Pty(HI_U8 *pty)
{
    if(m_rds_flag & RDSPTY)
        *pty = m_ptyDisplay;
}

HI_VOID Get_RDS_RT(HI_U8 *str,HI_U8*len)
{
    if(RT.head != RT.tail)
    {
        *len = RT.len[RT.tail];
        memcpy(str,RT.str+RT.tail,RT.len[RT.tail]);

        RT.head++;
        RT.head %=  RT_BLENTH;
    }
    else
    {
        *len = 0;
    }
}

HI_S32 Rds_Thread(HI_VOID *arg)
{
	while(!g_RdsStop)
	{
		ParseRdsTask();
		usleep(10*1000);
	}
	printf("exit!!\n");
	return 0;
}

HI_S32 RDS_Open(HI_VOID)
{
	g_RdsStop = HI_FALSE;
	pthread_create(&g_pRdsTask, HI_NULL, (HI_VOID *)Rds_Thread, HI_NULL);	
	//StartRdsParse();
	return HI_SUCCESS;
}

HI_S32 RDS_Close(HI_VOID)
{
	g_rds_status = RDS_STA_IDLE;
    g_RdsStop = HI_TRUE;
    pthread_join(g_pRdsTask, HI_NULL);
	return 0;
}



