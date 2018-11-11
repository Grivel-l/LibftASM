%define BUFFER 2048

section .bss
	buffer resb BUFFER

section .text
	global ft_cat
	extern ft_puts

ft_cat:
	cmp di, 0
	jl failed
	call read
	mov rax, 0
	ret

read:
	mov rax, 0
	mov rsi, buffer
	mov rdx, BUFFER
	syscall
	mov rdi, buffer
	call ft_puts
	mov rax, 0
	ret

failed:
	mov rax, 1
	ret
