global _ft_memchr

section .text

_leave:
	leave
	ret

_zero:
	cmp		al, 0
	je		_leave
	xor		rax, rax
	jmp		_leave


_ft_memchr:
	push	rbp
	mov		rbp, rsp

	inc		rdx
	mov		rcx, rdx
	mov		al, sil
	repne	scasb

	dec		rdi
	mov		rax, rdi

	cmp		rcx, 0
	je		_zero

	jmp		_leave
