#===============================================================================
# export variables
#===============================================================================
ifeq ($(CFG_HI_EXPORT_FLAG),)
    ifneq ($(KERNELRELEASE),)
    KERNEL_DIR := $(srctree)

    SDK_DIR := $(KERNEL_DIR)/../../..
    else
    SDK_DIR := $(CURDIR)/../../../..
    endif

include $(SDK_DIR)/base.mak
endif


#===============================================================================
# local variable
#===============================================================================

# V1:HI3716, V2:HI3110, V3:V1R1
#SDK_SECURITY_ARCH_VERSION=SDK_SECURITY_ARCH_VERSION_V1
#SDK_SECURITY_ARCH_VERSION=SDK_SECURITY_ARCH_VERSION_V2
SDK_SECURITY_ARCH_VERSION=SDK_SECURITY_ARCH_VERSION_V3
EXTRA_CFLAGS += -D$(SDK_SECURITY_ARCH_VERSION)

ifneq (${CFG_HI_CHIP_TYPE},hi3716mv330)
EXTRA_CFLAGS += -DRUNTIME_CHECK_ENABLE
EXTRA_CFLAGS += -DDDR_WAKE_UP_CHECK_ENABLE
endif

EXTRA_CFLAGS += $(CFG_HI_KMOD_CFLAGS)
EXTRA_CFLAGS += $(CFG_CFLAGS)

###These header files are for SDK_SECURITY_ARCH_VERSION_V3###
EXTRA_CFLAGS  +=  -I$(COMMON_UNF_INCLUDE)       \
            -I$(COMMON_API_INCLUDE)             \
            -I$(COMMON_DRV_INCLUDE)            	\
            -I$(MSP_DIR)/../common/drv/include  \
            -I$(MSP_UNF_INCLUDE)               	\
            -I$(MSP_API_INCLUDE)		\
            -I$(MSP_DRV_INCLUDE)		\
            -I$(MSP_DIR)/include		\
            -I$(MSP_DRV_INCLUDE)		\
            -I$(MSP_DIR)/drv/advca		\
	    -I$(MSP_DIR)/drv/advca/runtime      \
                    -I$(MSP_DIR)/drv/advca/V300         \
                    -I$(MSP_DIR)/drv/advca/ca_otp       \
                    -I$(MSP_DIR)/drv/advca/ca_otp/ca_otpv200


DDR_WAKE_UP_CHECK_BIN = $(MSP_DIR)/drv/advca/ddr_wakeup_check/ddr_wakeup_check.bin
EXTRA_AFLAGS += -DWAKE_UP_BIN=\"$(DDR_WAKE_UP_CHECK_BIN)\"
KBUILD_EXTRA_SYMBOLS += $(MSP_DIR)/drv/otp/Module.symvers
KBUILD_EXTRA_SYMBOLS += $(COMMON_DIR)/drv/Module.symvers

MOD_NAME := hi_advca
obj-$(CFG_MSP_BUILDTYPE) += $(MOD_NAME).o

$(MOD_NAME)-y := drv_advca_intf.o
$(MOD_NAME)-y += ./drv_advca.o ./drv_advca_common.o
$(MOD_NAME)-y += ./V300/hal_advca_v300.o ./V300/drv_advca_v300.o
$(MOD_NAME)-y += ./ca_otp/ca_otpv200/drv_ca_otp_v200.o


ifneq (${CFG_HI_CHIP_TYPE},hi3716mv330)
$(MOD_NAME)-y += ./runtime/sha1.o
$(MOD_NAME)-y += ./runtime/runtime_module.o
$(MOD_NAME)-y += hi_ca_pm.o
endif
#===============================================================================
# rules
#===============================================================================
.PHONY: all clean install uninstall

all:
	$(AT)make -C $(LINUX_DIR) ARCH=arm CROSS_COMPILE=$(CFG_HI_TOOLCHAINS_NAME)- M=$(CURDIR) modules


install: all
ifneq ($(CFG_MSP_BUILDTYPE),y)
	$(AT)cp -f $(CURDIR)/$(MOD_NAME).ko $(MODULE_DIR)/
endif

uninstall:
	$(AT)rm -rf $(MODULE_DIR)/$(MOD_NAME).ko

clean:
ifdef LINUXROOT
	$(AT)make -C $(LINUXROOT) M=$(CURDIR) clean
endif
ifdef LINUX_DIR
	$(AT)make -C $(LINUX_DIR) M=$(CURDIR) clean
endif
	$(AT)rm -rf  *.ko
	$(AT)rm -rf  *.o
	$(AT)rm -rf  $(MOD_NAME).mod.c
	$(AT)rm -rf  .*.o.cmd
	$(AT)rm -rf .tmp_versions
	$(AT)rm -rf  Module.symvers
	$(AT)rm -rf  modules.order
