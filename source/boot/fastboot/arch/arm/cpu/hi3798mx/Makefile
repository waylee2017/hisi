

include $(TOPDIR)/config.mk

LIB	= $(obj)lib$(CPU).a

START   := start.o
COBJS   := chip.o
SOBJS   := ddrphy_training_func.o
SOBJS   += ddrphy_training_print.o
COBJS   += ddrphy_training.o
COBJS   += ddr_dataeye_training.o
COBJS   += lowlevel_init.o
COBJS   += emmc_boot.o
COBJS   += cpu.o
COBJS   += timer.o
COBJS   += usb.o
SOBJS   += uart.o
SOBJS   += arm_exception.o

SRCS	:= $(START:.o=.S) $(SOBJS:.o=.S) $(COBJS:.o=.c)
OBJS	:= $(addprefix $(obj),$(SOBJS) $(COBJS))
START	:= $(addprefix $(obj),$(START))

all:	$(obj).depend $(START) $(LIB)

$(LIB):	$(OBJS)
	$(AR) $(ARFLAGS) $@ $(OBJS)

#########################################################################

# defines $(obj).depend target
include $(SRCTREE)/rules.mk

sinclude $(obj).depend

#########################################################################
