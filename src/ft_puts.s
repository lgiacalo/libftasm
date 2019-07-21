
global _ft_puts

section .data
	Hello:	db 'Hello world !\n', 10, 0
	.len:   equ     $ - Hello

section .text


_ft_puts:
	push	rbp
	mov		rbp, rsp


	mov		rax, 0x2000004
	mov		rdi, 1
	mov		rsi, Hello
	mov		rdx, Hello.len
	syscall


	leave
	ret
