################################################################################
ifeq ($(CFG_HI_EXPORT_FLAG),)
SDK_DIR     := $(shell pwd)/../..
LIB_DIR     := $(SDK_DIR)/pub/libs
INCLUDE_DIR := $(SDK_DIR)/pub/include
ROOTFS_DIR  := $(SDK_DIR)/pub/rootfs
include $(SDK_DIR)/cfg.mak
include $(SDK_DIR)/base.mak
endif

################################################################################
CROSS_COMPILE         := \
	$(if $(CROSS_COMPILE),$(CROSS_COMPILE),arm-hisiv200-linux-)

CC    ?= $(CROSS_COMPILE)gcc

################################################################################
all:
	$(AT)$(CC) uarttest.c -o uarttest -static
	$(AT)chmod 777 uarttest

clean:
	$(AT)rm -rf uarttest

install:

uninstall:

