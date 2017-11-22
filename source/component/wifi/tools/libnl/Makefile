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
INSTALL_DIR := $(ROOTFS_DIR)/lib
HOST := $(patsubst %-,%,$(CROSS_COMPILE))
LOCAL_PREFIX := $(shell pwd)/_install

MODULE_SRC := libnl-2.0
MODULE := libnl.so.2 libnl.so.2.0.0 libnl-genl.so.2 libnl-genl.so.2.0.0
MODULE_PATH := $(BUILD_DIR)/$(MODULE_SRC)/lib/.libs/libnl.so.2 \
	$(BUILD_DIR)/$(MODULE_SRC)/lib/.libs/libnl.so.2.0.0 \
	$(BUILD_DIR)/$(MODULE_SRC)/lib/.libs/libnl-genl.so.2 \
	$(BUILD_DIR)/$(MODULE_SRC)/lib/.libs/libnl-genl.so.2.0.0

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
	@rm -rf $(LOCAL_PREFIX)

install: all
	@test -d $(INSTALL_DIR) || mkdir -p $(INSTALL_DIR)
	@cp -av $(MODULE_PATH) $(INSTALL_DIR)/

uninstall: $(UNINSTALL_MODULES)

#==================================================================
#                          modules
#==================================================================
%_build: $(BUILD_DIR)
	@echo -e "\033[31m""Build $(patsubst %_build,%,$@) ...""\033[00m"
	@test -d $(BUILD_DIR)/$(patsubst %_build,%,$@) \
		|| tar -zxf $(patsubst %_build,%,$@).tar.gz -C $(BUILD_DIR)
	cd $(BUILD_DIR)/$(patsubst %_build,%,$@) && \
	./configure --host=$(HOST) CC=$(HOST)-gcc AR=$(HOST)-ar --prefix=$(LOCAL_PREFIX) && \
	make install && \
	cd -

$(BUILD_DIR):
	@test -d $(BUILD_DIR) || mkdir -p $(BUILD_DIR)

%_uninstall:
	@rm -f $(INSTALL_DIR)/$(patsubst %_uninstall,%,$@)
