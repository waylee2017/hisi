ifeq ($(CFG_HI_EXPORT_FLAG),)

ifeq ($(CFG_HI_LOADER_APPLOADER),y)
SDK_DIR := $(shell pwd)/../../../..
else
SDK_DIR := $(shell pwd)/../../../../..
endif

include $(SDK_DIR)/base.mak
endif

#===============================================================================
# local variables
#===============================================================================

ifndef CFLAGS

ifeq ($(CFG_HI_LOADER_BOOTLOADER),y)
export MKFLAGS

CC := $(CROSS_COMPILE)gcc

gccincdir := $(shell $(CC) -print-file-name=include)

CFLAGS := -g -Os -D__KERNEL__ -D__ARM__ -fno-strict-aliasing -fno-common -ffixed-r8 \
          -nostdinc -isystem $(gccincdir) $(MKFLAGS) -I$(PRODUCT_DIR) \
          -fno-builtin -ffreestanding  -pipe -marm  -mabi=aapcs-linux  \
          -mno-thumb-interwork -march=armv7-a \
          -Wall -Wstrict-prototypes -fno-stack-protector
endif
endif

CFLAGS += -I$(CURDIR)/include
CFLAGS += -I$(CURDIR)/common
CFLAGS += -I$(COMMON_UNF_INCLUDE)
CFLAGS += -I$(COMPONENT_DIR)/loader/api/include
CFLAGS += -I$(COMPONENT_DIR)/loader/app/ca/

CFLAGS += ${CFG_HI_BOARD_CONFIGS}
CFLAGS += -DCHIP_TYPE_${CFG_HI_CHIP_TYPE} 

LOADER_SRC += main.c download.c protocol.c upgrd_common.c upgrd_config.c hi_loader_info.c loaderdb_info.c  upgrd_osd.c burn.c burn_raw.c burn_ext4sp.c

ifeq ($(CFG_HI_ADVCA_SUPPORT),y)
LOADER_SRC += burn_ca.c
CFLAGS += -I$(MSP_DIR)/drv/include
CFLAGS += -DHI_ADVCA_SUPPORT
CFLAGS += -DHI_ADVCA_TYPE_$(CFG_HI_ADVCA_TYPE)
ifdef CFG_HI_ADVCA_FUNCTION
    ifeq ($(CFG_HI_ADVCA_FUNCTION),FINAL)
        CFLAGS += -DHI_ADVCA_FUNCTION_RELEASE
    else
        CFLAGS += -DHI_ADVCA_FUNCTION_$(CFG_HI_ADVCA_FUNCTION)
    endif
endif
endif

ifeq ($(CFG_HI_LOADER_BOOTLOADER),y)
CFLAGS += -DHI_LOADER_BOOTLOADER
ifeq ($(CFG_HI_BUILD_WITH_IR), y)
CFLAGS += -DHI_BUILD_WITH_IR
endif
endif

ifeq ($(CFG_HI_LOADER_APPLOADER),y)
CFLAGS += -DHI_LOADER_APPLOADER -DHI_BUILD_WITH_IR
endif

ifeq (y,$(CFG_HI_LOG_SUPPORT))
CFLAGS += -DHI_LOG_SUPPORT=1
ifdef CFG_HI_LOG_LEVEL
CFLAGS += -DHI_LOG_LEVEL=$(CFG_HI_LOG_LEVEL)
else
CFLAGS += -DHI_LOG_LEVEL=1
endif
else
CFLAGS += -DHI_LOG_SUPPORT=0
endif

ifneq ($(CFG_HI_APPLOADER_OSD_LANG_CN)_$(CFG_HI_BOOTLOADER_OSD_LANG_CN),_)
CFLAGS += -DHI_LOADER_OSD_LANG_CN
endif

ifeq ($(CFG_HI_KEYLED_SUPPORT),y)
CFLAGS += -DHI_BUILD_WITH_KEYLED
    ifeq ($(CFG_HI_KEYLED_PT6964_SUPPORT),y)
    CFLAGS += -DHI_KEYLED_PT6964
    endif
    ifeq ($(CFG_HI_KEYLED_PT6961_SUPPORT),y)
    CFLAGS += -DHI_KEYLED_PT6961
    endif
    ifeq ($(CFG_HI_KEYLED_CT1642_SUPPORT),y)
    CFLAGS += -DHI_KEYLED_CT1642
    endif
    ifeq ($(CFG_HI_KEYLED_74HC164_SUPPORT),y)
    CFLAGS += -DHI_KEYLED_74HC164
    endif
    ifeq ($(CFG_HI_KEYLED_FD650_SUPPORT),y)
    CFLAGS += -DHI_KEYLED_FD650
    endif
    ifeq ($(CFG_HI_KEYLED_GPIOKEY_SUPPORT),y)
    CFLAGS += -DHI_KEYLED_GPIOKEY
    endif
