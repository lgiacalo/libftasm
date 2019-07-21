global _ft_strlen

section .text

_leave:
	leave
	ret

_loop:
	cmp		byte[rdi], 0x0
	je		_leave
	inc		rax
	inc		rdi
	jmp		_loop

_ft_strlen:
	push	rbp
	mov		rbp, rsp
	xor		rax, rax

	cmp		rdi, 0x0
	je		_leave
	jmp		_loop
