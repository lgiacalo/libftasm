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
	cld					; pas utile car toujours a 0 en rentrant dans la fonction, p15
	rep		stosb

	pop		rax
	jmp		_leave
