################################################################################
#    ./memtester/Makefile
#    Create By CaiZhiYong
#    2013.10.25
################################################################################
PREFIX         ?= $(shell pwd)/rootfs
CROSS_COMPILE  ?= arm-hisiv200-linux-

################################################################################
BUILD_DIR      := $(shell pwd)/tmp
HOST           := $(patsubst %-,%,$(CROSS_COMPILE))
STRIP          := $(CROSS_COMPILE)strip
MEMTESTER      := memtester-4.3.0

################################################################################

all: $(PREFIX)/sbin/memtester

$(PREFIX)/sbin/memtester: $(BUILD_DIR)/$(MEMTESTER)/memtester
	@test -d $(@D) || mkdir -p $(@D)
	@install -vt $(@D) $<
	${STRIP} $<

$(BUILD_DIR)/$(MEMTESTER)/memtester: \
    $(BUILD_DIR)/$(MEMTESTER)/tar
	echo "${CROSS_COMPILE}gcc" > $(BUILD_DIR)/$(MEMTESTER)/conf-cc
	echo "${CROSS_COMPILE}gcc" > $(BUILD_DIR)/$(MEMTESTER)/conf-ld
	make -C $(BUILD_DIR)/$(MEMTESTER)

################################################################################

$(BUILD_DIR)/%/tar:
	test -d $(@D) || mkdir -p $(@D)
	tar -xf $(notdir $(@:/tar=)).tar.* -C $(BUILD_DIR)
	@touch $@

################################################################################

clean:
	@rm -rf $(BUILD_DIR)
	@rm -f $(PREFIX)/sbin/memtester

menuconfig:
	@echo "not support"

distclean: clean

install:
	@echo "not support"

################################################################################
.PHONY: clean menuconfig distclean install
################################################################################

