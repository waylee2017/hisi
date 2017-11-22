#===============================================================================
# export variables
#===============================================================================
ifeq ($(CFG_HI_EXPORT_FLAG),)
SDK_DIR     := $(shell pwd)/../../../../..
include $(SDK_DIR)/cfg.mak
include $(SDK_DIR)/base.mak
endif

#===============================================================================
# local variables
#===============================================================================

ifeq ($(CFG_HI_MINIBOOT_SUPPORT),y)
BOOT_DIR  := $(SDK_DIR)/source/boot/miniboot
else
BOOT_DIR  := $(SDK_DIR)/source/boot/fastboot
endif
PRODUCT_DIR := $(BOOT_DIR)/../product
COMMON_DIR  := $(PRODUCT_DIR)/driver/common

ifndef CFLAGS
include $(BOOT_DIR)/define.mak
export MKFLAGS

CC := $(CROSS_COMPILE)gcc

gccincdir := $(shell $(CC) -print-file-name=include)

CFLAGS := -g -Os -D__KERNEL__ -D__ARM__ -fno-strict-aliasing -fno-common -ffixed-r8 \
	  -nostdinc -isystem $(gccincdir) $(MKFLAGS) -I$(PRODUCT_DIR) \
	  -fno-builtin -ffreestanding  -pipe -marm  -mabi=aapcs-linux  \
	  -mno-thumb-interwork -march=armv7-a \
	  -Wall -Wstrict-prototypes -fno-stack-protector
endif

CFLAGS  += -I$(PRODUCT_DIR)/driver/include
CFLAGS  += -I$(BOOT_DIR)/arch/arm/include
CFLAGS  += -I$(BOOT_DIR)/include
CFLAGS  += -I$(PRODUCT_DIR)/driver/frontend/include
CFLAGS  += -I$(PRODUCT_DIR)/driver/frontend/demod/AVL_DVBSx_SDK/AVL_DVBSx/include
CFLAGS  += -I$(PRODUCT_DIR)/driver/frontend/demod/AVL_DVBSx_SDK/BSP
#CFLAGS  += -I$(SDK_DIR)/source/common/include

CFLAGS += -I$(SDK_DIR)/source/common/include
CFLAGS  += -DCHIP_TYPE_${CFG_HI_CHIP_TYPE}
CFLAGS  += -DBOOT_COMPILE

LIBS    := libfrontend.a
OBJS    := unf_tuner.o

ifeq ($(CFG_HI_BOOT_TUNER_TYPE_ALPS_TDAE),y)
CFLAGS += -DHI_BOOT_TUNER_DEV_TYPE_ALPS_TDAE
OBJS   += tuner/alps_tdae.o
endif

ifeq ($(CFG_HI_BOOT_TUNER_TYPE_TDCC),y)
CFLAGS += -DHI_BOOT_TUNER_DEV_TYPE_TDCC
OBJS   += tuner/tdcc.o
endif

ifeq ($(CFG_HI_BOOT_TUNER_TYPE_TDA18250),y)
CFLAGS += -DHI_BOOT_TUNER_DEV_TYPE_TDA18250
OBJS   += tuner/tda18250/tda18250.o \
          tuner/tda18250/tmbslTDA18250.o \
          tuner/tda18250/tmbslTDA18250Instance.o \
          tuner/tda18250/tmddTDA18250.o \
          tuner/tda18250/tmddTDA18250Instance.o
endif

ifeq ($(CFG_HI_BOOT_TUNER_TYPE_TDA18250B),y)
CFLAGS += -DHI_BOOT_TUNER_DEV_TYPE_TDA18250B
OBJS   += tuner/tda18250b/tda18250b.o \
	  tuner/tda18250b/tmbslTDA18250A.o \
	  tuner/tda18250b/tmbslTDA18250A_Advanced.o 
endif

ifeq ($(CFG_HI_BOOT_TUNER_TYPE_TDA18215),y)
CFLAGS += -DHI_BOOT_TUNER_DEV_TYPE_TDA18215
OBJS   += tuner/tda18215/tmbslTDA182I5a.o	 \
	  tuner/tda18215/tmbslTDA182I5a_Instance.o  \
	  tuner/tda18215/tmbslTDA182I5a_RegDef.o   \
	  tuner/tda18215/tda18215.o
endif

ifeq ($(CFG_HI_BOOT_TUNER_TYPE_TMX7070X),y)
CFLAGS += -DHI_BOOT_TUNER_DEV_TYPE_TMX7070X
OBJS   += tuner/tmx7070x.o
endif

ifeq ($(CFG_HI_BOOT_TUNER_TYPE_R820C),y)
CFLAGS += -DHI_BOOT_TUNER_DEV_TYPE_R820C
OBJS   += tuner/R820C/I2C_Sys.o \
	  tuner/R820C/R820C.o
endif

ifeq ($(CFG_HI_BOOT_TUNER_TYPE_R836),y)
CFLAGS += -DHI_BOOT_TUNER_DEV_TYPE_R836
OBJS   += tuner/R836/R836_I2C_Sys.o \
          tuner/R836/R836.o
endif

