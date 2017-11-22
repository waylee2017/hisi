################################################################################
ifeq ($(CFG_HI_EXPORT_FLAG),)
SDK_DIR := $(shell pwd)/../..
include $(SDK_DIR)/base.mak
endif

include $(SAMPLE_DIR)/base.mak

INCLUDE := -I$(SDK_INC_DIR) -I$(SAMPLE_DIR)/common



LIB := -Wl,--start-group $(SYS_LIBS) $(HI_LIBS) -Wl,--end-group

################################################################################
image = flash_read flash_erase flash_write flash_write_yaffs flash_write_yaffs2 sample_flash

all: $(image)

flash_read: flash_read.c
	@$(CC) -o $@ $^  $(INCLUDE) $(LIBPATH) $(LIB)

flash_erase: flash_erase.c
	@$(CC) -o $@ $^  $(INCLUDE) $(LIBPATH) $(LIB)

flash_write: flash_write.c
	@$(CC) -o $@ $^  $(INCLUDE) $(LIBPATH) $(LIB)

flash_write_yaffs: flash_write_yaffs.c
	@$(CC) -o $@ $^  $(INCLUDE) $(LIBPATH) $(LIB)

flash_write_yaffs2: flash_write_yaffs2.c
	@$(CC) -o $@ $^  $(INCLUDE) $(LIBPATH) $(LIB)

sample_flash: sample_flash.c
	@$(CC) -o $@ $^  $(INCLUDE) $(LIBPATH) $(LIB)

clean:
	-@rm -f $(image)

install:

uninstall:

