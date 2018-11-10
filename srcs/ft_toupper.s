section .text
	global ft_toupper

ft_toupper:
	cmp rdi, 97
	jb isnot
	cmp rdi, 122
	ja isnot
	mov rax, rdi
	xor rax, 0x20
	ret

isnot:
	mov rax, rdi
	ret
