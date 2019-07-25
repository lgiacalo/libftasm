global _ft_tolower
extern _ft_isupper

section .text

_leave:
	leave
	ret

_istrue:
	pop		rax
	add		rax, 32
	jmp		_leave

_isfalse:
	pop		rax
	jmp		_leave

_ft_tolower:
	push	rbp
	mov		rbp, rsp
	push	rdi

	call	_ft_isupper
	cmp		rax, 0
	je		_isfalse
	jmp		_istrue
