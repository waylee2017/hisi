#===============================================================================
# export variable
#===============================================================================
ifeq ($(CFG_HI_EXPORT_FLAG),)
SDK_DIR ?= $(CURDIR)/../../..

include $(SDK_DIR)/cfg.mak
include $(SDK_DIR)/base.mak
endif

#===============================================================================
# export variable
#===============================================================================
INSTALL_DIR := $(SDK_DIR)/source/component/zlib/release
OBJS_DIR := $(SDK_DIR)/source/component/zlib/OBJS

#===============================================================================
# local variable
#===============================================================================
ZLIB := zlib-1.2.8

CFLAGS  +=  $(CFG_HI_CFLAGS)
ifneq ($(findstring -fPIC, $(CFG_HI_CFLAGS)), -fPIC)
CFLAGS += -fPIC
endif

FLAGS_TMP=$(subst -c , ,$(CFLAGS))

#===============================================================================
# rules
#===============================================================================
.PHONY: all clean install uninstall prepare

all: prepare
	cd $(ZLIB); CC=$(CFG_HI_TOOLCHAINS_NAME)-gcc AR=$(CFG_HI_TOOLCHAINS_NAME)-ar RANLIB=$(CFG_HI_TOOLCHAINS_NAME)-ranlib CFLAGS="$(FLAGS_TMP)" sh ./configure --prefix=$(INSTALL_DIR);make install

clean:
	$(AT)rm -rf $(INSTALL_DIR)
	$(AT)rm -rf $(OBJS_DIR)
	$(AT)rm -rf $(ZLIB)

install: all
	$(AT)test -d $(INCLUDE_DIR)    || mkdir -p $(INCLUDE_DIR)
	$(AT)test -d $(STATIC_LIB_DIR) || mkdir -p $(STATIC_LIB_DIR)
	$(AT)test -d $(SHARED_LIB_DIR) || mkdir -p $(SHARED_LIB_DIR)
	$(AT)rm -rf include/*
	$(AT)cp -rf     $(INSTALL_DIR)/include/*        include/
	$(AT)cp -rf     $(INSTALL_DIR)/include/*        $(INCLUDE_DIR)/
	$(AT)cp -ralf   $(INSTALL_DIR)/lib/lib*.a       $(STATIC_LIB_DIR)/
	$(AT)cp -ralf   $(INSTALL_DIR)/lib/lib*.so*     $(SHARED_LIB_DIR)/

uninstall:
	$(AT)rm -rf $(STATIC_LIB_DIR)/libz*.a
	$(AT)rm -rf $(SHARED_LIB_DIR)/libz*.so*

prepare:
	$(AT)rm -rf $(INSTALL_DIR) $(OBJS_DIR)
	$(AT)test -d $(INSTALL_DIR) || mkdir -p $(INSTALL_DIR)
	$(AT)test -d $(ZLIB) || tar -xf $(ZLIB).tar.gz
	$(AT)cp -rf patch-for-zlib/*  $(ZLIB)/
