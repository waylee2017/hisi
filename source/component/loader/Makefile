ifeq ($(CFG_HI_EXPORT_FLAG),)
SDK_DIR := $(shell pwd)/../../../
include $(SDK_DIR)/base.mak
endif

#+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#	variable
#+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
objects:= api

ifeq ($(CFG_HI_ADVCA_TYPE),VERIMATRIX)
CFLAGS += -DHI_ADVCA_SUPPORT
CFLAGS += -DHI_ADVCA_TYPE_VERIMATRIX
endif
ifeq ($(CFG_HI_LOADER_APPLOADER),y)
objects += app
endif 

objects_clean:=${addsuffix _clean,${objects}}
objects_install:=${addsuffix _install,${objects}}
objects_uninstall:=${addsuffix _uninstall,${objects}}

#==================================================================
#                          all
#==================================================================
.PHONY: all clean install uninstall ${objects} ${objects_clean} ${objects_install} ${objects_uninstall}
all:    ${objects}
	
clean:  ${objects_clean}
	
install:${objects_install}
	
uninstall:${objects_uninstall}
	
#==================================================================
#                          modules
#==================================================================

${objects}:
	make -C $@ all 
	
${objects_clean}:
	make -C $(patsubst %_clean,%,$@) clean

${objects_install}:
	make -C $(patsubst %_install,%,$@) install

${objects_uninstall}:	
	make -C $(patsubst %_uninstall,%,$@) uninstall
		












