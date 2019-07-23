global _ft_memset

section .text

_leave:
	leave
	ret

_ft_memset:
	push	rbp
	mov		rbp, rsp
	push	rdi

	mov		rcx, rdx
	mov		rax, rsi
	rep		stosb

	pop		rax
	jmp		_leave
