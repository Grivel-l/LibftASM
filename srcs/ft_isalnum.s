section .text
	global ft_isalnum

ft_isalnum:
	jmp firstcheck

firstcheck:
	cmp rdi, 48
	jb failed
	cmp rdi, 57
	ja secondcheck
	jmp success

secondcheck:
	cmp rdi, 65
	jb failed
	cmp rdi, 90
	ja thirdcheck
	jmp success

thirdcheck:
	cmp rdi, 97
	jb failed
	cmp rdi, 122
	ja failed
	jmp success

failed:
	mov rax, 0
	ret

success:
	mov rax, 1
	ret
