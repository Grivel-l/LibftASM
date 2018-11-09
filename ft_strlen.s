section .text
	global ft_strlen

ft_strlen:
	mov rax, 0
	mov rbx, rdi
	rec:
	mov cl, [rdi]
	cmp cl, 0
	je done
	inc rax
	inc rdi
	jmp rec
done:
	ret

