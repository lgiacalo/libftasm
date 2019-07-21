global _ft_islower

section .text

_ft_islower:
	push	rbp
	mov		rbp, rsp
	cmp		rdi, 97
	jl		_isfalse
	cmp		rdi, 123
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
