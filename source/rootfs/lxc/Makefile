################################################################################
#
#  Copyright (C) 2014 Hisilicon Technologies Co., Ltd.  All rights reserved. 
#
#  This program is confidential and proprietary to Hisilicon Technologies Co., Ltd.
#  (Hisilicon), and may not be copied, reproduced, modified, disclosed to
#  others, published or used, in whole or in part, without the express prior
#  written permission of Hisilicon.
#
#  Create By CaiZhiyong 2014.08.18
#
################################################################################

# parameter
PREFIX         ?= $(shell pwd)/rootfs
CROSS_COMPILE  ?= arm-hisiv200-linux-

################################################################################
BUILD_DIR      := $(shell pwd)/tmp
HOST           := $(patsubst %-,%,$(CROSS_COMPILE))
STRIP          := $(CROSS_COMPILE)strip
CC             := $(CROSS_COMPILE)gcc
AR             := $(CROSS_COMPILE)ar
LD             := $(CROSS_COMPILE)ld
RANLIB         := $(CROSS_COMPILE)ranlib
LXC            := lxc-0.9.0
LIBCAP         := libcap-2.24
ATTR           := attr-2.4.47
TARGETS        := bin/lxc-create \
		  bin/lxc-info \
		  bin/lxc-ps \
		  bin/lxc-start \
		  bin/lxc-execute \
		  bin/lxc-kill \
		  bin/lxc-freeze \
		  bin/lxc-unfreeze \
		  bin/lxc-destroy \
		  bin/lxc-cgroup\
		  bin/lxc-checkconfig\
		  bin/lxc-console\
		  bin/lxc-version\
		  bin/lxc-stop\
		  bin/lxc-ls     \
		  lib/libcap.so      \
		  lib/libcap.so.2    \
		  lib/libcap.so.2.24 \
		  lib/liblxc.so      \
		  lib/liblxc.so.0    \
		  lib/liblxc.so.0.9.0 \
		  lib/lxc/rootfs/README \
		  etc/lxc/default.conf \
		  share/lxc/lxc.functions \
		  share/lxc/templates/lxc-busybox

################################################################################

all: $(addprefix $(PREFIX)/,$(TARGETS))
	# create lxc config and fs
	scripts/lxc_create.sh -n stb --prefix $(PREFIX)
	scripts/lxc_create.sh -n stb1 --prefix $(PREFIX)
	# install lxc startup script
	chmod a+x scripts/S99lxc
	-mkdir -p $(PREFIX)/etc/init.d/
	cp scripts/S99lxc $(PREFIX)/etc/init.d/

$(PREFIX)/bin/%: $(BUILD_DIR)/bin/%
	@test -d $(@D) || mkdir -p $(@D)
	@cp -dfv $< $@
	@chmod 0755 $@
	@[ s"`file "$@" | grep "not stripped"`" = s"" ] || $(STRIP) $@

$(PREFIX)/usr/lib/%: $(BUILD_DIR)/lib/%
	@test -d $(@D) || mkdir -p $(@D)
	@cp -dfv $< $@
	@[ s"`file "$@" | grep "not stripped"`" = s"" ] || $(STRIP) $@

$(PREFIX)/%: $(BUILD_DIR)/%
	@test -d $(@D) || mkdir -p $(@D)
	@cp -dfv $< $@
	@mkdir -p $(PREFIX)/var/lib/lxc

################################################################################

$(addprefix $(BUILD_DIR)/,$(TARGETS)): \
    $(BUILD_DIR)/$(LXC)/tar \
    $(BUILD_DIR)/lib/libcap.a
	cd $(<D) && ./configure --prefix="" --host=$(HOST) \
		--disable-examples \
		LDFLAGS="-L$(BUILD_DIR)/lib"
	make -C $(<D)
	make -C $(<D) DESTDIR=$(BUILD_DIR) install

$(BUILD_DIR)/lib/libcap.a: \
    $(BUILD_DIR)/$(LIBCAP)/patch \
    $(BUILD_DIR)/lib/libattr.a
	make -C $(<D)/libcap _makenames
	make -C $(<D) CC=$(CC) AR=$(AR) LD=$(CC) RANLIB=$(RANLIB) \
		LDFLAGS="-L$(BUILD_DIR)/lib"
	make -C $(<D) CC=$(CC) AR=$(AR) LD=$(CC) RANLIB=$(RANLIB) \
		RAISE_SETFCAP=no DESTDIR=$(BUILD_DIR) lib=lib install

$(BUILD_DIR)/lib/libattr.a: 
	tar -xf $(ATTR).src.tar.* -C $(BUILD_DIR)
	cd  $(BUILD_DIR)/$(ATTR) && ./configure --prefix=$(BUILD_DIR) --host=$(HOST)
	make -C $(BUILD_DIR)/$(ATTR) -j 16
	make -C $(BUILD_DIR)/$(ATTR) install-dev
	make -C $(BUILD_DIR)/$(ATTR) install-lib
	make -C $(BUILD_DIR)/$(ATTR) install

################################################################################
$(BUILD_DIR)/$(LIBCAP)/patch: \
    $(BUILD_DIR)/$(LIBCAP).patch/tar \
    $(BUILD_DIR)/$(LIBCAP)/tar
	cp -drfv $(BUILD_DIR)/$(LIBCAP).patch/. $(BUILD_DIR)/$(LIBCAP)
	@touch $@

################################################################################

$(BUILD_DIR)/%/tar:
	@test -d $(@D) || mkdir -p $(@D)
	tar -xf $(notdir $(@:/tar=)).tar.* -C $(@D)/../
	@touch $@

################################################################################

clean:
	@rm -rf $(BUILD_DIR)

menuconfig:
	@echo "not support"

distclean: clean
	@rm -rf ./rootfs

install:
	@echo "not support"

################################################################################
.PHONY: clean menuconfig distclean install
################################################################################
