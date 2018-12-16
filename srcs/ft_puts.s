section .text
	global ft_puts

ft_puts:
	push rdi
	mov rbx, 0
_rec:
	inc rdi
	inc rbx
	mov cl, [rdi]
	cmp cl, 0
	jne _rec
	mov rax, 1
	mov rdi, 1
	pop rsi
	mov rdx, rbx
	syscall
	ret
