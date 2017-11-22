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
#   rules
#===============================================================================
.PHONY: all clean install uninstall
VFMW_DIR = vfmw_v4.0

ifeq ($(CFG_HI_CHIP_TYPE),hi3110ev500)

ifeq ($(CFG_HI_TOOLCHAINS_NAME),arm-hisiv200-linux)
ifeq ($(findstring -DHI_ADVCA_FUNCTION_RELEASE, $(CFG_HI_CFLAGS)), -DHI_ADVCA_FUNCTION_RELEASE)
export PRODUCT_DIR = Hi3716MV310_advca
else
export PRODUCT_DIR = Hi3716MV310
endif
endif

ifeq ($(CFG_HI_TOOLCHAINS_NAME),arm-histbv300-linux)
ifeq ($(findstring -DHI_ADVCA_FUNCTION_RELEASE, $(CFG_HI_CFLAGS)), -DHI_ADVCA_FUNCTION_RELEASE)
export PRODUCT_DIR = Hi3716MV310_advca_hisiv300
else
export PRODUCT_DIR = Hi3716MV310_hisiv300
endif
endif

ifeq ($(CFG_HI_TOOLCHAINS_NAME),arm-histbv310-linux)
ifeq ($(findstring -DHI_ADVCA_FUNCTION_RELEASE, $(CFG_HI_CFLAGS)), -DHI_ADVCA_FUNCTION_RELEASE)
export PRODUCT_DIR = Hi3716MV310_advca_hisiv310
else
export PRODUCT_DIR = Hi3716MV310_hisiv310
endif
endif

endif

ifeq ($(CFG_HI_CHIP_TYPE),hi3716mv310)

ifeq ($(CFG_HI_TOOLCHAINS_NAME),arm-hisiv200-linux)
ifeq ($(findstring -DHI_ADVCA_FUNCTION_RELEASE, $(CFG_HI_CFLAGS)), -DHI_ADVCA_FUNCTION_RELEASE)
export PRODUCT_DIR = Hi3716MV310_advca
else
export PRODUCT_DIR = Hi3716MV310
endif
endif

ifeq ($(CFG_HI_TOOLCHAINS_NAME),arm-histbv300-linux)
ifeq ($(findstring -DHI_ADVCA_FUNCTION_RELEASE, $(CFG_HI_CFLAGS)), -DHI_ADVCA_FUNCTION_RELEASE)
export PRODUCT_DIR = Hi3716MV310_advca_hisiv300
else
export PRODUCT_DIR = Hi3716MV310_hisiv300
endif
endif

ifeq ($(CFG_HI_TOOLCHAINS_NAME),arm-histbv310-linux)
#ifeq ($(findstring -DHI_ADVCA_FUNCTION_RELEASE, $(CFG_HI_CFLAGS)), -DHI_ADVCA_FUNCTION_RELEASE)
ifeq ($(CFG_ADVCA_FUNCTION),y)
export PRODUCT_DIR = Hi3716MV310_advca_hisiv310
else
export PRODUCT_DIR = Hi3716MV310_hisiv310
endif
endif

endif

ifeq ($(CFG_HI_CHIP_TYPE),hi3716mv330)

ifeq ($(CFG_HI_TOOLCHAINS_NAME),arm-hisiv200-linux)
ifeq ($(findstring -DHI_ADVCA_FUNCTION_RELEASE, $(CFG_HI_CFLAGS)), -DHI_ADVCA_FUNCTION_RELEASE)
export PRODUCT_DIR = Hi3716MV330_advca
else
export PRODUCT_DIR = Hi3716MV330
endif
endif

ifeq ($(CFG_HI_TOOLCHAINS_NAME),arm-histbv300-linux)
ifeq ($(findstring -DHI_ADVCA_FUNCTION_RELEASE, $(CFG_HI_CFLAGS)), -DHI_ADVCA_FUNCTION_RELEASE)
export PRODUCT_DIR = Hi3716MV330_advca_hisiv300
else
export PRODUCT_DIR = Hi3716MV330_hisiv300
endif
endif

ifeq ($(CFG_HI_TOOLCHAINS_NAME),arm-histbv310-linux)
ifeq ($(findstring -DHI_ADVCA_FUNCTION_RELEASE, $(CFG_HI_CFLAGS)), -DHI_ADVCA_FUNCTION_RELEASE)
export PRODUCT_DIR = Hi3716MV330_advca_hisiv310
else
export PRODUCT_DIR = Hi3716MV330_hisiv310
endif
endif

endif


ifeq ($(CFG_HI_VFMW_DECODE_CAPABILITY),SD_ONLY)
CFG_DIR = SD_ONLY
endif

