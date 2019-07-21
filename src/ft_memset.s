global _ft_memset

section .text

_leave:
	leave
	ret

_loop:
	mov		byte[rdi], sil
	inc		rdi
	dec		rdx
	cmp		rdx, 0x0
	je		_leave
	jmp		_loop

_ft_memset:
	push	rbp
	mov		rbp, rsp
	mov		rax, rdi

	jmp		_loop
