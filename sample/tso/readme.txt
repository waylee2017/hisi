Purpose: to demonstrate the Demux tso DVB playing scenario.

1. Link these lines in Demo Board
    TSI0->SYNC  <-->  TSO->SYNC
	TSI0->VALID <-->  TSO->VALID
	TSI0->CLK   <-->  TSO->CLK
	TSI0->D0    <-->  TSO->D0

2. Pin multiplexing refer as follow:
    /* Multiplexing TSO Pins */
    HI_SYS_WriteRegister(0x1020304c, 0x002); /* SYNC */
    HI_SYS_WriteRegister(0x10203050, 0x122); /* VALID */
    HI_SYS_WriteRegister(0x10203054, 0x122); /* CLK */
    HI_SYS_WriteRegister(0x10203058, 0x122); /* D0 */
    
	/* Multiplexing TSI0 Pins */
    HI_SYS_WriteRegister(0x10203064, 0x132); /* SYNC */
    HI_SYS_WriteRegister(0x10203068, 0x002); /* VALID */
    HI_SYS_WriteRegister(0x1020306C, 0x132); /* CLK */
    HI_SYS_WriteRegister(0x10203070, 0x132); /* D0 */
    
	/* Configure TSO register enable backpress */
	HI_U32 u32Value = 0;
    HI_SYS_ReadRegister(0x600C3A08,&u32Value);
    u32Value = u32Value | 0x10000;
    HI_SYS_WriteRegister(0x600C3A08,u32Value);
			
3.usage
Command: sample_demux_tso freq srate [qamtype or polarization] [vo_format]
      Fields [qamtype or polarization] and [vo_format] are optional.
      qamtype or polarization:
          For cable, used as qamtype, value can be 16|32|[64]|128|256|512 defaut[64]
          For satellite, used as polarization, value can be [0] horizontal | 1 vertical defaut[0]
      vo_format:
          The value of vo_format can be 1080P_60, 1080P_50, 1080i_60, 1080i_50, 720P_60, or 720P_50. The default value is 
          1080i_50.
          
4.The tso works ok if the sample can play the program from tuner.
the data progress:
TS->tuner(PORT0,DMXID0)->TSO->TSI0(PORT1,DMXID1)->play
