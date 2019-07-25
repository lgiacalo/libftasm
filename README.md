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
	- search is* valeur de return* voir code function linux

## Part 1

	• bzero
	• strcat
	• isalpha
	• isdigit
	• isalnum
	• isascii
	• isprint
	• toupper
	• tolower
	• puts (bien entendu, vous pouvez appeller le syscall write)

## Part 2 -  Instruction Repeat String Operations

	• strlen
	• memset
	• memcpy
	• strdup (bien entendu, vous pouvez appeller malloc)

## Part 3

Pour finir, vous devez coder une fonction ft_cat qui prendra un file descriptor
(par exemple 0...) en paramètre et qui auras le même comportement que la commande
cat, elle retournera void.

Attention le changement de contexte entre l’user-space et le
kernel-space coûte cher en terme de performances donc vous serez
pénalisés si vous en abusez.

## BONUS
	- ft_isblank
	- ft_islower
	- ft_isupper

	- ft_putchar
	- ft_memchr


#########################################################
	- ft_memcmp

	- ft_strcpy
	- ft_strcmp
	- ft_swap ---> xor
