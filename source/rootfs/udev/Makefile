################################################################################
#    ./udev/Makefile
#    Create By CaiZhiYong
#    2011.06.19
################################################################################
# PREFIX        - rootfs path
# CROSS_COMPILE - cross compile tools
################################################################################
PREFIX         ?= $(shell pwd)/rootfs
CROSS_COMPILE  ?= arm-hisiv200-linux-
#CONFIG_MINI_ROOTFS    ?= n

#
#  define   - package statically linked.
#  undefine - package default linked.
#
STATIC_LINKED   =
################################################################################
BUILD_DIR      := $(shell pwd)/tmp
HOST           := $(patsubst %-,%,$(CROSS_COMPILE))
STRIP          := $(CROSS_COMPILE)strip
UDEV           := udev-167

#TARGETS       := udevstart udevd udevinfo
TARGETS        := udevd udevadm

################################################################################
all: $(addprefix $(PREFIX)/bin/,$(TARGETS)) \
    $(PREFIX)/etc/udev/udev.conf

$(PREFIX)/bin/%: $(BUILD_DIR)/$(UDEV)/%
	@test -d $(@D) || mkdir -p $(@D)
	@install -v -t $(@D) $<

$(PREFIX)/etc/udev/udev.conf:
	tar -xjf rootfs.tar.bz2 -C $(patsubst %/rootfs,%,$(PREFIX))

$(addprefix $(BUILD_DIR)/$(UDEV)/,$(TARGETS)): $(BUILD_DIR)/$(UDEV)/patch
	cd $(BUILD_DIR)/$(UDEV) && ./configure --prefix=/ --host=$(HOST) \
	--disable-logging --disable-extras --disable-introspection &>/dev/null;
	make -C $(BUILD_DIR)/$(UDEV) \
		USE_STATIC=$(if $(STATIC_LINKED),true,false)\
		CROSS_COMPILE=${CROSS_COMPILE} &>/dev/null
	@cp $(BUILD_DIR)/$(UDEV)/udev/udevd $(BUILD_DIR)/$(UDEV)
	@cp $(BUILD_DIR)/$(UDEV)/udev/udevadm $(BUILD_DIR)/$(UDEV)

################################################################################
$(BUILD_DIR)/$(UDEV)/patch: \
    $(BUILD_DIR)/$(UDEV).patch/tar \
    $(BUILD_DIR)/$(UDEV)/tar
	cp -drfv $(BUILD_DIR)/$(UDEV).patch/. $(BUILD_DIR)/$(UDEV)
	@touch $@
################################################################################

$(BUILD_DIR)/%/tar:
	test -d $(@D) || mkdir -p $(@D)
	tar -xf $(notdir $(@:/tar=)).tar.* -C $(BUILD_DIR)
	@touch $@

################################################################################

clean:
	@test ! -d $(BUILD_DIR) || rm -rf $(BUILD_DIR)
	@(for ix in $(TARGETS); do \
		test ! -e $(PREFIX)/bin/$$ix || rm -rf $(PREFIX)/bin/$$ix; \
	done)

menuconfig:
	@echo "not support"

distclean: clean

install:
	@echo "not support"

################################################################################
.PHONY: clean menuconfig distclean install
################################################################################
