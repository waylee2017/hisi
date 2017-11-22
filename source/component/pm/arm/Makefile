export CROSS_COMPILE := arm-hisiv200-linux-

export CC := $(CROSS_COMPILE)gcc
export AR := $(CROSS_COMPILE)ar
export RANLIB := $(CROSS_COMPILE)ranlib
export LD := $(CROSS_COMPILE)ld
export OBJCOPY := $(CROSS_COMPILE)objcopy
export OBJDUMP := $(CROSS_COMPILE)objdump


CSRC  = $(wildcard *.c)
SSRC  = $(wildcard *.S)

OBJS := $(patsubst %.c,%.o,$(CSRC) )
OBJS += $(patsubst %.S,%.o,$(SSRC) )

CFLAGS :=  -fno-builtin -fno-common -Wall -march=armv7-a -mcpu=cortex-a9 
CFLAGS += -O2 -c 
#CFLAGS += -g -c 
LDFLAGS := -Bstatic -T armStandby_linker.lds -Ttext 0
SFLAGS := $(CFLAGS)
TARGET = armStandby

#.SILENT:

default: 
	echo "  CC    $(CSRC)"
	$(CC) $(CFLAGS) $(CSRC)
	echo "  CC    $(SSRC)"
	$(CC) $(SFLAGS) $(SSRC)
	echo "  LD    $(OBJS)"
	$(LD) $(OBJS) $(LDFLAGS) -Map $(TARGET).map -o $(TARGET)
	$(OBJCOPY) -O binary $(TARGET) $(TARGET).bin	
clean:
	rm *.o $(TARGET) $(TARGET).bin -f

