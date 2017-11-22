################################################################################
ifeq ($(CFG_HI_EXPORT_FLAG),)
SDK_DIR := $(shell pwd)/../../..
PUB_DIR := $(SDK_DIR)/pub
BIN_DIR := $(PUB_DIR)/bin
include $(SDK_DIR)/cfg.mak
include $(SDK_DIR)/base.mak
endif

NTFS_DIR   ?= $(SDK_DIR)/source/component/ntfs
NTFS_MODULE_NAME ?= $(if $(findstring _dbg_, $(CFG_HI_KERNEL_CFG)),tntfs.ko,tntfs_$(CFG_HI_KERNEL_CFG).ko)

PHONY := all clean install uninstall

install: all

all:
ifeq ($(CFG_HI_NTFS_FORMAT_TOOLS_SUPPORT),y)
	-cp -rvf $(NTFS_DIR)/tools/mkntfs $(BIN_DIR)/mkntfs
	-chmod a+x $(BIN_DIR)/mkntfs
endif
ifeq ($(CFG_HI_NTFS_CHECK_TOOLS_SUPPORT),y)
	-cp -rvf $(NTFS_DIR)/tools/ntfsck $(BIN_DIR)/ntfsck
	-chmod a+x $(BIN_DIR)/ntfsck
endif
ifeq ($(CFG_HI_NTFS_MODULE_SUPPORT),y)
	@-cp -rvf $(NTFS_DIR)/$(CFG_HI_KERNEL_VERSION)/$(NTFS_MODULE_NAME)  $(PUB_DIR)/kmod/tntfs.ko
endif
	@echo "make $@ over !"
clean:
	@echo "make $@ over !"

uninstall: 
ifeq ($(CFG_HI_NTFS_FORMAT_TOOLS_SUPPORT),y)
	@-rm -rvf $(BIN_DIR)/mkntfs
endif
ifeq ($(CFG_HI_NTFS_CHECK_TOOLS_SUPPORT),y)
	@-rm -rvf $(BIN_DIR)/ntfsck
endif
ifeq ($(CFG_HI_NTFS_MODULE_SUPPORT),y)
	@-rm -rvf $(ROOTFS_DIR)/kmod/tntfs.ko
endif
#+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
