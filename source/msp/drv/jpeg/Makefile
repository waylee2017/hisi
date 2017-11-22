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
TARGET := jpeg

#===============================================================================
# local variables
#===============================================================================
EXTRA_CFLAGS += -I$(COMMON_UNF_INCLUDE)                 \
                -I$(COMMON_API_INCLUDE)                 \
                -I$(COMMON_DRV_INCLUDE)                 \
		-I$(COMMON_DRV_INCLUDE)/hi3716mv310     \
                -I$(MSP_UNF_INCLUDE)                    \
                -I$(MSP_API_INCLUDE)                    \
                -I$(MSP_DRV_INCLUDE)                    \
                -I$(MSP_DIR)/api/$(TARGET)/include      \
                -I$(MSP_DIR)/drv/$(TARGET)/include      \
                -I$(MSP_DIR)/drv/$(TARGET)/src

EXTRA_CFLAGS += -I$(MSP_DIR)/drv/$(TARGET)/grc_cmm_inc

EXTRA_CFLAGS += $(CFG_HI_KMOD_CFLAGS)




#=====================================================================================
#the jpeg use version
#=====================================================================================
EXTRA_CFLAGS += -DCONFIG_HI_SDK_JPEG_VERSION
#EXTRA_CFLAGS += -DCONFIG_HI_FPGA_JPEG_VERSION


#=====================================================================================
#the platform version
#=====================================================================================
#EXTRA_CFLAGS += -DCONFIG_GFX_ANDROID_SDK
EXTRA_CFLAGS += -DCONFIG_GFX_STB_SDK
#EXTRA_CFLAGS += -DCONFIG_GFX_BVT_SDK
#EXTRA_CFLAGS += -DCONFIG_GFX_TV_SDK

#=====================================================================================
#ddr and stride is 256bytes align
#=====================================================================================
ifneq ($(findstring $(CFG_HI_CHIP_TYPE), hi3796cv100 hi3798cv100),)
EXTRA_CFLAGS += -DCONFIG_GFX_256BYTE_ALIGN
endif

ifeq ($(CFG_HI_SMMU_SUPPORT),y)
EXTRA_CFLAGS += -DCONFIG_GFX_MMU_SUPPORT
EXTRA_CFLAGS += -DCONFIG_GFX_MMU_CLOCK
endif

ifeq ($(CFG_HI_GFX_DEBUG_LOG_SUPPORT), y)
EXTRA_CFLAGS += -DCFG_HI_GFX_DEBUG_LOG_SUPPORT
endif

#=====================================================================================
#the chip env version
#=====================================================================================
#================================================================================
#this macro define in hi_gfx_comm_k.h
#================================================================================
#ifeq ($(findstring -DHI_ADVCA_FUNCTION_RELEASE, $(CFG_HI_KMOD_CFLAGS)), -DHI_ADVCA_FUNCTION_RELEASE)
#EXTRA_CFLAGS += -DCONFIG_GFX_ADVCA_RELEASE
#endif

#=====================================================================================
#use kernel signal,not use mutex
#=====================================================================================
#EXTRA_CFLAGS += -DCONFIG_JPEG_USE_KERNEL_SIGNAL

#================================================================================
#select the complie file
#================================================================================
MOD_NAME := hi_$(TARGET)

obj-$(CFG_MSP_BUILDTYPE) += $(MOD_NAME).o

$(MOD_NAME)-y := src/jpeg_drv_hal.o         \
                 src/jpeg_drv_proc.o        \
		 src/jpeg_drv_suspend.o     \
		 src/jpeg_drv_osr.o


#$(MOD_NAME)-y += src/jpeg_drv_api.o       \
		 src/jpeg_drv_dec.o       \
		 src/jpeg_drv_mem.o       \
		 src/jpeg_drv_parse.o     \
		 src/jpeg_drv_table.o     \
                 src/jpeg_drv_setpara.o

REMOVED_FILES := "*.o" "*.ko" "*.order" "*.symvers" "*.mod" "*.mod.*" "*.cmd" ".tmp_versions" "modules.builtin"

#===============================================================================
# rules
#===============================================================================
.PHONY: all clean install uninstall

all:
	$(AT)make -C $(LINUX_DIR) ARCH=arm CROSS_COMPILE=$(CFG_HI_TOOLCHAINS_NAME)- M=$(CURDIR) modules

clean:
	$(AT)find ./ -name "*.d" $(foreach file, $(REMOVED_FILES), -o -name $(file)) | xargs rm -rf

install: all
ifneq ($(CFG_MSP_BUILDTYPE),y)
	$(AT)cp -f $(CURDIR)/$(MOD_NAME).ko $(MODULE_DIR)/
endif

uninstall:
	$(AT)rm -rf $(MODULE_DIR)/$(MOD_NAME).ko

