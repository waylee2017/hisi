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

include $(SDK_DIR)/cfg.mak
include $(SDK_DIR)/base.mak
endif

#===============================================================================
# local variables
#===============================================================================
EXTRA_CFLAGS += $(CFG_HI_KMOD_CFLAGS)

EXTRA_CFLAGS += ${CFG_HI_BOARD_CONFIGS}

EXTRA_CFLAGS += -I$(COMMON_UNF_INCLUDE)                       \
                -I$(COMMON_API_INCLUDE)                       \
                -I$(COMMON_DRV_INCLUDE)                       \
                -I$(MSP_UNF_INCLUDE)                          \
                -I$(MSP_API_INCLUDE)                          \
                -I$(MSP_DRV_INCLUDE)                          \
                -I$(COMPONENT_DIR)/ha_codec/include           \
                -I$(SDK_DIR)/source/msp/drv/mce/include       \
                -I$(SDK_DIR)/source/msp/drv/higo/inc          \
                -I$(SDK_DIR)/source/msp/drv/higo/include      \
                -I$(SDK_DIR)/source/msp/api/higo/include      \
                -I$(SDK_DIR)/source/common/drv/sys            \
                -I$(SDK_DIR)/source/common/drv/mmz	      \
		-I$(SDK_DIR)/source/msp/api/tde/include	      \
		-I$(SDK_DIR)/source/msp/drv/tde	              \
		-I$(SDK_DIR)/source/msp/drv/hifb/adp/include  \
                -I$(SDK_DIR)/source/msp/drv/hifb/include      \
		-I$(SDK_DIR)/source/msp/drv/vo/vou_v4_0	      \
		-I$(SDK_DIR)/source/msp/drv/adsp/adsp_v1_1/include \
		-I$(SDK_DIR)/source/common/api/flash/include  \
		-I$(SDK_DIR)/source/msp/drv/mce/animation
		

ifdef CFG_HI_ADVCA_FUNCTION
ifeq ($(CFG_HI_ADVCA_FUNCTION),DEBUG)
	EXTRA_CFLAGS += -DHI_MCE_PROC_SUPPORT
endif
else
	EXTRA_CFLAGS += -DHI_MCE_PROC_SUPPORT
endif

MOD_NAME := hi_mce


obj-$(CFG_MSP_BUILDTYPE) += $(MOD_NAME).o

ifeq ($(CFG_HI_MCE_SUPPORT),y)
$(MOD_NAME)-y   :=  drv_mce_intf.o      \
                    drv_mce_play.o      \
                    avplay/drv_mce_avplay.o \
			animation/hi_ani_pic.o \
			disp_adp.o
else
$(MOD_NAME)-y   :=  drv_mce_intf.o	
endif

#===============================================================================
#   rules
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

uninstall:
	$(AT)rm -rf $(MODULE_DIR)/$(MOD_NAME).ko

