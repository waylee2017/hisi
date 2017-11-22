################################################################################
ifeq ($(CFG_HI_EXPORT_FLAG),)
SDK_DIR     := $(shell pwd)/../../..
LIB_DIR     := $(SDK_DIR)/pub/libs
SHARED_LIB_DIR:= $(LIB_DIR)/share
STATIC_LIB_DIR:= $(LIB_DIR)/static
INCLUDE_DIR := $(SDK_DIR)/pub/include
ROOTFS_DIR  := $(SDK_DIR)/pub/rootfs
PUB_DIR     := $(SDK_DIR)/pub
include $(SDK_DIR)/cfg.mak
include $(SDK_DIR)/base.mak
endif

################################################################################
CROSS_COMPILE         := \
	$(if $(CROSS_COMPILE),$(CROSS_COMPILE),arm-hisiv200-linux-)

################################################################################
PWD            := $(shell pwd)

ifeq ($(CROSS_COMPILE),arm-hisiv110-linux-)
HOST           := uclibc
else
HOST           := glibc
endif

FAT_LIB        := $(PWD)/$(HOST)/lib
FAT_TOOLS      := $(PWD)/$(HOST)/tools
FAT_INCLUDE    := $(PWD)/include

################################################################################
PHONY := all clean install uninstall

all: 
	@echo "make $@ over !"

install: all
ifeq ($(CFG_HI_FAT_SUPPORT),y)
	@-cp -rvf $(FAT_LIB)/*.so $(SHARED_LIB_DIR)/libhimount.so
	@-cp -rvf $(FAT_INCLUDE)/*.h $(INCLUDE_DIR)
#	@-cp -rvf $(FAT_TOOLS)/mount $(ROOTFS_DIR)/bin
	@-cp -rvf $(FAT_TOOLS)/himount $(PUB_DIR)/bin
endif
	@echo "make $@ over !"
clean:
	@echo "make $@ over !"

uninstall: 
ifeq ($(CFG_HI_FAT_SUPPORT),y)
#	@-rm -rf $(ROOTFS_DIR)/bin/mount
	@-rm -rf $(PUB_DIR)/bin/himount
	@-rm -rf $(SHARED_LIB_DIR)/libhimount.so
	@-rm -rf $(INCLUDE_DIR)/himount_api.h
endif
	@echo "make $@ over !"
#+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

