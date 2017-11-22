################################################################################
#    ./mtd-utils/Makefile
#    Create By CaiZhiYong
#    2012.04.23
################################################################################
PREFIX         ?= $(shell pwd)/rootfs
CROSS_COMPILE  ?= arm-hisiv200-linux-

################################################################################
BUILD_DIR      := $(shell pwd)/tmp
HOST           := $(patsubst %-,%,$(CROSS_COMPILE))
STRIP          := $(CROSS_COMPILE)strip
MTD-UTILS      := ubi-utils-1.5.0

TARGETS        := sbin/ubiutils

################################################################################

all: $(addprefix $(PREFIX)/,$(TARGETS))

$(PREFIX)/sbin/ubiutils: \
    $(BUILD_DIR)/$(MTD-UTILS)/tar
	make CROSS_COMPILE=$(CROSS_COMPILE) -C $(BUILD_DIR)/$(MTD-UTILS)
	make CROSS_COMPILE=$(CROSS_COMPILE) -C $(BUILD_DIR)/$(MTD-UTILS) \
		PREFIX=$(PREFIX) install
	${STRIP} $@

################################################################################

$(BUILD_DIR)/%/tar:
	test -d $(@D) || mkdir -p $(@D)
	tar -xf $(notdir $(@:/tar=)).tar.* -C $(BUILD_DIR)
	@touch $@

################################################################################

clean:
	@rm -rf $(BUILD_DIR)
	@rm -rf $(addprefix $(PREFIX)/,$(TARGETS))

menuconfig:
	@echo "not support"

distclean: clean

install:
	@echo "not support"

################################################################################
.PHONY: clean menuconfig distclean install
################################################################################
