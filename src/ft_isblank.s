global _ft_isblank

section .text

_ft_isblank:
	push	rbp
	mov		rbp, rsp
	cmp		rdi, 32
	je		_istrue
	cmp		rdi, 9
	je		_istrue
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
