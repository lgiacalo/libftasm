global _ft_toupper
extern _ft_islower

section .text

_leave:
	leave
	ret

_istrue:
	pop		rax
	sub		rax, 32
	jmp		_leave

_isfalse:
	pop		rax
	jmp		_leave

_ft_toupper:
	push	rbp
	mov		rbp, rsp
	push	rdi

	call	_ft_islower
	cmp		rax, 0
	je		_isfalse
	jmp		_istrue
