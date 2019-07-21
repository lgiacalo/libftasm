global _ft_strcat

section .text

_ft_strcat:
	push	rbp
	mov		rbp, rsp
	mov		rax, rdi
	;cmp		rdi, 0x0
	;je		_leave
	;cmp		rsi, 0x0
	;je		_leave

_loop:
	cmp		byte[rdi], 0x0
	je		_copy
	inc		rdi
	jmp		_loop

_copy:
	mov		r8b, byte[rsi]
	mov		byte[rdi], r8b
	cmp		byte[rsi], 0x0
	je		_leave
	inc		rdi
	inc		rsi
	jmp	 	_copy

_leave:
	leave
	ret
