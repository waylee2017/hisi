#===============================================================================
# export variables
#===============================================================================
ifeq ($(CFG_HI_EXPORT_FLAG),)
    ifneq ($(KERNELRELEASE),)
    KERNEL_DIR := $(CURDIR)

    SDK_DIR := $(KERNEL_DIR)/../../..
    else
    SDK_DIR := $(CURDIR)/../../../..
    endif

#include $(SDK_DIR)/cfg.mak
include $(SDK_DIR)/base.mak
endif

KBUILD_EXTRA_SYMBOLS += $(COMMON_DIR)/drv/Module.symvers

#===============================================================================
# module name
#===============================================================================
TARGET := fb

#===============================================================================
# local variables
#===============================================================================
EXTRA_CFLAGS += -I$(COMMON_UNF_INCLUDE)                 \
                -I$(COMMON_API_INCLUDE)                 \
                -I$(COMMON_DRV_INCLUDE)                 \
                -I$(MSP_UNF_INCLUDE)                    \
                -I$(MSP_API_INCLUDE)                    \
                -I$(MSP_DRV_INCLUDE)                    \
		-I$(MSP_DIR)/api/higo/include	        \
		-I$(MSP_DIR)/drv/hifb/include	        \
                -I$(MSP_DIR)/drv/hifb/adp/include	\
                -I$(MSP_DIR)/drv/hifb/src	        \
                -I$(MSP_DIR)/drv/tde/include	        \
                -I$(MSP_DIR)/api/tde/include	        \
		-I$(MSP_DIR)/drv/jpeg/grc_cmm_inc       \
	 	-I$(COMPONENT_DIR)/ha_codec/include

EXTRA_CFLAGS += $(CFG_HI_KMOD_CFLAGS)

ifeq ($(CFG_HIFB_CURSOR_SUPPORT), y)
EXTRA_CFLAGS += -DCFG_HIFB_CURSOR_SUPPORT
endif

ifeq ($(CFG_HIFB_COMPRESSION_SUPPORT), y)
EXTRA_CFLAGS += -DCFG_HIFB_COMPRESSION_SUPPORT
endif

ifeq ($(CFG_HIFB_SCROLLTEXT_SUPPORT), y)
EXTRA_CFLAGS += -DCFG_HIFB_SCROLLTEXT_SUPPORT
EXTRA_CFLAGS  +=  -DCFG_HI_AD0_FB_VRAM_SIZE=$(CFG_HI_AD0_FB_VRAM_SIZE)
endif
EXTRA_CFLAGS  += -DCHIP_TYPE_${CFG_HI_CHIP_TYPE}

#ifeq ($(CFG_HIFB_STEREO3D_HW_SUPPORT), y)
EXTRA_CFLAGS += -DCFG_HIFB_STEREO3D_HW_SUPPORT
#endif

ifeq ($(CFG_HIFB_STEREO3D_SW_SUPPORT), y)
EXTRA_CFLAGS += -DCFG_HIFB_STEREO3D_SW_SUPPORT
endif

ifneq ($(findstring $(CFG_HI_CHIP_TYPE), hi3716mv310 hi3716mv320 hi3716mv330),)
EXTRA_CFLAGS  +=  -DCFG_HI_HD_FB_VRAM_SIZE=$(CFG_HI_HD_FB_VRAM_SIZE)
else
EXTRA_CFLAGS  +=  -DCFG_HI_SD_FB_VRAM_SIZE=$(CFG_HI_SD_FB_VRAM_SIZE)
endif

EXTRA_CFLAGS  +=  -DHIFB_PM

#EXTRA_CFLAGS  +=  -DHIFB_INDIA_PROJECT_SUPPORT

#================================================================================
#select the complie file
#================================================================================
MOD_NAME := hi_$(TARGET)

obj-$(CFG_MSP_BUILDTYPE) += $(MOD_NAME).o


$(MOD_NAME)-y := src/hifb_klog.o      \
                 src/hifb_comm.o      \
                 adp/src/hifb_blit.o

ifeq ($(CFG_HIFB_SCROLLTEXT_SUPPORT), y)
$(MOD_NAME)-y	+= src/hifb_scrolltext.o 
endif
ifeq ($(CFG_HI_MSP_BUILDIN), y)
$(shell cp -f $(MSP_DIR)/drv/hifb/include/hifb.h $(INCLUDE_DIR)/)
endif

$(MOD_NAME)-y += src/hifb_main.o


#===============================================================================
# rules
#===============================================================================
.PHONY: all clean install uninstall

all:
	$(AT)make -C $(LINUX_DIR) ARCH=arm CROSS_COMPILE=$(CFG_HI_TOOLCHAINS_NAME)- M=$(CURDIR) modules

clean:
	$(AT)make -C $(LINUX_DIR) M=$(CURDIR) clean
	$(AT)rm -rf  *.o
	$(AT)rm -rf  .*.o.cmd
	$(AT)rm -rf .tmp_versions
	$(AT)rm -rf  Module.symvers
	$(AT)rm -rf  modules.order

install: all
ifneq ($(CFG_MSP_BUILDTYPE),y)
	$(AT)cp -f $(CURDIR)/$(MOD_NAME).ko $(MODULE_DIR)/
endif
	$(AT)cp -f $(CURDIR)/include/hifb.h $(INCLUDE_DIR)/

uninstall:

	$(AT)rm -rf $(MODULE_DIR)/$(MOD_NAME).ko
	$(AT)rm -rf $(INCLUDE_DIR)/hifb.h
