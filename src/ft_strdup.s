global _ft_strdup
extern _ft_strlen, _malloc, _ft_memcpy

section .text

_leave:
	leave
	ret

_ft_strdup:
	push	rbp
	mov		rbp, rsp
	push	rdi

	call	_ft_strlen

	push	rax
	mov		rdi, rax
	call	_malloc

	mov		rdi, rax
	pop		rdx
	pop		rsi
	call	_ft_memcpy

	jmp		_leave
