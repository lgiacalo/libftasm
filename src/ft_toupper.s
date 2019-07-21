global _ft_toupper
extern _ft_islower

section .text

_leave:
	leave
	ret

_istrue:
	sub		rdi, 32
	mov		rax, rdi
	jmp		_leave

_isfalse:
	mov		rax, rdi
	jmp		_leave

_ft_toupper:
	push	rbp
	mov		rbp, rsp

	call	_ft_islower
	cmp		rax, 0
	je		_isfalse
	jmp		_istrue