ifeq ($(CFG_HI_VFMW_DECODE_CAPABILITY),HD_SIMPLE)
CFG_DIR = HD_SIMPLE
endif

ifeq ($(CFG_HI_VFMW_DECODE_CAPABILITY),HD_BASIC)
CFG_DIR = HD_BASIC
endif

ifeq ($(CFG_HI_VFMW_DECODE_CAPABILITY),HD_FULL)
CFG_DIR = HD_FULL
endif

ifeq ($(PRODUCT_DIR),HiX5HD)
CFG_DIR = HD_FULL
endif

ifeq ($(CFG_MSP_BUILDTYPE), y)
obj-$(CFG_MSP_BUILDTYPE) += vfmw_v4.0/

ifeq ($(CFG_HI_VDEC_SVDEC_SUPPORT),y)
obj-$(CFG_MSP_BUILDTYPE) += softlib/
endif
endif

ifneq ($(KERNELRELEASE),)
VFMW_CFG_PATH := $(SDK_DIR)/source/msp/drv/vfmw/$(VFMW_DIR)/firmware/product
$(shell cp -rf $(VFMW_CFG_PATH)/$(PRODUCT_DIR)/$(CFG_DIR)/vfmw_config.cfg  $(VFMW_CFG_PATH)/$(PRODUCT_DIR))
$(shell cp -rf $(VFMW_CFG_PATH)/$(PRODUCT_DIR)/$(CFG_DIR)/vfmw_make.cfg  $(VFMW_CFG_PATH)/$(PRODUCT_DIR))
endif

all:
	$(AT)cp -rf $(VFMW_DIR)/firmware/product/$(PRODUCT_DIR)/$(CFG_DIR)/vfmw_config.cfg  $(VFMW_DIR)/firmware/product/$(PRODUCT_DIR)
	$(AT)cp -rf $(VFMW_DIR)/firmware/product/$(PRODUCT_DIR)/$(CFG_DIR)/vfmw_make.cfg  $(VFMW_DIR)/firmware/product/$(PRODUCT_DIR)
ifneq ($(CFG_MSP_BUILDTYPE),y)
	$(AT)make -C $(VFMW_DIR)/ all
	$(AT)cp $(VFMW_DIR)/hi_vfmw.ko vfmw_release 
	$(AT)cp $(VFMW_DIR)/firmware/product/$(PRODUCT_DIR)/vfmw.h vfmw_release  
	$(AT)cp $(VFMW_DIR)/firmware/product/$(PRODUCT_DIR)/vfmw_ext.h vfmw_release
endif
	$(AT)make -C softlib/ all
	$(AT)cp -f $(MSP_DIR)/drv/vfmw/hi_vfmw_avsp.bin $(MODULE_DIR)/
clean:
ifneq ($(CFG_MSP_BUILDTYPE),y)
	$(AT)make -C $(VFMW_DIR)/ clean
endif
	$(AT)make -C softlib/ clean

install: all
ifneq ($(CFG_MSP_BUILDTYPE),y)
	$(AT)make -C $(VFMW_DIR)/ install
endif
ifeq ($(CFG_HI_VDEC_SVDEC_SUPPORT),y)
	$(AT)make -C softlib/ install
endif

uninstall:
ifneq ($(CFG_MSP_BUILDTYPE),y)
	$(AT)make -C $(VFMW_DIR)/ uninstall
endif
ifeq ($(CFG_HI_VDEC_SVDEC_SUPPORT),y)
	$(AT)make -C softlib/ uninstall
endif

prepare:
	$(AT)cp -f $(MSP_DIR)/drv/vfmw/hi_vfmw_avsp.bin $(MODULE_DIR)/
	$(AT)cp -rf $(VFMW_DIR)/firmware/product/$(PRODUCT_DIR)/$(CFG_DIR)/vfmw_config.cfg  $(VFMW_DIR)/firmware/product/$(PRODUCT_DIR)
	$(AT)cp -rf $(VFMW_DIR)/firmware/product/$(PRODUCT_DIR)/$(CFG_DIR)/vfmw_make.cfg  $(VFMW_DIR)/firmware/product/$(PRODUCT_DIR) 
	$(AT)cp $(VFMW_DIR)/firmware/product/$(PRODUCT_DIR)/vfmw.h vfmw_release
	$(AT)cp $(VFMW_DIR)/firmware/product/$(PRODUCT_DIR)/vfmw_ext.h vfmw_release

unprepare:
	$(AT)rm -rf vfmw_release/vfmw.h
	$(AT)rm -rf vfmw_release/vfmw_ext.h
