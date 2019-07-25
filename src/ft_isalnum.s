global _ft_isalnum
extern _ft_isalpha, _ft_isdigit

section .text

_leave:
	leave
	ret

_ft_isalnum:
	push	rbp
	mov		rbp, rsp
	push	rdi

	call	_ft_isalpha
	cmp		rax, 1
	je		_leave

	pop		rdi
	call	_ft_isdigit
	jmp		_leave
