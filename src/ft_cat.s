global _ft_cat

%define	_read	0x2000003
%define	_write	0x2000004

%define	SIZE	64

section .bss           ;Uninitialized data
   buf: resb SIZE

section .text

_ft_cat:
	push	rbp
	mov		rbp, rsp
	sub		rsp, 16

	mov		dword [rsp + 0xc], edi

_loop:
	mov		rax, _read
	mov		edi, dword [rsp + 0xc]
	lea		rsi, [rel buf]				; mov  rsi, buf
	mov		rdx, SIZE
	syscall
	jc		_leave

	cmp		rax, 0
	je		_leave

	mov     rdx, rax
	mov     rax, _write
	mov     rdi, 1
	lea		rsi, [rel buf]				; mov  rsi, buf
	syscall
	jc		_leave

	jmp		_loop

_leave:
	mov		rsp, rbp
	pop		rbp
	ret
