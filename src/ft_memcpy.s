global _ft_memcpy

section .text

_leave:
	leave
	ret

_ft_memcpy:
	push	rbp
	mov		rbp, rsp
	push	rdi

	mov		rcx, rdx
	cld
	rep		movsb

	pop		rax
	jmp		_leave
