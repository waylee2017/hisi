ifeq ($(CFG_HI_EXPORT_FLAG),)
SDK_DIR := $(shell pwd)/../../../..
include $(SDK_DIR)/cfg.mak
include $(SDK_DIR)/base.mak
endif

#+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#	variable
#+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
objects := schedule

ifeq ($(CFG_HI_LOADER_BOOTLOADER)_$(CFG_HI_LOADER_FIRSTBOOT),y_)
objects += app
endif

objects_clean:=$(addsuffix _clean,$(objects))
objects_install:=$(addsuffix _install,$(objects))
objects_uninstall:=$(addsuffix _uninstall,$(objects))

depends_clean:=$(addsuffix _clean,$(depends))
depends_install:=$(addsuffix _install,$(depends))
depends_uninstall:=$(addsuffix _uninstall,$(depends))

LIBS := libloader.a
SUBLIBS := $(foreach sub,$(objects),$(sub)/lib$(sub).a)

$(LIBS): $(objects) 
	$(AT)rm -rf $@
	$(AT)rm -rf ar.mak
	$(AT)echo "CREATE $@" >> ar.mak
	$(AT)$(foreach sublib,$(SUBLIBS),echo "ADDLIB $(sublib)" >> ar.mak;)
	$(AT)echo "SAVE" >> ar.mak
	$(AT)echo "END" >> ar.mak
	$(AT)$(AR) -M < ar.mak

#+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#	rules
#+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

#==================================================================
#                          all
#==================================================================
.PHONY: all clean install uninstall prepare
prepare:
	$(AT)rm -rf api app
ifeq ($(CFG_HI_LOADER_BOOTLOADER),y)
	$(AT)cp -r $(COMPONENT_DIR)/loader/api api
	$(AT)cp -r $(COMPONENT_DIR)/loader/app app
endif
all: $(LIBS)
#	$(AT)$(STRIP) $(LIBS)

clean: $(objects_clean)
	$(AT)rm -rf $(LIBS)
	$(AT)rm -rf ar.mak

install: $(objects_install)

uninstall: $(objects_uninstall)

#==================================================================
#                          modules
#==================================================================
.PHONY: $(objects) $(objects_clean) $(objects_install) $(objects_uninstall)

$(objects): | prepare
	make -C $@ all

$(objects_clean):
	@test ! -d $(patsubst %_clean,%,$@) || make -C $(patsubst %_clean,%,$@) clean

$(objects_install):
	make -C $(patsubst %_install,%,$@) install

$(objects_uninstall):
	$(AT)echo "uninstall loader"
	#make -C $(patsubst %_uninstall,%,$@) uninstall

