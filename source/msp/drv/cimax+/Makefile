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
                -I$(MSP_DIR)/drv/cimax+					\
                
EXTRA_CFLAGS += $(CFG_HI_KMOD_CFLAGS)

KBUILD_EXTRA_SYMBOLS += $(COMMON_DIR)/drv/Module.symvers

MOD_NAME := cimax+usb_driver

obj-$(CFG_MSP_BUILDTYPE) += $(MOD_NAME).o

$(MOD_NAME)-y := cimax+usb-driver.o cimax+usb_fw.o	
$(MOD_NAME)-y += cimax+usb_config.o
$(MOD_NAME)-y += cimax+usb_time.o

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
	@( if [ ! -e $(ROOTFS_DIR)/lib/firmware ]; then (\
		mkdir -pv $(ROOTFS_DIR)/lib/firmware \
	) fi )
	$(AT)cp -f $(CURDIR)/*.cfg $(ROOTFS_DIR)/lib/firmware
	$(AT)cp -f $(CURDIR)/*.bin $(ROOTFS_DIR)/lib/firmware
	@( if [ ! -e $(ROOTFS_DIR)/etc/udev/rules.d ]; then (\
		mkdir -pv $(ROOTFS_DIR)/etc/udev/rules.d \
	) fi )
	$(AT)cp -f $(CURDIR)/*.rules $(ROOTFS_DIR)/etc/udev/rules.d/
endif
	
uninstall:
	$(AT)rm -rf $(MODULE_DIR)/$(MOD_NAME).ko
	$(AT)rm -rf $(ROOTFS_DIR)/lib/firmware/cimax+usb.cfg
	$(AT)rm -rf $(ROOTFS_DIR)/lib/firmware/cimax+_usbdvb.bin
	$(AT)rm -rf $(ROOTFS_DIR)/etc/udev/rules.d/95-cimax+usb.rules