section .text
	global ft_strlen

ft_strlen:
	mov al, 0
	mov rcx, -1
	repne scasb
	add rcx, 2
	neg rcx
	mov rax, rcx
	ret

