#==================================================================
# export variables
#==================================================================
ifeq ($(CFG_HI_EXPORT_FLAG),)
SDK_DIR := $(CURDIR)/../../../../..
include $(SDK_DIR)/base.mak
include $(SDK_DIR)/cfg.mak
endif

ARCH ?= arm
CROSS_COMPILE ?= arm-hisiv200-linux-
MODULE_OUT ?= $(ROOTFS_DIR)/kmod

#+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# variables
#+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
BUILD_DIR  := $(shell pwd)/tmp

LOCAL_MODULE =
LOCAL_MODULE_SRC =
LOCAL_MODULE_PATH =

ifeq ($(CFG_HI_WIFI_DEVICE_RTL8723BU),y)
LOCAL_MODULE += rtl8723bu.ko
LOCAL_MODULE_SRC += rtl8723BU_WiFi_linux_v4.3.16_14189.20150519_BTCOEX20150119-5844
LOCAL_MODULE_PATH += $(BUILD_DIR)/rtl8723BU_WiFi_linux_v4.3.16_14189.20150519_BTCOEX20150119-5844/rtl8723bu.ko
endif

BUILD_MODULES   = $(patsubst %,%_build,${LOCAL_MODULE_SRC})
UNINSTALL_MODULES = $(patsubst %,%_uninstall,${LOCAL_MODULE})

#+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# rules
#+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

#==================================================================
#                          all
#==================================================================
.PHONY: all install uninstall clean
all: $(BUILD_MODULES)

install: all
	@test -d $(MODULE_OUT) || mkdir -p $(MODULE_OUT)
ifneq ($(LOCAL_MODULE_PATH),)
	@cp -v $(LOCAL_MODULE_PATH) $(MODULE_OUT)/
endif

uninstall: $(UNINSTALL_MODULES)

clean:
	@rm -rf $(BUILD_DIR)

#==================================================================
#                          modules
#==================================================================
%_build: $(BUILD_DIR)
	@echo -e "\033[31m""Build $(patsubst %_build,%,$@) ...""\033[00m"
	@test -d $(BUILD_DIR)/$(patsubst %_build,%,$@) \
		|| tar -zxf $(patsubst %_build,%,$@).tar.gz -C $(BUILD_DIR)
	make ARCH=$(ARCH) CROSS_COMPILE=$(CROSS_COMPILE) KSRC=$(LINUX_DIR) \
		-C $(BUILD_DIR)/$(patsubst %_build,%,$@)

$(BUILD_DIR):
	@test -d $(BUILD_DIR) || mkdir -p $(BUILD_DIR)

%_uninstall:	
	@rm -f $(MODULE_OUT)/$(patsubst %_uninstall,%,$@)
