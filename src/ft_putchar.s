global _ft_putchar

section .data
s: db 1

section .text

_leave:
	leave
	ret

_ft_putchar:
	push	rbp
	mov		rbp, rsp

	; lea		rsi, [rdi]

	lea		rsi, [rel s]
	mov		[rsi], rdi

	mov     rax, 0x2000004
	mov     rdi, 1			; fd
	mov     rdx, 1			; taille chaine
	syscall

	jmp		_leave
