section .text
	global ft_memset

ft_memset:
	push rdi
	mov cx, dx
	mov al, sil 
	repne stosb
	pop rax
	ret
