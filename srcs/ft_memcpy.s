section .text
	global ft_memcpy

ft_memcpy:
	push rdi
	mov rcx, rdx
	rep movsb
	pop rax
	ret
