section .text
	global ft_puts

ft_puts:
	push rdi
	mov rbx, 0
_yo:
	inc rdi
	inc rbx
	mov cl, [rdi]
	cmp cl, 0
	jne _yo
	mov rax, 1
	mov rdi, 1
	pop rsi
	mov rdx, rbx
	syscall
	ret
