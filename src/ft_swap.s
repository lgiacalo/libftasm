global _ft_swap

section .text

_ft_swap:
	push	rbp
	mov		rbp, rsp

	mov		edx, dword[rsi]
	mov		ecx, dword[rdi]
	mov		dword[rsi], ecx
	mov		dword[rdi], edx

	leave
	ret
