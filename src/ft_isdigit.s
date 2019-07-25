global _ft_isdigit

section .text

_ft_isdigit:
	push	rbp
	mov		rbp, rsp

	cmp		rdi, 48
	jl		_isfalse

	cmp		rdi, 58
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
