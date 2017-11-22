################################################################################
ifeq ($(CFG_HI_EXPORT_FLAG),)
SDK_DIR     := $(shell pwd)/../..
LIB_DIR     := $(SDK_DIR)/pub/libs
INCLUDE_DIR := $(SDK_DIR)/pub/include
COMMON_DIR  := $(SDK_DIR)/source/common
MSP_DIR     := $(SDK_DIR)/source/msp
include $(SDK_DIR)/cfg.mak
include $(SDK_DIR)/base.mak
endif

INCLUDE     := -I"$(INCLUDE_DIR)" -I"$(COMMON_DIR)/include" \
		-I"$(SAMPLE_DIR)/common" \
		-I"$(MSP_DIR)/include"

LIB         := -lpthread
################################################################################
CROSS_COMPILE         := \
	$(if $(CROSS_COMPILE),$(CROSS_COMPILE),arm-hisiv200-linux-)

CC    ?= $(CROSS_COMPILE)gcc

################################################################################

image = sample_fs

SRC = $(wildcard *.c)

all:$(image)

$(image): $(SRC)
	@$(CC) -static  -o $@ $^  $(INCLUDE) -L$(LIB_DIR) $(LIB) 
		       
clean:
	@rm -fr $(image)

install:

uninstall:

