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

MODULE_SRC := hostapd_8
MODULE := hostapd
MODULE_PATH := $(BUILD_DIR)/$(MODULE_SRC)/hostapd/hostapd

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

uninstall: $(UNINSTALL_MODULES)

#==================================================================
#                          modules
#==================================================================
%_build: $(BUILD_DIR)
	@echo -e "\033[31m""Build $(patsubst %_build,%,$@) ...""\033[00m"
	@test -d $(BUILD_DIR)/$(patsubst %_build,%,$@) \
		|| tar -zxf $(patsubst %_build,%,$@).tar.gz -C $(BUILD_DIR)
	cd $(BUILD_DIR)/$(patsubst %_build,%,$@)/hostapd && \
	cp -fv defconfig .config && \
	(echo ""; \
		echo "CONFIG_LIBNL20=y"; \
		echo "CONFIG_IEEE80211N=y"; \
		echo "CFLAGS += -I$(LIBNL_DIR)/include -I$(OPENSSL_DIR)/include"; \
		echo "LIBS += -L$(LIBNL_DIR)/lib -L$(OPENSSL_DIR)/lib"; \
		echo "LIBS_p += -L$(LIBNL_DIR)/lib -L$(OPENSSL_DIR)/lib") >> .config && \
	make -j 16 CC=$(HOST)-gcc && \
	cd -

$(BUILD_DIR):
	@test -d $(BUILD_DIR) || mkdir -p $(BUILD_DIR)

%_uninstall:
	@rm -f $(INSTALL_DIR)/$(patsubst %_uninstall,%,$@)