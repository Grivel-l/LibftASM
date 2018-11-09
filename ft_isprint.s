section .text
	global ft_isprint

ft_isprint:
	cmp rdi, 32
	jb isnot
	cmp rdi, 126
	ja isnot
	mov rax, 1
	ret

isnot:
	mov rax, 0
	ret
