section .text
	global ft_tolower

ft_tolower:
	cmp rdi, 65
	jb isnot
	cmp rdi, 90
	ja isnot
	mov rax, rdi
	xor rax, 0x20
	ret

isnot:
	mov rax, rdi
	ret
