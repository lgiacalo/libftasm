global _ft_putchar

section .text

_leave:
	leave
	ret

_ft_putchar:
	push	rbp
	mov		rbp, rsp
	sub		rsp, 16

	mov		byte [rsp], dil
	mov		rsi, rsp

	mov     rax, 0x2000004
	mov     rdi, 1			; fd
	mov     rdx, 1			; taille chaine
	syscall

	jmp		_leave
