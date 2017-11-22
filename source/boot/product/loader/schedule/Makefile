ifeq ($(CFG_HI_EXPORT_FLAG),)
SDK_DIR := $(shell pwd)/../../../../..
include $(SDK_DIR)/cfg.mak
include $(SDK_DIR)/base.mak
endif

CFLAGS += -I$(BOOT_DIR)/product/driver/include
CFLAGS += -I$(BOOT_DIR)/fastboot/include
CFLAGS += -I$(COMPONENT_DIR)/loader/app/include
CFLAGS += -I$(COMPONENT_DIR)/loader/api/include

ifeq ($(CFG_HI_BOOTLOADER_SUPPORT),y)
CFLAGS += -DHI_LOADER_BOOTLOADER
endif

ifeq ($(CFG_HI_APPLOADER_SUPPORT),y)
CFLAGS += -DHI_LOADER_APPLOADER
endif

ifeq ($(CFG_HI_BUILD_WITH_KEYLED),y)
CFLAGS += -DHI_BUILD_WITH_KEYLED
    ifeq ($(CFG_HI_BOOT_KEYLED_PT6964),y)
    CFLAGS += -DHI_BOOT_KEYLED_PT6964
    endif
    ifeq ($(CFG_HI_BOOT_KEYLED_PT6961),y)
    CFLAGS += -DHI_BOOT_KEYLED_PT6961
    endif
    ifeq ($(CFG_HI_BOOT_KEYLED_CT1642),y)
    CFLAGS += -DHI_BOOT_KEYLED_CT1642
    endif
    ifeq ($(CFG_HI_BOOT_KEYLED_74HC164),y)
    CFLAGS += -DHI_BOOT_KEYLED_74HC164
    endif
    ifeq ($(CFG_HI_BOOT_KEYLED_FD650),y)
    CFLAGS += -DHI_BOOT_KEYLED_FD650
    endif
    ifeq ($(CFG_HI_BOOT_KEYLED_GPIOKEY),y)
    CFLAGS += -DHI_BOOT_KEYLED_GPIOKEY
    endif
endif

SCHEDULELIB := libschedule.a
SCHEDULEOBJ := schedule.o


all: $(SCHEDULELIB)

install: $(SCHEDULEOBJ)

$(SCHEDULELIB): $(SCHEDULEOBJ)
	$(AT)$(AR) -rc $@ $^

%.o: %.c
	$(CC) -c  $^ $(CFLAGS)

clean:
	rm -f *.o
	rm -f *.a

