section .text
	global ft_isascii

ft_isascii:
	cmp rdi, 0
	jb isnot
	cmp rdi, 127
	ja isnot
	mov rax, 1
	ret

isnot:
	mov rax, 0
	ret
