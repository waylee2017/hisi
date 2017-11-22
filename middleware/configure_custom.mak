#*************************************************************************
# Usual Configure
#*************************************************************************
CFG_CUSTOMER_OUI=0x00001102
CFG_AP_SW_MODEL=0x0001
CFG_AP_SW_VERSION=0x00050000
CFG_HW_MODELNO=0x0001
CFG_HW_VERSION=0x0024

##1 8M; 2 16M; 
CFG_FLASH_SIZE=1

#*******************************************************
#CUSTOMER Type:
#   Customer_Mstar                                      0
#*******************************************************
CFG_LOGO_ADDR  =       6029312
CFG_LOGO_SIZE   =   1048576

#fac
CFG_OVT_FAC_MODE=1
CFG_OVT_VOD_MODE=1
#0 enable uart1/1 enable uart2 
CFG_OVT_VOD_UART_MODE=1

#0 nocas; 1 cdcas; 2 ovtcas
CFG_OVT_CAS_MODE=0

#0 nofreetype; 1 middlewarefreetype; 2 sdkfreetype
CFG_FREETYPE_USE_MODE=2

#0 image from flle system; 1 image from flash
CFG_IMAGE_USE_MODE=0


