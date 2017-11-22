#===============================================================================
# export variables
#===============================================================================
ifeq ($(CFG_HI_EXPORT_FLAG),)
SDK_DIR := $(CURDIR)/../../..
include $(SDK_DIR)/base.mak
endif

################################################################################
BUILD_DIR      := $(shell pwd)/tmp
HOST           := $(CFG_HI_TOOLCHAINS_NAME)
#ALSA_PATCH     := $(SDK_DIR)/3rd/source/component/alsa
ALSA_PREFIX    := /usr/share
ALSA_LIB       := alsa-lib-1.0.28
ALSA_UTILS     := alsa-utils-1.0.28
ALSA_CONFIG    := etc/asound.conf
TARGETS        := alsa_lib alsa_utils

################################################################################
.PHONY: all clean install uninstall

################################################################################
all: $(TARGETS)

clean:
	$(AT)rm -rf $(ALSA_LIB) $(ALSA_UTILS) $(BUILD_DIR)

install: all
	$(AT)cp -af $(BUILD_DIR)$(ALSA_PREFIX)/include/* $(HI_INCLUDE_DIR)
	$(AT)cp -af $(BUILD_DIR)$(ALSA_PREFIX)/lib/* $(SHARED_LIB_DIR)
	$(AT)mkdir -p $(HI_ROOTFS_DIR)/etc
	$(AT)mkdir -p $(HI_ROOTFS_DIR)$(ALSA_PREFIX)
	$(AT)cp -af $(ALSA_CONFIG)          $(ROOTFS_DIR)/etc/
	$(AT)cp -af $(BUILD_DIR)$(ALSA_PREFIX)/bin    $(ROOTFS_DIR)
	$(AT)cp -af $(BUILD_DIR)$(ALSA_PREFIX)/lib    $(ROOTFS_DIR)$(ALSA_PREFIX)
	$(AT)cp -af $(BUILD_DIR)$(ALSA_PREFIX)/sbin   $(ROOTFS_DIR)
	$(AT)cp -af $(BUILD_DIR)$(ALSA_PREFIX)/share  $(ROOTFS_DIR)$(ALSA_PREFIX)

uninstall:
	$(AT)rm -rf $(HI_ROOTFS_DIR)/etc/asound.conf

################################################################################
alsa_lib : prepare
	$(AT)cd $(ALSA_LIB) && \
            ./configure --host=$(HOST) STRIP=$(STRIP) --prefix=$(ALSA_PREFIX) \
                --disable-python --enable-shared --with-alsa-devdir=/dev/snd && \
            make && \
            make DESTDIR=$(BUILD_DIR) install-strip && \
            cd -

alsa_utils : alsa_lib
	$(AT)cd $(ALSA_UTILS) && \
            ./configure --host=$(HOST) STRIP=$(STRIP) --prefix=$(ALSA_PREFIX) \
                --disable-alsaconf --disable-alsamixer --disable-xmlto --disable-nls \
                CFLAGS=-I$(BUILD_DIR)$(ALSA_PREFIX)/include \
                LDFLAGS=-L$(BUILD_DIR)$(ALSA_PREFIX)/lib && \
            make && \
            make DESTDIR=$(BUILD_DIR) install-strip && \
            cd -

################################################################################
prepare:
	$(AT)test -d $(ALSA_LIB)    || tar xf $(ALSA_LIB).tar.bz2
	$(AT)test -d $(ALSA_UTILS)  || tar xf $(ALSA_UTILS).tar.bz2
