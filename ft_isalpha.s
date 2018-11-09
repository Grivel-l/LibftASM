section .text
	global ft_isalpha

ft_isalpha:
	cmp rdi, 65
	jb check_upper
	cmp rdi, 90
	ja check_upper
	mov rax, 1
	ret

check_upper:
	cmp rdi, 97
	jb isnot
	cmp rdi, 122
	ja isnot
	mov rax, 1
	ret

isnot:
	mov rax, 0
	ret
