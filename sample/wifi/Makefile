################################################################################
#LIB = -Wl,--start-group -lpthread -lm   -Wl,--end-group
################################################################################
ifeq ($(CFG_HI_EXPORT_FLAG),)
SDK_DIR       := $(shell pwd)/../..
include $(SDK_DIR)/base.mak
include $(SDK_DIR)/cfg.mak
endif

include $(SAMPLE_DIR)/base.mak

################################################################################
image=
ifeq ($(CFG_HI_WIFI_MODE_STA),y)
image+=sample_sta
endif
ifeq ($(CFG_HI_WIFI_MODE_AP),y)
image+=sample_ap
endif

LDLIBS_STA := -lpthread -lwlansta
LDLIBS_AP := -lwlanap

STA_OBJ := sample_sta.o \
           sta_ui.o

AP_OBJ := sample_ap.o

all:$(image)

sample_sta: $(STA_OBJ)
	$(CC) -o $@ $^ $(LIBPATH) $(LDLIBS_STA)

sample_ap: $(AP_OBJ)
	$(CC) -o $@ $^ $(LIBPATH) $(LDLIBS_AP)

%.o: %.c
	$(CC) $(BUILD_CFLGAS) -c $< -o $@ -I$(INCLUDE_DIR)

clean:
	-@rm -f $(image)
	-@rm -f $(STA_OBJ)
	-@rm -f $(AP_OBJ)

install:

uninstall:

