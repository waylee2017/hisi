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
EXTRA_CFLAGS += -I$(COMMON_UNF_INCLUDE)                 \
                -I$(COMMON_API_INCLUDE)                 \
                -I$(COMMON_DRV_INCLUDE)                 \
                -I$(MSP_UNF_INCLUDE)                    \
                -I$(MSP_DRV_INCLUDE)                    \
                -I$(MSP_DIR)/drv/ci						\
                -I$(MSP_DIR)/api/gpio			        \
                -I$(MSP_DIR)/drv/gpio			        \

EXTRA_CFLAGS += $(CFG_HI_KMOD_CFLAGS)

KBUILD_EXTRA_SYMBOLS += $(COMMON_DIR)/drv/Module.symvers

########################config for CI/CI+ device support  ######################
ifeq ($(CFG_HI_CI_DEV_CIMAX),y)
export CIMAX_SUPPORT:=YES
EXTRA_CFLAGS += -DCIMAX_SUPPORT
endif
ifeq ($(CFG_HI_CI_DEV_CIMAXPLUS),y)
export CIMAXPLUS_SUPPORT:=YES
EXTRA_CFLAGS += -DCIMAXPLUS_SUPPORT
endif
ifeq ($(CFG_HI_CI_DEV_HICI),y)
export HICI_SUPPORT:=YES
EXTRA_CFLAGS += -DHICI_SUPPORT
endif

	
MOD_NAME := hi_ci

obj-$(CFG_MSP_BUILDTYPE) += $(MOD_NAME).o


$(MOD_NAME)-y := drv_ci_intf.o	\
		 		 drv_ci.o	
		 
ifeq ($(CIMAX_SUPPORT), YES)
$(MOD_NAME)-y += ./cimax/hal_cimax.o
endif
ifeq ($(CIMAXPLUS_SUPPORT), YES)
$(MOD_NAME)-y += ./cimaxplus/hal_cimaxplus.o
endif
ifeq ($(HICI_SUPPORT), YES)
#$(MOD_NAME)-y += ./hici/hal_hici.o
endif
ifeq ($(STARCI2WIN_SUPPORT), YES)
$(MOD_NAME)-y += ./starci2win/hal_starci2win.o
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

