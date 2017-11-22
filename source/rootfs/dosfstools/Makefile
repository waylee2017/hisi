################################################################################
#    ./dosfstools/Makefile
#    Create By CaiZhiYong 
#    2011.09.05
################################################################################

ifeq ($(CFG_HI_EXPORT_FLAG),)
CONFIG_DOSFSCK_SUPPORT     := y
CONFIG_MKDOSFS_SUPPORT     := y
else
CONFIG_DOSFSCK_SUPPORT     := $(CFG_HI_DOSFSCK_TOOLS_SUPPORT)
CONFIG_MKDOSFS_SUPPORT     := $(CFG_HI_MKDOSFS_TOOLS_SUPPORT)
endif

PREFIX         ?= $(shell pwd)/rootfs
CROSS_COMPILE  ?= arm-hisiv200-linux-

################################################################################
BUILD_DIR      := $(shell pwd)/tmp
HOST           := $(patsubst %-,%,$(CROSS_COMPILE))
STRIP          := $(CROSS_COMPILE)strip
DOSFS          := dosfstools-3.0.26
DOSFSCK        := sbin/dosfsck
MKDOSFS        := sbin/mkdosfs
TARGETS        := sbin/fsck.fat sbin/mkfs.fat

################################################################################

all: $(addprefix $(PREFIX)/,$(TARGETS))

$(PREFIX)/%: $(BUILD_DIR)/%
	test -d $(@D) || mkdir -p $(@D)
ifeq ($(CONFIG_DOSFSCK_SUPPORT),y)
	install -v -t $(@D) $(BUILD_DIR)/$(DOSFS)/fsck.fat && \
		cd $(@D) && \
		ln -sf fsck.fat $(notdir $(DOSFSCK)) && \
		cd -
endif
ifeq ($(CONFIG_MKDOSFS_SUPPORT),y)
	install -v -t $(@D) $(BUILD_DIR)/$(DOSFS)/mkfs.fat && \
		cd $(@D) && \
		ln -sf mkfs.fat $(notdir $(MKDOSFS)) && \
		cd -
endif

$(addprefix $(BUILD_DIR)/,$(TARGETS)): \
    $(BUILD_DIR)/$(DOSFS)/tar
	@cd $(BUILD_DIR)/$(DOSFS) && \
		make CC=$(CROSS_COMPILE)gcc PREFIX=$(BUILD_DIR) -j 16 && \
	cd -

$(BUILD_DIR)/%/tar:
	test -d $(@D) || mkdir -p $(@D)
	tar -xf $(notdir $(@:/tar=)).tar.xz -C $(BUILD_DIR)
	@touch $@

################################################################################

clean:
	@test ! -d $(BUILD_DIR) || rm -rf $(BUILD_DIR)
	@(for ix in $(TARGETS); do \
		test ! -e $(PREFIX)/$$ix || rm -rf $(PREFIX)/$$ix; \
	done)
	-@rm -rf $(PREFIX)/$(DOSFSCK)
	-@rm -rf $(PREFIX)/$(MKDOSFS)
menuconfig:
	@echo "not support"

distclean: clean

install:
	@echo "not support"

################################################################################
.PHONY: clean menuconfig distclean install
################################################################################
