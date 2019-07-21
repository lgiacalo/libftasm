global _ft_isprint

section .text

_ft_isprint:
push	rbp
mov		rbp, rsp
cmp		rdi, 32
jl		_isfalse
cmp		rdi, 127
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
