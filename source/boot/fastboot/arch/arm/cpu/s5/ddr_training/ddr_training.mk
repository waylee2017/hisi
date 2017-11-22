#/******************************************************************************
# *    Copyright (c) 2009-2012 by Hisi.
# *    All rights reserved.
# * ***
# *    Create by Czyong. 2012-09-07
# *
#******************************************************************************/

################################################################################

TOPDIR   :=
PWD      := $(shell pwd)
OPPDIR   := $(subst $(TOPDIR)/,,$(PWD))

CC       := $(CROSS_COMPILE)gcc
AR       := $(CROSS_COMPILE)ar
LD       := $(CROSS_COMPILE)ld
OBJCOPY  := $(CROSS_COMPILE)objcopy
OBJDUMP  := $(CROSS_COMPILE)objdump

################################################################################
BOOT        := ddr_training
TEXTBASE    := 0xFFFF0C00
STACK_POINT := 0xFFFF0C00
START       := start.o
COBJS       += uart.o ddr_dataeye_training.o ddrphy_training_print.o
DEPS        := $(COBJS:.o=.d) $(START:.o=.d)
AOBJS       :=
SSRC        := uart.S start.S
BOOT_SRC    := ddr_dataeye_training.c ddrphy_training_print.S

CFLAGS   := -Os -fno-strict-aliasing -fno-common -ffixed-r8 \
	-DTEXT_BASE=$(TEXTBASE) -DSTACK_POINT=$(STACK_POINT) -DCMD_TRAINING\
	-fno-builtin -ffreestanding -I./ -I$(TOPDIR)/include -I../ -I../../\
	-pipe -D__ARM__ -marm  -mabi=aapcs-linux  \
	-mno-thumb-interwork -march=armv7-a

################################################################################

TMPS += $(TOPDIR)/$(BOOT).bin \
	$(TOPDIR)/common/$(CPU)_ddr_training_printf.c \
	$(TOPDIR)/common/$(CPU)_ddr_training.h \
	$(SSRC) \
	$(BOOT_SRC)

.PHONY: $(BOOT).bin
all: $(BOOT).bin
	cd $(TOPDIR)/common && \
		ln -sf ../$(OPPDIR)/ddr_training_printf.c $(CPU)_ddr_training_printf.c && \
		ln -sf ../arch/arm/cpu/$(CPU)/ddr_dataeye_training.h $(CPU)_ddr_training.h && \
	cd -

TMPS += $(BOOT).bin $(BOOT).srec
$(BOOT).bin: $(BOOT).elf
	$(OBJCOPY) -O srec $(PWD)/$(BOOT).elf $(BOOT).srec
	$(OBJCOPY) --gap-fill=0xff -O binary $(PWD)/$(BOOT).elf $@

TMPS += $(BOOT).elf $(COBJS) $(START) $(BOOT).map $(DEPS)
$(BOOT).elf: $(START) $(COBJS) ../boot.lds
	$(LD) -Bstatic -T ../boot.lds -Ttext $(TEXTBASE) $(START) \
		$(COBJS) $(AOBJS) -Map $(BOOT).map -o $@

$(SSRC): 
	ln -sf ../$@ $@

$(BOOT_SRC):
	ln -sf ../../$@ $@

.PHONY: clean
clean:
	@rm -vf $(TMPS)

%.o : %.S
	$(CC) -D__ASSEMBLY__ $(CFLAGS) -o $@ -c $*.S

%.o : %.c
	$(CC) $(CFLAGS) -Wall -Wstrict-prototypes -fno-stack-protector \
		-o $@ -c $*.c

ifneq ("$(MAKECMDGOALS)","clean")
sinclude $(DEPS)
endif

%.d : %.c
	set -e; $(CC) $(CFLAGS) -MM $< | sed 's,$*.o:,$*.o $*.d:,g' > $@

%.d : %.S
	set -e; $(CC) $(CFLAGS) -MM $< | sed 's,$*.o:,$*.o $*.d:,g' > $@

################################################################################
