################################################################################
#    Create By Czyong
################################################################################

PWD           = $(shell pwd)
CROSS_COMPILE ?= arm-hisiv200-linux-
TOPDIR        =
BINIMAGE      = $(TOPDIR)/fastboot-burn.bin

include $(TOPDIR)/config.mk

################################################################################
CC       := $(CROSS_COMPILE)gcc
AR       := $(CROSS_COMPILE)ar
LD       := $(CROSS_COMPILE)ld
OBJCOPY  := $(CROSS_COMPILE)objcopy

################################################################################
BOOT     := mini-boot
TEXTBASE := 0x00a00000

CFLAGS   := -g -Os -fno-strict-aliasing -fno-common \
	-D__KERNEL__ -DTEXT_BASE=$(TEXTBASE) \
	-I$(TOPDIR)/include -Wall \
	-fno-builtin -ffreestanding \
	-pipe  -DCONFIG_ARM -D__ARM__ -marm  -mabi=aapcs-linux  \
	-mno-thumb-interwork -march=armv7-a $(MKFLAGS)

################################################################################
START    := start.o
COBJS    := chip.o emmc_boot.o lowlevel_init.o \
	startup.o cache-cp15.o uart.o mmu.o image_data.o \
	ddrphy_training.o ddrphy_training_func.o ddr_dataeye_training.o \
	ddrphy_training_print.o

ifdef CONFIG_MULTI_LVL_CACHE
COBJS += cache_v7.o
endif
REG      := $(wildcard $(TOPDIR)/*.reg $(TOPDIR)/.reg)

sinclude $(TOPDIR)/platform.mk
################################################################################
.PHONY: $(BOOT).bin
$(BOOT).bin: $(BOOT).tmp regfile
	@dd if=./$(BOOT).tmp of=./tmp1 bs=1 count=$(CFG_REG_START) 2>/dev/null
	@dd if=$(REG) of=./tmp2 bs=$(CFG_REG_LENGTH) conv=sync 2>/dev/null
	@dd if=./$(BOOT).tmp of=./tmp3 bs=1 skip=$(CFG_REG_END) 2>/dev/null
	@cat tmp1 tmp2 tmp3 > $(BOOT).bin
	@rm -f tmp1 tmp2 tmp3
	@chmod 754 $(BOOT).bin
	@cp -fv $@ $(TOPDIR)
	@echo $(BOOT).bin is Ready.

$(BOOT).tmp: $(BOOT).elf
	$(OBJCOPY) -O srec $< $(BOOT).srec
	$(OBJCOPY) --gap-fill=0xff -O binary $< $@

$(BOOT).elf: image_data.lzma $(START) $(COBJS)
	$(LD) -Bstatic -T mini-boot.lds -Ttext $(TEXTBASE) $(START) \
		$(COBJS) -Map $(BOOT).map -o $@

.PHONY: regfile
regfile:
	@if [ "$(words $(REG))" = "0" ]; then ( \
		echo '***' Need '.reg' or '*.reg' file in directory $(TOPDIR); \
		exit 1; \
	) fi
	@if [ "$(words $(REG))" != "1" ]; then ( \
		echo '***' Found multi '.reg' or '*.reg' file in directory $(TOPDIR); \
		echo '***' Files: $(notdir $(REG)); \
		exit 1; \
	) fi

################################################################################
start.o: start.S
	$(CC) -D__ASSEMBLY__ $(CFLAGS) -o $@ $< -c

image_data.lzma: $(BINIMAGE)
	lzma -fkzc -7 $< > $@

%.o: %.c
	$(CC) $(CFLAGS) -Wall -Wstrict-prototypes \
		-fno-stack-protector -o $@ $< -c

%.o: %.S
	$(CC) -D__ASSEMBLY__ $(CFLAGS) -o $@ $< -c

image_data.o: image_data.S image_data.lzma
	$(CC) -D__ASSEMBLY__ $(CFLAGS) -o $@ $< -c

#############################################################################

SRC := start.S chip.c lowlevel_init.c  \
	himci_boot.c uart.S ddrphy_training.c ddrphy_training_func.S \
	ddrphy_training_print.S himci_boot_hi3798mx.c ddr_dataeye_training.h

$(SRC):
	ln -fs ../$@ ./

SRC += emmc_boot.c
emmc_boot.c: himci_boot.c himci_boot_hi3798mx.c
	ln -fs ../$@ ./

SRC += ddr_dataeye_training.c
ddr_dataeye_training.c: ddr_dataeye_training.h
	ln -fs ../$@ ./

SRC += mmu.S cache-cp15.c

cache-cp15.c \
mmu.S:
	ln -sf ./../../../lib/$@ ./

ifdef CONFIG_MULTI_LVL_CACHE
SRC += cache_v7.c
cache_v7.c:
	ln -sf ./../../../lib/$@ ./
endif

startup.c: unlzma.c

SRC += unlzma.c
unlzma.c:
	ln -fs ./../../../../../lib/$@ ./

################################################################################
TMPS := $(COBJS) start.o $(SRC) \
	$(BOOT).map $(BOOT).elf $(BOOT).srec $(BOOT).bin $(BOOT).tmp \
	image_data.lzma

distclean: clean

clean:
	@rm -f $(TMPS)

################################################################################
.PHONY: clean
################################################################################
