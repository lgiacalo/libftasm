global _ft_cat
extern _ft_strlen

%define	_read	0x2000003
%define	_write	0x2000004


section .bss           ;Uninitialized data
   buf: resb 64
   .len: db $ - buf

section .text

_leave:
	mov		rsp, rbp
	ret

_ft_cat:
	push	rbp
	mov		rbp, rsp
	sub		rsp, 16

	mov		[rsp + 0xc], rdi


_loop:

	mov		rax, _read
	mov		rdi, [rsp + 0xc]
	lea		rsi, [rel buf]
	mov		rdx, buf.len
	syscall

	cmp		rax, 0
	je		_leave
	; cmp		rax, -1
	; je		_leave


	mov     rdx, rax
	mov     rax, _write
	mov     rdi, 1
	lea		rsi, [rel buf]
	syscall

	jmp		_loop
