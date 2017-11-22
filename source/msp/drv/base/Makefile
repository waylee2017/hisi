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

EXTRA_CFLAGS += -I$(PUB_DIR)/include                    \
                -I$(COMMON_UNF_INCLUDE)                 \
                -I$(COMMON_API_INCLUDE)                 \
                -I$(COMMON_DRV_INCLUDE)                 \
                -I$(MSP_UNF_INCLUDE)                    \
                -I$(MSP_API_INCLUDE)                    \
                -I$(MSP_DRV_INCLUDE)                    \
                -I$(MSP_DIR)/api/vi                     \
                -I$(MSP_DIR)/drv/vi			\
                -I$(MSP_DIR)/api/higo/include		\
		-I$(MSP_DIR)/api/tde/include           \
		-I$(MSP_DIR)/drv/adsp/adsp_v1_1/include
		
ifeq ($(CFG_HI_VDEC_SVDEC_SUPPORT),y)
EXTRA_CFLAGS += -DHI_VDEC_SVDEC_SUPPORT
endif
ifeq ($(CFG_HI_PVR_SUPPORT),y)
EXTRA_CFLAGS += -DHI_PVR_SUPPORT
endif

KBUILD_EXTRA_SYMBOLS += $(COMMON_DIR)/drv/Module.symvers

MOD_NAME := hi_base

obj-$(CFG_MSP_BUILDTYPE) += $(MOD_NAME).o


$(MOD_NAME)-y   :=  hi_init.o
