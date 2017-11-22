################################################################################
#    source/boot/Makefile
#    Create By Lyj
#    2012.09.17
################################################################################

ifeq ($(CFG_HI_EXPORT_FLAG),)
SDK_DIR := $(shell pwd)/../..
include $(SDK_DIR)/base.mak
endif

ifeq ($(CFG_HI_MINIBOOT_SUPPORT),y)
sinclude Makefile.miniboot
else
sinclude Makefile.fastboot
endif
