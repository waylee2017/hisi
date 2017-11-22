#===============================================================================
# export variable
#===============================================================================
ifeq ($(CFG_HI_EXPORT_FLAG),)
SDK_DIR ?= $(CURDIR)/../../..

include $(SDK_DIR)/cfg.mak
include $(SDK_DIR)/base.mak
endif

#===============================================================================
# local variable
#===============================================================================
FREETYPE := freetype-2.7

CFLAGS  +=  $(CFG_HI_CFLAGS)

ifneq ($(findstring -fPIC, $(CFG_HI_CFLAGS)), -fPIC)
CFLAGS += -fPIC
endif

INSTALL_DIR := $(SDK_DIR)/source/component/freetype/release
OBJS_DIR := $(SDK_DIR)/source/component/freetype/OBJS

FLAGS_TMP=$(subst -c , ,$(CFLAGS))

#===============================================================================
# rules
#===============================================================================
.PHONY: all clean install uninstall prepare

all: prepare
	cd $(FREETYPE);sh ./configure --host=$(CFG_HI_TOOLCHAINS_NAME) --enable-shared --enable-static --with-zlib=no --with-png=no --with-harfbuzz=no CFLAGS="$(FLAGS_TMP)" --prefix=$(INSTALL_DIR);make;make install

clean:
	$(AT)rm -rf $(INSTALL_DIR)
	$(AT)rm -rf $(OBJS_DIR)
	$(AT)rm -rf $(FREETYPE)

install: all
	$(AT)test -d $(INCLUDE_DIR)    || mkdir -p $(INCLUDE_DIR)
	$(AT)test -d $(STATIC_LIB_DIR) || mkdir -p $(STATIC_LIB_DIR)
	$(AT)test -d $(SHARED_LIB_DIR) || mkdir -p $(SHARED_LIB_DIR)
	$(AT)rm -rf include/*
	$(AT)cp -rf     $(INSTALL_DIR)/include/*        include/
	$(AT)cp -rf     $(INSTALL_DIR)/include/*        $(INCLUDE_DIR)/
	$(AT)cp -ralf 	$(INSTALL_DIR)/lib/lib*.a  	$(STATIC_LIB_DIR)/
	$(AT)cp -ralf  	$(INSTALL_DIR)/lib/lib*.so* 	$(SHARED_LIB_DIR)/

uninstall:
	$(AT)rm -rf $(STATIC_LIB_DIR)/*freetype*.a
	$(AT)rm -rf $(SHARED_LIB_DIR)/*freetype*.so

prepare:
	$(AT)rm -rf $(INSTALL_DIR) $(OBJS_DIR)
	$(AT)test -d $(INSTALL_DIR) || mkdir -p $(INSTALL_DIR)/include/freetype2/freetype/config
	$(AT)test -d $(FREETYPE) || tar -xf $(FREETYPE).tar.gz && chmod 777 $(FREETYPE)/builds/unix -R
	$(AT)cp -rf patch-for-freetype/*  $(FREETYPE)/
