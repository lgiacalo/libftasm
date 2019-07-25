global _ft_bzero

section .text

_leave:
	mov		rsp, rbp
	pop		rbp
	ret

_ft_bzero:
	push	rbp
	mov		rbp, rsp

	cmp		rsi, 0x0
	je		_leave
	cmp		rdi, 0x0
	je		_leave

_loop:
	mov		[rdi], byte 0x0
	dec		rsi
	inc		rdi
	cmp		rsi, 0x0
	je		_leave
	jmp		_loop



; _ft_bzero:
; 	cmp		rsi, 0x0			; check rsi value == 0
; 	je		_leave				; jump rsi == 0
; 	cmp		rdi, 0x0			; check string non null
; 	je		_leave				; jump rdi == NULL
; 	mov		[rdi], byte 0x0		; mov rdi[] <- 0x0 == 0 ==  \0
; 	dec		rsi					; decrementation rsi
; 	inc		rdi					; incrementation rdi
; 	jmp		_ft_bzero			; recursivite _ft_bzero
;
; _leave:
; 	ret							; return