ifeq ($(CFG_HI_BOOT_TUNER_TYPE_MXL203),y)
CFLAGS += -DHI_BOOT_TUNER_DEV_TYPE_MXL203
OBJS   += tuner/mxl203/mxl203.o \
	  tuner/mxl203/MxL203RF.o \
	  tuner/mxl203/MxL_User_Define.o \
	  tuner/mxl203/MxL203RF_API.o
endif

ifeq ($(CFG_HI_BOOT_TUNER_TYPE_AV2011),y)
CFLAGS += -DHI_BOOT_TUNER_DEV_TYPE_AV2011
OBJS   += tuner/av2011.o
endif

ifeq ($(CFG_HI_BOOT_TUNER_TYPE_SHARP7903),y)
CFLAGS += -DHI_BOOT_TUNER_DEV_TYPE_SHARP7903
OBJS   += tuner/sharp_qm1d1c004x.o
endif

ifeq ($(CFG_HI_BOOT_TUNER_TYPE_M88TS2022),y)
CFLAGS += -DHI_BOOT_TUNER_DEV_TYPE_M88TS2022
OBJS   += tuner/M88TS2022.o
endif

ifeq ($(CFG_HI_BOOT_TUNER_TYPE_RDA5815),y)
CFLAGS += -DHI_BOOT_TUNER_DEV_TYPE_RDA5815
OBJS   += tuner/RDA5815.o
endif

ifeq ($(CFG_HI_BOOT_TUNER_TYPE_MXL603),y)
CFLAGS += -DHI_BOOT_TUNER_DEV_TYPE_MXL603
OBJS   += tuner/MXL603/MxL603_OEM_Drv.o \
	  tuner/MXL603/MxL603_TunerApi.o \
	  tuner/MXL603/MxL603_TunerCfg.o \
	  tuner/MXL603/MxL603.o
endif

ifeq ($(CFG_HI_BOOT_TUNER_TYPE_MXL608),y)
CFLAGS += -DHI_BOOT_TUNER_DEV_TYPE_MXL608
OBJS   += tuner/MXL608/MxL608_TunerSpurTable.o \
	  tuner/MXL608/MxL608_OEM_Drv.o \
	  tuner/MXL608/MxL608_TunerApi.o \
	  tuner/MXL608/MxL608_TunerCfg.o \
	  tuner/MXL608/MxL608.o
endif

ifeq ($(CFG_HI_BOOT_TUNER_TYPE_M88TC3800),y)
CFLAGS += -DHI_BOOT_TUNER_DEV_TYPE_M88TC3800
OBJS   += tuner/m88tc3800/mt_fe_tn_tc3800.o
endif

ifeq ($(CFG_HI_BOOT_TUNER_TYPE_SI2144),y)
CFLAGS += -DHI_BOOT_TUNER_DEV_TYPE_SI2144
OBJS   += tuner/si2144/Si2144.o \
			  tuner/si2144/Silabs_L0_Connection.o \
			  tuner/si2144/Si2144_L1_API.o \
			  tuner/si2144/Si2144_L1_Commands.o \
			  tuner/si2144/Si2144_L1_Properties.o \
			  tuner/si2144/Si2144_L2_API.o \
			  tuner/si2144/Si2144_Properties_Strings.o \
			  tuner/si2144/Si2144_User_Properties.o  			  
endif

ifeq ($(CFG_HI_BOOT_DEMOD_TYPE_HI3130I),y)
CFLAGS += -DHI_BOOT_DEMOD_DEV_TYPE_HI3130I
OBJS   += demod/hi3716mv310/dvb_c/hi3716mv310.o
endif

ifeq ($(CFG_HI_BOOT_DEMOD_TYPE_J83B),y)
CFLAGS += -DHI_BOOT_DEMOD_DEV_TYPE_J83B
OBJS   += demod/hi3716mv310/j83b/hi3716mv310_j83b.o
endif

ifeq ($(CFG_HI_BOOT_DEMOD_TYPE_HI3136),y)
CFLAGS += -DHI_BOOT_DEMOD_DEV_TYPE_HI3136
OBJS   += demod/hi3136/hi3136.o
endif

ifneq ($(CFG_HI_BOOT_LNB_CTRL_MPS8125)_$(CFG_HI_BOOT_LNB_CTRL_ISL9492),_)
OBJS   += lnbctrl/lnbctrl_common.o
endif

ifeq ($(CFG_HI_BOOT_LNB_CTRL_MPS8125),y)
CFLAGS += -DHI_BOOT_LNB_CTRL_MPS8125
OBJS   += lnbctrl/mps8125.o
endif

ifeq ($(CFG_HI_BOOT_LNB_CTRL_ISL9492),y)
CFLAGS += -DHI_BOOT_LNB_CTRL_ISL9492
OBJS   += lnbctrl/isl9492.o
endif

ifeq ($(CFG_HI_BOOT_DISEQC_SUPPORT),y)
CFLAGS += -DHI_BOOT_DISEQC_SUPPORT
OBJS   += unf_diseqc.o
endif

#===============================================================================
# rules
#===============================================================================

.PHONY: all clean install uninstall $(LIBS)

all: $(LIBS)

clean:
	$(AT)rm -rf $(OBJS)
	$(AT)rm -rf $(LIBS)

install: all

uninstall:

$(LIBS): $(OBJS)
	$(AT)$(AR) -rc $@ $^
