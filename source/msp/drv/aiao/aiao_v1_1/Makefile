#======::=========================================================================
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



ifneq ($(findstring $(CFG_HI_CHIP_TYPE), hi3716mv310 hi3110ev500 hi3716mv320 hi3716mv330),)
EXTRA_CFLAGS += -DAIAO_ALSA_DRV_V2
ALSA_DIR = alsa/dsp_mix_v2
endif
#===============================================================================
# local variables
#===============================================================================
ADSP_DRV_INCLUDE =$(SDK_DIR)/source/msp/drv/adsp/adsp_v1_1/include 

EXTRA_CFLAGS += $(CFG_HI_KMOD_CFLAGS)

EXTRA_CFLAGS += -I$(COMMON_UNF_INCLUDE)                 \
                -I$(COMMON_API_INCLUDE)                 \
                -I$(COMMON_DRV_INCLUDE)                 \
                -I$(MSP_UNF_INCLUDE)                    \
                -I$(MSP_API_INCLUDE)                    \
                -I$(MSP_DRV_INCLUDE)                    \
		        -I$(MSP_DIR)/api/higo/include           \
                -I$(ADSP_DRV_INCLUDE)                    \
		        -I$(CURDIR)	

#COMMON include  
EXTRA_CFLAGS += -I$(SDK_DIR)/source/msp/drv/aiao/aiao_v1_1/common/include
#AO include 
EXTRA_CFLAGS += -I$(SDK_DIR)/source/msp/drv/aiao/aiao_v1_1/ao
#AI include 
ifeq ($(CFG_HI_AI_SUPPORT),y)
EXTRA_CFLAGS += -I$(SDK_DIR)/source/msp/drv/aiao/aiao_v1_1/ai
EXTRA_CFLAGS += -DHI_AUDIO_AI_SUPPORT
endif
#ALSA include 
ifeq ($(CFG_HI_SND_ALSA_AO_SUPPORT),y)
EXTRA_CFLAGS += -I$(SDK_DIR)/source/msp/drv/aiao/aiao_v1_1/$(ALSA_DIR)
EXTRA_CFLAGS += -DHI_ALSA_AO_SUPPORT
endif

ifeq ($(CFG_HI_SND_ALSA_I2S_ONLY_SUPPORT),y)
EXTRA_CFLAGS += -I$(SDK_DIR)/source/msp/drv/aiao/aiao_v1_1/$(ALSA_DIR)
endif

ifeq ($(CFG_HI_SND_ALSA_HDMI_ONLY_SUPPORT),y)
EXTRA_CFLAGS += -I$(SDK_DIR)/source/msp/drv/aiao/aiao_v1_1/$(ALSA_DIR)
endif
ifeq ($(CFG_HI_SND_MUTECTL_SUPPORT),y)
EXTRA_CFLAGS += -DHI_SND_MUTECTL_SUPPORT
EXTRA_CFLAGS += -DHI_SND_MUTECTL_GPIO=$(CFG_HI_SND_MUTECTL_GPIO)
EXTRA_CFLAGS += -DHI_SND_MUTECTL_LEVEL=$(CFG_HI_SND_MUTECTL_LEVEL)
endif

ifeq ($(CFG_HI_SND_ADAC_SUPPORT),y)
EXTRA_CFLAGS += -DHI_SND_SUPPORT_ADAC
endif
ifeq ($(CFG_HI_SND_SPDIF_SUPPORT),y)
EXTRA_CFLAGS += -DHI_SND_SUPPORT_SPDIF
endif
ifeq ($(CFG_HI_SND_HDMI_SUPPORT),y)
EXTRA_CFLAGS += -DHI_SND_SUPPORT_HDMI
endif
ifeq ($(CFG_HI_SND_AMP_SUPPORT),y)
#EXTRA_CFLAGS += -DHI_SND_AMP_SUPPORT
endif

ifeq ($(CFG_HI_SND_AOE_HW_SUPPORT),y)
EXTRA_CFLAGS += -DHI_SND_AOE_HW_SUPPORT
endif
ifeq ($(CFG_HI_ADAC_SLIC_SUPPORT),y)
EXTRA_CFLAGS += -DHI_ADAC_SLIC_SUPPORT
endif

#===============================================================================
# HI_SND_DRV_TEMPLATE_OPT : stantard drvier template 
#===============================================================================
EXTRA_CFLAGS += -DHI_SND_DRV_TEMPLATE_OPT

#===============================================================================
# HI_SND_DRV_SUSPEND_SUPPORT : suspend & resume driver 
#===============================================================================
EXTRA_CFLAGS += -DHI_SND_DRV_SUSPEND_SUPPORT

#EXTRA_CFLAGS += -DHI_SND_FPGA

KBUILD_EXTRA_SYMBOLS += $(COMMON_DIR)/drv/Module.symvers

#EXTRA_CFLAGS += -DHIAO_DEBUG

MOD_NAME := hi_aiao

obj-$(CFG_MSP_BUILDTYPE) += $(MOD_NAME).o

$(MOD_NAME)-y := drv_aiao_module.o

#COMMON SUPPORT
$(MOD_NAME)-y += common/src/audio_util.o \
		 common/src/hal_aiao.o \
		 common/src/hal_aiao_func.o \
		 common/src/hal_aiao_priv.o 



EXTRA_CFLAGS += -DHI_AIAO_CUTTING_MEMORY


ifneq ($(findstring $(CFG_HI_CHIP_TYPE), hi3716mv310 hi3110ev500 hi3716mv320),)
EXTRA_CFLAGS += -DHI_SND_SUPPORT_TIANLAI_V500
$(MOD_NAME)-y += common/src/hal_tianlai_adac_v500.o
endif

