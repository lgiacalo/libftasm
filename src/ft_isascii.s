global _ft_isascii

section .text

_ft_isascii:
	push	rbp
	mov		rbp, rsp
	cmp		rdi, 0
	jl		_isfalse
	cmp		rdi, 128
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
