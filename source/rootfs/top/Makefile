################################################################################
#    ./procps/Makefile
#    Create By CaiZhiYong 
#    2011.06.19
################################################################################
PREFIX         ?= $(shell pwd)/rootfs
CROSS_COMPILE  ?= arm-hisiv200-linux-

################################################################################
BUILD_DIR      := $(shell pwd)/tmp
HOST           := $(patsubst %-,%,$(CROSS_COMPILE))
STRIP          := $(CROSS_COMPILE)strip
PROCPS         := procps-3.2.8
NCURSES        := ncurses-6.0
TARGETS        := bin/ps usr/bin/vmstat usr/bin/top

################################################################################

all: $(addprefix $(PREFIX)/,$(TARGETS))

$(PREFIX)/usr/bin/top: \
    $(PREFIX)/share/terminfo/a/ansi \
    $(PREFIX)/usr/bin/top.t
	@test -d $(@D) || mkdir -p $(@D)
	@(echo '#!/bin/sh'; \
		echo 'export TERM=ansi'; \
		echo 'export TERMINFO_DIRS=/share/terminfo'; \
		echo '/usr/bin/top.t "$$@"') > $@
	@chmod 755 $@

$(PREFIX)/share/terminfo/a/ansi: $(BUILD_DIR)/share/terminfo/a/ansi
	@test -d $(@D) || mkdir -p $(@D)
	cp -vf $< $@

$(PREFIX)/usr/bin/top.t: $(BUILD_DIR)/usr/bin/top
	@test -d $(@D) || mkdir -p $(@D)
	@install -v -t $(@D) $<
	@mv -f $(@D)/top $@

$(PREFIX)/%: $(BUILD_DIR)/%
	@test -d $(@D) || mkdir -p $(@D)
	@install -v -t $(@D) $<

################################################################################

$(addprefix $(BUILD_DIR)/,$(TARGETS)):  \
    $(BUILD_DIR)/lib/libncurses.a       \
    $(BUILD_DIR)/$(PROCPS)/patch
	make -C $(BUILD_DIR)/$(PROCPS) CC=${HOST}-gcc \
		DESTDIR=${BUILD_DIR} \
		CFLAGS="-I${BUILD_DIR}/include/ncurses -I${BUILD_DIR}/include -static" \
		LDFLAGS="-L${BUILD_DIR}/lib -static" -j 16
	make -C $(BUILD_DIR)/$(PROCPS) CC=${HOST}-gcc \
		DESTDIR=$(BUILD_DIR) STRIP=${STRIP} install

 $(BUILD_DIR)/share/terminfo/a/ansi \
$(BUILD_DIR)/lib/libncurses.a: $(BUILD_DIR)/$(NCURSES)/tar
	cd $(BUILD_DIR)/$(NCURSES) && \
	CPPFLAGS="-P"\
		./configure --host=$(HOST) --without-ada --prefix=$(BUILD_DIR) && \
		make -j 16 && \
		make install && \
	cd -
################################################################################
$(BUILD_DIR)/$(PROCPS)/patch: \
    $(BUILD_DIR)/$(PROCPS).patch/tar \
    $(BUILD_DIR)/$(PROCPS)/tar
	cp -drfv $(BUILD_DIR)/$(PROCPS).patch/. $(BUILD_DIR)/$(PROCPS)
	@touch $@

################################################################################

$(BUILD_DIR)/%/tar:
	test -d $(@D) || mkdir -p $(@D)
	tar -xf $(notdir $(@:/tar=)).tar.* -C $(BUILD_DIR)
	@touch $@

################################################################################

clean:
	@test ! -d $(BUILD_DIR) || rm -rf $(BUILD_DIR)
	@(for ix in $(TARGETS) usr/bin/top.t share/terminfo/a/ansi; do \
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
