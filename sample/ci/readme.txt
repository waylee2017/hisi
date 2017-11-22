1. Please insmod /kmod/hi_ci.ko first.
   If your solution use CIMaX+, you also need insmod /kmod/cimax+usb_driver.ko.
2. This sample is only for CI driver, it doesn't include CI stack.
3. If you want to use CI/CI+ on your board: 
    A. Configure EBI pin and TS pin according to your mainboard,
        hi3716ctstvera_hi3716cv100_ddr3_512mbyte_16bitx2_4layers-cimax.xls, 
        hi3716ctstvera_hi3716cv100_ddr3_512mbyte_16bitx2_4layers-cimax.reg is an example for Hi3716HTST_VER.A + CIMaX solution;
	hi3716crefs2vera_hi3716cv100_ddr3_512mbyte_16bitx2_4layers-cimax+.xls,
	hi3716crefs2vera_hi3716cv100_ddr3_512mbyte_16bitx2_4layers-cimax+.reg is an example for Hi3716CREFS2 VER.A + CIMaX+ solution;
	hi3716mdmo3avera_hi3716mv300_ddr3_256mbyte_16bit_2layers-cimax+.xls,
	hi3716mdmo3avera_hi3716mv300_ddr3_256mbyte_16bit_2layers-cimax+.reg is an example for Hi3716MDMO3A VER.A + CIMaX+ solution;
       Then use your reg to make hiboot.
    B. Porting your CI stack on this driver.
    C. May be you need configure tuner/demux, for example, assume you use the 
    CIMaX solution, use serial 50MHz TS input to CIMaX, you need configure like 
    this:
            HI_UNF_DMX_PORT_ATTR_S stAttr;
            HI_UNF_TUNER_ATTR_S stTunerAttr;
            HI_UNF_CI_ATTR_S stCIAttr;

            /* Init other device */

            /* Init and config tuner/demod */
            HI_UNF_Tuner_Init();
            HI_UNF_TUNER_Open(TUNER_USE);
            HI_UNF_TUNER_GetAttr(TUNER_USE, &stTunerAttr);
            stTunerAttr.enOutputMode = HI_UNF_TUNER_OUTPUT_MODE_SERIAL_50;    /* Tuner serial 50MHz */
            HI_UNF_TUNER_SetAttr(TUNER_USE, &stTunerAttr);
            HI_UNF_Tuner_Connect(...);

            /* Init and config CI */
            HI_UNF_CI_Init();
            stCIAttr.enDevType = DEF_CI_DEVICE;
            stCIAttr.enTSIMode = HI_UNF_CI_TSI_DAISY_CHAINED;
            stCIAttr.enTSMode[HI_UNF_CI_PCCD_A] = HI_UNF_CI_TS_SERIAL;        /* serial */
            stCIAttr.unDevAttr.stCIMaX.u32SMIBitWidth = DEF_CIMAX_SMI_BITWIDTH;
            stCIAttr.unDevAttr.stCIMaX.u32SMIBaseAddr = DEF_CIMAX_SMC_BANK0_BASE_ADDR;
            stCIAttr.unDevAttr.stCIMaX.u32I2cNum = DEF_CIMAX_I2CNum;
            stCIAttr.unDevAttr.stCIMaX.u8DevAddress = DEF_CIMAX_ADDR;
            HI_UNF_CI_SetAttr(USE_CI_PORT, &stCIAttr)
            HI_UNF_CI_Open(USE_CI_PORT);
            //...

            /* Init and config Demux */
            HI_UNF_DMX_Init();
            HI_UNF_DMX_GetTSPortAttr(USE_DMX_PORT, &stAttr);                  /* Use Demux port 1, configure it serial */            
            stAttr.enPortType = HI_UNF_DMX_PORT_TYPE_SERIAL;                  /* serial */
            stAttr.u32SerialBitSelector = 1;                                  /* cdata[0] */
            HI_UNF_DMX_SetTSPortAttr(USE_DMX_PORT, &stAttr);            
            HI_UNF_DMX_AttachTSPort(0, USE_DMX_PORT);                         /* Attach Demux port */
    
            /* Play TS */