%define SIZE 2048

section .bss
	buffer resb SIZE

section .text
	global ft_cat
	extern ft_puts
	extern ft_bzero

; TODO Check access to the file
ft_cat:
	cmp di, 0
	jl failed
	call read
	mov rax, 0
	ret

read:
	push rdi
	mov rax, 0
	mov rsi, buffer
	mov rdx, SIZE
	syscall
	push rax
	mov rdi, buffer
	call ft_puts
	mov rdi, buffer
	mov rsi, SIZE
	call ft_bzero
	pop rax
	cmp rax, SIZE
	pop rdi
	je read

failed:
	mov rax, 1
	ret
