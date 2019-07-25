global _ft_puts
extern _ft_strlen

section .data
EOL:	db 10, 0
NULL:	db "(null)", 10, 0

section .text

_leave:
	leave
	ret

_eol:
	mov     rax, 0x2000004
	mov     rdi, 1
	mov     rsi, EOL
	mov     rdx, 2
	syscall
	jmp		_leave

_null:
	mov     rax, 0x2000004
	mov     rdi, 1
	mov     rsi, NULL
	mov     rdx, 8
	syscall
	jmp		_leave

_ft_puts:
	push	rbp
	mov		rbp, rsp

	mov		rax, -1
	cmp		rdi, 0x0
	je		_null

	mov		rsi, rdi
	call	_ft_strlen

	mov		rdx, rax
	mov		rax, 0x2000004
	mov		rdi, 1
	syscall

	jmp		_eol
