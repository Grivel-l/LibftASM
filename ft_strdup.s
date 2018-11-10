section .text
	extern malloc
	extern ft_strlen
	global ft_strdup

ft_strdup:
	push rdi
	call ft_strlen
	inc rax
	mov rdi, rax
	push rax
	call malloc wrt ..plt
	pop rcx
	mov rdi, rax
	pop rsi
	rep movsb
	ret

