################################################################################
#    ./iperf/Makefile
#    Create By CaiZhiYong
#    2012.04.21
################################################################################
# PREFIX        - rootfs path
# CROSS_COMPILE - cross compile tools
################################################################################
PREFIX         ?= $(shell pwd)/rootfs
CROSS_COMPILE  ?= arm-hisiv200-linux-

################################################################################
BUILD_DIR      := $(shell pwd)/tmp
HOST           := $(patsubst %-,%,$(CROSS_COMPILE))
STRIP          := $(CROSS_COMPILE)strip
IPERF          := iperf-3.0.9

################################################################################

all: $(PREFIX)/sbin/iperf3

$(PREFIX)/sbin/iperf3: $(BUILD_DIR)/$(IPERF)/src/iperf3
	@test -d $(@D) || mkdir -p $(@D)
	@install -v -t $(@D) $<

$(BUILD_DIR)/$(IPERF)/src/iperf3: $(BUILD_DIR)/$(IPERF)/tar
	cd $(BUILD_DIR)/$(IPERF) && \
		./configure CC=gcc CPP="gcc -E" && \
		make CC=$(CROSS_COMPILE)gcc CXX=$(CROSS_COMPILE)g++ LDFLAGS="-static" -j 16 && \
	cd -

################################################################################
$(BUILD_DIR)/%/tar:
	test -d $(@D) || mkdir -p $(@D)
	tar -xf $(notdir $(@:/tar=)).tar.* -C $(BUILD_DIR)
	@touch $@

################################################################################

clean:
	@rm -rf $(BUILD_DIR)
	@rm -f $(PREFIX)/sbin/iperf3

menuconfig:
	@echo "not support"

distclean: clean

install:
	@echo "not support"

################################################################################
.PHONY: clean menuconfig distclean install
################################################################################
