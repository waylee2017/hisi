#===============================================================================
# export variable
#===============================================================================
ifeq ($(CFG_HI_EXPORT_FLAG),)
SDK_DIR ?= $(CURDIR)/../../..

include $(SDK_DIR)/cfg.mak
include $(SDK_DIR)/base.mak
endif

RESAMPLER_DIR = $(SDK_DIR)/source/component/resampler

#===============================================================================
# local variable
#===============================================================================
CFLAGS  +=  -I$(COMMON_UNF_INCLUDE)                 \
            -I$(COMMON_API_INCLUDE)                 \
            -I$(RESAMPLER_DIR)/include              \
            -I$(RESAMPLER_DIR)/src

LIBS := libhi_resampler

OBJS := $(RESAMPLER_DIR)/src/resampler.o    \
	$(RESAMPLER_DIR)/src/resampler2X.o  \
	$(RESAMPLER_DIR)/src/resample_v2.o  \
	$(RESAMPLER_DIR)/src/resample_rom.o \
	$(RESAMPLER_DIR)/src/linear_src.o

HEADER_FILES := $(RESAMPLER_DIR)/include/hi_resampler.h

#===============================================================================
# rules
#===============================================================================
.PHONY : all clean install uninstall

all : 
	make $(LIBS)

clean:
	$(AT)rm -rf $(OBJS)
	$(AT)rm -rf $(RESAMPLER_DIR)/lib/$(LIBS).a
	$(AT)rm -rf $(RESAMPLER_DIR)/lib/$(LIBS).so

install:all
	$(AT)cp -f  $(RESAMPLER_DIR)/lib/$(LIBS).a           $(STATIC_LIB_DIR)/
	$(AT)cp -f  $(RESAMPLER_DIR)/lib/$(LIBS).so          $(SHARED_LIB_DIR)/
	$(AT)cp -f  $(HEADER_FILES)     $(INCLUDE_DIR)/

uninstall:
	$(AT)rm -rf $(STATIC_LIB_DIR)/$(LIBS).a
	$(AT)rm -rf $(SHARED_LIB_DIR)/$(LIBS).so
	$(foreach file, $(HEADER_FILES), $(AT)rm -rf $(INCLUDE_DIR)/$(notdir $(file)))

$(LIBS) : $(OBJS)
	$(AT)$(AR) -rsv $@.a $^
	$(AT)$(CC) -shared -o $@.so $^
	$(AT)mv -f  $(LIBS).a           $(RESAMPLER_DIR)/lib/
	$(AT)mv -f  $(LIBS).so          $(RESAMPLER_DIR)/lib/