endif

ifneq ($(CFG_HI_APPLOADER_MODE_IP)_$(CFG_HI_BOOTLOADER_MODE_IP),_)
CFLAGS += -DHI_LOADER_MODE_IP
LOADER_SRC += download_ip.c
endif

ifneq ($(CFG_HI_APPLOADER_MODE_OTA)_$(CFG_HI_BOOTLOADER_MODE_OTA),_)
CFLAGS += -DHI_LOADER_MODE_OTA
LOADER_SRC += download_ota.c ota_datamanager.c ota_force.c

ifneq ($(CFG_HI_APPLOADER_TUNER_CAB)_$(CFG_HI_BOOTLOADER_TUNER_CAB),_)
CFLAGS += -DHI_LOADER_TUNER_CAB
endif

ifneq ($(CFG_HI_APPLOADER_TUNER_DVB_T)_$(CFG_HI_BOOTLOADER_TUNER_DVB_T),_)
CFLAGS += -DHI_LOADER_TUNER_DVB_T
endif

ifneq ($(CFG_HI_APPLOADER_TUNER_DVB_T2)_$(CFG_HI_BOOTLOADER_TUNER_DVB_T2),_)
CFLAGS += -DHI_LOADER_TUNER_DVB_T2
endif

ifneq ($(CFG_HI_APPLOADER_TUNER_SAT)_$(CFG_HI_BOOTLOADER_TUNER_SAT),_)
CFLAGS += -DHI_LOADER_TUNER_SAT
ifeq ($(CFG_HI_DISEQC_SUPPORT),y)
CFLAGS += -DDISEQC_SUPPORT
endif
endif

ifneq ($(CFG_HI_APPLOADER_TUNER_TER)_$(CFG_HI_BOOTLOADER_TUNER_TER),_)
CFLAGS += -DHI_LOADER_TUNER_TER
endif

endif

ifneq ($(CFG_HI_APPLOADER_MODE_USB)_$(CFG_HI_BOOTLOADER_MODE_USB),_)
CFLAGS += -DHI_LOADER_MODE_USB
LOADER_SRC += download_usb.c
endif

ifneq ($(CFG_HI_APPLOADER_PROTOCOL_SSU_OTA)_$(CFG_HI_BOOTLOADER_PROTOCOL_SSU_OTA),_)
CFLAGS += -DHI_LOADER_PROTOCOL_SSU_OTA
LOADER_SRC += protocol_ssu_ota.c
ifeq ($(CFG_HI_ADVCA_SUPPORT),y)
LOADER_SRC += protocol_ssu_ota_ca.c
endif
endif

ifneq ($(CFG_HI_APPLOADER_PROTOCOL_HISI_OTA)_$(CFG_HI_BOOTLOADER_PROTOCOL_HISI_OTA),_)
CFLAGS += -DHI_LOADER_PROTOCOL_HISI_OTA
LOADER_SRC += protocol_hisi_ota.c
ifeq ($(CFG_HI_ADVCA_SUPPORT),y)
LOADER_SRC += protocol_hisi_ota_ca.c
endif
endif

ifneq ($(CFG_HI_APPLOADER_IP_PROTOCOL_HISI_FILE)_$(CFG_HI_APPLOADER_USB_PROTOCOL_HISI_FILE)_$(CFG_HI_BOOTLOADER_USB_PROTOCOL_HISI_FILE),__)
CFLAGS += -DHI_LOADER_PROTOCOL_HISI_FILE
LOADER_SRC += protocol_hisi_file.c
ifeq ($(CFG_HI_ADVCA_SUPPORT),y)
LOADER_SRC += protocol_hisi_file_ca.c
endif
endif

ifeq ($(CFG_HI_LOADER_BOOTLOADER),y)
LOADER_SRC += upgrd_text.c
endif

ifeq ($(CFG_ADVCA_TYPE), NAGRA)
CFLAGS += -I$(SDK_DIR)/source/component/advca/nagra/include
endif

CFLAGS += -g -rdynamic -O2

.PHONY: prepare
prepare:
	@ln -sf ../api/src/hi_loader_info.c hi_loader_info.c
	@ln -sf ../api/src/loaderdb_info.c loaderdb_info.c

ifeq ($(CFG_HI_LOADER_BOOTLOADER),y)
include BootLoader.mak
endif

ifeq ($(CFG_HI_LOADER_APPLOADER),y)
LOADER_OBJS := $(patsubst %.c,%.o,$(LOADER_SRC))
include AppLoader.mak
endif
