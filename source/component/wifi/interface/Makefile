#===============================================================================
# export variable
#===============================================================================
ifeq ($(CFG_HI_EXPORT_FLAG),)
SDK_DIR := $(CURDIR)/../../../..
include $(SDK_DIR)/base.mak
include $(SDK_DIR)/cfg.mak
endif

#===============================================================================
# local variable
#===============================================================================
CFLAGS += $(CFG_HI_CFLAGS)
CFLAGS += -I$(SDK_DIR)/source/common/include
CFLAGS += -I$(CURDIR)/src/util
CFLAGS += -I$(CURDIR)/include

src_sta := $(CURDIR)/src/sta/hi_wlan_sta.c
src_sta += $(CURDIR)/src/sta/wlan_sta.c
src_sta += $(CURDIR)/src/util/wlan_util.c

objs_sta = $(src_sta:.c=.o)

src_ap := $(CURDIR)/src/ap/hi_wlan_ap.c
src_ap += $(CURDIR)/src/util/wlan_util.c

objs_ap = $(src_ap:.c=.o)

ifneq ($(DEBUG),y)
LIB_WIFI_STA  := libwlansta
LIB_WIFI_AP   := libwlanap
else
LIB_WIFI_STA  := libwlansta_dbg
LIB_WIFI_AP   := libwlanap_dbg
endif

target = $(LIB_WIFI_STA).a $(LIB_WIFI_STA).so
target += $(LIB_WIFI_AP).a $(LIB_WIFI_AP).so

#===============================================================================
# rules
#===============================================================================
.PHONY: all clean distclean install uninstall

all:$(target)
	mkdir -p $(CURDIR)/lib/$(CFG_HI_TOOLCHAINS_NAME)
	$(AT)mv -f  *.a   $(CURDIR)/lib/$(CFG_HI_TOOLCHAINS_NAME)
	$(AT)mv -f  *.so   $(CURDIR)/lib/$(CFG_HI_TOOLCHAINS_NAME)

$(LIB_WIFI_STA).a: $(objs_sta)
	$(AT)$(AR) -rc -o $@ $^

$(LIB_WIFI_STA).so: $(objs_sta)
	$(AT)$(CC) -shared -o $@ $^

$(LIB_WIFI_AP).a: $(objs_ap)
	$(AT)$(AR) -rc -o $@ $^

$(LIB_WIFI_AP).so: $(objs_ap)
	$(AT)$(CC) -shared -o $@ $^

%.o: %.c
	$(AT)$(CC) $(CFLAGS) -fPIC -c $< -o $@

install: all
ifeq ($(CFG_HI_WIFI_MODE_STA),y)
	$(AT)cp -rvf ./lib/$(CFG_HI_TOOLCHAINS_NAME)/$(LIB_WIFI_STA).so $(SHARED_LIB_DIR)/
	$(AT)cp -rvf ./lib/$(CFG_HI_TOOLCHAINS_NAME)/$(LIB_WIFI_STA).a $(STATIC_LIB_DIR)/
	$(AT)cp -rvf ./include/hi_wlan_sta.h $(INCLUDE_DIR)/
endif
ifeq ($(CFG_HI_WIFI_MODE_AP),y)
	$(AT)cp -rvf ./lib/$(CFG_HI_TOOLCHAINS_NAME)/$(LIB_WIFI_AP).so $(SHARED_LIB_DIR)/
	$(AT)cp -rvf ./lib/$(CFG_HI_TOOLCHAINS_NAME)/$(LIB_WIFI_AP).a $(STATIC_LIB_DIR)/
	$(AT)cp -rvf ./include/hi_wlan_ap.h $(INCLUDE_DIR)/
endif

uninstall:
ifeq ($(CFG_HI_WIFI_MODE_STA),y)
	$(AT)rm -rvf $(SHARED_LIB_DIR)/$(notdir $(LIB_WIFI_STA).so)
	$(AT)rm -rvf $(STATIC_LIB_DIR)/$(notdir $(LIB_WIFI_STA).a)
	$(AT)rm -rvf $(INCLUDE_DIR)/$(notdir hi_wlan_sta.h)
endif
ifeq ($(CFG_HI_WIFI_MODE_AP),y)
	$(AT)rm -rvf $(SHARED_LIB_DIR)/$(notdir $(LIB_WIFI_AP).so)
	$(AT)rm -rvf $(STATIC_LIB_DIR)/$(notdir $(LIB_WIFI_AP).a)
	$(AT)rm -rvf $(INCLUDE_DIR)/$(notdir hi_wlan_ap.h)
endif

clean:
	$(AT)rm -rf $(CURDIR)/src/sta/*.o
	$(AT)rm -rf $(CURDIR)/src/ap/*.o
	$(AT)rm -rf $(CURDIR)/src/util/*.o
	$(AT)rm -rf $(CURDIR)/lib

distclean: clean
