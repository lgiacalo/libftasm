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
	cld					;The DF flag is set to 0. The CF, OF, ZF, SF, AF, and PF flags are unaffected.

	repne	scasb

	not		rcx
	dec		rcx
	mov		rax, rcx

	jmp		_leave