ifneq ($(findstring $(CFG_HI_CHIP_TYPE), hi3716mv330),)
$(MOD_NAME)-y += common/src/hal_tianlai_adac_v520.o
endif

ifeq ($(CFG_HI_SUPPORT_INTERNAL_OP),y)
EXTRA_CFLAGS += -DHI_SND_SUPPORT_INTERNAL_OP
ifeq ($(CFG_MAXGAINOUTPUT),y)
EXTRA_CFLAGS += -DHI_SND_SUPPORT_INTERNAL_OP_MAXGAIN
endif
endif

ifeq ($(CFG_HI_CHIP_TYPE),hi3716mv330)
EXTRA_CFLAGS += -DHI_SND_HDMI_I2S_SPDIF_MUX
endif

ifeq ($(CFG_HI_AIAO_VERIFICATION_SUPPORT),y)
EXTRA_CFLAGS += -DHI_AIAO_VERIFICATION_SUPPORT
$(MOD_NAME)-y += common/src/drv_aiao_veri.o 
endif

ifeq ($(CFG_HI_AIAO_AEF_SUPPORT),y)
$(MOD_NAME)-y += ao/drv_ao_aef.o 
endif
#AO SUPPORT (default)
$(MOD_NAME)-y += ao/drv_ao.o \
		 ao/drv_ao_op.o \
		 ao/drv_ao_track.o \
		 ao/hal_aoe_func.o \
		 ao/hal_aoe.o \
		 ao/drv_ao_intf.o 

#ifneq ($(findstring $(CFG_HI_CHIP_TYPE), hi3716mv310 hi3110ev500 hi3716mv320),)
#EXTRA_CFLAGS += -DHI_AIAO_TIMER_SUPPORT
#$(MOD_NAME)-y +=timer/drv_timer.o
#endif
#AI SUPPORT(optional)
ifeq ($(CFG_HI_AI_SUPPORT),y)
$(MOD_NAME)-y += ai/drv_ai_intf.o\
                 ai/drv_ai.o
endif

#ALSA SUPPORT(optional)
ifeq ($(CFG_HI_SND_ALSA_AO_SUPPORT),y)
#ALSA drvier V2
$(MOD_NAME)-y += $(ALSA_DIR)/hiaiao_card.o \
		 $(ALSA_DIR)/hiaiao_dma.o \
		 $(ALSA_DIR)/hiaiao_codec.o \
		 $(ALSA_DIR)/hiaiao_i2s.o \
		 $(ALSA_DIR)/alsa_aiao_proc_func.o \
		 $(ALSA_DIR)/drv_ao_func.o \
		 $(ALSA_DIR)/alsa_aiao_volume_func.o
endif

ifeq ($(CFG_HI_SND_ALSA_AI_SUPPORT),y)
$(MOD_NAME)-y +=$(ALSA_DIR)/drv_ai_func.o
endif
ifeq ($(CFG_HI_ALSA_TVL320_KERNEL_SUPPORT),y)
$(MOD_NAME)-y +=$(ALSA_DIR)/alsa_i2c.o    \
		$(ALSA_DIR)/aic31.o	
endif
#CAST SUPPORT
#ifeq ($(CFG_HI_SND_CAST_SUPPORT),y)
EXTRA_CFLAGS += -DHI_SND_CAST_SUPPORT
$(MOD_NAME)-y += ao/drv_ao_cast.o \
		 ao/hal_cast.o 
#endif

ifeq ($(CFG_HI_SND_ALSA_I2S_ONLY_SUPPORT),y)
$(MOD_NAME)-y += alsa/i2s_only/hiaiao_hw_card.o \
		 alsa/i2s_only/hiaiao_hw_dma.o \
		 alsa/i2s_only/hiaiao_hw_codec.o \
		 alsa/i2s_only/hiaiao_hw_i2s.o \
		 alsa/i2s_only/alsa_aiao_hw_proc_func.o \
		 alsa/i2s_only/drv_ao_hw_func.o 
endif
ifeq ($(CFG_HI_SND_ALSA_HDMI_ONLY_SUPPORT),y)
$(MOD_NAME)-y += alsa/hdmi_only/hiaiao_hdmi_card.o \
		 alsa/hdmi_only/hiaiao_hdmi_dma.o \
		 alsa/hdmi_only/hiaiao_hdmi_codec.o \
		 alsa/hdmi_only/hiaiao_hdmi_i2s.o \
		 alsa/hdmi_only/alsa_aiao_hdmi_proc_func.o \
		 alsa/hdmi_only/drv_ao_hdmi_func.o \
		 alsa/hdmi_only/hdmi_alsa_aiao_volume_func.o
endif

ifeq ($(CFG_HI_SND_ALSA_AI_SUPPORT),y)
EXTRA_CFLAGS += -DHI_ALSA_AI_SUPPORT
endif
ifeq ($(CFG_HI_SND_ALSA_I2S_ONLY_SUPPORT),y)
EXTRA_CFLAGS += -I$(SDK_DIR)/source/msp/drv/aiao/aiao_v1_1/alsa/i2s_only
EXTRA_CFLAGS += -DHI_ALSA_I2S_ONLY_SUPPORT
endif
ifeq ($(CFG_HI_SND_ALSA_HDMI_ONLY_SUPPORT),y)
EXTRA_CFLAGS += -I$(SDK_DIR)/source/msp/drv/aiao/aiao_v1_1/alsa/hdmi_only
EXTRA_CFLAGS += -DHI_ALSA_HDMI_ONLY_SUPPORT
endif
ifeq ($(CFG_HI_ALSA_TVL320_KERNEL_SUPPORT),y)
EXTRA_CFLAGS += -DHI_ALSA_TLV320_SUPPORT
endif

#===============================================================================
# For Pinshare Set
#===============================================================================



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
