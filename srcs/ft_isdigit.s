section .text
	global ft_isdigit

ft_isdigit:
	cmp rdi, 48
	jb isnot
	cmp rdi, 57
	ja isnot
	mov rax, 1
	ret

isnot:
	mov rax, 0
	ret
