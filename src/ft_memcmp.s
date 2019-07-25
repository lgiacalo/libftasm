global _ft_memcmp

section .text

_leave:
	leave
	ret

_ft_memcmp:
	push	rbp
	mov		rbp, rsp

	mov		rcx, rdx
	cld
	repe	cmpsb

	movzx	rax, byte[rdi - 1]
	movzx	rsi, byte[rsi - 1]
	sub		rax, rsi

	jmp		_leave
