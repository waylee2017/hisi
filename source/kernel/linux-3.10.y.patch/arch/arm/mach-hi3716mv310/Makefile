#
# Makefile for the linux kernel.
#


KBUILD_AFLAGS	:=$(KBUILD_AFLAGS:-msoft-float=-Wa,-mfpu=softvfp+vfp)
LDFLAGS		+=--no-warn-mismatch

obj-y					:= core.o clock.o timer.o setup.o
obj-y		+=			cpu/

ifneq ($(findstring $(CFG_HI_CHIP_TYPE), hi3716mv330),)
obj-$(CONFIG_PM)			+= hi_pm_sleep_arm.o hipm.o
else
obj-$(CONFIG_PM)			+= hi_pm_sleep.o hipm.o
endif

obj-y					+= hi_mmz.o
obj-$(CONFIG_CACHE_L2X0)		+= l2cache.o
