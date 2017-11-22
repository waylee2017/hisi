This software is used to calculate the DDR hash value when standby.

1.Compilation
	make clean;make		Compile the software. ddr_wakeup_check.bin is generated.
	
2.Usage
	- Use the tool hex2char.exe to convert the ddr_wakeup_check.bin to output.txt
	- Copy the output.txt to the source\kernel\linux-3.10.y\arch\arm\mach-hi3716mv310
	- Recompile the kernel