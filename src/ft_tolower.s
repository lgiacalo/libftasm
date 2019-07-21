global _ft_tolower
extern _ft_isupper

section .text

_leave:
	leave
	ret

_istrue:
	add		rdi, 32
	mov		rax, rdi
	jmp		_leave

_isfalse:
	mov		rax, rdi
	jmp		_leave

_ft_tolower:
	push	rbp
	mov		rbp, rsp

	call	_ft_isupper
	cmp		rax, 0
	je		_isfalse
	jmp		_istrue
