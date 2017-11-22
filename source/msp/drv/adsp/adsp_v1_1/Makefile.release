#===============================================================================
# export variables
#===============================================================================
ifeq ($(CFG_HI_EXPORT_FLAG),)
    ifneq ($(KERNELRELEASE),)
    KERNEL_DIR := $(srctree)

    SDK_DIR := $(KERNEL_DIR)/../../..
    else
    SDK_DIR := $(CURDIR)/../../../../..
    endif
include $(SDK_DIR)/cfg.mak
include $(SDK_DIR)/base.mak
endif

#===============================================================================
# local variables
#===============================================================================
ADSP_DRV_INCLUDE =$(SDK_DIR)/source/msp/drv/adsp/adsp_v1_1/include 
ADSP_DRV_INCLUDE_1 =$(SDK_DIR)/source/msp/drv/adsp/adsp_v1_1/include/comp 
HA_CODEC_INCLUDE = $(SDK_DIR)/source/component/ha_codec/include
AVC_INCLUDE = $(SDK_DIR)/source/msp/drv/adsp/adsp_v1_1/hifi/external/avc/inc 
EXTRA_CFLAGS += $(CFG_HI_KMOD_CFLAGS)

EXTRA_CFLAGS += -I$(COMMON_UNF_INCLUDE)                 \
                -I$(COMMON_API_INCLUDE)                 \
                -I$(COMMON_DRV_INCLUDE)                 \
                -I$(MSP_UNF_INCLUDE)                    \
                -I$(MSP_API_INCLUDE)                    \
                -I$(MSP_DRV_INCLUDE)        \
                -I$(ADSP_DRV_INCLUDE)   \
		        -I$(AVC_INCLUDE)            \
		        -I$(HA_CODEC_INCLUDE)   \
		        -I$(HA_EFFECT_INCLUDE)   \
                -I$(ADSP_DRV_INCLUDE_1)                 



#simulate support

HIFIDIR:=./hifi
ADSP_DIR:=$(MSP_DIR)/drv/adsp/adsp_v1_1
HIFI_DIR:=$(ADSP_DIR)/hifi
AVC_DIR := ./hifi/external/avc
EXTRA_CFLAGS +=  \
		-I$(HIFI_DIR)/common/include \
		-I$(HIFI_DIR)/aoe/include \
		-I$(HIFI_DIR)/aoe/src/include \
		-I$(HIFI_DIR)/component/codec/iapcm_dec \
		-I$(HIFI_DIR)/component/codec/iamp3_dec \
		-I$(ADSP_DIR)/

EXTRA_CFLAGS += -DHI_SND_AOE_SWSIMULATE_SUPPORT
EXTRA_CFLAGS += -DINTERLEAVED_OUTPUT

ifeq ($(CFG_ADVCA_FUNCTION),y)
#ifeq ($(findstring -DHI_ADVCA_FUNCTION_RELEASE, $(CFG_HI_CFLAGS)), -DHI_ADVCA_FUNCTION_RELEASE)
$(shell cp $(ADSP_DIR)/$(CFG_HI_TOOLCHAINS_NAME)_advca/hifi/* $(HIFI_DIR)/ -afr)
else
$(shell cp $(ADSP_DIR)/$(CFG_HI_TOOLCHAINS_NAME)/hifi/* $(HIFI_DIR)/ -afr)
endif

KBUILD_EXTRA_SYMBOLS += $(COMMON_DIR)/drv/Module.symvers

MOD_NAME := hi_adsp

obj-$(CFG_MSP_BUILDTYPE) += $(MOD_NAME).o

$(MOD_NAME)-y   := drv_adsp_intf.o \
		   drv_adsp.o 
		   


#simulate support
$(MOD_NAME)-y += $(HIFIDIR)/common/linear/linear.o
$(MOD_NAME)-y += $(HIFIDIR)/common/mem/dsp_mem.o
$(MOD_NAME)-y += $(HIFIDIR)/common/resampler/resample_rom.o
$(MOD_NAME)-y += $(HIFIDIR)/common/resampler/resample.o
$(MOD_NAME)-y += $(HIFIDIR)/common/util/dsp_util.o
$(MOD_NAME)-y += $(HIFIDIR)/common/ringbuf/dsp_ringbuf.o
$(MOD_NAME)-y += $(HIFIDIR)/common/basicop/basicop.o
#$(MOD_NAME)-y += $(HIFIDIR)/common/timer/system_timer.o

$(MOD_NAME)-y += $(HIFIDIR)/sw_main.o
$(MOD_NAME)-y += $(HIFIDIR)/aoe/src/aop/aoe_aop.o
$(MOD_NAME)-y += $(HIFIDIR)/aoe/src/aip/aoe_aip.o
$(MOD_NAME)-y += $(HIFIDIR)/aoe/src/engine/aoe_engine.o
$(MOD_NAME)-y += $(HIFIDIR)/aoe/src/aoe_main.o
$(MOD_NAME)-y += $(HIFIDIR)/aoe/src/aoe_reg.o

EXTRA_CFLAGS += -DHI_SND_AVC_SUPPORT
$(MOD_NAME)-y += $(AVC_DIR)/src/imedia_avc_api.o
$(MOD_NAME)-y += $(AVC_DIR)/src/imedia_avc_basic_op.o
$(MOD_NAME)-y += $(AVC_DIR)/src/imedia_avc_func.o




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

