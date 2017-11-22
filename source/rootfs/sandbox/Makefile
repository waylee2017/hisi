################################################################################
#    ./dosfstools/Makefile
#    Create By CaiZhiYong 
#    2011.09.05
################################################################################
ifeq ($(CFG_HI_EXPORT_FLAG),)
SDK_DIR := $(CURDIR)/../../..
include $(SDK_DIR)/cfg.mak
include $(SDK_DIR)/base.mak
endif

PREFIX         ?= $(shell pwd)/rootfs
CROSS_COMPILE  ?= arm-hisiv200-linux-

################################################################################
BUILD_DIR      := $(shell pwd)/tmp
HOST           := $(patsubst %-,%,$(CROSS_COMPILE))
STRIP          := $(CROSS_COMPILE)strip
COREUTILS      := coreutils-8.24
TARGETS        := bin/sandbox

################################################################################

all: $(addprefix $(PREFIX)/,$(TARGETS))

$(PREFIX)/%: $(BUILD_DIR)/%
	test -d $(@D) || mkdir -p $(@D)
	cp -fv $(BUILD_DIR)/bin/chroot $(PREFIX)/$(TARGETS)

$(addprefix $(BUILD_DIR)/,$(TARGETS)): \
    $(BUILD_DIR)/$(COREUTILS)/tar
ifeq ($(findstring -DHI_ADVCA_FUNCTION_RELEASE,$(CFG_HI_CFLAGS)),-DHI_ADVCA_FUNCTION_RELEASE)
	cd $(BUILD_DIR)/$(COREUTILS) && \
		./configure --prefix=$(BUILD_DIR) --host=$(HOST) --disable-nls && \
		make -j 16 && \
		make install && \
	cd -
else
	cd $(BUILD_DIR)/$(COREUTILS) && \
		./configure --prefix=$(BUILD_DIR) --host=$(HOST) && \
		make -j 16 && \
		make install && \
	cd -
endif
$(BUILD_DIR)/%/tar:
	test -d $(@D) || mkdir -p $(@D)
	tar -xf $(notdir $(@:/tar=)).tar.tar -C $(BUILD_DIR)
	tar -xf $(notdir $(@:/tar=)).patch.tar.bz2 -C $(BUILD_DIR)
	cp -drfv $(BUILD_DIR)/$(COREUTILS).patch/. $(BUILD_DIR)/$(COREUTILS)
ifeq ($(findstring -DHI_ADVCA_FUNCTION_RELEASE,$(CFG_HI_CFLAGS)),-DHI_ADVCA_FUNCTION_RELEASE)
	tar -xf sandbox_release_patch.tgz && cp -afr sandbox_release_patch/* $(BUILD_DIR)/$(COREUTILS)/ && \
		rm -fr sandbox_release_patch/
endif
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
