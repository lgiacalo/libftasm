global _ft_isupper

section .text

_ft_isupper:
	push	rbp
	mov		rbp, rsp

	cmp		rdi, 65
	jl		_isfalse

	cmp		rdi, 91
	jl		_istrue
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
