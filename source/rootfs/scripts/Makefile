################################################################################
#    ./scripts/Makefile
#    Create By CaiZhiYong
#    2011.06.19
################################################################################
ifeq ($(CFG_HI_EXPORT_FLAG),)
SDK_DIR := $(shell pwd)/../../..
include $(SDK_DIR)/cfg.mak
include $(SDK_DIR)/base.mak
endif
################################################################################

PREFIX         ?= $(shell pwd)/rootfs
CROSS_COMPILE         := \
	$(if $(CROSS_COMPILE),$(CROSS_COMPILE),arm-hisiv200-linux-)
#CONFIG_MINI_ROOTFS    ?=n
CONFIG_LIBCPP_SUPPORT := \
	$(if $(CFG_HI_LIBCPP_SUPPORT),$(CFG_HI_LIBCPP_SUPPORT),n)
CONFIG_BUSYBOX_MDEV   := \
	$(if $(CONFIG_BUSYBOX_MDEV),$(CONFIG_BUSYBOX_MDEV),n)
CONFIG_BUSYBOX_UDEV   := \
	$(if $(CONFIG_BUSYBOX_UDEV),$(CONFIG_BUSYBOX_UDEV),y)
CONFIG_ETH_SUPPORT    := \
	$(if $(CONFIG_ETH_SUPPORT),$(CONFIG_ETH_SUPPORT),y)
CONFIG_LIBC_LITE_SUPPORT      := \
	$(if $(CFG_HI_LIBC_LITE_SUPPORT),$(CFG_HI_LIBC_LITE_SUPPORT),)
CONFIG_LXC_CONTAINER      := \
	$(if $(CFG_HI_CONFIG_LXC_CONTAINER),$(CFG_HI_CONFIG_LXC_CONTAINER),)
CONFIG_3G_SUPPORT	:= \
	$(if $(CFG_HI_3G_SUPPORT),$(CFG_HI_3G_SUPPORT),)
HOST           := $(patsubst %-,%,$(CROSS_COMPILE))
################################################################################
include ../config.mk

INIT_SCRIPT    := etc/init.d/S99init

ROOTFS         := bin boot dev home lib var/run sys tmp opt proc nfsroot etc \
	mnt root share sbin usr/bin usr/sbin usr/lib usr/local/bin usr/share  \
	usr/local

TARGETS        := $(INIT_SCRIPT) $(ROOTFS) init

################################################################################

all: $(addprefix $(PREFIX)/,$(TARGETS))

$(addprefix $(PREFIX)/,$(ROOTFS)):
ifeq ($(CFG_HI_LOADER_TYPE),OS)
	@test -d $(PREFIX) || mkdir -p $(PREFIX)
	@tar -xjf ./rootfs.tar.bz2 -C $(PREFIX)/../
	@tar -xjf ./rootfs_scripts.tar.bz2 -C $(PREFIX)/../
	@tar -xjf ./rootfs_scripts_loader.tar.bz2 -C $(PREFIX)/../
else
	@test -d $(PREFIX) || mkdir -p $(PREFIX)
ifeq ($(CONFIG_LXC_CONTAINER),y)
	@tar -xjf ./rootfs_lxc.tar.bz2 -C $(PREFIX)/../
else
	@tar -xjf ./rootfs.tar.bz2 -C $(PREFIX)/../
endif
	@tar -xjf ./rootfs_scripts.tar.bz2 -C $(PREFIX)/../
	@tar -xjf ./libs/$(HOST).tar.bz2 -C $(PREFIX)
ifneq ($(CONFIG_LIBCPP_SUPPORT),y)
	@-rm -rf $(PREFIX)/lib/*c++.so*
endif
ifeq ($(CONFIG_LIBC_LITE_SUPPORT),y)
	@-rm -rf $(PREFIX)/lib/libutil*.so*
	@-rm -rf $(PREFIX)/lib/libmemusage*.so
	@-rm -rf $(PREFIX)/lib/libnss_c*.so*
	@-rm -rf $(PREFIX)/lib/libnss_h*.so*
	@-rm -rf $(PREFIX)/lib/libnss_n*.so*
	@-rm -rf $(PREFIX)/lib/libanl*.so*
	@-rm -rf $(PREFIX)/lib/libnsl*.so*
	@-rm -rf $(PREFIX)/lib/libcidn*.so*
endif

ifneq ($(CONFIG_BUSYBOX_UDEV),y)
	@rm -rf $(PREFIX)/etc/udev
	@rm -rf $(PREFIX)/etc/init.d/S01udev
ifeq ($(CONFIG_BUSYBOX_MDEV),y)
	@tar -xjf rootfs_scripts_mdev.tar.bz2 -C $(PREFIX)/../
endif
endif

ifneq ($(CONFIG_3G_SUPPORT),y)
	@rm -rf $(PREFIX)/etc/ppp
endif

ifneq ($(CONFIG_ETH_SUPPORT),y)
	@rm -rf $(PREFIX)/etc/protocols
	@rm -rf $(PREFIX)/etc/services
	@rm -rf $(PREFIX)/etc/init.d/S80network
	@rm -rf $(PREFIX)/usr/share/udhcpc
endif
endif

$(PREFIX)/$(INIT_SCRIPT):
	@test -d $(@D) || mkdir -p $(@D)
	@(echo '#!/bin/sh'; \
		echo -e '# This file auto create by makefile\n'; \
		echo -e "echo \"Compile file system used $(CROSS_COMPILE)\""; \
		echo "echo \"`date +"%F %X"` \""; \
	) > $@
	@chmod +xr $@

$(PREFIX)/init:
	@cd ${PREFIX} && \
		ln -fs sbin/init init && \
	cd -

################################################################################

clean:
	@(for ix in $(TARGETS); do \
		if [ -d $(PREFIX)/$$ix ]; then ( \
			test ! -z "$$(ls -A ${PREFIX}/$${ix})" || \
				rm -rf $(PREFIX)/$$ix; \
		) else ( \
			test ! -e $(PREFIX)/$$ix || \
				rm -rf $(PREFIX)/$$ix; \
		) fi \
	done)

menuconfig:
	@echo "not support"

distclean: clean

install:
	@echo "not support"

################################################################################
.PHONY: clean menuconfig distclean install
################################################################################
