# libftasm

	- voir forum documentation


	- EDIT : en bonus, les codes des syscall sont au /usr/include/sys/syscall.h (n'oubliez pas de rajouter 0x200000 devant) o/



## Settings
	LLDB : 
		.lldbinit:
			- settings set target.x86-disassembly-flavor intel

	GDB :
		- set disassembly-flavor att
		- set disassembly-flavor intel
		- show disassembly-flavor



## A VOIR
	- objdump -line-numbers --source --x86-asm-syntax=intel APP

## A FAIRE
	- modifier ft_bzero - Add prolog + epilog
