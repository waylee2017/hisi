################################################################################
#    ./gdb/Makefile
#    Create By CaiZhiYong
#    2012.07.28
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
LIBCAP         := libcap-ng-0.7.7
ATTR           := attr-2.4.47
TARGETS        := bin/filecap lib/libcap-ng.so.0

################################################################################

all: $(addprefix $(PREFIX)/,$(TARGETS))

$(PREFIX)/bin/filecap: $(BUILD_DIR)/bin/filecap
	@test -d $(@D) || mkdir -p $(@D)
	@install -v -t $(dir $@) $<

$(PREFIX)/lib/libcap-ng.so.0: $(BUILD_DIR)/lib/libcap-ng.so.0.0.0
	@test -d $(@D) || mkdir -p $(@D)
	@cp -fv $< $@
	$(STRIP) $@

################################################################################

$(BUILD_DIR)/bin/filecap \
$(BUILD_DIR)/lib/libcap-ng.so.0.0.0: \
    $(BUILD_DIR)/lib/libattr.a \
    $(BUILD_DIR)/$(LIBCAP)/tar
	cd $(BUILD_DIR)/$(LIBCAP) && \
		CFLAGS="-I$(BUILD_DIR)/include -g -O2" LFLAGS="-L$(BUILD_DIR)/lib/" \
		./configure --host=$(HOST) --prefix=$(BUILD_DIR) \
			--without-python && \
		make && \
		make install && \
	cd -

$(BUILD_DIR)/lib/libattr.a: $(BUILD_DIR)/$(ATTR).src/tar
	cd $(BUILD_DIR)/$(ATTR) && \
		./configure --host=$(HOST) --prefix=$(BUILD_DIR) && \
		make -j 16   && \
		make install-dev && \
	cd -

################################################################################

$(BUILD_DIR)/%/tar:
	@test -d $(@D) || mkdir -p $(@D)
	tar -xzf $(notdir $(@:/tar=)).tar.gz -C $(BUILD_DIR)
	@touch $@

################################################################################

clean:
	@test ! -d $(BUILD_DIR) || rm -rf $(BUILD_DIR)
	@(for ix in $(TARGETS); do \
		test ! -e $(PREFIX)/$$ix || rm -rvf $(PREFIX)/$$ix; \
	done)

distclean: clean

install:
	@echo "not support"

################################################################################
.PHONY: clean distclean install
################################################################################

