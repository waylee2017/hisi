#===============================================================================
# export variable
#===============================================================================
ifeq ($(CFG_HI_EXPORT_FLAG),)
SDK_DIR ?= $(CURDIR)/../../..

include $(SDK_DIR)/cfg.mak
include $(SDK_DIR)/base.mak
endif

TARGET := curl-7.42.1
#===============================================================================
# local variable
#===============================================================================
CFLAGS  +=  $(CFG_HI_CFLAGS)

INSTALL_DIR = $(SDK_DIR)/source/component/curl/release
FLAGS_TMP=$(subst -c , ,$(CFLAGS)) 
#===============================================================================
# rules
#===============================================================================
.PHONY: all clean install uninstall compile

all: 
clean:

compile:
	mkdir -p release
	tar -zxf curl-7.42.1.tar.gz
	cd $(TARGET); CC=$(CFG_HI_TOOLCHAINS_NAME)-gcc AR=$(CFG_HI_TOOLCHAINS_NAME)-ar RANLIB=$(CFG_HI_TOOLCHAINS_NAME)-ranlib CFLAGS="$(FLAGS_TMP)" sh ./configure --target=arm-linux --host=arm-linux --prefix=$(INSTALL_DIR) --disable-rtsp --disable-smtp --disable-pop3 --disable-imap --disable-gopher --disable-file --disable-dict --disable-telnet ;make install
	mkdir -p lib/$(CFG_HI_TOOLCHAINS_NAME)
	cp -f release/lib/libcurl.a lib/$(CFG_HI_TOOLCHAINS_NAME)/
	cp -f release/lib/libcurl.so.4.3.0 lib/$(CFG_HI_TOOLCHAINS_NAME)/libcurl.so
	rm -rf $(TARGET)	
	rm -rf release

install: compile 
	$(AT)cp -rf 	lib/$(CFG_HI_TOOLCHAINS_NAME)/libcurl.a  	$(STATIC_LIB_DIR)/
	$(AT)cp -rf  	lib/$(CFG_HI_TOOLCHAINS_NAME)/libcurl.so 	$(SHARED_LIB_DIR)/	

uninstall:
	$(AT)rm -rf $(STATIC_LIB_DIR)/libcurl.a	
	$(AT)rm -rf $(SHARED_LIB_DIR)/libcurl.so	

