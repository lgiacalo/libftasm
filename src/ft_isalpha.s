global _ft_isalpha

section .text

_ft_isalpha:
	push	rbp
	mov		rbp, rsp
	cmp		rdi, 123
	jge		_isfalse
	cmp		rdi, 65
	jnge	_isfalse
	cmp		rdi, 91
	jnge	_istrue
	cmp		rdi, 97
	jge		_istrue
	jmp		_isfalse

_istrue:
	mov		rax, 1
	jmp		_leave

_isfalse:
	mov		rax, 0
	jmp		_leave

_leave:
	leave
	ret
