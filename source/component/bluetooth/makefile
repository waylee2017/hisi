#===============================================================================
# export variable
#===============================================================================
ifeq ($(CFG_HI_EXPORT_FLAG),)
SDK_DIR ?= $(CURDIR)/../../..

include $(SDK_DIR)/base.mak
endif

BLUETOOTH_DIR = $(SDK_DIR)/source/component/bluetooth
BLUEZ_API_DIR = $(BLUETOOTH_DIR)/hi_api
BLUETOOTH_DRV_DIR = $(BLUETOOTH_DIR)/drv

#===============================================================================
# local variable
#===============================================================================

HEADER_FILES := $(USBPHONE_DIR)/include/hi_usbphone.h

#===============================================================================
# rules
#===============================================================================
.PHONY : all clean install uninstall

all :
	cd $(BLUETOOTH_DIR)/src;tar -zxf bluez_install.tar.gz;chmod 777 -R install;cd -
	@echo "tar -zxf bluez_install.tar.gz  done"
	@-cp -rf $(BLUETOOTH_DIR)/src/install/include/* $(BLUETOOTH_DIR)/include
	@-cp -rf $(BLUETOOTH_DIR)/src/install/usr/share/bluetooth/lib/* $(BLUETOOTH_DIR)/lib
	make -C $(BLUEZ_API_DIR)
	make -C $(BLUETOOTH_DRV_DIR)

clean:
	make -C $(BLUEZ_API_DIR) clean
	make -C $(BLUETOOTH_DRV_DIR) clean
	$(AT)rm -rf $(BLUETOOTH_DIR)/lib/*
	$(AT)rm -rf $(BLUETOOTH_DIR)/include/*
	$(AT)rm -rf $(BLUETOOTH_DIR)/src/install

install:all
	make -C $(BLUEZ_API_DIR) install
	make -C $(BLUETOOTH_DRV_DIR) install
	mkdir -p $(INCLUDE_DIR)/alsa_bluez
	mkdir -p $(SHARED_LIB_DIR)/alsa_bluez
	@-cp -rf $(BLUETOOTH_DIR)/src/install/include/* $(INCLUDE_DIR)/alsa_bluez
	@-cp -rf $(BLUETOOTH_DIR)/src/install/usr/share/bluetooth/lib/* $(SHARED_LIB_DIR)/alsa_bluez

	@-cp -rf $(BLUETOOTH_DIR)/src/install/etc/* $(ROOTFS_DIR)/etc
	@-cp -rf $(BLUETOOTH_DIR)/src/install/kmod/* $(ROOTFS_DIR)/kmod	
	for aaa in $$(find $(BLUETOOTH_DIR)/src/install/usr/share/bluetooth/lib -name "*.a");do rm -rf $$aaa;done
	@-cp -rf $(BLUETOOTH_DIR)/src/install/usr/* $(ROOTFS_DIR)/usr		

uninstall:
	make -C $(BLUEZ_API_DIR) uninstall
	make -C $(BLUETOOTH_DRV_DIR) uninstall
	@rm -rf $(INCLUDE_DIR)/alsa_bluez
	@rm -rf $(SHARED_LIB_DIR)/alsa_bluez
	@rm -rf $(ROOTFS_DIR)/kmod/bluetoothd_server 
	@rm -rf $(ROOTFS_DIR)/kmod/bluez_init
	@rm -rf $(ROOTFS_DIR)/etc/asound.conf 
	@rm -rf $(ROOTFS_DIR)/etc/bluez_init 
	@rm -rf $(ROOTFS_DIR)/etc/group	
	@rm -rf $(ROOTFS_DIR)/etc/passwd	
