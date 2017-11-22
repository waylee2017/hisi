arm/hi3798mx/boot/start.o                 (.text)
arm/hi3798mx/boot/early_uart.o            (.text)
arm/hi3798mx/boot/lowlevel_init.o         (.text)
arm/hi3798mx/boot/ddrphy_training.o       (.text)
arm/hi3798mx/boot/ddrphy_training_func.o  (.text)
arm/hi3798mx/boot/emmc_boot.o             (.text)
arm/hi3798mx/boot/ddr_dataeye_training.o  (.text)
arm/hi3798mx/boot/chip.o                  (.text)

__init_end = .;
ASSERT(((__init_end - __text_start) < 0x4c00), "init sections too big!");
