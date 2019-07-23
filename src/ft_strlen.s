global _ft_strlen

section .text

_leave:
	leave
	ret

; strlen - calcul sur rcx, le compteur et pas avec l'adresse de la string
_ft_strlen:
	push	rbp
	mov		rbp, rsp

	mov		rcx, -1
	xor		al, al

	repne	scasb

	not		rcx
	dec		rcx
	mov		rax, rcx

	jmp		_leave
