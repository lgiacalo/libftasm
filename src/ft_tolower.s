global _ft_tolower
extern _ft_isupper

section .text

_leave:
	leave
	ret

_istrue:
	pop		rdi
	add		rdi, 32
	mov		rax, rdi
	jmp		_leave

_isfalse:
	pop		rdi
	mov		rax, rdi
	jmp		_leave

_ft_tolower:
	push	rbp
	mov		rbp, rsp
	push	rdi

	call	_ft_isupper
	cmp		rax, 0
	je		_isfalse
	jmp		_istrue
