#===============================================================================
# export variables
#===============================================================================
ifeq ($(CFG_HI_EXPORT_FLAG),)
SDK_DIR := $(CURDIR)/../../../../..
include $(SDK_DIR)/base.mak
endif

#+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#   variable
#   Linux_BT_USB_3.1.20150526_8723BU_BTCOEX_20150119-5844
#+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
INSTALL_DIR := $(MODULE_DIR)
FIRMWARE_DIR := $(ROOTFS_DIR)/lib/firmware
BUILD_DIR  := $(shell pwd)

obj-m := rtk_btusb.o
rtk_btusb-y = rtk_coex.o rtk_bt.o

#==================================================================
#                          all
#==================================================================
.PHONY: all clean install uninstall
all: 
	make -C $(LINUX_DIR) ARCH=$(ARCH) CROSS_COMPILE=$(CROSS_COMPILE) M=$(BUILD_DIR) modules

clean:
	make -C $(LINUX_DIR)  ARCH=$(ARCH) CROSS_COMPILE=$(CROSS_COMPILE) M=$(BUILD_DIR) clean

install: all
	@test -d $(INSTALL_DIR) || mkdir -p $(INSTALL_DIR)
	@cp -v $(BUILD_DIR)/rtk_btusb.ko $(INSTALL_DIR)/
	@cp -v $(BUILD_DIR)/rtl8723b_fw $(FIRMWARE_DIR)/
	@cp -v $(BUILD_DIR)/rtl8723bu_config $(FIRMWARE_DIR)/
	
uninstall: 
	@rm -f $(INSTALL_DIR)/rtk_btusb.ko
	@rm -f $(FIRMWARE_DIR)/rtl8723b_fw
	@rm -f $(FIRMWARE_DIR)/rtl8723bu_config
