global _ft_isalnum
extern _ft_isalpha
extern _ft_isdigit

section .text

_leave:
leave
ret

_ft_isalnum:
push	rbp
mov		rbp, rsp
call	_ft_isalpha
cmp		rax, 1
je		_leave
call	_ft_isdigit
cmp		rax, 1
je		_leave
