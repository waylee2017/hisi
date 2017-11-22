#===============================================================================
# export variables
#===============================================================================
ifeq ($(CFG_HI_EXPORT_FLAG),)
SDK_DIR := $(CURDIR)/../../../../..
include $(SDK_DIR)/base.mak
endif

#+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#   variable
#+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
BUILD_DIR  := $(shell pwd)/tmp
INSTALL_DIR := $(ROOTFS_DIR)/sbin
HOST := $(patsubst %-,%,$(CROSS_COMPILE))
LIBNL_DIR := $(SDK_DIR)/source/component/wifi/tools/libnl/_install
OPENSSL_DIR := $(SDK_DIR)/source/component/wifi/tools/openssl/_install
WPACONF_INSTALL_DIR := $(ROOTFS_DIR)/etc/Wireless

MODULE_SRC := wpa_supplicant_8
MODULE := wpa_supplicant wpa_cli
MODULE_PATH := $(BUILD_DIR)/$(MODULE_SRC)/wpa_supplicant/wpa_supplicant \
	$(BUILD_DIR)/$(MODULE_SRC)/wpa_supplicant/wpa_cli

WPACONF := wpa_supplicant.conf
WPACONF_PATH := $(BUILD_DIR)/$(MODULE_SRC)/wpa_supplicant/wpa_supplicant.conf

BUILD_MODULES = $(patsubst %,%_build,${MODULE_SRC})
UNINSTALL_MODULES = $(patsubst %,%_uninstall,${MODULE})

#+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#   rules
#+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

#==================================================================
#                          all
#==================================================================
.PHONY: all clean install uninstall
all: $(BUILD_MODULES)

clean:
	@rm -rf $(BUILD_DIR)

install: all
	@test -d $(INSTALL_DIR) || mkdir -p $(INSTALL_DIR)
	@cp -v $(MODULE_PATH) $(INSTALL_DIR)/
	@test -d $(WPACONF_INSTALL_DIR) || mkdir -p $(WPACONF_INSTALL_DIR)
	@cp -v $(WPACONF_PATH) $(WPACONF_INSTALL_DIR)/

uninstall: $(UNINSTALL_MODULES)
	@rm -f $(WPACONF_INSTALL_DIR)/$(WPACONF)

#==================================================================
#                          modules
#==================================================================
%_build: $(BUILD_DIR)
	@echo -e "\033[31m""Build $(patsubst %_build,%,$@) ...""\033[00m"
	@test -d $(BUILD_DIR)/$(patsubst %_build,%,$@) \
		|| tar -zxf $(patsubst %_build,%,$@).tar.gz -C $(BUILD_DIR)
	cd $(BUILD_DIR)/$(patsubst %_build,%,$@)/wpa_supplicant && \
	cp -fv defconfig .config && \
	(echo ""; \
		echo "CONFIG_DRIVER_NL80211=y"; \
		echo "CONFIG_LIBNL20=y"; \
		echo "CFLAGS += -I$(LIBNL_DIR)/include -I$(OPENSSL_DIR)/include"; \
		echo "LIBS += -L$(LIBNL_DIR)/lib -L$(OPENSSL_DIR)/lib"; \
		echo "LIBS_p += -L$(LIBNL_DIR)/lib -L$(OPENSSL_DIR)/lib") >> .config && \
	make -j 16 CC=$(HOST)-gcc && \
	cd -

$(BUILD_DIR):
	@test -d $(BUILD_DIR) || mkdir -p $(BUILD_DIR)

%_uninstall:
	@rm -f $(INSTALL_DIR)/$(patsubst %_uninstall,%,$@)