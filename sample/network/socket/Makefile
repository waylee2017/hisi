################################################################################
ifeq ($(CFG_HI_EXPORT_FLAG),)
SDK_DIR     := $(shell pwd)/../../..
LIB_DIR     := $(SDK_DIR)/pub/libs
COMMON_DIR  := $(SDK_DIR)/source/common
MSP_DIR     := $(SDK_DIR)/source/msp
include $(SDK_DIR)/cfg.mak
include $(SDK_DIR)/base.mak
endif

INCLUDE     := -I"$(COMMON_DIR)/include" -I"$(SAMPLE_DIR)/common" \
		-I"$(MSP_DIR)/include"
################################################################################
CROSS_COMPILE         := \
	$(if $(CROSS_COMPILE),$(CROSS_COMPILE),arm-hisiv200-linux-)

CC    ?= $(CROSS_COMPILE)gcc

################################################################################

image = sample_socket
image_pc = sample_socket_pc

all:$(image) $(image_pc)

$(image): sample_socket.c 
	@$(CC) -static  -o $@ $^  $(INCLUDE) -L$(LIB_DIR) $(LIB) 
	
$(image_pc): sample_socket.c 
	@gcc -o $@ $^ $(INCLUDE) -lpthread -static
		       
clean:
	-@rm -f $(image) $(image_pc)
	
