################################################################################
#    ./iptables/Makefile
#    Create By CaiZhiYong 
#    2011.08.06
################################################################################
PREFIX         ?= $(shell pwd)/rootfs
CROSS_COMPILE  ?= arm-hisiv200-linux-

################################################################################
BUILD_DIR      := $(shell pwd)/tmp
HOST           := $(patsubst %-,%,$(CROSS_COMPILE))
STRIP          := $(CROSS_COMPILE)strip
IPTABLES       := iptables-1.4.21
TARGETS        := sbin/iptables sbin/xtables-multi
################################################################################

all: $(addprefix $(PREFIX)/,$(TARGETS))

$(PREFIX)/sbin/xtables-multi: $(BUILD_DIR)/sbin/xtables-multi
	@test -d $(@D) || mkdir -p $(@D)
	@install -v -t $(@D) $<

$(PREFIX)/sbin/iptables: $(PREFIX)/sbin/xtables-multi
	@cd $(@D) && \
		ln -sf $(<F) $(@F) && \
	cd -

################################################################################

$(BUILD_DIR)/sbin/xtables-multi: \
    $(BUILD_DIR)/$(IPTABLES)/tar
	@cd $(BUILD_DIR)/$(IPTABLES) && \
		./configure --host=$(HOST) --prefix=$(BUILD_DIR) \
			-enable-static -disable-shared \
			--datarootdir=$(BUILD_DIR)     \
			--includedir=$(BUILD_DIR)&& \
		make -j 16 && \
		make install && \
	cd -

################################################################################

$(BUILD_DIR)/%/tar:
	@test -d $(@D) || mkdir -p $(@D)
	tar -xjf $(notdir $(@:/tar=)).tar.bz2 -C $(BUILD_DIR)
	@touch $@

################################################################################

clean:
	@test ! -d $(BUILD_DIR) || rm -rf $(BUILD_DIR)
	@(for ix in $(TARGETS); do \
		test ! -e $(PREFIX)/$$ix || rm -rf $(PREFIX)/$$ix; \
	done)

menuconfig:
	@echo "not support"

distclean: clean

install:
	@echo "not support"

################################################################################
.PHONY: clean menuconfig distclean install
################################################################################
