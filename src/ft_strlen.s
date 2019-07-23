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




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;
; _leave:
; 	leave
; 	ret
;
; _loop:
; 	cmp		byte[rdi], 0x0
; 	je		_leave
; 	inc		rax
; 	inc		rdi
; 	jmp		_loop
;
; _ft_strlen:
; 	push	rbp
; 	mov		rbp, rsp
; 	xor		rax, rax
;
; 	cmp		rdi, 0x0
; 	je		_leave
; 	jmp		_loop
;
