#===============================================================================
# export variable
#===============================================================================
ifeq ($(CFG_HI_EXPORT_FLAG),)
SDK_DIR ?= $(CURDIR)/../../..

include $(SDK_DIR)/base.mak
endif

TARGET := hi_cc
#===============================================================================
# local variable
#===============================================================================
CFLAGS += $(CFG_HI_CFLAGS)
CFLAGS += -I$(SDK_DIR)/source/common/include
CFLAGS += -I$(CURDIR)/include
CFLAGS += -I$(CURDIR)/src/arib/include
CFLAGS += -I$(CURDIR)/src/cc608/include
CFLAGS += -I$(CURDIR)/src/cc708/include
CFLAGS += -I$(CURDIR)/src/ccdisp/include
CFLAGS += -I$(CURDIR)/src/common/include

VPATH += $(CURDIR)/src
VPATH += $(CURDIR)/src/arib/src
VPATH += $(CURDIR)/src/cc608/src
VPATH += $(CURDIR)/src/cc708/src
VPATH += $(CURDIR)/src/ccdisp/src
VPATH += $(CURDIR)/src/common/src

SRC := $(notdir $(shell find $(VPATH) -maxdepth 1 -name "*.c"))
objs = $(SRC:.c=.o)

LIBS := lib$(TARGET)

#===============================================================================
# rules
#===============================================================================
.PHONY: all clean install uninstall

all:
ifndef CFG_HI_STATIC_LIB_ONLY
	make $(LIBS).so
endif
	make $(LIBS).a

clean:
	$(AT)rm -rf $(CURDIR)/$(LIBS).a
	$(AT)rm -rf $(CURDIR)/$(LIBS).so
	$(AT)rm -rf $(CURDIR)/*.o

install: all
	$(AT)cp -af $(CURDIR)/$(LIBS).a  $(STATIC_LIB_DIR)/
ifndef CFG_HI_STATIC_LIB_ONLY
	$(AT)cp -af $(CURDIR)/$(LIBS).so $(SHARED_LIB_DIR)/
endif
	$(AT)cp -rf  ./include/* $(INCLUDE_DIR)/

uninstall:
	$(AT)rm -rf $(STATIC_LIB_DIR)/$(LIBS).a
ifndef CFG_HI_STATIC_LIB_ONLY
	$(AT)rm -rf $(SHARED_LIB_DIR)/$(LIBS).so
endif
	$(AT)rm -rf $(INCLUDE_DIR)/hi_unf_cc.h

$(LIBS).a: $(objs)
	$(AR) -rc -o $@ $^

%.o: %.c
	$(CC) $(CFLAGS) -c $<

$(LIBS).so: $(objs)
	$(CC) -shared -o $@ $^
